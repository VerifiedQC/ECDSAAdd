import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep198
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

private def s6Step200CompleteMoves : List (Wire × Wire) := [(780,169),(927,425),(794,426)]

private def s6Step200EarlyControlLog : HmrEarlyControlLog := ⟨[794, 927, 780, 813, 838],[791],[822],[869, 786, 810, 809, 817, 804],[]⟩

private def s6Step200FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [869], [], [880, 813, 838]],[[786], [822], [791], [825]],[[], [], [], []]⟩,[891],[854],[810],[809],[817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 804]⟩

private def s6Step200CompleteLog : HmrEarlyStepLog := ⟨s6Step200FrontLog,s6Step200CompleteMoves,s6Step200EarlyControlLog⟩

private def s6Step200ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424],795⟩

private def s6Step200ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825],776⟩

private def s6Step200ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩

private def s6Step200ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880],775⟩

private def s6Step200FrontOut : WindowBank := ⟨s6Step200ExitFOut,s6Step200ExitGOut,s6Step200ExitFvOut,s6Step200ExitGvOut⟩

private def s6Step200CompleteOut : WindowBank := s6Step200FrontOut.repacked s6Step200CompleteMoves

private def s6Step200EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step200EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step200EarlyControlPositiveArena,[791],s6Step200EarlyControlEqualityArena,[822],⟨⟨891,false⟩,[⟨⟨791,false⟩,822⟩]⟩⟩

private def s6Step200EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step200EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step200EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step200EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,794⟩,⟨⟨772,false⟩,927⟩,⟨⟨771,false⟩,780⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,838⟩]⟩

private def s6Step200EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step200EarlyControlZeroArena,s6Step200EarlyControlZeroPlan,s6Step200EarlyControlClassPlan,s6Step200EarlyControlFlagArena,s6Step200EarlyControlFittedArena,s6Step200EarlyControlHistoryArena,s6Step200EarlyControlSigmaArena,s6Step200EarlyControlOutputArena,s6Step200EarlyControlLog⟩

private def s6Step200CounterWork : List Wire := [810, 809, 817, 804]

private theorem s6Step200Counter_bounded : s6Step200CounterWork.toFinset⊆arenaWires := by norm_num [s6Step200CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step200HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200CounterDuring : Arena := ⟨s6Step200HeadFvAfter.live∪s6Step200CounterWork.toFinset,Finset.union_subset s6Step200HeadFvAfter.bounded s6Step200Counter_bounded⟩

private def s6Step200EntryFFresh : List Wire := []

private def s6Step200EntryFvFresh : List Wire := []

private def s6Step200EntryGFresh : List Wire := [869]

private def s6Step200EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200EntryGvFresh : List Wire := [880, 813, 838]

private def s6Step200ExitFExtra : List Wire := [425, 426, 822]

private def s6Step200ExitGExtra : List Wire := [169, 869, 786]

private def s6Step200ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<425) ∨ (427≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200ExitGvExtra : List Wire := [813, 838, 791]

private def s6Step200Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200Add0Work : List Wire := [817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step200Add0_bounded : s6Step200Add0Work.toFinset⊆arenaWires := by
  have h : s6Step200Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step200Add0During : Arena := ⟨s6Step200Add0Arena.live∪s6Step200Add0Work.toFinset,Finset.union_subset s6Step200Add0Arena.bounded s6Step200Add0_bounded⟩

private def s6Step200Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200Add1Work : List Wire := [817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step200Add1_bounded : s6Step200Add1Work.toFinset⊆arenaWires := by
  have h : s6Step200Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step200Add1During : Arena := ⟨s6Step200Add1Arena.live∪s6Step200Add1Work.toFinset,Finset.union_subset s6Step200Add1Arena.bounded s6Step200Add1_bounded⟩

private def s6Step200F4FlagArena : Arena := ⟨s6Step200HeadFvAfter.live∪{810},Finset.union_subset s6Step200HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step200F4Plan : HmrHybridF4Plan := ⟨s6Step200F4FlagArena,[810],s6Step200Add0Arena,[809],s6Step200Add0During,s6Step200Add0Work,s6Step200Add1During,s6Step200Add1Work⟩

private def s6Step200HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 822],795⟩

private def s6Step200HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825],776⟩

private def s6Step200HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 869, 786],777⟩

private def s6Step200HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 813, 838, 791],775⟩

private def s6Step200FrontHead : WindowBank := ⟨s6Step200HeadFOut,s6Step200HeadGOut,s6Step200HeadFvOut,s6Step200HeadGvOut⟩

private def s6Step200EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426],795⟩

private def s6Step200EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903],776⟩

private def s6Step200EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 869],777⟩

private def s6Step200EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 813, 838],775⟩

private def s6Step200FrontPair : WindowBank := ⟨s6Step200EntryFOut,s6Step200EntryGOut,s6Step200EntryFvOut,s6Step200EntryGvOut⟩

private def s6Step200FrontSigmaArena : Arena := ⟨s6Step200EntryGvAfter.live∪{891},Finset.union_subset s6Step200EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step200HeadFFresh : List Wire := [822]

private def s6Step200HeadFvFresh : List Wire := [825]

private def s6Step200HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200HeadGFresh : List Wire := [786]

private def s6Step200HeadGvFresh : List Wire := [791]

private def s6Step200FrontPlan : HmrSourceFront := ⟨s6Step200EntryGvAfter,s6Step200FrontPair,(growRow 795 s6Step200EntryFFresh ++ (growRow 777 s6Step200EntryGFresh ++ (growRow 776 s6Step200EntryFvFresh ++ (growRow 775 s6Step200EntryGvFresh ++ [])))),s6Step200FrontSigmaArena,[891],s6Step200HeadGBefore,[854],
  s6Step200HeadFvAfter,s6Step200FrontHead,(growRow 777 s6Step200HeadGFresh ++ (growRow 795 s6Step200HeadFFresh ++ (growRow 775 s6Step200HeadGvFresh ++ (growRow 776 s6Step200HeadFvFresh ++ [])))),s6Step200F4Plan,s6Step200CounterDuring,s6Step200CounterWork,s6Step200ExitGvAfter,s6Step200FrontOut,(shrinkRow 777 s6Step200ExitGExtra ++ (shrinkRow 795 s6Step200ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step200ExitGvExtra ++ []))))⟩

private def s6Step200CompletePlan : HmrEarlyStepPlan := ⟨s6Step200FrontPlan,s6Step200EarlyControlArena,s6Step200EarlyControlPlan,s6Step200CompleteMoves⟩

