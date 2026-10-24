import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep235
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

private def s6Step237CompleteMoves : List (Wire × Wire) := [(865,150)]

private def s6Step237EarlyControlLog : HmrEarlyControlLog := ⟨[865, 908, 888, 857, 805],[818],[869],[786, 810, 809, 817, 812, 909],[]⟩

private def s6Step237FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [805], [], [908]],[[818], [857], [888], [864]],[[], [], [], []]⟩,[868],[822],[869],[786],[810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809]⟩

private def s6Step237CompleteLog : HmrEarlyStepLog := ⟨s6Step237FrontLog,s6Step237CompleteMoves,s6Step237EarlyControlLog⟩

private def s6Step237ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩

private def s6Step237ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864],776⟩

private def s6Step237ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],777⟩

private def s6Step237ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876],775⟩

private def s6Step237FrontOut : WindowBank := ⟨s6Step237ExitFOut,s6Step237ExitGOut,s6Step237ExitFvOut,s6Step237ExitGvOut⟩

private def s6Step237CompleteOut : WindowBank := s6Step237FrontOut.repacked s6Step237CompleteMoves

private def s6Step237EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step237EarlyControlPositiveArena,[818],s6Step237EarlyControlEqualityArena,[869],⟨⟨868,false⟩,[⟨⟨818,false⟩,869⟩]⟩⟩

private def s6Step237EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,865⟩,⟨⟨772,false⟩,908⟩,⟨⟨771,false⟩,888⟩,⟨⟨770,false⟩,857⟩,⟨⟨769,false⟩,805⟩]⟩

private def s6Step237EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step237EarlyControlZeroArena,s6Step237EarlyControlZeroPlan,s6Step237EarlyControlClassPlan,s6Step237EarlyControlFlagArena,s6Step237EarlyControlFittedArena,s6Step237EarlyControlHistoryArena,s6Step237EarlyControlSigmaArena,s6Step237EarlyControlOutputArena,s6Step237EarlyControlLog⟩

private def s6Step237CounterWork : List Wire := [869, 786, 810, 809]

private theorem s6Step237Counter_bounded : s6Step237CounterWork.toFinset⊆arenaWires := by norm_num [s6Step237CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step237HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237CounterDuring : Arena := ⟨s6Step237HeadFvAfter.live∪s6Step237CounterWork.toFinset,Finset.union_subset s6Step237HeadFvAfter.bounded s6Step237Counter_bounded⟩

private def s6Step237EntryFFresh : List Wire := []

private def s6Step237EntryFvFresh : List Wire := []

private def s6Step237EntryGFresh : List Wire := [805]

private def s6Step237EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EntryGvFresh : List Wire := [908]

private def s6Step237ExitFExtra : List Wire := [857]

private def s6Step237ExitGExtra : List Wire := [150, 805, 818]

private def s6Step237ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237ExitGvExtra : List Wire := [908, 888]

private def s6Step237Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237Add0Work : List Wire := [810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step237Add0_bounded : s6Step237Add0Work.toFinset⊆arenaWires := by
  have h : s6Step237Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step237Add0During : Arena := ⟨s6Step237Add0Arena.live∪s6Step237Add0Work.toFinset,Finset.union_subset s6Step237Add0Arena.bounded s6Step237Add0_bounded⟩

private def s6Step237Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237Add1Work : List Wire := [810, 809, 817, 812, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step237Add1_bounded : s6Step237Add1Work.toFinset⊆arenaWires := by
  have h : s6Step237Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step237Add1During : Arena := ⟨s6Step237Add1Arena.live∪s6Step237Add1Work.toFinset,Finset.union_subset s6Step237Add1Arena.bounded s6Step237Add1_bounded⟩

private def s6Step237F4FlagArena : Arena := ⟨s6Step237HeadFvAfter.live∪{869},Finset.union_subset s6Step237HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step237F4Plan : HmrHybridF4Plan := ⟨s6Step237F4FlagArena,[869],s6Step237Add0Arena,[786],s6Step237Add0During,s6Step237Add0Work,s6Step237Add1During,s6Step237Add1Work⟩

private def s6Step237HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 857],795⟩

private def s6Step237HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864],776⟩

private def s6Step237HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 805, 818],777⟩

private def s6Step237HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 908, 888],775⟩

private def s6Step237FrontHead : WindowBank := ⟨s6Step237HeadFOut,s6Step237HeadGOut,s6Step237HeadFvOut,s6Step237HeadGvOut⟩

private def s6Step237EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩

private def s6Step237EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩

private def s6Step237EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 805],777⟩

private def s6Step237EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 908],775⟩

private def s6Step237FrontPair : WindowBank := ⟨s6Step237EntryFOut,s6Step237EntryGOut,s6Step237EntryFvOut,s6Step237EntryGvOut⟩

private def s6Step237FrontSigmaArena : Arena := ⟨s6Step237EntryGvAfter.live∪{868},Finset.union_subset s6Step237EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step237HeadFFresh : List Wire := [857]

private def s6Step237HeadFvFresh : List Wire := [864]

private def s6Step237HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237HeadGFresh : List Wire := [818]

private def s6Step237HeadGvFresh : List Wire := [888]

private def s6Step237FrontPlan : HmrSourceFront := ⟨s6Step237EntryGvAfter,s6Step237FrontPair,(growRow 795 s6Step237EntryFFresh ++ (growRow 777 s6Step237EntryGFresh ++ (growRow 776 s6Step237EntryFvFresh ++ (growRow 775 s6Step237EntryGvFresh ++ [])))),s6Step237FrontSigmaArena,[868],s6Step237HeadGBefore,[822],
  s6Step237HeadFvAfter,s6Step237FrontHead,(growRow 777 s6Step237HeadGFresh ++ (growRow 795 s6Step237HeadFFresh ++ (growRow 775 s6Step237HeadGvFresh ++ (growRow 776 s6Step237HeadFvFresh ++ [])))),s6Step237F4Plan,s6Step237CounterDuring,s6Step237CounterWork,s6Step237ExitGvAfter,s6Step237FrontOut,(shrinkRow 777 s6Step237ExitGExtra ++ (shrinkRow 795 s6Step237ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step237ExitGvExtra ++ []))))⟩

private def s6Step237CompletePlan : HmrEarlyStepPlan := ⟨s6Step237FrontPlan,s6Step237EarlyControlArena,s6Step237EarlyControlPlan,s6Step237CompleteMoves⟩