private theorem s6Step200Complete_apart : List.Disjoint (s6Step200CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [891, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step200CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[891, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step200Complete_owned : (s6Step200CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step200EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private def s6Step200CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,425),(427,780),(781,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,832),(833,838),(839,842),(843,849),(850,869),(870,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step200CompleteRelocationMove0Borrowed : Arena := ⟨s6Step200ExitGvAfter.live∪{169},Finset.union_subset s6Step200ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step200CompleteRelocationMove1After : Arena := ⟨arenaWires.filter (fun q => ([(0,426),(427,780),(781,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,832),(833,838),(839,842),(843,849),(850,869),(870,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step200CompleteRelocationMove1Borrowed : Arena := ⟨s6Step200CompleteRelocationMove0After.live∪{425},Finset.union_subset s6Step200CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private def s6Step200CompleteRelocationMove2Borrowed : Arena := ⟨s6Step200CompleteRelocationMove1After.live∪{426},Finset.union_subset s6Step200CompleteRelocationMove1After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step200CompleteRelocation_move0_owned : 780∈s6Step200ExitGvAfter.live := by norm_num [s6Step200ExitGvAfter,arenaWires]

private theorem s6Step200CompleteRelocation_move0_reserve : s6Step200ExitGvAfter.reserve {169}=some s6Step200CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step200ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step200CompleteRelocation_move0_retire : s6Step200CompleteRelocationMove0Borrowed.retireSet {780}=s6Step200CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step200CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step200CompleteRelocationMove0Borrowed,s6Step200ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step200CompleteRelocation_move1_owned : 927∈s6Step200CompleteRelocationMove0After.live := by norm_num [s6Step200CompleteRelocationMove0After,arenaWires]

private theorem s6Step200CompleteRelocation_move1_reserve : s6Step200CompleteRelocationMove0After.reserve {425}=some s6Step200CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step200CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step200CompleteRelocation_move1_retire : s6Step200CompleteRelocationMove1Borrowed.retireSet {927}=s6Step200CompleteRelocationMove1After := by
  unfold Arena.retireSet s6Step200CompleteRelocationMove1After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step200CompleteRelocationMove1Borrowed,s6Step200CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step200CompleteRelocation_move2_owned : 794∈s6Step200CompleteRelocationMove1After.live := by norm_num [s6Step200CompleteRelocationMove1After,arenaWires]

private theorem s6Step200CompleteRelocation_move2_reserve : s6Step200CompleteRelocationMove1After.reserve {426}=some s6Step200CompleteRelocationMove2Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step200CompleteRelocationMove1After,arenaWires]
  · rfl

private theorem s6Step200CompleteRelocation_move2_retire : s6Step200CompleteRelocationMove2Borrowed.retireSet {794}=s6Step200EarlyControlArena := by
  unfold Arena.retireSet s6Step200EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step200CompleteRelocationMove2Borrowed,s6Step200CompleteRelocationMove1After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step200CompleteRelocation_checked : s6Step200ExitGvAfter.checkRepack [(780,169),(927,425),(794,426)]=some s6Step200EarlyControlArena := by
  have tail3 : s6Step200EarlyControlArena.checkRepack []=some s6Step200EarlyControlArena := rfl
  have tail2 := Arena.checkRepack_cons_of_parts s6Step200CompleteRelocationMove1After s6Step200CompleteRelocationMove2Borrowed s6Step200EarlyControlArena s6Step200EarlyControlArena 794 426 []
    s6Step200CompleteRelocation_move2_owned s6Step200CompleteRelocation_move2_reserve s6Step200CompleteRelocation_move2_retire tail3
  have tail1 := Arena.checkRepack_cons_of_parts s6Step200CompleteRelocationMove0After s6Step200CompleteRelocationMove1Borrowed s6Step200CompleteRelocationMove1After s6Step200EarlyControlArena 927 425 [(794,426)]
    s6Step200CompleteRelocation_move1_owned s6Step200CompleteRelocation_move1_reserve s6Step200CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step200ExitGvAfter s6Step200CompleteRelocationMove0Borrowed s6Step200CompleteRelocationMove0After s6Step200EarlyControlArena 780 169 [(927,425),(794,426)]
    s6Step200CompleteRelocation_move0_owned s6Step200CompleteRelocation_move0_reserve s6Step200CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step200Complete_repack : s6Step200ExitGvAfter.checkRepack s6Step200CompleteMoves=some s6Step200EarlyControlArena := by
  simpa only [s6Step200CompleteMoves] using s6Step200CompleteRelocation_checked

private theorem s6Step200EarlyControl_branchOwned : ([854] : List Wire).toFinset⊆s6Step200EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step200EarlyControl_branch : compileHmrBranchRetirement s6Step200EarlyControlSigmaArena 854=some s6Step200EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step200EarlyControl_branchOwned
  · ext q
    simp [s6Step200EarlyControlOutputArena,s6Step200EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step200EarlyControl_classEqualityBorrow : s6Step200EarlyControlPositiveArena.checkBorrow (([891, 791] : List Wire).length-1) s6Step200EarlyControlLog.classWork=some s6Step200EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step200EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step200EarlyControlEqualityArena,s6Step200EarlyControlPositiveArena,s6Step200EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step200EarlyControl_classEqualityOwned : ([891, 791] : List Wire).toFinset⊆s6Step200EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200EarlyControl_classEquality : compileHmrEqualityLog s6Step200EarlyControlPositiveArena [891, 791] 0 s6Step200EarlyControlLog.classWork=some (s6Step200EarlyControlEqualityArena,s6Step200EarlyControlLog.classWork,s6Step200EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step200EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step200EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step200EarlyControl_classOwned : ([769, 838, 891] : List Wire).toFinset⊆s6Step200EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200EarlyControl_positiveBorrow : s6Step200EarlyControlZeroArena.checkBorrow (1) s6Step200EarlyControlLog.positiveWork=some s6Step200EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step200EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step200EarlyControlPositiveArena,s6Step200EarlyControlZeroArena,s6Step200EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step200EarlyControl_class : compileHmrSourceClassLog s6Step200EarlyControlZeroArena false 769 s6Step200EarlyControlZeroPlan.top 0 891 s6Step200EarlyControlLog.positiveWork s6Step200EarlyControlLog.classWork=some s6Step200EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step200EarlyControlClassPlan s6Step200EarlyControlZeroArena false 769 s6Step200EarlyControlZeroPlan.top 0 891
  constructor
  · decide +kernel
  · exact s6Step200EarlyControl_classOwned
  · exact s6Step200EarlyControl_positiveBorrow
  · exact s6Step200EarlyControl_classEquality

private theorem s6Step200EarlyControl_entryRecordOwned : ([854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step200EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step200EarlyControl_entrySigmaOwned : ([891, 254] : List Wire).toFinset⊆s6Step200EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step200EarlyControl_fitBorrow : s6Step200EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step200EarlyControlLog.recordFresh=some s6Step200EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step200EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step200EarlyControlFittedArena,s6Step200EarlyControlFlagArena,s6Step200EarlyControlLog,arenaWires]

private theorem s6Step200EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step200EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200EarlyControl_fit : compileHmrRecordGrowLog s6Step200EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step200EarlyControlLog.recordFresh=some s6Step200EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step200EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step200EarlyControl_fitBorrow

private theorem s6Step200EarlyControl_flagsBorrow : s6Step200EarlyControlEqualityArena.checkBorrow (6) s6Step200EarlyControlLog.flagWork=some s6Step200EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step200EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step200EarlyControlFlagArena,s6Step200EarlyControlEqualityArena,s6Step200EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step200EarlyControl_flagsOwned : ([822, 253, 252, 251] : List Wire).toFinset⊆s6Step200EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200EarlyControl_flags : compileHmrFlagsLog s6Step200EarlyControlClassPlan.equalityArena s6Step200EarlyControlClassPlan.equality.top 253 252 251 s6Step200EarlyControlLog.flagWork=some s6Step200EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step200EarlyControl_flagsOwned⟩
  · exact s6Step200EarlyControl_flagsBorrow

private theorem s6Step200EarlyControl_historyBorrow : s6Step200EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step200EarlyControlLog.recordFresh=some s6Step200EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step200EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
      decide +kernel
    · ext q
      simp [s6Step200EarlyControlHistoryArena,s6Step200EarlyControlArena,s6Step200EarlyControlLog,arenaWires]

private theorem s6Step200EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step200EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step200EarlyControl_history : compileHmrRecordGrowLog s6Step200EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step200EarlyControlLog.recordFresh=some s6Step200EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step200EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step200EarlyControl_historyBorrow

private theorem s6Step200EarlyControl_sigmaOwned : ([254, 891] : List Wire).toFinset⊆s6Step200EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step200EarlyControl_sigmaReleaseOwned : ([891] : List Wire).toFinset⊆s6Step200EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step200EarlyControl_sigmaRelease : s6Step200EarlyControlHistoryArena.release {891} (fun _ => false)=some s6Step200EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step200EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step200EarlyControlSigmaArena,s6Step200EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step200EarlyControl_sigma : compileHmrSigmaDropLog s6Step200EarlyControlHistoryArena false 0 0 254 891 []=some s6Step200EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step200EarlyControl_sigmaOwned⟩
  · exact s6Step200EarlyControl_sigmaRelease

private theorem s6Step200EarlyControl_zeroBorrow : s6Step200EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step200EarlyControlLog.zeroWork=some s6Step200EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step200EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step200EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
      decide +kernel
    · ext q
      simp [s6Step200EarlyControlZeroArena,s6Step200EarlyControlArena,s6Step200EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step200EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step200EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step200EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step200EarlyControl_zero : compileHmrEqualityLog s6Step200EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step200EarlyControlLog.zeroWork=some (s6Step200EarlyControlZeroArena,s6Step200EarlyControlLog.zeroWork,s6Step200EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step200EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step200EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step200EarlyControl_logged : s6Step200EarlyControlPlan.Logged s6Step200EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 891 254 253 252 251 854 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step200EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step200EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step200EarlyControl_zero
  · exact s6Step200EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step200EarlyControl_flags
  · exact s6Step200EarlyControl_fit
  · exact s6Step200EarlyControl_history
  · exact s6Step200EarlyControl_sigma
  · exact s6Step200EarlyControl_branch

private theorem s6Step200EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step200EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 891 254 253 252 251 854 47 s6Step200EarlyControlLog=some s6Step200EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step200EarlyControlPlan s6Step200EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 891 254 253 252 251 854 47 s6Step200EarlyControl_logged

private def s6Step200EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426],795⟩

private def s6Step200EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903],776⟩

private def s6Step200EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169],777⟩

private def s6Step200EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853],775⟩

private def s6Step200FrontBank : WindowBank := ⟨s6Step200EntryFRow,s6Step200EntryGRow,s6Step200EntryFvRow,s6Step200EntryGvRow⟩

private def s6Step200Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 822, 795]

private def s6Step200Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 869, 786, 777]

private def s6Step200Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825, 776]

private def s6Step200Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 813, 838, 791, 775]

private theorem s6Step200Counter_apart : Disjoint s6Step200HeadFvAfter.live s6Step200CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step200HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200Counter_borrowed : s6Step200HeadFvAfter.checkBorrow 4 s6Step200CounterWork=some s6Step200CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step200HeadFvAfter s6Step200CounterDuring s6Step200CounterWork.toFinset s6Step200Counter_bounded s6Step200Counter_apart rfl

private theorem s6Step200Counter_owned : (891::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step200HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step200HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200Counter_checked : compileHmrCounterStepLog s6Step200HeadFvAfter true 891 [774, 773, 772, 771, 770, 769] s6Step200CounterWork=some s6Step200CounterDuring := by
  have owned : ∀q∈891::[774, 773, 772, 771, 770, 769],q∈s6Step200HeadFvAfter.live := fun q hq => s6Step200Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step200Counter_borrowed

private def s6Step200EntryFAfter : Arena := s6Step200EntryFBefore

private theorem s6Step200EntryBank_incomingDistinct : ([s6Step200EntryFRow,s6Step200EntryGRow,s6Step200EntryFvRow,s6Step200EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200EntryF_Incoming : rowsOwned s6Step200EntryFBefore [s6Step200EntryFRow,s6Step200EntryGRow,s6Step200EntryFvRow,s6Step200EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200EntryFRow,s6Step200EntryGRow,s6Step200EntryFvRow,s6Step200EntryGvRow] 0 s6Step200EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200EntryBank_outgoingOwned : rowsOwned s6Step200EntryGvAfter [s6Step200EntryFOut,s6Step200EntryGOut,s6Step200EntryFvOut,s6Step200EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step200EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200EntryF_Outgoing : rowsOwned s6Step200EntryGvAfter [s6Step200EntryFOut,s6Step200EntryGOut,s6Step200EntryFvOut,s6Step200EntryGvOut] :=
  hmrRows_owned_drop s6Step200EntryGvAfter [s6Step200EntryFOut,s6Step200EntryGOut,s6Step200EntryFvOut,s6Step200EntryGvOut] 0 s6Step200EntryBank_outgoingOwned

private theorem s6Step200EntryF_distinct : (s6Step200EntryFRow.sign::s6Step200EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200EntryF_owned : (s6Step200EntryFRow.sign::s6Step200EntryFRow.payload).toFinset⊆s6Step200EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200EntryF_reserved : s6Step200EntryFBefore.reserve s6Step200EntryFFresh.toFinset=some s6Step200EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step200EntryFFresh,arenaWires]
  · norm_num [s6Step200EntryFBefore,s6Step200EntryFFresh,arenaWires]
  · simp only [s6Step200EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step200EntryF_checked : planRowResizeLog s6Step200EntryFBefore s6Step200EntryFRow 171 s6Step200EntryFFresh=
    some (s6Step200EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426],795⟩,growRow 795 s6Step200EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step200EntryFBefore s6Step200EntryFAfter s6Step200EntryFRow 171 s6Step200EntryFFresh
    s6Step200EntryF_distinct s6Step200EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step200EntryF_reserved
  have rowEq : WindowRow.mk (s6Step200EntryFRow.payload++s6Step200EntryFFresh) s6Step200EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step200EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200EntryFvAfter : Arena := s6Step200EntryGAfter

private def s6Step200EntryFvBefore : Arena := s6Step200EntryGAfter

private theorem s6Step200EntryFv_Incoming : rowsOwned s6Step200EntryFvBefore [s6Step200EntryFvRow,s6Step200EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200EntryFRow,s6Step200EntryGRow,s6Step200EntryFvRow,s6Step200EntryGvRow] 2 s6Step200EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200EntryFv_Outgoing : rowsOwned s6Step200EntryGvAfter [s6Step200EntryFvOut,s6Step200EntryGvOut] :=
  hmrRows_owned_drop s6Step200EntryGvAfter [s6Step200EntryFOut,s6Step200EntryGOut,s6Step200EntryFvOut,s6Step200EntryGvOut] 2 s6Step200EntryBank_outgoingOwned

private theorem s6Step200EntryFv_distinct : (s6Step200EntryFvRow.sign::s6Step200EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200EntryFv_owned : (s6Step200EntryFvRow.sign::s6Step200EntryFvRow.payload).toFinset⊆s6Step200EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200EntryFv_reserved : s6Step200EntryFvBefore.reserve s6Step200EntryFvFresh.toFinset=some s6Step200EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step200EntryFvFresh,arenaWires]
  · norm_num [s6Step200EntryFvBefore,s6Step200EntryGAfter,s6Step200EntryFvFresh,arenaWires]
  · simp only [s6Step200EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step200EntryFv_checked : planRowResizeLog s6Step200EntryFvBefore s6Step200EntryFvRow 116 s6Step200EntryFvFresh=
    some (s6Step200EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903],776⟩,growRow 776 s6Step200EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step200EntryFvBefore s6Step200EntryFvAfter s6Step200EntryFvRow 116 s6Step200EntryFvFresh
    s6Step200EntryFv_distinct s6Step200EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step200EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step200EntryFvRow.payload++s6Step200EntryFvFresh) s6Step200EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step200EntryGBefore : Arena := s6Step200EntryFBefore

private theorem s6Step200EntryG_Incoming : rowsOwned s6Step200EntryGBefore [s6Step200EntryGRow,s6Step200EntryFvRow,s6Step200EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200EntryFRow,s6Step200EntryGRow,s6Step200EntryFvRow,s6Step200EntryGvRow] 1 s6Step200EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200EntryG_Outgoing : rowsOwned s6Step200EntryGvAfter [s6Step200EntryGOut,s6Step200EntryFvOut,s6Step200EntryGvOut] :=
  hmrRows_owned_drop s6Step200EntryGvAfter [s6Step200EntryFOut,s6Step200EntryGOut,s6Step200EntryFvOut,s6Step200EntryGvOut] 1 s6Step200EntryBank_outgoingOwned

private theorem s6Step200EntryG_distinct : (s6Step200EntryGRow.sign::s6Step200EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200EntryG_owned : (s6Step200EntryGRow.sign::s6Step200EntryGRow.payload).toFinset⊆s6Step200EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200EntryG_reserved : s6Step200EntryGBefore.reserve s6Step200EntryGFresh.toFinset=some s6Step200EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step200EntryGFresh,arenaWires]
  · norm_num [s6Step200EntryGBefore,s6Step200EntryFBefore,s6Step200EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step200EntryGAfter,s6Step200EntryGBefore,s6Step200EntryFBefore,s6Step200EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step200EntryG_checked : planRowResizeLog s6Step200EntryGBefore s6Step200EntryGRow 171 s6Step200EntryGFresh=
    some (s6Step200EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 869],777⟩,growRow 777 s6Step200EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step200EntryGBefore s6Step200EntryGAfter s6Step200EntryGRow 171 s6Step200EntryGFresh
    s6Step200EntryG_distinct s6Step200EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step200EntryG_reserved
  have rowEq : WindowRow.mk (s6Step200EntryGRow.payload++s6Step200EntryGFresh) s6Step200EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 869],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step200EntryGvBefore : Arena := s6Step200EntryGAfter

private theorem s6Step200EntryGv_Incoming : rowsOwned s6Step200EntryGvBefore [s6Step200EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200EntryFRow,s6Step200EntryGRow,s6Step200EntryFvRow,s6Step200EntryGvRow] 3 s6Step200EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200EntryGv_Outgoing : rowsOwned s6Step200EntryGvAfter [s6Step200EntryGvOut] :=
  hmrRows_owned_drop s6Step200EntryGvAfter [s6Step200EntryFOut,s6Step200EntryGOut,s6Step200EntryFvOut,s6Step200EntryGvOut] 3 s6Step200EntryBank_outgoingOwned

private theorem s6Step200EntryGv_distinct : (s6Step200EntryGvRow.sign::s6Step200EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200EntryGv_owned : (s6Step200EntryGvRow.sign::s6Step200EntryGvRow.payload).toFinset⊆s6Step200EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200EntryGv_reserved : s6Step200EntryGvBefore.reserve s6Step200EntryGvFresh.toFinset=some s6Step200EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step200EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step200EntryGvBefore,s6Step200EntryGAfter,s6Step200EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step200EntryGvAfter,s6Step200EntryGvBefore,s6Step200EntryGAfter,s6Step200EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step200EntryGv_checked : planRowResizeLog s6Step200EntryGvBefore s6Step200EntryGvRow 116 s6Step200EntryGvFresh=
    some (s6Step200EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 813, 838],775⟩,growRow 775 s6Step200EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step200EntryGvBefore s6Step200EntryGvAfter s6Step200EntryGvRow 116 s6Step200EntryGvFresh
    s6Step200EntryGv_distinct s6Step200EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step200EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step200EntryGvRow.payload++s6Step200EntryGvFresh) s6Step200EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 813, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step200EntryBank_rows : planWindowRowsLog s6Step200EntryFBefore [(s6Step200EntryFRow,171),(s6Step200EntryGRow,171),(s6Step200EntryFvRow,116),(s6Step200EntryGvRow,116)] [s6Step200EntryFFresh,s6Step200EntryGFresh,s6Step200EntryFvFresh,s6Step200EntryGvFresh]=
    some (s6Step200EntryGvAfter,[s6Step200EntryFOut,s6Step200EntryGOut,s6Step200EntryFvOut,s6Step200EntryGvOut],(growRow 795 s6Step200EntryFFresh ++ (growRow 777 s6Step200EntryGFresh ++ (growRow 776 s6Step200EntryFvFresh ++ (growRow 775 s6Step200EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step200EntryGvAfter [] []=some (s6Step200EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step200EntryGvBefore s6Step200EntryGvAfter s6Step200EntryGvAfter
    s6Step200EntryGvRow s6Step200EntryGvOut 116 s6Step200EntryGvFresh [] [] []
    (growRow 775 s6Step200EntryGvFresh) ([]) s6Step200EntryGv_Incoming s6Step200EntryGv_checked h4 s6Step200EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step200EntryFvBefore s6Step200EntryFvAfter s6Step200EntryGvAfter
    s6Step200EntryFvRow s6Step200EntryFvOut 116 s6Step200EntryFvFresh [(s6Step200EntryGvRow,116)] [s6Step200EntryGvFresh] [s6Step200EntryGvOut]
    (growRow 776 s6Step200EntryFvFresh) ((growRow 775 s6Step200EntryGvFresh ++ [])) s6Step200EntryFv_Incoming s6Step200EntryFv_checked h3 s6Step200EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step200EntryGBefore s6Step200EntryGAfter s6Step200EntryGvAfter
    s6Step200EntryGRow s6Step200EntryGOut 171 s6Step200EntryGFresh [(s6Step200EntryFvRow,116),(s6Step200EntryGvRow,116)] [s6Step200EntryFvFresh,s6Step200EntryGvFresh] [s6Step200EntryFvOut,s6Step200EntryGvOut]
    (growRow 777 s6Step200EntryGFresh) ((growRow 776 s6Step200EntryFvFresh ++ (growRow 775 s6Step200EntryGvFresh ++ []))) s6Step200EntryG_Incoming s6Step200EntryG_checked h2 s6Step200EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step200EntryFBefore s6Step200EntryFAfter s6Step200EntryGvAfter
    s6Step200EntryFRow s6Step200EntryFOut 171 s6Step200EntryFFresh [(s6Step200EntryGRow,171),(s6Step200EntryFvRow,116),(s6Step200EntryGvRow,116)] [s6Step200EntryGFresh,s6Step200EntryFvFresh,s6Step200EntryGvFresh] [s6Step200EntryGOut,s6Step200EntryFvOut,s6Step200EntryGvOut]
    (growRow 795 s6Step200EntryFFresh) ((growRow 777 s6Step200EntryGFresh ++ (growRow 776 s6Step200EntryFvFresh ++ (growRow 775 s6Step200EntryGvFresh ++ [])))) s6Step200EntryF_Incoming s6Step200EntryF_checked h1 s6Step200EntryF_Outgoing
  exact h0

private theorem s6Step200EntryBank_checked : compileHmrBankResizeLog .entry s6Step200EntryFBefore ⟨s6Step200EntryFRow,s6Step200EntryGRow,s6Step200EntryFvRow,s6Step200EntryGvRow⟩ ⟨171,171,116,116⟩ [s6Step200EntryFFresh,s6Step200EntryGFresh,s6Step200EntryFvFresh,s6Step200EntryGvFresh]=
    some (s6Step200EntryGvAfter,⟨s6Step200EntryFOut,s6Step200EntryGOut,s6Step200EntryFvOut,s6Step200EntryGvOut⟩,(growRow 795 s6Step200EntryFFresh ++ (growRow 777 s6Step200EntryGFresh ++ (growRow 776 s6Step200EntryFvFresh ++ (growRow 775 s6Step200EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step200EntryBank_rows]
  rfl

private def s6Step200ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<425) ∨ (427≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200ExitFBefore : Arena := s6Step200ExitGAfter

private def s6Step200ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 822],795⟩

private def s6Step200ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825],776⟩

private def s6Step200ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 869, 786],777⟩

private def s6Step200ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 813, 838, 791],775⟩

private theorem s6Step200ExitBank_incomingDistinct : ([s6Step200ExitGRow,s6Step200ExitFRow,s6Step200ExitFvRow,s6Step200ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200ExitF_Incoming : rowsOwned s6Step200ExitFBefore [s6Step200ExitFRow,s6Step200ExitFvRow,s6Step200ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200ExitGRow,s6Step200ExitFRow,s6Step200ExitFvRow,s6Step200ExitGvRow] 1 s6Step200ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200ExitFBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200ExitBank_outgoingOwned : rowsOwned s6Step200ExitGvAfter [s6Step200ExitGOut,s6Step200ExitFOut,s6Step200ExitFvOut,s6Step200ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step200ExitGvAfter (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<425) ∨ (427≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200ExitF_Outgoing : rowsOwned s6Step200ExitGvAfter [s6Step200ExitFOut,s6Step200ExitFvOut,s6Step200ExitGvOut] :=
  hmrRows_owned_drop s6Step200ExitGvAfter [s6Step200ExitGOut,s6Step200ExitFOut,s6Step200ExitFvOut,s6Step200ExitGvOut] 1 s6Step200ExitBank_outgoingOwned

private theorem s6Step200ExitF_distinct : (s6Step200ExitFRow.sign::s6Step200ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200ExitF_owned : (s6Step200ExitFRow.sign::s6Step200ExitFRow.payload).toFinset⊆s6Step200ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200ExitFBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200ExitF_retired : s6Step200ExitFBefore.retireSet s6Step200ExitFExtra.toFinset=s6Step200ExitFAfter := by
  unfold Arena.retireSet s6Step200ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step200ExitFBefore,s6Step200ExitGAfter,s6Step200ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step200ExitF_checked : planRowResizeLog s6Step200ExitFBefore s6Step200ExitFRow 169 []=
    some (s6Step200ExitFAfter,s6Step200ExitFOut,shrinkRow 795 s6Step200ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step200ExitFBefore s6Step200ExitFRow 169 s6Step200ExitF_distinct s6Step200ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step200ExitFRow.payload.take 169) s6Step200ExitFRow.sign=s6Step200ExitFOut := by decide +kernel
  have hi : s6Step200ExitFRow.payload.drop 169=s6Step200ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step200ExitF_retired] at result
  exact result

private def s6Step200ExitFvAfter : Arena := s6Step200ExitFAfter

private def s6Step200ExitFvBefore : Arena := s6Step200ExitFAfter

private theorem s6Step200ExitFv_Incoming : rowsOwned s6Step200ExitFvBefore [s6Step200ExitFvRow,s6Step200ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200ExitGRow,s6Step200ExitFRow,s6Step200ExitFvRow,s6Step200ExitGvRow] 2 s6Step200ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200ExitFvBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<425) ∨ (427≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200ExitFv_Outgoing : rowsOwned s6Step200ExitGvAfter [s6Step200ExitFvOut,s6Step200ExitGvOut] :=
  hmrRows_owned_drop s6Step200ExitGvAfter [s6Step200ExitGOut,s6Step200ExitFOut,s6Step200ExitFvOut,s6Step200ExitGvOut] 2 s6Step200ExitBank_outgoingOwned

private theorem s6Step200ExitFv_distinct : (s6Step200ExitFvRow.sign::s6Step200ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200ExitFv_owned : (s6Step200ExitFvRow.sign::s6Step200ExitFvRow.payload).toFinset⊆s6Step200ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200ExitFvBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<425) ∨ (427≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200ExitFv_reserved : s6Step200ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step200ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step200ExitFv_checked : planRowResizeLog s6Step200ExitFvBefore s6Step200ExitFvRow 117 []=
    some (s6Step200ExitFvAfter,s6Step200ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step200ExitFvBefore s6Step200ExitFvAfter s6Step200ExitFvRow 117 []
    s6Step200ExitFv_distinct s6Step200ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step200ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step200ExitFvRow.payload++[]) s6Step200ExitFvRow.sign=s6Step200ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step200ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step200ExitG_Incoming : rowsOwned s6Step200ExitGBefore [s6Step200ExitGRow,s6Step200ExitFRow,s6Step200ExitFvRow,s6Step200ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200ExitGRow,s6Step200ExitFRow,s6Step200ExitFvRow,s6Step200ExitGvRow] 0 s6Step200ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200ExitG_Outgoing : rowsOwned s6Step200ExitGvAfter [s6Step200ExitGOut,s6Step200ExitFOut,s6Step200ExitFvOut,s6Step200ExitGvOut] :=
  hmrRows_owned_drop s6Step200ExitGvAfter [s6Step200ExitGOut,s6Step200ExitFOut,s6Step200ExitFvOut,s6Step200ExitGvOut] 0 s6Step200ExitBank_outgoingOwned

private theorem s6Step200ExitG_distinct : (s6Step200ExitGRow.sign::s6Step200ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200ExitG_owned : (s6Step200ExitGRow.sign::s6Step200ExitGRow.payload).toFinset⊆s6Step200ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200ExitG_retired : s6Step200ExitGBefore.retireSet s6Step200ExitGExtra.toFinset=s6Step200ExitGAfter := by
  unfold Arena.retireSet s6Step200ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step200ExitGBefore,s6Step200ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step200ExitG_checked : planRowResizeLog s6Step200ExitGBefore s6Step200ExitGRow 169 []=
    some (s6Step200ExitGAfter,s6Step200ExitGOut,shrinkRow 777 s6Step200ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step200ExitGBefore s6Step200ExitGRow 169 s6Step200ExitG_distinct s6Step200ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step200ExitGRow.payload.take 169) s6Step200ExitGRow.sign=s6Step200ExitGOut := by decide +kernel
  have hi : s6Step200ExitGRow.payload.drop 169=s6Step200ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step200ExitG_retired] at result
  exact result

private def s6Step200ExitGvBefore : Arena := s6Step200ExitFAfter

private theorem s6Step200ExitGv_Incoming : rowsOwned s6Step200ExitGvBefore [s6Step200ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200ExitGRow,s6Step200ExitFRow,s6Step200ExitFvRow,s6Step200ExitGvRow] 3 s6Step200ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200ExitGvBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<425) ∨ (427≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200ExitGv_Outgoing : rowsOwned s6Step200ExitGvAfter [s6Step200ExitGvOut] :=
  hmrRows_owned_drop s6Step200ExitGvAfter [s6Step200ExitGOut,s6Step200ExitFOut,s6Step200ExitFvOut,s6Step200ExitGvOut] 3 s6Step200ExitBank_outgoingOwned

private theorem s6Step200ExitGv_distinct : (s6Step200ExitGvRow.sign::s6Step200ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200ExitGv_owned : (s6Step200ExitGvRow.sign::s6Step200ExitGvRow.payload).toFinset⊆s6Step200ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200ExitGvBefore (fun q => (0≤q ∧ q<169) ∨ (170≤q ∧ q<425) ∨ (427≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200ExitGv_retired : s6Step200ExitGvBefore.retireSet s6Step200ExitGvExtra.toFinset=s6Step200ExitGvAfter := by
  unfold Arena.retireSet s6Step200ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step200ExitGvBefore,s6Step200ExitFAfter,s6Step200ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step200ExitGv_checked : planRowResizeLog s6Step200ExitGvBefore s6Step200ExitGvRow 114 []=
    some (s6Step200ExitGvAfter,s6Step200ExitGvOut,shrinkRow 775 s6Step200ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step200ExitGvBefore s6Step200ExitGvRow 114 s6Step200ExitGv_distinct s6Step200ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step200ExitGvRow.payload.take 114) s6Step200ExitGvRow.sign=s6Step200ExitGvOut := by decide +kernel
  have hi : s6Step200ExitGvRow.payload.drop 114=s6Step200ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step200ExitGv_retired] at result
  exact result

private theorem s6Step200ExitBank_rows : planWindowRowsLog s6Step200ExitGBefore [(s6Step200ExitGRow,169),(s6Step200ExitFRow,169),(s6Step200ExitFvRow,117),(s6Step200ExitGvRow,114)] [[],[],[],[]]=
    some (s6Step200ExitGvAfter,[s6Step200ExitGOut,s6Step200ExitFOut,s6Step200ExitFvOut,s6Step200ExitGvOut],(shrinkRow 777 s6Step200ExitGExtra ++ (shrinkRow 795 s6Step200ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step200ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step200ExitGvAfter [] []=some (s6Step200ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step200ExitGvBefore s6Step200ExitGvAfter s6Step200ExitGvAfter
    s6Step200ExitGvRow s6Step200ExitGvOut 114 [] [] [] []
    (shrinkRow 775 s6Step200ExitGvExtra) ([]) s6Step200ExitGv_Incoming s6Step200ExitGv_checked h4 s6Step200ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step200ExitFvBefore s6Step200ExitFvAfter s6Step200ExitGvAfter
    s6Step200ExitFvRow s6Step200ExitFvOut 117 [] [(s6Step200ExitGvRow,114)] [[]] [s6Step200ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step200ExitGvExtra ++ [])) s6Step200ExitFv_Incoming s6Step200ExitFv_checked h3 s6Step200ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step200ExitFBefore s6Step200ExitFAfter s6Step200ExitGvAfter
    s6Step200ExitFRow s6Step200ExitFOut 169 [] [(s6Step200ExitFvRow,117),(s6Step200ExitGvRow,114)] [[],[]] [s6Step200ExitFvOut,s6Step200ExitGvOut]
    (shrinkRow 795 s6Step200ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step200ExitGvExtra ++ []))) s6Step200ExitF_Incoming s6Step200ExitF_checked h2 s6Step200ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step200ExitGBefore s6Step200ExitGAfter s6Step200ExitGvAfter
    s6Step200ExitGRow s6Step200ExitGOut 169 [] [(s6Step200ExitFRow,169),(s6Step200ExitFvRow,117),(s6Step200ExitGvRow,114)] [[],[],[]] [s6Step200ExitFOut,s6Step200ExitFvOut,s6Step200ExitGvOut]
    (shrinkRow 777 s6Step200ExitGExtra) ((shrinkRow 795 s6Step200ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step200ExitGvExtra ++ [])))) s6Step200ExitG_Incoming s6Step200ExitG_checked h1 s6Step200ExitG_Outgoing
  exact h0

private theorem s6Step200ExitBank_checked : compileHmrBankResizeLog .exit s6Step200ExitGBefore ⟨s6Step200ExitFRow,s6Step200ExitGRow,s6Step200ExitFvRow,s6Step200ExitGvRow⟩ ⟨169,169,117,114⟩ [[],[],[],[]]=
    some (s6Step200ExitGvAfter,⟨s6Step200ExitFOut,s6Step200ExitGOut,s6Step200ExitFvOut,s6Step200ExitGvOut⟩,(shrinkRow 777 s6Step200ExitGExtra ++ (shrinkRow 795 s6Step200ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step200ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step200ExitBank_rows]
  rfl

private theorem s6Step200Add0_apart : Disjoint s6Step200Add0Arena.live s6Step200Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step200Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200Add0_card : s6Step200Add0Arena.live.card=895 := by
  decide +kernel

private theorem s6Step200Add0_borrowed : s6Step200Add0Arena.checkBorrow (hmrHybridCount s6Step200Add0Arena s6Step200Add0B.length) s6Step200Add0Work=some s6Step200Add0During := by
  have len : s6Step200Add0Work.length=hmrHybridCount s6Step200Add0Arena s6Step200Add0B.length := by
    rw [hmrHybridCount,s6Step200Add0_card]
    decide +kernel
  have nd : s6Step200Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step200Add0Arena s6Step200Add0During s6Step200Add0Work.toFinset s6Step200Add0_bounded s6Step200Add0_apart rfl

private theorem s6Step200Add0_distinct : (810::854::809::(s6Step200Add0A++s6Step200Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200Add0_owned : (810::854::809::(s6Step200Add0A++s6Step200Add0B)).toFinset⊆s6Step200Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step200Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200Add0_checked : compileHmrHybridCinLog s6Step200Add0Arena 854 810 809 s6Step200Add0A s6Step200Add0B s6Step200Add0Work=some s6Step200Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step200Add0Arena s6Step200Add0During 854 810 809 s6Step200Add0A s6Step200Add0B s6Step200Add0Work
    (by decide +kernel) (by decide +kernel) s6Step200Add0_distinct
    (fun q hq => s6Step200Add0_owned (List.mem_toFinset.mpr hq)) s6Step200Add0_borrowed

private theorem s6Step200Add1_apart : Disjoint s6Step200Add1Arena.live s6Step200Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step200Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200Add1_card : s6Step200Add1Arena.live.card=895 := by
  decide +kernel

private theorem s6Step200Add1_borrowed : s6Step200Add1Arena.checkBorrow (hmrHybridCount s6Step200Add1Arena s6Step200Add1B.length) s6Step200Add1Work=some s6Step200Add1During := by
  have len : s6Step200Add1Work.length=hmrHybridCount s6Step200Add1Arena s6Step200Add1B.length := by
    rw [hmrHybridCount,s6Step200Add1_card]
    decide +kernel
  have nd : s6Step200Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step200Add1Arena s6Step200Add1During s6Step200Add1Work.toFinset s6Step200Add1_bounded s6Step200Add1_apart rfl

private theorem s6Step200Add1_distinct : (810::854::809::(s6Step200Add1A++s6Step200Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200Add1_owned : (810::854::809::(s6Step200Add1A++s6Step200Add1B)).toFinset⊆s6Step200Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step200Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200Add1_checked : compileHmrHybridCinLog s6Step200Add1Arena 854 810 809 s6Step200Add1A s6Step200Add1B s6Step200Add1Work=some s6Step200Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step200Add1Arena s6Step200Add1During 854 810 809 s6Step200Add1A s6Step200Add1B s6Step200Add1Work
    (by decide +kernel) (by decide +kernel) s6Step200Add1_distinct
    (fun q hq => s6Step200Add1_owned (List.mem_toFinset.mpr hq)) s6Step200Add1_borrowed

private theorem s6Step200F4_apart : Disjoint (s6Step200Add0A++s6Step200Add0B).toFinset (s6Step200Add1A++s6Step200Add1B).toFinset := by
  have nd : ((s6Step200Add0A++s6Step200Add0B)++(s6Step200Add1A++s6Step200Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step200F4_carry : s6Step200F4FlagArena.checkBorrow 1 [809]=some s6Step200Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step200F4FlagArena,s6Step200HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step200F4FlagArena,s6Step200HeadFvAfter,s6Step200Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step200F4_distinct : (891::854::810::809::((s6Step200Add0A++s6Step200Add1A)++(s6Step200Add0B++s6Step200Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200F4_flag : s6Step200HeadFvAfter.checkBorrow 1 [810]=some s6Step200F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step200HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step200F4_owned : (891::854::((s6Step200Add0A++s6Step200Add1A)++(s6Step200Add0B++s6Step200Add1B))).toFinset⊆s6Step200HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step200HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200F4_checked : compileHmrHybridF4Log s6Step200HeadFvAfter 891 854 s6Step200Add0A s6Step200Add0B s6Step200Add1A s6Step200Add1B [810] [809] s6Step200Add0Work s6Step200Add1Work=some s6Step200F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step200HeadFvAfter s6Step200F4FlagArena s6Step200Add0Arena s6Step200Add0During s6Step200Add1During 891 854
    s6Step200Add0A s6Step200Add0B s6Step200Add1A s6Step200Add1B [810] [809] s6Step200Add0Work s6Step200Add1Work
    (fun q hq => s6Step200F4_owned (List.mem_toFinset.mpr hq)) s6Step200F4_flag s6Step200F4_carry
    s6Step200F4_distinct s6Step200F4_apart s6Step200Add0_checked s6Step200Add1_checked

private theorem s6Step200Front_branch : s6Step200FrontSigmaArena.checkBorrow 1 [854]=some s6Step200HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step200FrontSigmaArena,s6Step200EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step200FrontSigmaArena,s6Step200EntryGvAfter,s6Step200HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step200Front_entry : HmrFrontEntryValid s6Step200EntryFBefore s6Step200FrontBank 171 116 ⟨169,169,117,114⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step200FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step200EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step200EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step200FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step200Front_sigma : s6Step200EntryGvAfter.checkBorrow 1 [891]=some s6Step200FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step200EntryGvAfter,arenaWires]
  · rfl

private def s6Step200HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200HeadFBefore : Arena := s6Step200HeadGAfter

private def s6Step200HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426],795⟩

private def s6Step200HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903],776⟩

private def s6Step200HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 869],777⟩

private def s6Step200HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 813, 838],775⟩

private theorem s6Step200HeadBank_incomingDistinct : ([s6Step200HeadGRow,s6Step200HeadFRow,s6Step200HeadGvRow,s6Step200HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200HeadF_Incoming : rowsOwned s6Step200HeadFBefore [s6Step200HeadFRow,s6Step200HeadGvRow,s6Step200HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200HeadGRow,s6Step200HeadFRow,s6Step200HeadGvRow,s6Step200HeadFvRow] 1 s6Step200HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200HeadBank_outgoingOwned : rowsOwned s6Step200HeadFvAfter [s6Step200HeadGOut,s6Step200HeadFOut,s6Step200HeadGvOut,s6Step200HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step200HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200HeadF_Outgoing : rowsOwned s6Step200HeadFvAfter [s6Step200HeadFOut,s6Step200HeadGvOut,s6Step200HeadFvOut] :=
  hmrRows_owned_drop s6Step200HeadFvAfter [s6Step200HeadGOut,s6Step200HeadFOut,s6Step200HeadGvOut,s6Step200HeadFvOut] 1 s6Step200HeadBank_outgoingOwned

private theorem s6Step200HeadF_distinct : (s6Step200HeadFRow.sign::s6Step200HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200HeadF_owned : (s6Step200HeadFRow.sign::s6Step200HeadFRow.payload).toFinset⊆s6Step200HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200HeadF_reserved : s6Step200HeadFBefore.reserve s6Step200HeadFFresh.toFinset=some s6Step200HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step200HeadFFresh,arenaWires]
  · norm_num [s6Step200HeadFBefore,s6Step200HeadGAfter,s6Step200HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step200HeadFAfter,s6Step200HeadFBefore,s6Step200HeadGAfter,s6Step200HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step200HeadF_checked : planRowResizeLog s6Step200HeadFBefore s6Step200HeadFRow 172 s6Step200HeadFFresh=
    some (s6Step200HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 822],795⟩,growRow 795 s6Step200HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step200HeadFBefore s6Step200HeadFAfter s6Step200HeadFRow 172 s6Step200HeadFFresh
    s6Step200HeadF_distinct s6Step200HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step200HeadF_reserved
  have rowEq : WindowRow.mk (s6Step200HeadFRow.payload++s6Step200HeadFFresh) s6Step200HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 822],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step200HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step200HeadFvBefore : Arena := s6Step200HeadGvAfter

private theorem s6Step200HeadFv_Incoming : rowsOwned s6Step200HeadFvBefore [s6Step200HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200HeadGRow,s6Step200HeadFRow,s6Step200HeadGvRow,s6Step200HeadFvRow] 3 s6Step200HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200HeadFv_Outgoing : rowsOwned s6Step200HeadFvAfter [s6Step200HeadFvOut] :=
  hmrRows_owned_drop s6Step200HeadFvAfter [s6Step200HeadGOut,s6Step200HeadFOut,s6Step200HeadGvOut,s6Step200HeadFvOut] 3 s6Step200HeadBank_outgoingOwned

private theorem s6Step200HeadFv_distinct : (s6Step200HeadFvRow.sign::s6Step200HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200HeadFv_owned : (s6Step200HeadFvRow.sign::s6Step200HeadFvRow.payload).toFinset⊆s6Step200HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200HeadFv_reserved : s6Step200HeadFvBefore.reserve s6Step200HeadFvFresh.toFinset=some s6Step200HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step200HeadFvFresh,arenaWires]
  · norm_num [s6Step200HeadFvBefore,s6Step200HeadGvAfter,s6Step200HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step200HeadFvAfter,s6Step200HeadFvBefore,s6Step200HeadGvAfter,s6Step200HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step200HeadFv_checked : planRowResizeLog s6Step200HeadFvBefore s6Step200HeadFvRow 117 s6Step200HeadFvFresh=
    some (s6Step200HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825],776⟩,growRow 776 s6Step200HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step200HeadFvBefore s6Step200HeadFvAfter s6Step200HeadFvRow 117 s6Step200HeadFvFresh
    s6Step200HeadFv_distinct s6Step200HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step200HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step200HeadFvRow.payload++s6Step200HeadFvFresh) s6Step200HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step200HeadG_Incoming : rowsOwned s6Step200HeadGBefore [s6Step200HeadGRow,s6Step200HeadFRow,s6Step200HeadGvRow,s6Step200HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200HeadGRow,s6Step200HeadFRow,s6Step200HeadGvRow,s6Step200HeadFvRow] 0 s6Step200HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200HeadG_Outgoing : rowsOwned s6Step200HeadFvAfter [s6Step200HeadGOut,s6Step200HeadFOut,s6Step200HeadGvOut,s6Step200HeadFvOut] :=
  hmrRows_owned_drop s6Step200HeadFvAfter [s6Step200HeadGOut,s6Step200HeadFOut,s6Step200HeadGvOut,s6Step200HeadFvOut] 0 s6Step200HeadBank_outgoingOwned

private theorem s6Step200HeadG_distinct : (s6Step200HeadGRow.sign::s6Step200HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200HeadG_owned : (s6Step200HeadGRow.sign::s6Step200HeadGRow.payload).toFinset⊆s6Step200HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200HeadG_reserved : s6Step200HeadGBefore.reserve s6Step200HeadGFresh.toFinset=some s6Step200HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step200HeadGFresh,arenaWires]
  · norm_num [s6Step200HeadGBefore,s6Step200HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step200HeadGAfter,s6Step200HeadGBefore,s6Step200HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step200HeadG_checked : planRowResizeLog s6Step200HeadGBefore s6Step200HeadGRow 172 s6Step200HeadGFresh=
    some (s6Step200HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 869, 786],777⟩,growRow 777 s6Step200HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step200HeadGBefore s6Step200HeadGAfter s6Step200HeadGRow 172 s6Step200HeadGFresh
    s6Step200HeadG_distinct s6Step200HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step200HeadG_reserved
  have rowEq : WindowRow.mk (s6Step200HeadGRow.payload++s6Step200HeadGFresh) s6Step200HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 869, 786],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step200HeadGvBefore : Arena := s6Step200HeadFAfter

private theorem s6Step200HeadGv_Incoming : rowsOwned s6Step200HeadGvBefore [s6Step200HeadGvRow,s6Step200HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step200HeadGRow,s6Step200HeadFRow,s6Step200HeadGvRow,s6Step200HeadFvRow] 2 s6Step200HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step200HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step200HeadGv_Outgoing : rowsOwned s6Step200HeadFvAfter [s6Step200HeadGvOut,s6Step200HeadFvOut] :=
  hmrRows_owned_drop s6Step200HeadFvAfter [s6Step200HeadGOut,s6Step200HeadFOut,s6Step200HeadGvOut,s6Step200HeadFvOut] 2 s6Step200HeadBank_outgoingOwned

private theorem s6Step200HeadGv_distinct : (s6Step200HeadGvRow.sign::s6Step200HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step200HeadGv_owned : (s6Step200HeadGvRow.sign::s6Step200HeadGvRow.payload).toFinset⊆s6Step200HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step200HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step200HeadGv_reserved : s6Step200HeadGvBefore.reserve s6Step200HeadGvFresh.toFinset=some s6Step200HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step200HeadGvFresh,arenaWires]
  · norm_num [s6Step200HeadGvBefore,s6Step200HeadFAfter,s6Step200HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step200HeadGvAfter,s6Step200HeadGvBefore,s6Step200HeadFAfter,s6Step200HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step200HeadGv_checked : planRowResizeLog s6Step200HeadGvBefore s6Step200HeadGvRow 117 s6Step200HeadGvFresh=
    some (s6Step200HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 813, 838, 791],775⟩,growRow 775 s6Step200HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step200HeadGvBefore s6Step200HeadGvAfter s6Step200HeadGvRow 117 s6Step200HeadGvFresh
    s6Step200HeadGv_distinct s6Step200HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step200HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step200HeadGvRow.payload++s6Step200HeadGvFresh) s6Step200HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 813, 838, 791],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step200HeadBank_rows : planWindowRowsLog s6Step200HeadGBefore [(s6Step200HeadGRow,172),(s6Step200HeadFRow,172),(s6Step200HeadGvRow,117),(s6Step200HeadFvRow,117)] [s6Step200HeadGFresh,s6Step200HeadFFresh,s6Step200HeadGvFresh,s6Step200HeadFvFresh]=
    some (s6Step200HeadFvAfter,[s6Step200HeadGOut,s6Step200HeadFOut,s6Step200HeadGvOut,s6Step200HeadFvOut],(growRow 777 s6Step200HeadGFresh ++ (growRow 795 s6Step200HeadFFresh ++ (growRow 775 s6Step200HeadGvFresh ++ (growRow 776 s6Step200HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step200HeadFvAfter [] []=some (s6Step200HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step200HeadFvBefore s6Step200HeadFvAfter s6Step200HeadFvAfter
    s6Step200HeadFvRow s6Step200HeadFvOut 117 s6Step200HeadFvFresh [] [] []
    (growRow 776 s6Step200HeadFvFresh) ([]) s6Step200HeadFv_Incoming s6Step200HeadFv_checked h4 s6Step200HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step200HeadGvBefore s6Step200HeadGvAfter s6Step200HeadFvAfter
    s6Step200HeadGvRow s6Step200HeadGvOut 117 s6Step200HeadGvFresh [(s6Step200HeadFvRow,117)] [s6Step200HeadFvFresh] [s6Step200HeadFvOut]
    (growRow 775 s6Step200HeadGvFresh) ((growRow 776 s6Step200HeadFvFresh ++ [])) s6Step200HeadGv_Incoming s6Step200HeadGv_checked h3 s6Step200HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step200HeadFBefore s6Step200HeadFAfter s6Step200HeadFvAfter
    s6Step200HeadFRow s6Step200HeadFOut 172 s6Step200HeadFFresh [(s6Step200HeadGvRow,117),(s6Step200HeadFvRow,117)] [s6Step200HeadGvFresh,s6Step200HeadFvFresh] [s6Step200HeadGvOut,s6Step200HeadFvOut]
    (growRow 795 s6Step200HeadFFresh) ((growRow 775 s6Step200HeadGvFresh ++ (growRow 776 s6Step200HeadFvFresh ++ []))) s6Step200HeadF_Incoming s6Step200HeadF_checked h2 s6Step200HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step200HeadGBefore s6Step200HeadGAfter s6Step200HeadFvAfter
    s6Step200HeadGRow s6Step200HeadGOut 172 s6Step200HeadGFresh [(s6Step200HeadFRow,172),(s6Step200HeadGvRow,117),(s6Step200HeadFvRow,117)] [s6Step200HeadFFresh,s6Step200HeadGvFresh,s6Step200HeadFvFresh] [s6Step200HeadFOut,s6Step200HeadGvOut,s6Step200HeadFvOut]
    (growRow 777 s6Step200HeadGFresh) ((growRow 795 s6Step200HeadFFresh ++ (growRow 775 s6Step200HeadGvFresh ++ (growRow 776 s6Step200HeadFvFresh ++ [])))) s6Step200HeadG_Incoming s6Step200HeadG_checked h1 s6Step200HeadG_Outgoing
  exact h0

private theorem s6Step200HeadBank_checked : compileHmrBankResizeLog .headroom s6Step200HeadGBefore ⟨s6Step200HeadFRow,s6Step200HeadGRow,s6Step200HeadFvRow,s6Step200HeadGvRow⟩ ⟨172,172,117,117⟩ [s6Step200HeadGFresh,s6Step200HeadFFresh,s6Step200HeadGvFresh,s6Step200HeadFvFresh]=
    some (s6Step200HeadFvAfter,⟨s6Step200HeadFOut,s6Step200HeadGOut,s6Step200HeadFvOut,s6Step200HeadGvOut⟩,(growRow 777 s6Step200HeadGFresh ++ (growRow 795 s6Step200HeadFFresh ++ (growRow 775 s6Step200HeadGvFresh ++ (growRow 776 s6Step200HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step200HeadBank_rows]
  rfl

private theorem s6Step200Front_checked : compileHmrSourceFrontLog s6Step200EntryFBefore s6Step200FrontBank 171 116 ⟨169,169,117,114⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step200FrontLog=some s6Step200FrontPlan := by
  have pairEq : s6Step200FrontPair=⟨s6Step200HeadFRow,s6Step200HeadGRow,s6Step200HeadFvRow,s6Step200HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step200FrontHead=⟨s6Step200ExitFRow,s6Step200ExitGRow,s6Step200ExitFvRow,s6Step200ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step200Add0A=s6Step200FrontHead.f.wires := by decide +kernel
  have gEq : s6Step200Add0B=s6Step200FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step200Add1A=s6Step200FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step200Add1B=s6Step200FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step200EntryFBefore s6Step200FrontBank 171 116 ⟨169,169,117,114⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step200FrontLog s6Step200FrontPlan
  · exact s6Step200Front_entry
  · exact s6Step200EntryBank_checked
  · exact s6Step200Front_sigma
  · rfl
  · exact s6Step200Front_branch
  · rfl
  · simpa only [s6Step200FrontPlan,pairEq] using s6Step200HeadBank_checked
  · simpa only [s6Step200FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step200F4_checked
  · exact s6Step200Counter_checked
  · rfl
  · simpa only [s6Step200FrontPlan,headEq] using s6Step200ExitBank_checked

private theorem s6Step200Complete_explicit_checked : compileHmrEarlyStepLog s6Step200EntryFBefore s6Step200FrontBank 171 116 ⟨169,169,117,114⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step200CompleteLog=some s6Step200CompletePlan := by
  let Q := s6Step200EarlyControlPlan
  have hq := s6Step200EarlyControl_plan_checked
  have fv1 : s6Step200CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step200CompleteOut.fv.payload[2]?.getD s6Step200CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step200CompleteOut.fv.payload[3]?.getD s6Step200CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step200CompleteOut.fv.payload[4]?.getD s6Step200CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step200EntryFBefore s6Step200EarlyControlArena s6Step200FrontBank 171 116 ⟨169,169,117,114⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step200CompleteLog s6Step200FrontPlan Q
    s6Step200Front_checked s6Step200Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step200Complete_owned s6Step200Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step200EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 891 s6Step200CompleteOut.fv.second (s6Step200CompleteOut.fv.payload[2]?.getD s6Step200CompleteOut.fv.sign) (s6Step200CompleteOut.fv.payload[3]?.getD s6Step200CompleteOut.fv.sign) (s6Step200CompleteOut.fv.payload[4]?.getD s6Step200CompleteOut.fv.sign) 854 47 s6Step200EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep200Arena : Arena := s6Step200EntryFBefore
def s6PrivateStep200Bank : WindowBank := s6Step200FrontBank
def s6PrivateStep200Spec : HmrSourceWalkStepLog := ⟨171,116,⟨169,169,117,114⟩,47,.early s6Step200CompleteLog⟩
def s6PrivateStep200Plan : HmrSourceStepPlan := .early s6Step200CompletePlan
theorem s6PrivateStep200_source : s6PrivateStep200Spec=s6ObservedLogs192[8] := rfl
theorem s6PrivateStep200_checked : compileHmrSourceStepLog s6PrivateStep200Arena s6PrivateStep200Bank
    s6PrivateStep200Spec.fgWidth s6PrivateStep200Spec.vWidth s6PrivateStep200Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 200 s6PrivateStep200Spec.need none s6PrivateStep200Spec.log=some s6PrivateStep200Plan := by
  change compileHmrSourceStepLog s6Step200EntryFBefore s6Step200FrontBank 171 116 ⟨169,169,117,114⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 200 47 none (.early s6Step200CompleteLog)=some (.early s6Step200CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 200<498)]
  rw [s6Step200Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