private theorem s6Step237Complete_apart : List.Disjoint (s6Step237CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [868, 822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := by
  have nd : ((s6Step237CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[868, 822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step237Complete_owned : (s6Step237CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step237EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step237CompleteMoveArena : Arena := ⟨s6Step237ExitGvAfter.live∪{150},Finset.union_subset s6Step237ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step237Complete_repack : s6Step237ExitGvAfter.checkRepack s6Step237CompleteMoves=some s6Step237EarlyControlArena := by
  have owned : 865∈s6Step237ExitGvAfter.live := by norm_num [s6Step237ExitGvAfter,arenaWires]
  have reserve : s6Step237ExitGvAfter.reserve {150}=some s6Step237CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step237ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step237CompleteMoveArena.retireSet {865}=s6Step237EarlyControlArena := by
    unfold Arena.retireSet s6Step237EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step237CompleteMoveArena,s6Step237ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step237CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step237CompleteMoveArena.retireSet {865}).checkRepack []=some s6Step237EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step237EarlyControl_branchOwned : ([822] : List Wire).toFinset⊆s6Step237EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EarlyControl_branch : compileHmrBranchRetirement s6Step237EarlyControlSigmaArena 822=some s6Step237EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step237EarlyControl_branchOwned
  · ext q
    simp [s6Step237EarlyControlOutputArena,s6Step237EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step237EarlyControl_classEqualityBorrow : s6Step237EarlyControlPositiveArena.checkBorrow (([868, 818] : List Wire).length-1) s6Step237EarlyControlLog.classWork=some s6Step237EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step237EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step237EarlyControlEqualityArena,s6Step237EarlyControlPositiveArena,s6Step237EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step237EarlyControl_classEqualityOwned : ([868, 818] : List Wire).toFinset⊆s6Step237EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EarlyControl_classEquality : compileHmrEqualityLog s6Step237EarlyControlPositiveArena [868, 818] 0 s6Step237EarlyControlLog.classWork=some (s6Step237EarlyControlEqualityArena,s6Step237EarlyControlLog.classWork,s6Step237EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step237EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step237EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step237EarlyControl_classOwned : ([769, 805, 868] : List Wire).toFinset⊆s6Step237EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EarlyControl_positiveBorrow : s6Step237EarlyControlZeroArena.checkBorrow (1) s6Step237EarlyControlLog.positiveWork=some s6Step237EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step237EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step237EarlyControlPositiveArena,s6Step237EarlyControlZeroArena,s6Step237EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step237EarlyControl_class : compileHmrSourceClassLog s6Step237EarlyControlZeroArena false 769 s6Step237EarlyControlZeroPlan.top 0 868 s6Step237EarlyControlLog.positiveWork s6Step237EarlyControlLog.classWork=some s6Step237EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step237EarlyControlClassPlan s6Step237EarlyControlZeroArena false 769 s6Step237EarlyControlZeroPlan.top 0 868
  constructor
  · decide +kernel
  · exact s6Step237EarlyControl_classOwned
  · exact s6Step237EarlyControl_positiveBorrow
  · exact s6Step237EarlyControl_classEquality

private theorem s6Step237EarlyControl_entryRecordOwned : ([822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step237EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EarlyControl_entrySigmaOwned : ([868, 254] : List Wire).toFinset⊆s6Step237EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EarlyControl_fitBorrow : s6Step237EarlyControlFlagArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step237EarlyControlLog.recordFresh=some s6Step237EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step237EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step237EarlyControlFittedArena,s6Step237EarlyControlFlagArena,s6Step237EarlyControlLog,arenaWires]

private theorem s6Step237EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step237EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EarlyControl_fit : compileHmrRecordGrowLog s6Step237EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step237EarlyControlLog.recordFresh=some s6Step237EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step237EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step237EarlyControl_fitBorrow

private theorem s6Step237EarlyControl_flagsBorrow : s6Step237EarlyControlEqualityArena.checkBorrow (6) s6Step237EarlyControlLog.flagWork=some s6Step237EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step237EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step237EarlyControlFlagArena,s6Step237EarlyControlEqualityArena,s6Step237EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step237EarlyControl_flagsOwned : ([869, 253, 252, 251] : List Wire).toFinset⊆s6Step237EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EarlyControl_flags : compileHmrFlagsLog s6Step237EarlyControlClassPlan.equalityArena s6Step237EarlyControlClassPlan.equality.top 253 252 251 s6Step237EarlyControlLog.flagWork=some s6Step237EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step237EarlyControl_flagsOwned⟩
  · exact s6Step237EarlyControl_flagsBorrow

private theorem s6Step237EarlyControl_historyBorrow : s6Step237EarlyControlArena.checkBorrow ((49-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).length)) s6Step237EarlyControlLog.recordFresh=some s6Step237EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step237EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step237EarlyControlHistoryArena,s6Step237EarlyControlArena,s6Step237EarlyControlLog,arenaWires]

private theorem s6Step237EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] : List Wire).toFinset⊆s6Step237EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EarlyControl_history : compileHmrRecordGrowLog s6Step237EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step237EarlyControlLog.recordFresh=some s6Step237EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step237EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step237EarlyControl_historyBorrow

private theorem s6Step237EarlyControl_sigmaOwned : ([254, 868] : List Wire).toFinset⊆s6Step237EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EarlyControl_sigmaReleaseOwned : ([868] : List Wire).toFinset⊆s6Step237EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EarlyControl_sigmaRelease : s6Step237EarlyControlHistoryArena.release {868} (fun _ => false)=some s6Step237EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step237EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step237EarlyControlSigmaArena,s6Step237EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step237EarlyControl_sigma : compileHmrSigmaDropLog s6Step237EarlyControlHistoryArena false 0 0 254 868 []=some s6Step237EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step237EarlyControl_sigmaOwned⟩
  · exact s6Step237EarlyControl_sigmaRelease

private theorem s6Step237EarlyControl_zeroBorrow : s6Step237EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step237EarlyControlLog.zeroWork=some s6Step237EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step237EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step237EarlyControlZeroArena,s6Step237EarlyControlArena,s6Step237EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step237EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step237EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step237EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EarlyControl_zero : compileHmrEqualityLog s6Step237EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step237EarlyControlLog.zeroWork=some (s6Step237EarlyControlZeroArena,s6Step237EarlyControlLog.zeroWork,s6Step237EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step237EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step237EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step237EarlyControl_logged : s6Step237EarlyControlPlan.Logged s6Step237EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 868 254 253 252 251 822 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step237EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step237EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step237EarlyControl_zero
  · exact s6Step237EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step237EarlyControl_flags
  · exact s6Step237EarlyControl_fit
  · exact s6Step237EarlyControl_history
  · exact s6Step237EarlyControl_sigma
  · exact s6Step237EarlyControl_branch

private theorem s6Step237EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step237EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 868 254 253 252 251 822 49 s6Step237EarlyControlLog=some s6Step237EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step237EarlyControlPlan s6Step237EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 868 254 253 252 251 822 49 s6Step237EarlyControl_logged

private def s6Step237EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩

private def s6Step237EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩

private def s6Step237EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150],777⟩

private def s6Step237EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876],775⟩

private def s6Step237FrontBank : WindowBank := ⟨s6Step237EntryFRow,s6Step237EntryGRow,s6Step237EntryFvRow,s6Step237EntryGvRow⟩

private def s6Step237Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 857, 795]

private def s6Step237Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 805, 818, 777]

private def s6Step237Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864, 776]

private def s6Step237Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 908, 888, 775]

private theorem s6Step237Counter_apart : Disjoint s6Step237HeadFvAfter.live s6Step237CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step237HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237Counter_borrowed : s6Step237HeadFvAfter.checkBorrow 4 s6Step237CounterWork=some s6Step237CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step237HeadFvAfter s6Step237CounterDuring s6Step237CounterWork.toFinset s6Step237Counter_bounded s6Step237Counter_apart rfl

private theorem s6Step237Counter_owned : (868::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step237HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step237HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237Counter_checked : compileHmrCounterStepLog s6Step237HeadFvAfter true 868 [774, 773, 772, 771, 770, 769] s6Step237CounterWork=some s6Step237CounterDuring := by
  have owned : ∀q∈868::[774, 773, 772, 771, 770, 769],q∈s6Step237HeadFvAfter.live := fun q hq => s6Step237Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step237Counter_borrowed

private def s6Step237EntryFAfter : Arena := s6Step237EntryFBefore

private theorem s6Step237EntryBank_incomingDistinct : ([s6Step237EntryFRow,s6Step237EntryGRow,s6Step237EntryFvRow,s6Step237EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237EntryF_Incoming : rowsOwned s6Step237EntryFBefore [s6Step237EntryFRow,s6Step237EntryGRow,s6Step237EntryFvRow,s6Step237EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237EntryFRow,s6Step237EntryGRow,s6Step237EntryFvRow,s6Step237EntryGvRow] 0 s6Step237EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237EntryBank_outgoingOwned : rowsOwned s6Step237EntryGvAfter [s6Step237EntryFOut,s6Step237EntryGOut,s6Step237EntryFvOut,s6Step237EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step237EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237EntryF_Outgoing : rowsOwned s6Step237EntryGvAfter [s6Step237EntryFOut,s6Step237EntryGOut,s6Step237EntryFvOut,s6Step237EntryGvOut] :=
  hmrRows_owned_drop s6Step237EntryGvAfter [s6Step237EntryFOut,s6Step237EntryGOut,s6Step237EntryFvOut,s6Step237EntryGvOut] 0 s6Step237EntryBank_outgoingOwned

private theorem s6Step237EntryF_distinct : (s6Step237EntryFRow.sign::s6Step237EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237EntryF_owned : (s6Step237EntryFRow.sign::s6Step237EntryFRow.payload).toFinset⊆s6Step237EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EntryF_reserved : s6Step237EntryFBefore.reserve s6Step237EntryFFresh.toFinset=some s6Step237EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step237EntryFFresh,arenaWires]
  · norm_num [s6Step237EntryFBefore,s6Step237EntryFFresh,arenaWires]
  · simp only [s6Step237EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step237EntryF_checked : planRowResizeLog s6Step237EntryFBefore s6Step237EntryFRow 152 s6Step237EntryFFresh=
    some (s6Step237EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩,growRow 795 s6Step237EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step237EntryFBefore s6Step237EntryFAfter s6Step237EntryFRow 152 s6Step237EntryFFresh
    s6Step237EntryF_distinct s6Step237EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step237EntryF_reserved
  have rowEq : WindowRow.mk (s6Step237EntryFRow.payload++s6Step237EntryFFresh) s6Step237EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step237EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237EntryFvAfter : Arena := s6Step237EntryGAfter

private def s6Step237EntryFvBefore : Arena := s6Step237EntryGAfter

private theorem s6Step237EntryFv_Incoming : rowsOwned s6Step237EntryFvBefore [s6Step237EntryFvRow,s6Step237EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237EntryFRow,s6Step237EntryGRow,s6Step237EntryFvRow,s6Step237EntryGvRow] 2 s6Step237EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237EntryFv_Outgoing : rowsOwned s6Step237EntryGvAfter [s6Step237EntryFvOut,s6Step237EntryGvOut] :=
  hmrRows_owned_drop s6Step237EntryGvAfter [s6Step237EntryFOut,s6Step237EntryGOut,s6Step237EntryFvOut,s6Step237EntryGvOut] 2 s6Step237EntryBank_outgoingOwned

private theorem s6Step237EntryFv_distinct : (s6Step237EntryFvRow.sign::s6Step237EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237EntryFv_owned : (s6Step237EntryFvRow.sign::s6Step237EntryFvRow.payload).toFinset⊆s6Step237EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EntryFv_reserved : s6Step237EntryFvBefore.reserve s6Step237EntryFvFresh.toFinset=some s6Step237EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step237EntryFvFresh,arenaWires]
  · norm_num [s6Step237EntryFvBefore,s6Step237EntryGAfter,s6Step237EntryFvFresh,arenaWires]
  · simp only [s6Step237EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step237EntryFv_checked : planRowResizeLog s6Step237EntryFvBefore s6Step237EntryFvRow 134 s6Step237EntryFvFresh=
    some (s6Step237EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩,growRow 776 s6Step237EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step237EntryFvBefore s6Step237EntryFvAfter s6Step237EntryFvRow 134 s6Step237EntryFvFresh
    s6Step237EntryFv_distinct s6Step237EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step237EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step237EntryFvRow.payload++s6Step237EntryFvFresh) s6Step237EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step237EntryGBefore : Arena := s6Step237EntryFBefore

private theorem s6Step237EntryG_Incoming : rowsOwned s6Step237EntryGBefore [s6Step237EntryGRow,s6Step237EntryFvRow,s6Step237EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237EntryFRow,s6Step237EntryGRow,s6Step237EntryFvRow,s6Step237EntryGvRow] 1 s6Step237EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237EntryG_Outgoing : rowsOwned s6Step237EntryGvAfter [s6Step237EntryGOut,s6Step237EntryFvOut,s6Step237EntryGvOut] :=
  hmrRows_owned_drop s6Step237EntryGvAfter [s6Step237EntryFOut,s6Step237EntryGOut,s6Step237EntryFvOut,s6Step237EntryGvOut] 1 s6Step237EntryBank_outgoingOwned

private theorem s6Step237EntryG_distinct : (s6Step237EntryGRow.sign::s6Step237EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237EntryG_owned : (s6Step237EntryGRow.sign::s6Step237EntryGRow.payload).toFinset⊆s6Step237EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EntryG_reserved : s6Step237EntryGBefore.reserve s6Step237EntryGFresh.toFinset=some s6Step237EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step237EntryGFresh,arenaWires]
  · norm_num [s6Step237EntryGBefore,s6Step237EntryFBefore,s6Step237EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step237EntryGAfter,s6Step237EntryGBefore,s6Step237EntryFBefore,s6Step237EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step237EntryG_checked : planRowResizeLog s6Step237EntryGBefore s6Step237EntryGRow 152 s6Step237EntryGFresh=
    some (s6Step237EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 805],777⟩,growRow 777 s6Step237EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step237EntryGBefore s6Step237EntryGAfter s6Step237EntryGRow 152 s6Step237EntryGFresh
    s6Step237EntryG_distinct s6Step237EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step237EntryG_reserved
  have rowEq : WindowRow.mk (s6Step237EntryGRow.payload++s6Step237EntryGFresh) s6Step237EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 805],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step237EntryGvBefore : Arena := s6Step237EntryGAfter

private theorem s6Step237EntryGv_Incoming : rowsOwned s6Step237EntryGvBefore [s6Step237EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237EntryFRow,s6Step237EntryGRow,s6Step237EntryFvRow,s6Step237EntryGvRow] 3 s6Step237EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237EntryGv_Outgoing : rowsOwned s6Step237EntryGvAfter [s6Step237EntryGvOut] :=
  hmrRows_owned_drop s6Step237EntryGvAfter [s6Step237EntryFOut,s6Step237EntryGOut,s6Step237EntryFvOut,s6Step237EntryGvOut] 3 s6Step237EntryBank_outgoingOwned

private theorem s6Step237EntryGv_distinct : (s6Step237EntryGvRow.sign::s6Step237EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237EntryGv_owned : (s6Step237EntryGvRow.sign::s6Step237EntryGvRow.payload).toFinset⊆s6Step237EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237EntryGv_reserved : s6Step237EntryGvBefore.reserve s6Step237EntryGvFresh.toFinset=some s6Step237EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step237EntryGvFresh,arenaWires]
  · norm_num [s6Step237EntryGvBefore,s6Step237EntryGAfter,s6Step237EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step237EntryGvAfter,s6Step237EntryGvBefore,s6Step237EntryGAfter,s6Step237EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step237EntryGv_checked : planRowResizeLog s6Step237EntryGvBefore s6Step237EntryGvRow 134 s6Step237EntryGvFresh=
    some (s6Step237EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 908],775⟩,growRow 775 s6Step237EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step237EntryGvBefore s6Step237EntryGvAfter s6Step237EntryGvRow 134 s6Step237EntryGvFresh
    s6Step237EntryGv_distinct s6Step237EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step237EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step237EntryGvRow.payload++s6Step237EntryGvFresh) s6Step237EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step237EntryBank_rows : planWindowRowsLog s6Step237EntryFBefore [(s6Step237EntryFRow,152),(s6Step237EntryGRow,152),(s6Step237EntryFvRow,134),(s6Step237EntryGvRow,134)] [s6Step237EntryFFresh,s6Step237EntryGFresh,s6Step237EntryFvFresh,s6Step237EntryGvFresh]=
    some (s6Step237EntryGvAfter,[s6Step237EntryFOut,s6Step237EntryGOut,s6Step237EntryFvOut,s6Step237EntryGvOut],(growRow 795 s6Step237EntryFFresh ++ (growRow 777 s6Step237EntryGFresh ++ (growRow 776 s6Step237EntryFvFresh ++ (growRow 775 s6Step237EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step237EntryGvAfter [] []=some (s6Step237EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step237EntryGvBefore s6Step237EntryGvAfter s6Step237EntryGvAfter
    s6Step237EntryGvRow s6Step237EntryGvOut 134 s6Step237EntryGvFresh [] [] []
    (growRow 775 s6Step237EntryGvFresh) ([]) s6Step237EntryGv_Incoming s6Step237EntryGv_checked h4 s6Step237EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step237EntryFvBefore s6Step237EntryFvAfter s6Step237EntryGvAfter
    s6Step237EntryFvRow s6Step237EntryFvOut 134 s6Step237EntryFvFresh [(s6Step237EntryGvRow,134)] [s6Step237EntryGvFresh] [s6Step237EntryGvOut]
    (growRow 776 s6Step237EntryFvFresh) ((growRow 775 s6Step237EntryGvFresh ++ [])) s6Step237EntryFv_Incoming s6Step237EntryFv_checked h3 s6Step237EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step237EntryGBefore s6Step237EntryGAfter s6Step237EntryGvAfter
    s6Step237EntryGRow s6Step237EntryGOut 152 s6Step237EntryGFresh [(s6Step237EntryFvRow,134),(s6Step237EntryGvRow,134)] [s6Step237EntryFvFresh,s6Step237EntryGvFresh] [s6Step237EntryFvOut,s6Step237EntryGvOut]
    (growRow 777 s6Step237EntryGFresh) ((growRow 776 s6Step237EntryFvFresh ++ (growRow 775 s6Step237EntryGvFresh ++ []))) s6Step237EntryG_Incoming s6Step237EntryG_checked h2 s6Step237EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step237EntryFBefore s6Step237EntryFAfter s6Step237EntryGvAfter
    s6Step237EntryFRow s6Step237EntryFOut 152 s6Step237EntryFFresh [(s6Step237EntryGRow,152),(s6Step237EntryFvRow,134),(s6Step237EntryGvRow,134)] [s6Step237EntryGFresh,s6Step237EntryFvFresh,s6Step237EntryGvFresh] [s6Step237EntryGOut,s6Step237EntryFvOut,s6Step237EntryGvOut]
    (growRow 795 s6Step237EntryFFresh) ((growRow 777 s6Step237EntryGFresh ++ (growRow 776 s6Step237EntryFvFresh ++ (growRow 775 s6Step237EntryGvFresh ++ [])))) s6Step237EntryF_Incoming s6Step237EntryF_checked h1 s6Step237EntryF_Outgoing
  exact h0

private theorem s6Step237EntryBank_checked : compileHmrBankResizeLog .entry s6Step237EntryFBefore ⟨s6Step237EntryFRow,s6Step237EntryGRow,s6Step237EntryFvRow,s6Step237EntryGvRow⟩ ⟨152,152,134,134⟩ [s6Step237EntryFFresh,s6Step237EntryGFresh,s6Step237EntryFvFresh,s6Step237EntryGvFresh]=
    some (s6Step237EntryGvAfter,⟨s6Step237EntryFOut,s6Step237EntryGOut,s6Step237EntryFvOut,s6Step237EntryGvOut⟩,(growRow 795 s6Step237EntryFFresh ++ (growRow 777 s6Step237EntryGFresh ++ (growRow 776 s6Step237EntryFvFresh ++ (growRow 775 s6Step237EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step237EntryBank_rows]
  rfl

private def s6Step237ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237ExitFBefore : Arena := s6Step237ExitGAfter

private def s6Step237ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 857],795⟩

private def s6Step237ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864],776⟩

private def s6Step237ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 805, 818],777⟩

private def s6Step237ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 908, 888],775⟩

private theorem s6Step237ExitBank_incomingDistinct : ([s6Step237ExitGRow,s6Step237ExitFRow,s6Step237ExitFvRow,s6Step237ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237ExitF_Incoming : rowsOwned s6Step237ExitFBefore [s6Step237ExitFRow,s6Step237ExitFvRow,s6Step237ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237ExitGRow,s6Step237ExitFRow,s6Step237ExitFvRow,s6Step237ExitGvRow] 1 s6Step237ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237ExitFBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237ExitBank_outgoingOwned : rowsOwned s6Step237ExitGvAfter [s6Step237ExitGOut,s6Step237ExitFOut,s6Step237ExitFvOut,s6Step237ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step237ExitGvAfter (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237ExitF_Outgoing : rowsOwned s6Step237ExitGvAfter [s6Step237ExitFOut,s6Step237ExitFvOut,s6Step237ExitGvOut] :=
  hmrRows_owned_drop s6Step237ExitGvAfter [s6Step237ExitGOut,s6Step237ExitFOut,s6Step237ExitFvOut,s6Step237ExitGvOut] 1 s6Step237ExitBank_outgoingOwned

private theorem s6Step237ExitF_distinct : (s6Step237ExitFRow.sign::s6Step237ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237ExitF_owned : (s6Step237ExitFRow.sign::s6Step237ExitFRow.payload).toFinset⊆s6Step237ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237ExitFBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237ExitF_retired : s6Step237ExitFBefore.retireSet s6Step237ExitFExtra.toFinset=s6Step237ExitFAfter := by
  unfold Arena.retireSet s6Step237ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step237ExitFBefore,s6Step237ExitGAfter,s6Step237ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step237ExitF_checked : planRowResizeLog s6Step237ExitFBefore s6Step237ExitFRow 152 []=
    some (s6Step237ExitFAfter,s6Step237ExitFOut,shrinkRow 795 s6Step237ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step237ExitFBefore s6Step237ExitFRow 152 s6Step237ExitF_distinct s6Step237ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step237ExitFRow.payload.take 152) s6Step237ExitFRow.sign=s6Step237ExitFOut := by decide +kernel
  have hi : s6Step237ExitFRow.payload.drop 152=s6Step237ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step237ExitF_retired] at result
  exact result

private def s6Step237ExitFvAfter : Arena := s6Step237ExitFAfter

private def s6Step237ExitFvBefore : Arena := s6Step237ExitFAfter

private theorem s6Step237ExitFv_Incoming : rowsOwned s6Step237ExitFvBefore [s6Step237ExitFvRow,s6Step237ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237ExitGRow,s6Step237ExitFRow,s6Step237ExitFvRow,s6Step237ExitGvRow] 2 s6Step237ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237ExitFvBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237ExitFv_Outgoing : rowsOwned s6Step237ExitGvAfter [s6Step237ExitFvOut,s6Step237ExitGvOut] :=
  hmrRows_owned_drop s6Step237ExitGvAfter [s6Step237ExitGOut,s6Step237ExitFOut,s6Step237ExitFvOut,s6Step237ExitGvOut] 2 s6Step237ExitBank_outgoingOwned

private theorem s6Step237ExitFv_distinct : (s6Step237ExitFvRow.sign::s6Step237ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237ExitFv_owned : (s6Step237ExitFvRow.sign::s6Step237ExitFvRow.payload).toFinset⊆s6Step237ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237ExitFvBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237ExitFv_reserved : s6Step237ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step237ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step237ExitFv_checked : planRowResizeLog s6Step237ExitFvBefore s6Step237ExitFvRow 135 []=
    some (s6Step237ExitFvAfter,s6Step237ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step237ExitFvBefore s6Step237ExitFvAfter s6Step237ExitFvRow 135 []
    s6Step237ExitFv_distinct s6Step237ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step237ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step237ExitFvRow.payload++[]) s6Step237ExitFvRow.sign=s6Step237ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step237ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step237ExitG_Incoming : rowsOwned s6Step237ExitGBefore [s6Step237ExitGRow,s6Step237ExitFRow,s6Step237ExitFvRow,s6Step237ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237ExitGRow,s6Step237ExitFRow,s6Step237ExitFvRow,s6Step237ExitGvRow] 0 s6Step237ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237ExitG_Outgoing : rowsOwned s6Step237ExitGvAfter [s6Step237ExitGOut,s6Step237ExitFOut,s6Step237ExitFvOut,s6Step237ExitGvOut] :=
  hmrRows_owned_drop s6Step237ExitGvAfter [s6Step237ExitGOut,s6Step237ExitFOut,s6Step237ExitFvOut,s6Step237ExitGvOut] 0 s6Step237ExitBank_outgoingOwned

private theorem s6Step237ExitG_distinct : (s6Step237ExitGRow.sign::s6Step237ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237ExitG_owned : (s6Step237ExitGRow.sign::s6Step237ExitGRow.payload).toFinset⊆s6Step237ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237ExitG_retired : s6Step237ExitGBefore.retireSet s6Step237ExitGExtra.toFinset=s6Step237ExitGAfter := by
  unfold Arena.retireSet s6Step237ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step237ExitGBefore,s6Step237ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step237ExitG_checked : planRowResizeLog s6Step237ExitGBefore s6Step237ExitGRow 150 []=
    some (s6Step237ExitGAfter,s6Step237ExitGOut,shrinkRow 777 s6Step237ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step237ExitGBefore s6Step237ExitGRow 150 s6Step237ExitG_distinct s6Step237ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step237ExitGRow.payload.take 150) s6Step237ExitGRow.sign=s6Step237ExitGOut := by decide +kernel
  have hi : s6Step237ExitGRow.payload.drop 150=s6Step237ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step237ExitG_retired] at result
  exact result

private def s6Step237ExitGvBefore : Arena := s6Step237ExitFAfter

private theorem s6Step237ExitGv_Incoming : rowsOwned s6Step237ExitGvBefore [s6Step237ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237ExitGRow,s6Step237ExitFRow,s6Step237ExitFvRow,s6Step237ExitGvRow] 3 s6Step237ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237ExitGvBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237ExitGv_Outgoing : rowsOwned s6Step237ExitGvAfter [s6Step237ExitGvOut] :=
  hmrRows_owned_drop s6Step237ExitGvAfter [s6Step237ExitGOut,s6Step237ExitFOut,s6Step237ExitFvOut,s6Step237ExitGvOut] 3 s6Step237ExitBank_outgoingOwned

private theorem s6Step237ExitGv_distinct : (s6Step237ExitGvRow.sign::s6Step237ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237ExitGv_owned : (s6Step237ExitGvRow.sign::s6Step237ExitGvRow.payload).toFinset⊆s6Step237ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237ExitGvBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237ExitGv_retired : s6Step237ExitGvBefore.retireSet s6Step237ExitGvExtra.toFinset=s6Step237ExitGvAfter := by
  unfold Arena.retireSet s6Step237ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step237ExitGvBefore,s6Step237ExitFAfter,s6Step237ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step237ExitGv_checked : planRowResizeLog s6Step237ExitGvBefore s6Step237ExitGvRow 133 []=
    some (s6Step237ExitGvAfter,s6Step237ExitGvOut,shrinkRow 775 s6Step237ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step237ExitGvBefore s6Step237ExitGvRow 133 s6Step237ExitGv_distinct s6Step237ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step237ExitGvRow.payload.take 133) s6Step237ExitGvRow.sign=s6Step237ExitGvOut := by decide +kernel
  have hi : s6Step237ExitGvRow.payload.drop 133=s6Step237ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step237ExitGv_retired] at result
  exact result

private theorem s6Step237ExitBank_rows : planWindowRowsLog s6Step237ExitGBefore [(s6Step237ExitGRow,150),(s6Step237ExitFRow,152),(s6Step237ExitFvRow,135),(s6Step237ExitGvRow,133)] [[],[],[],[]]=
    some (s6Step237ExitGvAfter,[s6Step237ExitGOut,s6Step237ExitFOut,s6Step237ExitFvOut,s6Step237ExitGvOut],(shrinkRow 777 s6Step237ExitGExtra ++ (shrinkRow 795 s6Step237ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step237ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step237ExitGvAfter [] []=some (s6Step237ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step237ExitGvBefore s6Step237ExitGvAfter s6Step237ExitGvAfter
    s6Step237ExitGvRow s6Step237ExitGvOut 133 [] [] [] []
    (shrinkRow 775 s6Step237ExitGvExtra) ([]) s6Step237ExitGv_Incoming s6Step237ExitGv_checked h4 s6Step237ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step237ExitFvBefore s6Step237ExitFvAfter s6Step237ExitGvAfter
    s6Step237ExitFvRow s6Step237ExitFvOut 135 [] [(s6Step237ExitGvRow,133)] [[]] [s6Step237ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step237ExitGvExtra ++ [])) s6Step237ExitFv_Incoming s6Step237ExitFv_checked h3 s6Step237ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step237ExitFBefore s6Step237ExitFAfter s6Step237ExitGvAfter
    s6Step237ExitFRow s6Step237ExitFOut 152 [] [(s6Step237ExitFvRow,135),(s6Step237ExitGvRow,133)] [[],[]] [s6Step237ExitFvOut,s6Step237ExitGvOut]
    (shrinkRow 795 s6Step237ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step237ExitGvExtra ++ []))) s6Step237ExitF_Incoming s6Step237ExitF_checked h2 s6Step237ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step237ExitGBefore s6Step237ExitGAfter s6Step237ExitGvAfter
    s6Step237ExitGRow s6Step237ExitGOut 150 [] [(s6Step237ExitFRow,152),(s6Step237ExitFvRow,135),(s6Step237ExitGvRow,133)] [[],[],[]] [s6Step237ExitFOut,s6Step237ExitFvOut,s6Step237ExitGvOut]
    (shrinkRow 777 s6Step237ExitGExtra) ((shrinkRow 795 s6Step237ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step237ExitGvExtra ++ [])))) s6Step237ExitG_Incoming s6Step237ExitG_checked h1 s6Step237ExitG_Outgoing
  exact h0

private theorem s6Step237ExitBank_checked : compileHmrBankResizeLog .exit s6Step237ExitGBefore ⟨s6Step237ExitFRow,s6Step237ExitGRow,s6Step237ExitFvRow,s6Step237ExitGvRow⟩ ⟨152,150,135,133⟩ [[],[],[],[]]=
    some (s6Step237ExitGvAfter,⟨s6Step237ExitFOut,s6Step237ExitGOut,s6Step237ExitFvOut,s6Step237ExitGvOut⟩,(shrinkRow 777 s6Step237ExitGExtra ++ (shrinkRow 795 s6Step237ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step237ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step237ExitBank_rows]
  rfl

private theorem s6Step237Add0_apart : Disjoint s6Step237Add0Arena.live s6Step237Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step237Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237Add0_card : s6Step237Add0Arena.live.card=895 := by
  decide +kernel

private theorem s6Step237Add0_borrowed : s6Step237Add0Arena.checkBorrow (hmrHybridCount s6Step237Add0Arena s6Step237Add0B.length) s6Step237Add0Work=some s6Step237Add0During := by
  have len : s6Step237Add0Work.length=hmrHybridCount s6Step237Add0Arena s6Step237Add0B.length := by
    rw [hmrHybridCount,s6Step237Add0_card]
    decide +kernel
  have nd : s6Step237Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step237Add0Arena s6Step237Add0During s6Step237Add0Work.toFinset s6Step237Add0_bounded s6Step237Add0_apart rfl

private theorem s6Step237Add0_distinct : (869::822::786::(s6Step237Add0A++s6Step237Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237Add0_owned : (869::822::786::(s6Step237Add0A++s6Step237Add0B)).toFinset⊆s6Step237Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step237Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237Add0_checked : compileHmrHybridCinLog s6Step237Add0Arena 822 869 786 s6Step237Add0A s6Step237Add0B s6Step237Add0Work=some s6Step237Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step237Add0Arena s6Step237Add0During 822 869 786 s6Step237Add0A s6Step237Add0B s6Step237Add0Work
    (by decide +kernel) (by decide +kernel) s6Step237Add0_distinct
    (fun q hq => s6Step237Add0_owned (List.mem_toFinset.mpr hq)) s6Step237Add0_borrowed

private theorem s6Step237Add1_apart : Disjoint s6Step237Add1Arena.live s6Step237Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step237Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237Add1_card : s6Step237Add1Arena.live.card=895 := by
  decide +kernel

private theorem s6Step237Add1_borrowed : s6Step237Add1Arena.checkBorrow (hmrHybridCount s6Step237Add1Arena s6Step237Add1B.length) s6Step237Add1Work=some s6Step237Add1During := by
  have len : s6Step237Add1Work.length=hmrHybridCount s6Step237Add1Arena s6Step237Add1B.length := by
    rw [hmrHybridCount,s6Step237Add1_card]
    decide +kernel
  have nd : s6Step237Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step237Add1Arena s6Step237Add1During s6Step237Add1Work.toFinset s6Step237Add1_bounded s6Step237Add1_apart rfl

private theorem s6Step237Add1_distinct : (869::822::786::(s6Step237Add1A++s6Step237Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237Add1_owned : (869::822::786::(s6Step237Add1A++s6Step237Add1B)).toFinset⊆s6Step237Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step237Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237Add1_checked : compileHmrHybridCinLog s6Step237Add1Arena 822 869 786 s6Step237Add1A s6Step237Add1B s6Step237Add1Work=some s6Step237Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step237Add1Arena s6Step237Add1During 822 869 786 s6Step237Add1A s6Step237Add1B s6Step237Add1Work
    (by decide +kernel) (by decide +kernel) s6Step237Add1_distinct
    (fun q hq => s6Step237Add1_owned (List.mem_toFinset.mpr hq)) s6Step237Add1_borrowed

private theorem s6Step237F4_apart : Disjoint (s6Step237Add0A++s6Step237Add0B).toFinset (s6Step237Add1A++s6Step237Add1B).toFinset := by
  have nd : ((s6Step237Add0A++s6Step237Add0B)++(s6Step237Add1A++s6Step237Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step237F4_carry : s6Step237F4FlagArena.checkBorrow 1 [786]=some s6Step237Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step237F4FlagArena,s6Step237HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step237F4FlagArena,s6Step237HeadFvAfter,s6Step237Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step237F4_distinct : (868::822::869::786::((s6Step237Add0A++s6Step237Add1A)++(s6Step237Add0B++s6Step237Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237F4_flag : s6Step237HeadFvAfter.checkBorrow 1 [869]=some s6Step237F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step237HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step237F4_owned : (868::822::((s6Step237Add0A++s6Step237Add1A)++(s6Step237Add0B++s6Step237Add1B))).toFinset⊆s6Step237HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step237HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237F4_checked : compileHmrHybridF4Log s6Step237HeadFvAfter 868 822 s6Step237Add0A s6Step237Add0B s6Step237Add1A s6Step237Add1B [869] [786] s6Step237Add0Work s6Step237Add1Work=some s6Step237F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step237HeadFvAfter s6Step237F4FlagArena s6Step237Add0Arena s6Step237Add0During s6Step237Add1During 868 822
    s6Step237Add0A s6Step237Add0B s6Step237Add1A s6Step237Add1B [869] [786] s6Step237Add0Work s6Step237Add1Work
    (fun q hq => s6Step237F4_owned (List.mem_toFinset.mpr hq)) s6Step237F4_flag s6Step237F4_carry
    s6Step237F4_distinct s6Step237F4_apart s6Step237Add0_checked s6Step237Add1_checked

private theorem s6Step237Front_branch : s6Step237FrontSigmaArena.checkBorrow 1 [822]=some s6Step237HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step237FrontSigmaArena,s6Step237EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step237FrontSigmaArena,s6Step237EntryGvAfter,s6Step237HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step237Front_entry : HmrFrontEntryValid s6Step237EntryFBefore s6Step237FrontBank 152 134 ⟨152,150,135,133⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step237FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step237EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step237EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<868) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step237FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step237Front_sigma : s6Step237EntryGvAfter.checkBorrow 1 [868]=some s6Step237FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step237EntryGvAfter,arenaWires]
  · rfl

private def s6Step237HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237HeadFBefore : Arena := s6Step237HeadGAfter

private def s6Step237HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407],795⟩

private def s6Step237HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825],776⟩

private def s6Step237HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 805],777⟩

private def s6Step237HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 908],775⟩

private theorem s6Step237HeadBank_incomingDistinct : ([s6Step237HeadGRow,s6Step237HeadFRow,s6Step237HeadGvRow,s6Step237HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237HeadF_Incoming : rowsOwned s6Step237HeadFBefore [s6Step237HeadFRow,s6Step237HeadGvRow,s6Step237HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237HeadGRow,s6Step237HeadFRow,s6Step237HeadGvRow,s6Step237HeadFvRow] 1 s6Step237HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237HeadBank_outgoingOwned : rowsOwned s6Step237HeadFvAfter [s6Step237HeadGOut,s6Step237HeadFOut,s6Step237HeadGvOut,s6Step237HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step237HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237HeadF_Outgoing : rowsOwned s6Step237HeadFvAfter [s6Step237HeadFOut,s6Step237HeadGvOut,s6Step237HeadFvOut] :=
  hmrRows_owned_drop s6Step237HeadFvAfter [s6Step237HeadGOut,s6Step237HeadFOut,s6Step237HeadGvOut,s6Step237HeadFvOut] 1 s6Step237HeadBank_outgoingOwned

private theorem s6Step237HeadF_distinct : (s6Step237HeadFRow.sign::s6Step237HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237HeadF_owned : (s6Step237HeadFRow.sign::s6Step237HeadFRow.payload).toFinset⊆s6Step237HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237HeadF_reserved : s6Step237HeadFBefore.reserve s6Step237HeadFFresh.toFinset=some s6Step237HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step237HeadFFresh,arenaWires]
  · norm_num [s6Step237HeadFBefore,s6Step237HeadGAfter,s6Step237HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step237HeadFAfter,s6Step237HeadFBefore,s6Step237HeadGAfter,s6Step237HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step237HeadF_checked : planRowResizeLog s6Step237HeadFBefore s6Step237HeadFRow 153 s6Step237HeadFFresh=
    some (s6Step237HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 857],795⟩,growRow 795 s6Step237HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step237HeadFBefore s6Step237HeadFAfter s6Step237HeadFRow 153 s6Step237HeadFFresh
    s6Step237HeadF_distinct s6Step237HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step237HeadF_reserved
  have rowEq : WindowRow.mk (s6Step237HeadFRow.payload++s6Step237HeadFFresh) s6Step237HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step237HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step237HeadFvBefore : Arena := s6Step237HeadGvAfter

private theorem s6Step237HeadFv_Incoming : rowsOwned s6Step237HeadFvBefore [s6Step237HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237HeadGRow,s6Step237HeadFRow,s6Step237HeadGvRow,s6Step237HeadFvRow] 3 s6Step237HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237HeadFv_Outgoing : rowsOwned s6Step237HeadFvAfter [s6Step237HeadFvOut] :=
  hmrRows_owned_drop s6Step237HeadFvAfter [s6Step237HeadGOut,s6Step237HeadFOut,s6Step237HeadGvOut,s6Step237HeadFvOut] 3 s6Step237HeadBank_outgoingOwned

private theorem s6Step237HeadFv_distinct : (s6Step237HeadFvRow.sign::s6Step237HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237HeadFv_owned : (s6Step237HeadFvRow.sign::s6Step237HeadFvRow.payload).toFinset⊆s6Step237HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237HeadFv_reserved : s6Step237HeadFvBefore.reserve s6Step237HeadFvFresh.toFinset=some s6Step237HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step237HeadFvFresh,arenaWires]
  · norm_num [s6Step237HeadFvBefore,s6Step237HeadGvAfter,s6Step237HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step237HeadFvAfter,s6Step237HeadFvBefore,s6Step237HeadGvAfter,s6Step237HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step237HeadFv_checked : planRowResizeLog s6Step237HeadFvBefore s6Step237HeadFvRow 135 s6Step237HeadFvFresh=
    some (s6Step237HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864],776⟩,growRow 776 s6Step237HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step237HeadFvBefore s6Step237HeadFvAfter s6Step237HeadFvRow 135 s6Step237HeadFvFresh
    s6Step237HeadFv_distinct s6Step237HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step237HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step237HeadFvRow.payload++s6Step237HeadFvFresh) s6Step237HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 864],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step237HeadG_Incoming : rowsOwned s6Step237HeadGBefore [s6Step237HeadGRow,s6Step237HeadFRow,s6Step237HeadGvRow,s6Step237HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237HeadGRow,s6Step237HeadFRow,s6Step237HeadGvRow,s6Step237HeadFvRow] 0 s6Step237HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237HeadG_Outgoing : rowsOwned s6Step237HeadFvAfter [s6Step237HeadGOut,s6Step237HeadFOut,s6Step237HeadGvOut,s6Step237HeadFvOut] :=
  hmrRows_owned_drop s6Step237HeadFvAfter [s6Step237HeadGOut,s6Step237HeadFOut,s6Step237HeadGvOut,s6Step237HeadFvOut] 0 s6Step237HeadBank_outgoingOwned

private theorem s6Step237HeadG_distinct : (s6Step237HeadGRow.sign::s6Step237HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237HeadG_owned : (s6Step237HeadGRow.sign::s6Step237HeadGRow.payload).toFinset⊆s6Step237HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237HeadG_reserved : s6Step237HeadGBefore.reserve s6Step237HeadGFresh.toFinset=some s6Step237HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step237HeadGFresh,arenaWires]
  · norm_num [s6Step237HeadGBefore,s6Step237HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step237HeadGAfter,s6Step237HeadGBefore,s6Step237HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step237HeadG_checked : planRowResizeLog s6Step237HeadGBefore s6Step237HeadGRow 153 s6Step237HeadGFresh=
    some (s6Step237HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 805, 818],777⟩,growRow 777 s6Step237HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step237HeadGBefore s6Step237HeadGAfter s6Step237HeadGRow 153 s6Step237HeadGFresh
    s6Step237HeadG_distinct s6Step237HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step237HeadG_reserved
  have rowEq : WindowRow.mk (s6Step237HeadGRow.payload++s6Step237HeadGFresh) s6Step237HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 805, 818],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step237HeadGvBefore : Arena := s6Step237HeadFAfter

private theorem s6Step237HeadGv_Incoming : rowsOwned s6Step237HeadGvBefore [s6Step237HeadGvRow,s6Step237HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step237HeadGRow,s6Step237HeadFRow,s6Step237HeadGvRow,s6Step237HeadFvRow] 2 s6Step237HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step237HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step237HeadGv_Outgoing : rowsOwned s6Step237HeadFvAfter [s6Step237HeadGvOut,s6Step237HeadFvOut] :=
  hmrRows_owned_drop s6Step237HeadFvAfter [s6Step237HeadGOut,s6Step237HeadFOut,s6Step237HeadGvOut,s6Step237HeadFvOut] 2 s6Step237HeadBank_outgoingOwned

private theorem s6Step237HeadGv_distinct : (s6Step237HeadGvRow.sign::s6Step237HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step237HeadGv_owned : (s6Step237HeadGvRow.sign::s6Step237HeadGvRow.payload).toFinset⊆s6Step237HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step237HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (865≤q ∧ q<869) ∨ (870≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step237HeadGv_reserved : s6Step237HeadGvBefore.reserve s6Step237HeadGvFresh.toFinset=some s6Step237HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step237HeadGvFresh,arenaWires]
  · norm_num [s6Step237HeadGvBefore,s6Step237HeadFAfter,s6Step237HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step237HeadGvAfter,s6Step237HeadGvBefore,s6Step237HeadFAfter,s6Step237HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step237HeadGv_checked : planRowResizeLog s6Step237HeadGvBefore s6Step237HeadGvRow 135 s6Step237HeadGvFresh=
    some (s6Step237HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 908, 888],775⟩,growRow 775 s6Step237HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step237HeadGvBefore s6Step237HeadGvAfter s6Step237HeadGvRow 135 s6Step237HeadGvFresh
    s6Step237HeadGv_distinct s6Step237HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step237HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step237HeadGvRow.payload++s6Step237HeadGvFresh) s6Step237HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 908, 888],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step237HeadBank_rows : planWindowRowsLog s6Step237HeadGBefore [(s6Step237HeadGRow,153),(s6Step237HeadFRow,153),(s6Step237HeadGvRow,135),(s6Step237HeadFvRow,135)] [s6Step237HeadGFresh,s6Step237HeadFFresh,s6Step237HeadGvFresh,s6Step237HeadFvFresh]=
    some (s6Step237HeadFvAfter,[s6Step237HeadGOut,s6Step237HeadFOut,s6Step237HeadGvOut,s6Step237HeadFvOut],(growRow 777 s6Step237HeadGFresh ++ (growRow 795 s6Step237HeadFFresh ++ (growRow 775 s6Step237HeadGvFresh ++ (growRow 776 s6Step237HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step237HeadFvAfter [] []=some (s6Step237HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step237HeadFvBefore s6Step237HeadFvAfter s6Step237HeadFvAfter
    s6Step237HeadFvRow s6Step237HeadFvOut 135 s6Step237HeadFvFresh [] [] []
    (growRow 776 s6Step237HeadFvFresh) ([]) s6Step237HeadFv_Incoming s6Step237HeadFv_checked h4 s6Step237HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step237HeadGvBefore s6Step237HeadGvAfter s6Step237HeadFvAfter
    s6Step237HeadGvRow s6Step237HeadGvOut 135 s6Step237HeadGvFresh [(s6Step237HeadFvRow,135)] [s6Step237HeadFvFresh] [s6Step237HeadFvOut]
    (growRow 775 s6Step237HeadGvFresh) ((growRow 776 s6Step237HeadFvFresh ++ [])) s6Step237HeadGv_Incoming s6Step237HeadGv_checked h3 s6Step237HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step237HeadFBefore s6Step237HeadFAfter s6Step237HeadFvAfter
    s6Step237HeadFRow s6Step237HeadFOut 153 s6Step237HeadFFresh [(s6Step237HeadGvRow,135),(s6Step237HeadFvRow,135)] [s6Step237HeadGvFresh,s6Step237HeadFvFresh] [s6Step237HeadGvOut,s6Step237HeadFvOut]
    (growRow 795 s6Step237HeadFFresh) ((growRow 775 s6Step237HeadGvFresh ++ (growRow 776 s6Step237HeadFvFresh ++ []))) s6Step237HeadF_Incoming s6Step237HeadF_checked h2 s6Step237HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step237HeadGBefore s6Step237HeadGAfter s6Step237HeadFvAfter
    s6Step237HeadGRow s6Step237HeadGOut 153 s6Step237HeadGFresh [(s6Step237HeadFRow,153),(s6Step237HeadGvRow,135),(s6Step237HeadFvRow,135)] [s6Step237HeadFFresh,s6Step237HeadGvFresh,s6Step237HeadFvFresh] [s6Step237HeadFOut,s6Step237HeadGvOut,s6Step237HeadFvOut]
    (growRow 777 s6Step237HeadGFresh) ((growRow 795 s6Step237HeadFFresh ++ (growRow 775 s6Step237HeadGvFresh ++ (growRow 776 s6Step237HeadFvFresh ++ [])))) s6Step237HeadG_Incoming s6Step237HeadG_checked h1 s6Step237HeadG_Outgoing
  exact h0

private theorem s6Step237HeadBank_checked : compileHmrBankResizeLog .headroom s6Step237HeadGBefore ⟨s6Step237HeadFRow,s6Step237HeadGRow,s6Step237HeadFvRow,s6Step237HeadGvRow⟩ ⟨153,153,135,135⟩ [s6Step237HeadGFresh,s6Step237HeadFFresh,s6Step237HeadGvFresh,s6Step237HeadFvFresh]=
    some (s6Step237HeadFvAfter,⟨s6Step237HeadFOut,s6Step237HeadGOut,s6Step237HeadFvOut,s6Step237HeadGvOut⟩,(growRow 777 s6Step237HeadGFresh ++ (growRow 795 s6Step237HeadFFresh ++ (growRow 775 s6Step237HeadGvFresh ++ (growRow 776 s6Step237HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step237HeadBank_rows]
  rfl

private theorem s6Step237Front_checked : compileHmrSourceFrontLog s6Step237EntryFBefore s6Step237FrontBank 152 134 ⟨152,150,135,133⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step237FrontLog=some s6Step237FrontPlan := by
  have pairEq : s6Step237FrontPair=⟨s6Step237HeadFRow,s6Step237HeadGRow,s6Step237HeadFvRow,s6Step237HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step237FrontHead=⟨s6Step237ExitFRow,s6Step237ExitGRow,s6Step237ExitFvRow,s6Step237ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step237Add0A=s6Step237FrontHead.f.wires := by decide +kernel
  have gEq : s6Step237Add0B=s6Step237FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step237Add1A=s6Step237FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step237Add1B=s6Step237FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step237EntryFBefore s6Step237FrontBank 152 134 ⟨152,150,135,133⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step237FrontLog s6Step237FrontPlan
  · exact s6Step237Front_entry
  · exact s6Step237EntryBank_checked
  · exact s6Step237Front_sigma
  · rfl
  · exact s6Step237Front_branch
  · rfl
  · simpa only [s6Step237FrontPlan,pairEq] using s6Step237HeadBank_checked
  · simpa only [s6Step237FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step237F4_checked
  · exact s6Step237Counter_checked
  · rfl
  · simpa only [s6Step237FrontPlan,headEq] using s6Step237ExitBank_checked

private theorem s6Step237Complete_explicit_checked : compileHmrEarlyStepLog s6Step237EntryFBefore s6Step237FrontBank 152 134 ⟨152,150,135,133⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step237CompleteLog=some s6Step237CompletePlan := by
  let Q := s6Step237EarlyControlPlan
  have hq := s6Step237EarlyControl_plan_checked
  have fv1 : s6Step237CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step237CompleteOut.fv.payload[2]?.getD s6Step237CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step237CompleteOut.fv.payload[3]?.getD s6Step237CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step237CompleteOut.fv.payload[4]?.getD s6Step237CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step237EntryFBefore s6Step237EarlyControlArena s6Step237FrontBank 152 134 ⟨152,150,135,133⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 49 s6Step237CompleteLog s6Step237FrontPlan Q
    s6Step237Front_checked s6Step237Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step237Complete_owned s6Step237Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step237EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 769 868 s6Step237CompleteOut.fv.second (s6Step237CompleteOut.fv.payload[2]?.getD s6Step237CompleteOut.fv.sign) (s6Step237CompleteOut.fv.payload[3]?.getD s6Step237CompleteOut.fv.sign) (s6Step237CompleteOut.fv.payload[4]?.getD s6Step237CompleteOut.fv.sign) 822 49 s6Step237EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep237Arena : Arena := s6Step237EntryFBefore
def s6PrivateStep237Bank : WindowBank := s6Step237FrontBank
def s6PrivateStep237Spec : HmrSourceWalkStepLog := ⟨152,134,⟨152,150,135,133⟩,49,.early s6Step237CompleteLog⟩
def s6PrivateStep237Plan : HmrSourceStepPlan := .early s6Step237CompletePlan
theorem s6PrivateStep237_source : s6PrivateStep237Spec=s6ObservedLogs224[13] := rfl
theorem s6PrivateStep237_checked : compileHmrSourceStepLog s6PrivateStep237Arena s6PrivateStep237Bank
    s6PrivateStep237Spec.fgWidth s6PrivateStep237Spec.vWidth s6PrivateStep237Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]
    6 498 237 s6PrivateStep237Spec.need none s6PrivateStep237Spec.log=some s6PrivateStep237Plan := by
  change compileHmrSourceStepLog s6Step237EntryFBefore s6Step237FrontBank 152 134 ⟨152,150,135,133⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] 6 498 237 49 none (.early s6Step237CompleteLog)=some (.early s6Step237CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 237<498)]
  rw [s6Step237Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
