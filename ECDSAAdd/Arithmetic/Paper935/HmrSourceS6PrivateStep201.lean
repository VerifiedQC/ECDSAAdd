import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep199
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

private def s6Step201CompleteMoves : List (Wire × Wire) := [(802,424)]

private def s6Step201EarlyControlLog : HmrEarlyControlLog := ⟨[802, 791, 903, 825, 822],[838],[813],[869, 786, 810, 809, 817, 804],[]⟩

private def s6Step201FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [854, 891, 794]],[[813], [838], [791], [822]],[[], [], [], []]⟩,[927],[780],[869],[786],[810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809]⟩

private def s6Step201CompleteLog : HmrEarlyStepLog := ⟨s6Step201FrontLog,s6Step201CompleteMoves,s6Step201EarlyControlLog⟩

private def s6Step201ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423],795⟩

private def s6Step201ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907],776⟩

private def s6Step201ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩

private def s6Step201ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩

private def s6Step201FrontOut : WindowBank := ⟨s6Step201ExitFOut,s6Step201ExitGOut,s6Step201ExitFvOut,s6Step201ExitGvOut⟩

private def s6Step201CompleteOut : WindowBank := s6Step201FrontOut.repacked s6Step201CompleteMoves

private def s6Step201EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step201EarlyControlPositiveArena,[838],s6Step201EarlyControlEqualityArena,[813],⟨⟨927,false⟩,[⟨⟨838,false⟩,813⟩]⟩⟩

private def s6Step201EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step201EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step201EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,802⟩,⟨⟨772,false⟩,791⟩,⟨⟨771,false⟩,903⟩,⟨⟨770,false⟩,825⟩,⟨⟨769,false⟩,822⟩]⟩

private def s6Step201EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step201EarlyControlZeroArena,s6Step201EarlyControlZeroPlan,s6Step201EarlyControlClassPlan,s6Step201EarlyControlFlagArena,s6Step201EarlyControlFittedArena,s6Step201EarlyControlHistoryArena,s6Step201EarlyControlSigmaArena,s6Step201EarlyControlOutputArena,s6Step201EarlyControlLog⟩

private def s6Step201CounterWork : List Wire := [869, 786, 810, 809]

private theorem s6Step201Counter_bounded : s6Step201CounterWork.toFinset⊆arenaWires := by norm_num [s6Step201CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step201HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201CounterDuring : Arena := ⟨s6Step201HeadFvAfter.live∪s6Step201CounterWork.toFinset,Finset.union_subset s6Step201HeadFvAfter.bounded s6Step201Counter_bounded⟩

private def s6Step201EntryFFresh : List Wire := []

private def s6Step201EntryFvFresh : List Wire := []

private def s6Step201EntryGFresh : List Wire := []

private def s6Step201EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step201EntryGvFresh : List Wire := [854, 891, 794]

private def s6Step201ExitFExtra : List Wire := [424, 838]

private def s6Step201ExitFvExtra : List Wire := [903, 825, 822]

private def s6Step201ExitGExtra : List Wire := [813]

private def s6Step201ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<424) ∨ (425≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201ExitGvExtra : List Wire := [791]

private def s6Step201Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201Add0Work : List Wire := [810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step201Add0_bounded : s6Step201Add0Work.toFinset⊆arenaWires := by
  have h : s6Step201Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step201Add0During : Arena := ⟨s6Step201Add0Arena.live∪s6Step201Add0Work.toFinset,Finset.union_subset s6Step201Add0Arena.bounded s6Step201Add0_bounded⟩

private def s6Step201Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201Add1Work : List Wire := [810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step201Add1_bounded : s6Step201Add1Work.toFinset⊆arenaWires := by
  have h : s6Step201Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step201Add1During : Arena := ⟨s6Step201Add1Arena.live∪s6Step201Add1Work.toFinset,Finset.union_subset s6Step201Add1Arena.bounded s6Step201Add1_bounded⟩

private def s6Step201F4FlagArena : Arena := ⟨s6Step201HeadFvAfter.live∪{869},Finset.union_subset s6Step201HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step201F4Plan : HmrHybridF4Plan := ⟨s6Step201F4FlagArena,[869],s6Step201Add0Arena,[786],s6Step201Add0During,s6Step201Add0Work,s6Step201Add1During,s6Step201Add1Work⟩

private def s6Step201HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 838],795⟩

private def s6Step201HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825, 822],776⟩

private def s6Step201HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 813],777⟩

private def s6Step201HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 791],775⟩

private def s6Step201FrontHead : WindowBank := ⟨s6Step201HeadFOut,s6Step201HeadGOut,s6Step201HeadFvOut,s6Step201HeadGvOut⟩

private def s6Step201EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424],795⟩

private def s6Step201EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825],776⟩

private def s6Step201EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩

private def s6Step201EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩

private def s6Step201FrontPair : WindowBank := ⟨s6Step201EntryFOut,s6Step201EntryGOut,s6Step201EntryFvOut,s6Step201EntryGvOut⟩

private def s6Step201FrontSigmaArena : Arena := ⟨s6Step201EntryGvAfter.live∪{927},Finset.union_subset s6Step201EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step201HeadFFresh : List Wire := [838]

private def s6Step201HeadFvFresh : List Wire := [822]

private def s6Step201HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201HeadGFresh : List Wire := [813]

private def s6Step201HeadGvFresh : List Wire := [791]

private def s6Step201FrontPlan : HmrSourceFront := ⟨s6Step201EntryGvAfter,s6Step201FrontPair,(growRow 795 s6Step201EntryFFresh ++ (growRow 777 s6Step201EntryGFresh ++ (growRow 776 s6Step201EntryFvFresh ++ (growRow 775 s6Step201EntryGvFresh ++ [])))),s6Step201FrontSigmaArena,[927],s6Step201HeadGBefore,[780],
  s6Step201HeadFvAfter,s6Step201FrontHead,(growRow 777 s6Step201HeadGFresh ++ (growRow 795 s6Step201HeadFFresh ++ (growRow 775 s6Step201HeadGvFresh ++ (growRow 776 s6Step201HeadFvFresh ++ [])))),s6Step201F4Plan,s6Step201CounterDuring,s6Step201CounterWork,s6Step201ExitGvAfter,s6Step201FrontOut,(shrinkRow 777 s6Step201ExitGExtra ++ (shrinkRow 795 s6Step201ExitFExtra ++ (shrinkRow 776 s6Step201ExitFvExtra ++ (shrinkRow 775 s6Step201ExitGvExtra ++ []))))⟩

private def s6Step201CompletePlan : HmrEarlyStepPlan := ⟨s6Step201FrontPlan,s6Step201EarlyControlArena,s6Step201EarlyControlPlan,s6Step201CompleteMoves⟩

private theorem s6Step201Complete_apart : List.Disjoint (s6Step201CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [927, 780, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step201CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[927, 780, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step201Complete_owned : (s6Step201CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step201EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step201CompleteMoveArena : Arena := ⟨s6Step201ExitGvAfter.live∪{424},Finset.union_subset s6Step201ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step201Complete_repack : s6Step201ExitGvAfter.checkRepack s6Step201CompleteMoves=some s6Step201EarlyControlArena := by
  have owned : 802∈s6Step201ExitGvAfter.live := by norm_num [s6Step201ExitGvAfter,arenaWires]
  have reserve : s6Step201ExitGvAfter.reserve {424}=some s6Step201CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step201ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step201CompleteMoveArena.retireSet {802}=s6Step201EarlyControlArena := by
    unfold Arena.retireSet s6Step201EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step201CompleteMoveArena,s6Step201ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step201CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step201CompleteMoveArena.retireSet {802}).checkRepack []=some s6Step201EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step201EarlyControl_branchOwned : ([780] : List Wire).toFinset⊆s6Step201EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step201EarlyControl_branch : compileHmrBranchRetirement s6Step201EarlyControlSigmaArena 780=some s6Step201EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step201EarlyControl_branchOwned
  · ext q
    simp [s6Step201EarlyControlOutputArena,s6Step201EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step201EarlyControl_classEqualityBorrow : s6Step201EarlyControlPositiveArena.checkBorrow (([927, 838] : List Wire).length-1) s6Step201EarlyControlLog.classWork=some s6Step201EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step201EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step201EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step201EarlyControlEqualityArena,s6Step201EarlyControlPositiveArena,s6Step201EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step201EarlyControl_classEqualityOwned : ([927, 838] : List Wire).toFinset⊆s6Step201EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201EarlyControl_classEquality : compileHmrEqualityLog s6Step201EarlyControlPositiveArena [927, 838] 0 s6Step201EarlyControlLog.classWork=some (s6Step201EarlyControlEqualityArena,s6Step201EarlyControlLog.classWork,s6Step201EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step201EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step201EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step201EarlyControl_classOwned : ([769, 822, 927] : List Wire).toFinset⊆s6Step201EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201EarlyControl_positiveBorrow : s6Step201EarlyControlZeroArena.checkBorrow (1) s6Step201EarlyControlLog.positiveWork=some s6Step201EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step201EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step201EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step201EarlyControlPositiveArena,s6Step201EarlyControlZeroArena,s6Step201EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step201EarlyControl_class : compileHmrSourceClassLog s6Step201EarlyControlZeroArena false 769 s6Step201EarlyControlZeroPlan.top 0 927 s6Step201EarlyControlLog.positiveWork s6Step201EarlyControlLog.classWork=some s6Step201EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step201EarlyControlClassPlan s6Step201EarlyControlZeroArena false 769 s6Step201EarlyControlZeroPlan.top 0 927
  constructor
  · decide +kernel
  · exact s6Step201EarlyControl_classOwned
  · exact s6Step201EarlyControl_positiveBorrow
  · exact s6Step201EarlyControl_classEquality

private theorem s6Step201EarlyControl_entryRecordOwned : ([780, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step201EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201EarlyControl_entrySigmaOwned : ([927, 254] : List Wire).toFinset⊆s6Step201EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201EarlyControl_fitBorrow : s6Step201EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step201EarlyControlLog.recordFresh=some s6Step201EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step201EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step201EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step201EarlyControlFittedArena,s6Step201EarlyControlFlagArena,s6Step201EarlyControlLog,arenaWires]

private theorem s6Step201EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step201EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201EarlyControl_fit : compileHmrRecordGrowLog s6Step201EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step201EarlyControlLog.recordFresh=some s6Step201EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step201EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step201EarlyControl_fitBorrow

private theorem s6Step201EarlyControl_flagsBorrow : s6Step201EarlyControlEqualityArena.checkBorrow (6) s6Step201EarlyControlLog.flagWork=some s6Step201EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step201EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step201EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step201EarlyControlFlagArena,s6Step201EarlyControlEqualityArena,s6Step201EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step201EarlyControl_flagsOwned : ([813, 253, 252, 251] : List Wire).toFinset⊆s6Step201EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201EarlyControl_flags : compileHmrFlagsLog s6Step201EarlyControlClassPlan.equalityArena s6Step201EarlyControlClassPlan.equality.top 253 252 251 s6Step201EarlyControlLog.flagWork=some s6Step201EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step201EarlyControl_flagsOwned⟩
  · exact s6Step201EarlyControl_flagsBorrow

private theorem s6Step201EarlyControl_historyBorrow : s6Step201EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step201EarlyControlLog.recordFresh=some s6Step201EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step201EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step201EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step201EarlyControlHistoryArena,s6Step201EarlyControlArena,s6Step201EarlyControlLog,arenaWires]

private theorem s6Step201EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step201EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201EarlyControl_history : compileHmrRecordGrowLog s6Step201EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step201EarlyControlLog.recordFresh=some s6Step201EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step201EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step201EarlyControl_historyBorrow

private theorem s6Step201EarlyControl_sigmaOwned : ([254, 927] : List Wire).toFinset⊆s6Step201EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201EarlyControl_sigmaReleaseOwned : ([927] : List Wire).toFinset⊆s6Step201EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201EarlyControl_sigmaRelease : s6Step201EarlyControlHistoryArena.release {927} (fun _ => false)=some s6Step201EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step201EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step201EarlyControlSigmaArena,s6Step201EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step201EarlyControl_sigma : compileHmrSigmaDropLog s6Step201EarlyControlHistoryArena false 0 0 254 927 []=some s6Step201EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step201EarlyControl_sigmaOwned⟩
  · exact s6Step201EarlyControl_sigmaRelease

private theorem s6Step201EarlyControl_zeroBorrow : s6Step201EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step201EarlyControlLog.zeroWork=some s6Step201EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step201EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step201EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step201EarlyControlZeroArena,s6Step201EarlyControlArena,s6Step201EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step201EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step201EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step201EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201EarlyControl_zero : compileHmrEqualityLog s6Step201EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step201EarlyControlLog.zeroWork=some (s6Step201EarlyControlZeroArena,s6Step201EarlyControlLog.zeroWork,s6Step201EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step201EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step201EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step201EarlyControl_logged : s6Step201EarlyControlPlan.Logged s6Step201EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 927 254 253 252 251 780 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step201EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step201EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step201EarlyControl_zero
  · exact s6Step201EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step201EarlyControl_flags
  · exact s6Step201EarlyControl_fit
  · exact s6Step201EarlyControl_history
  · exact s6Step201EarlyControl_sigma
  · exact s6Step201EarlyControl_branch

private theorem s6Step201EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step201EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 927 254 253 252 251 780 47 s6Step201EarlyControlLog=some s6Step201EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step201EarlyControlPlan s6Step201EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 927 254 253 252 251 780 47 s6Step201EarlyControl_logged

private def s6Step201EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)),Finset.filter_subset _ _⟩

private def s6Step201EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424],795⟩

private def s6Step201EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825],776⟩

private def s6Step201EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩

private def s6Step201EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880],775⟩

private def s6Step201FrontBank : WindowBank := ⟨s6Step201EntryFRow,s6Step201EntryGRow,s6Step201EntryFvRow,s6Step201EntryGvRow⟩

private def s6Step201Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 838, 795]

private def s6Step201Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 813, 777]

private def s6Step201Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825, 822, 776]

private def s6Step201Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 791, 775]

private theorem s6Step201Counter_apart : Disjoint s6Step201HeadFvAfter.live s6Step201CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step201HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201Counter_borrowed : s6Step201HeadFvAfter.checkBorrow 4 s6Step201CounterWork=some s6Step201CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step201HeadFvAfter s6Step201CounterDuring s6Step201CounterWork.toFinset s6Step201Counter_bounded s6Step201Counter_apart rfl

private theorem s6Step201Counter_owned : (927::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step201HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step201HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201Counter_checked : compileHmrCounterStepLog s6Step201HeadFvAfter true 927 [774, 773, 772, 771, 770, 769] s6Step201CounterWork=some s6Step201CounterDuring := by
  have owned : ∀q∈927::[774, 773, 772, 771, 770, 769],q∈s6Step201HeadFvAfter.live := fun q hq => s6Step201Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step201Counter_borrowed

private def s6Step201EntryFAfter : Arena := s6Step201EntryFBefore

private theorem s6Step201EntryBank_incomingDistinct : ([s6Step201EntryFRow,s6Step201EntryGRow,s6Step201EntryFvRow,s6Step201EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201EntryF_Incoming : rowsOwned s6Step201EntryFBefore [s6Step201EntryFRow,s6Step201EntryGRow,s6Step201EntryFvRow,s6Step201EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201EntryFRow,s6Step201EntryGRow,s6Step201EntryFvRow,s6Step201EntryGvRow] 0 s6Step201EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
    decide +kernel

private theorem s6Step201EntryBank_outgoingOwned : rowsOwned s6Step201EntryGvAfter [s6Step201EntryFOut,s6Step201EntryGOut,s6Step201EntryFvOut,s6Step201EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step201EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
    decide +kernel

private theorem s6Step201EntryF_Outgoing : rowsOwned s6Step201EntryGvAfter [s6Step201EntryFOut,s6Step201EntryGOut,s6Step201EntryFvOut,s6Step201EntryGvOut] :=
  hmrRows_owned_drop s6Step201EntryGvAfter [s6Step201EntryFOut,s6Step201EntryGOut,s6Step201EntryFvOut,s6Step201EntryGvOut] 0 s6Step201EntryBank_outgoingOwned

private theorem s6Step201EntryF_distinct : (s6Step201EntryFRow.sign::s6Step201EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201EntryF_owned : (s6Step201EntryFRow.sign::s6Step201EntryFRow.payload).toFinset⊆s6Step201EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step201EntryF_reserved : s6Step201EntryFBefore.reserve s6Step201EntryFFresh.toFinset=some s6Step201EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step201EntryFFresh,arenaWires]
  · norm_num [s6Step201EntryFBefore,s6Step201EntryFFresh,arenaWires]
  · simp only [s6Step201EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step201EntryF_checked : planRowResizeLog s6Step201EntryFBefore s6Step201EntryFRow 169 s6Step201EntryFFresh=
    some (s6Step201EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424],795⟩,growRow 795 s6Step201EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step201EntryFBefore s6Step201EntryFAfter s6Step201EntryFRow 169 s6Step201EntryFFresh
    s6Step201EntryF_distinct s6Step201EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step201EntryF_reserved
  have rowEq : WindowRow.mk (s6Step201EntryFRow.payload++s6Step201EntryFFresh) s6Step201EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step201EntryFvAfter : Arena := s6Step201EntryFBefore

private def s6Step201EntryFvBefore : Arena := s6Step201EntryFBefore

private theorem s6Step201EntryFv_Incoming : rowsOwned s6Step201EntryFvBefore [s6Step201EntryFvRow,s6Step201EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201EntryFRow,s6Step201EntryGRow,s6Step201EntryFvRow,s6Step201EntryGvRow] 2 s6Step201EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
    decide +kernel

private theorem s6Step201EntryFv_Outgoing : rowsOwned s6Step201EntryGvAfter [s6Step201EntryFvOut,s6Step201EntryGvOut] :=
  hmrRows_owned_drop s6Step201EntryGvAfter [s6Step201EntryFOut,s6Step201EntryGOut,s6Step201EntryFvOut,s6Step201EntryGvOut] 2 s6Step201EntryBank_outgoingOwned

private theorem s6Step201EntryFv_distinct : (s6Step201EntryFvRow.sign::s6Step201EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201EntryFv_owned : (s6Step201EntryFvRow.sign::s6Step201EntryFvRow.payload).toFinset⊆s6Step201EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step201EntryFv_reserved : s6Step201EntryFvBefore.reserve s6Step201EntryFvFresh.toFinset=some s6Step201EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step201EntryFvFresh,arenaWires]
  · norm_num [s6Step201EntryFvBefore,s6Step201EntryFBefore,s6Step201EntryFvFresh,arenaWires]
  · simp only [s6Step201EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step201EntryFv_checked : planRowResizeLog s6Step201EntryFvBefore s6Step201EntryFvRow 117 s6Step201EntryFvFresh=
    some (s6Step201EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825],776⟩,growRow 776 s6Step201EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step201EntryFvBefore s6Step201EntryFvAfter s6Step201EntryFvRow 117 s6Step201EntryFvFresh
    s6Step201EntryFv_distinct s6Step201EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step201EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step201EntryFvRow.payload++s6Step201EntryFvFresh) s6Step201EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step201EntryGAfter : Arena := s6Step201EntryFBefore

private def s6Step201EntryGBefore : Arena := s6Step201EntryFBefore

private theorem s6Step201EntryG_Incoming : rowsOwned s6Step201EntryGBefore [s6Step201EntryGRow,s6Step201EntryFvRow,s6Step201EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201EntryFRow,s6Step201EntryGRow,s6Step201EntryFvRow,s6Step201EntryGvRow] 1 s6Step201EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
    decide +kernel

private theorem s6Step201EntryG_Outgoing : rowsOwned s6Step201EntryGvAfter [s6Step201EntryGOut,s6Step201EntryFvOut,s6Step201EntryGvOut] :=
  hmrRows_owned_drop s6Step201EntryGvAfter [s6Step201EntryFOut,s6Step201EntryGOut,s6Step201EntryFvOut,s6Step201EntryGvOut] 1 s6Step201EntryBank_outgoingOwned

private theorem s6Step201EntryG_distinct : (s6Step201EntryGRow.sign::s6Step201EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201EntryG_owned : (s6Step201EntryGRow.sign::s6Step201EntryGRow.payload).toFinset⊆s6Step201EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step201EntryG_reserved : s6Step201EntryGBefore.reserve s6Step201EntryGFresh.toFinset=some s6Step201EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step201EntryGFresh,arenaWires]
  · norm_num [s6Step201EntryGBefore,s6Step201EntryFBefore,s6Step201EntryGFresh,arenaWires]
  · simp only [s6Step201EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step201EntryG_checked : planRowResizeLog s6Step201EntryGBefore s6Step201EntryGRow 169 s6Step201EntryGFresh=
    some (s6Step201EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩,growRow 777 s6Step201EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step201EntryGBefore s6Step201EntryGAfter s6Step201EntryGRow 169 s6Step201EntryGFresh
    s6Step201EntryG_distinct s6Step201EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step201EntryG_reserved
  have rowEq : WindowRow.mk (s6Step201EntryGRow.payload++s6Step201EntryGFresh) s6Step201EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step201EntryGvBefore : Arena := s6Step201EntryFBefore

private theorem s6Step201EntryGv_Incoming : rowsOwned s6Step201EntryGvBefore [s6Step201EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201EntryFRow,s6Step201EntryGRow,s6Step201EntryFvRow,s6Step201EntryGvRow] 3 s6Step201EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
    decide +kernel

private theorem s6Step201EntryGv_Outgoing : rowsOwned s6Step201EntryGvAfter [s6Step201EntryGvOut] :=
  hmrRows_owned_drop s6Step201EntryGvAfter [s6Step201EntryFOut,s6Step201EntryGOut,s6Step201EntryFvOut,s6Step201EntryGvOut] 3 s6Step201EntryBank_outgoingOwned

private theorem s6Step201EntryGv_distinct : (s6Step201EntryGvRow.sign::s6Step201EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201EntryGv_owned : (s6Step201EntryGvRow.sign::s6Step201EntryGvRow.payload).toFinset⊆s6Step201EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
  decide +kernel

private theorem s6Step201EntryGv_reserved : s6Step201EntryGvBefore.reserve s6Step201EntryGvFresh.toFinset=some s6Step201EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step201EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step201EntryGvBefore,s6Step201EntryFBefore,s6Step201EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step201EntryGvAfter,s6Step201EntryGvBefore,s6Step201EntryFBefore,s6Step201EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step201EntryGv_checked : planRowResizeLog s6Step201EntryGvBefore s6Step201EntryGvRow 117 s6Step201EntryGvFresh=
    some (s6Step201EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩,growRow 775 s6Step201EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step201EntryGvBefore s6Step201EntryGvAfter s6Step201EntryGvRow 117 s6Step201EntryGvFresh
    s6Step201EntryGv_distinct s6Step201EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step201EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step201EntryGvRow.payload++s6Step201EntryGvFresh) s6Step201EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step201EntryBank_rows : planWindowRowsLog s6Step201EntryFBefore [(s6Step201EntryFRow,169),(s6Step201EntryGRow,169),(s6Step201EntryFvRow,117),(s6Step201EntryGvRow,117)] [s6Step201EntryFFresh,s6Step201EntryGFresh,s6Step201EntryFvFresh,s6Step201EntryGvFresh]=
    some (s6Step201EntryGvAfter,[s6Step201EntryFOut,s6Step201EntryGOut,s6Step201EntryFvOut,s6Step201EntryGvOut],(growRow 795 s6Step201EntryFFresh ++ (growRow 777 s6Step201EntryGFresh ++ (growRow 776 s6Step201EntryFvFresh ++ (growRow 775 s6Step201EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step201EntryGvAfter [] []=some (s6Step201EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step201EntryGvBefore s6Step201EntryGvAfter s6Step201EntryGvAfter
    s6Step201EntryGvRow s6Step201EntryGvOut 117 s6Step201EntryGvFresh [] [] []
    (growRow 775 s6Step201EntryGvFresh) ([]) s6Step201EntryGv_Incoming s6Step201EntryGv_checked h4 s6Step201EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step201EntryFvBefore s6Step201EntryFvAfter s6Step201EntryGvAfter
    s6Step201EntryFvRow s6Step201EntryFvOut 117 s6Step201EntryFvFresh [(s6Step201EntryGvRow,117)] [s6Step201EntryGvFresh] [s6Step201EntryGvOut]
    (growRow 776 s6Step201EntryFvFresh) ((growRow 775 s6Step201EntryGvFresh ++ [])) s6Step201EntryFv_Incoming s6Step201EntryFv_checked h3 s6Step201EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step201EntryGBefore s6Step201EntryGAfter s6Step201EntryGvAfter
    s6Step201EntryGRow s6Step201EntryGOut 169 s6Step201EntryGFresh [(s6Step201EntryFvRow,117),(s6Step201EntryGvRow,117)] [s6Step201EntryFvFresh,s6Step201EntryGvFresh] [s6Step201EntryFvOut,s6Step201EntryGvOut]
    (growRow 777 s6Step201EntryGFresh) ((growRow 776 s6Step201EntryFvFresh ++ (growRow 775 s6Step201EntryGvFresh ++ []))) s6Step201EntryG_Incoming s6Step201EntryG_checked h2 s6Step201EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step201EntryFBefore s6Step201EntryFAfter s6Step201EntryGvAfter
    s6Step201EntryFRow s6Step201EntryFOut 169 s6Step201EntryFFresh [(s6Step201EntryGRow,169),(s6Step201EntryFvRow,117),(s6Step201EntryGvRow,117)] [s6Step201EntryGFresh,s6Step201EntryFvFresh,s6Step201EntryGvFresh] [s6Step201EntryGOut,s6Step201EntryFvOut,s6Step201EntryGvOut]
    (growRow 795 s6Step201EntryFFresh) ((growRow 777 s6Step201EntryGFresh ++ (growRow 776 s6Step201EntryFvFresh ++ (growRow 775 s6Step201EntryGvFresh ++ [])))) s6Step201EntryF_Incoming s6Step201EntryF_checked h1 s6Step201EntryF_Outgoing
  exact h0

private theorem s6Step201EntryBank_checked : compileHmrBankResizeLog .entry s6Step201EntryFBefore ⟨s6Step201EntryFRow,s6Step201EntryGRow,s6Step201EntryFvRow,s6Step201EntryGvRow⟩ ⟨169,169,117,117⟩ [s6Step201EntryFFresh,s6Step201EntryGFresh,s6Step201EntryFvFresh,s6Step201EntryGvFresh]=
    some (s6Step201EntryGvAfter,⟨s6Step201EntryFOut,s6Step201EntryGOut,s6Step201EntryFvOut,s6Step201EntryGvOut⟩,(growRow 795 s6Step201EntryFFresh ++ (growRow 777 s6Step201EntryGFresh ++ (growRow 776 s6Step201EntryFvFresh ++ (growRow 775 s6Step201EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step201EntryBank_rows]
  rfl

private def s6Step201ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<424) ∨ (425≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201ExitFBefore : Arena := s6Step201ExitGAfter

private def s6Step201ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 838],795⟩

private def s6Step201ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825, 822],776⟩

private def s6Step201ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 813],777⟩

private def s6Step201ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 791],775⟩

private theorem s6Step201ExitBank_incomingDistinct : ([s6Step201ExitGRow,s6Step201ExitFRow,s6Step201ExitFvRow,s6Step201ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201ExitF_Incoming : rowsOwned s6Step201ExitFBefore [s6Step201ExitFRow,s6Step201ExitFvRow,s6Step201ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201ExitGRow,s6Step201ExitFRow,s6Step201ExitFvRow,s6Step201ExitGvRow] 1 s6Step201ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step201ExitBank_outgoingOwned : rowsOwned s6Step201ExitGvAfter [s6Step201ExitGOut,s6Step201ExitFOut,s6Step201ExitFvOut,s6Step201ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step201ExitGvAfter (fun q => (0≤q ∧ q<424) ∨ (425≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step201ExitF_Outgoing : rowsOwned s6Step201ExitGvAfter [s6Step201ExitFOut,s6Step201ExitFvOut,s6Step201ExitGvOut] :=
  hmrRows_owned_drop s6Step201ExitGvAfter [s6Step201ExitGOut,s6Step201ExitFOut,s6Step201ExitFvOut,s6Step201ExitGvOut] 1 s6Step201ExitBank_outgoingOwned

private theorem s6Step201ExitF_distinct : (s6Step201ExitFRow.sign::s6Step201ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201ExitF_owned : (s6Step201ExitFRow.sign::s6Step201ExitFRow.payload).toFinset⊆s6Step201ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201ExitF_retired : s6Step201ExitFBefore.retireSet s6Step201ExitFExtra.toFinset=s6Step201ExitFAfter := by
  unfold Arena.retireSet s6Step201ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step201ExitFBefore,s6Step201ExitGAfter,s6Step201ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step201ExitF_checked : planRowResizeLog s6Step201ExitFBefore s6Step201ExitFRow 168 []=
    some (s6Step201ExitFAfter,s6Step201ExitFOut,shrinkRow 795 s6Step201ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step201ExitFBefore s6Step201ExitFRow 168 s6Step201ExitF_distinct s6Step201ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step201ExitFRow.payload.take 168) s6Step201ExitFRow.sign=s6Step201ExitFOut := by decide +kernel
  have hi : s6Step201ExitFRow.payload.drop 168=s6Step201ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step201ExitF_retired] at result
  exact result

private def s6Step201ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<424) ∨ (425≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201ExitFvBefore : Arena := s6Step201ExitFAfter

private theorem s6Step201ExitFv_Incoming : rowsOwned s6Step201ExitFvBefore [s6Step201ExitFvRow,s6Step201ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201ExitGRow,s6Step201ExitFRow,s6Step201ExitFvRow,s6Step201ExitGvRow] 2 s6Step201ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201ExitFvBefore (fun q => (0≤q ∧ q<424) ∨ (425≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step201ExitFv_Outgoing : rowsOwned s6Step201ExitGvAfter [s6Step201ExitFvOut,s6Step201ExitGvOut] :=
  hmrRows_owned_drop s6Step201ExitGvAfter [s6Step201ExitGOut,s6Step201ExitFOut,s6Step201ExitFvOut,s6Step201ExitGvOut] 2 s6Step201ExitBank_outgoingOwned

private theorem s6Step201ExitFv_distinct : (s6Step201ExitFvRow.sign::s6Step201ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201ExitFv_owned : (s6Step201ExitFvRow.sign::s6Step201ExitFvRow.payload).toFinset⊆s6Step201ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201ExitFvBefore (fun q => (0≤q ∧ q<424) ∨ (425≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201ExitFv_retired : s6Step201ExitFvBefore.retireSet s6Step201ExitFvExtra.toFinset=s6Step201ExitFvAfter := by
  unfold Arena.retireSet s6Step201ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step201ExitFvBefore,s6Step201ExitFAfter,s6Step201ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step201ExitFv_checked : planRowResizeLog s6Step201ExitFvBefore s6Step201ExitFvRow 115 []=
    some (s6Step201ExitFvAfter,s6Step201ExitFvOut,shrinkRow 776 s6Step201ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step201ExitFvBefore s6Step201ExitFvRow 115 s6Step201ExitFv_distinct s6Step201ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step201ExitFvRow.payload.take 115) s6Step201ExitFvRow.sign=s6Step201ExitFvOut := by decide +kernel
  have hi : s6Step201ExitFvRow.payload.drop 115=s6Step201ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step201ExitFv_retired] at result
  exact result

private def s6Step201ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step201ExitG_Incoming : rowsOwned s6Step201ExitGBefore [s6Step201ExitGRow,s6Step201ExitFRow,s6Step201ExitFvRow,s6Step201ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201ExitGRow,s6Step201ExitFRow,s6Step201ExitFvRow,s6Step201ExitGvRow] 0 s6Step201ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step201ExitG_Outgoing : rowsOwned s6Step201ExitGvAfter [s6Step201ExitGOut,s6Step201ExitFOut,s6Step201ExitFvOut,s6Step201ExitGvOut] :=
  hmrRows_owned_drop s6Step201ExitGvAfter [s6Step201ExitGOut,s6Step201ExitFOut,s6Step201ExitFvOut,s6Step201ExitGvOut] 0 s6Step201ExitBank_outgoingOwned

private theorem s6Step201ExitG_distinct : (s6Step201ExitGRow.sign::s6Step201ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201ExitG_owned : (s6Step201ExitGRow.sign::s6Step201ExitGRow.payload).toFinset⊆s6Step201ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201ExitG_retired : s6Step201ExitGBefore.retireSet s6Step201ExitGExtra.toFinset=s6Step201ExitGAfter := by
  unfold Arena.retireSet s6Step201ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step201ExitGBefore,s6Step201ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step201ExitG_checked : planRowResizeLog s6Step201ExitGBefore s6Step201ExitGRow 169 []=
    some (s6Step201ExitGAfter,s6Step201ExitGOut,shrinkRow 777 s6Step201ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step201ExitGBefore s6Step201ExitGRow 169 s6Step201ExitG_distinct s6Step201ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step201ExitGRow.payload.take 169) s6Step201ExitGRow.sign=s6Step201ExitGOut := by decide +kernel
  have hi : s6Step201ExitGRow.payload.drop 169=s6Step201ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step201ExitG_retired] at result
  exact result

private def s6Step201ExitGvBefore : Arena := s6Step201ExitFvAfter

private theorem s6Step201ExitGv_Incoming : rowsOwned s6Step201ExitGvBefore [s6Step201ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201ExitGRow,s6Step201ExitFRow,s6Step201ExitFvRow,s6Step201ExitGvRow] 3 s6Step201ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201ExitGvBefore (fun q => (0≤q ∧ q<424) ∨ (425≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step201ExitGv_Outgoing : rowsOwned s6Step201ExitGvAfter [s6Step201ExitGvOut] :=
  hmrRows_owned_drop s6Step201ExitGvAfter [s6Step201ExitGOut,s6Step201ExitFOut,s6Step201ExitFvOut,s6Step201ExitGvOut] 3 s6Step201ExitBank_outgoingOwned

private theorem s6Step201ExitGv_distinct : (s6Step201ExitGvRow.sign::s6Step201ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201ExitGv_owned : (s6Step201ExitGvRow.sign::s6Step201ExitGvRow.payload).toFinset⊆s6Step201ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201ExitGvBefore (fun q => (0≤q ∧ q<424) ∨ (425≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201ExitGv_retired : s6Step201ExitGvBefore.retireSet s6Step201ExitGvExtra.toFinset=s6Step201ExitGvAfter := by
  unfold Arena.retireSet s6Step201ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step201ExitGvBefore,s6Step201ExitFvAfter,s6Step201ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step201ExitGv_checked : planRowResizeLog s6Step201ExitGvBefore s6Step201ExitGvRow 117 []=
    some (s6Step201ExitGvAfter,s6Step201ExitGvOut,shrinkRow 775 s6Step201ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step201ExitGvBefore s6Step201ExitGvRow 117 s6Step201ExitGv_distinct s6Step201ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step201ExitGvRow.payload.take 117) s6Step201ExitGvRow.sign=s6Step201ExitGvOut := by decide +kernel
  have hi : s6Step201ExitGvRow.payload.drop 117=s6Step201ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step201ExitGv_retired] at result
  exact result

private theorem s6Step201ExitBank_rows : planWindowRowsLog s6Step201ExitGBefore [(s6Step201ExitGRow,169),(s6Step201ExitFRow,168),(s6Step201ExitFvRow,115),(s6Step201ExitGvRow,117)] [[],[],[],[]]=
    some (s6Step201ExitGvAfter,[s6Step201ExitGOut,s6Step201ExitFOut,s6Step201ExitFvOut,s6Step201ExitGvOut],(shrinkRow 777 s6Step201ExitGExtra ++ (shrinkRow 795 s6Step201ExitFExtra ++ (shrinkRow 776 s6Step201ExitFvExtra ++ (shrinkRow 775 s6Step201ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step201ExitGvAfter [] []=some (s6Step201ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step201ExitGvBefore s6Step201ExitGvAfter s6Step201ExitGvAfter
    s6Step201ExitGvRow s6Step201ExitGvOut 117 [] [] [] []
    (shrinkRow 775 s6Step201ExitGvExtra) ([]) s6Step201ExitGv_Incoming s6Step201ExitGv_checked h4 s6Step201ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step201ExitFvBefore s6Step201ExitFvAfter s6Step201ExitGvAfter
    s6Step201ExitFvRow s6Step201ExitFvOut 115 [] [(s6Step201ExitGvRow,117)] [[]] [s6Step201ExitGvOut]
    (shrinkRow 776 s6Step201ExitFvExtra) ((shrinkRow 775 s6Step201ExitGvExtra ++ [])) s6Step201ExitFv_Incoming s6Step201ExitFv_checked h3 s6Step201ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step201ExitFBefore s6Step201ExitFAfter s6Step201ExitGvAfter
    s6Step201ExitFRow s6Step201ExitFOut 168 [] [(s6Step201ExitFvRow,115),(s6Step201ExitGvRow,117)] [[],[]] [s6Step201ExitFvOut,s6Step201ExitGvOut]
    (shrinkRow 795 s6Step201ExitFExtra) ((shrinkRow 776 s6Step201ExitFvExtra ++ (shrinkRow 775 s6Step201ExitGvExtra ++ []))) s6Step201ExitF_Incoming s6Step201ExitF_checked h2 s6Step201ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step201ExitGBefore s6Step201ExitGAfter s6Step201ExitGvAfter
    s6Step201ExitGRow s6Step201ExitGOut 169 [] [(s6Step201ExitFRow,168),(s6Step201ExitFvRow,115),(s6Step201ExitGvRow,117)] [[],[],[]] [s6Step201ExitFOut,s6Step201ExitFvOut,s6Step201ExitGvOut]
    (shrinkRow 777 s6Step201ExitGExtra) ((shrinkRow 795 s6Step201ExitFExtra ++ (shrinkRow 776 s6Step201ExitFvExtra ++ (shrinkRow 775 s6Step201ExitGvExtra ++ [])))) s6Step201ExitG_Incoming s6Step201ExitG_checked h1 s6Step201ExitG_Outgoing
  exact h0

private theorem s6Step201ExitBank_checked : compileHmrBankResizeLog .exit s6Step201ExitGBefore ⟨s6Step201ExitFRow,s6Step201ExitGRow,s6Step201ExitFvRow,s6Step201ExitGvRow⟩ ⟨168,169,115,117⟩ [[],[],[],[]]=
    some (s6Step201ExitGvAfter,⟨s6Step201ExitFOut,s6Step201ExitGOut,s6Step201ExitFvOut,s6Step201ExitGvOut⟩,(shrinkRow 777 s6Step201ExitGExtra ++ (shrinkRow 795 s6Step201ExitFExtra ++ (shrinkRow 776 s6Step201ExitFvExtra ++ (shrinkRow 775 s6Step201ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step201ExitBank_rows]
  rfl

private theorem s6Step201Add0_apart : Disjoint s6Step201Add0Arena.live s6Step201Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step201Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201Add0_card : s6Step201Add0Arena.live.card=893 := by
  decide +kernel

private theorem s6Step201Add0_borrowed : s6Step201Add0Arena.checkBorrow (hmrHybridCount s6Step201Add0Arena s6Step201Add0B.length) s6Step201Add0Work=some s6Step201Add0During := by
  have len : s6Step201Add0Work.length=hmrHybridCount s6Step201Add0Arena s6Step201Add0B.length := by
    rw [hmrHybridCount,s6Step201Add0_card]
    decide +kernel
  have nd : s6Step201Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step201Add0Arena s6Step201Add0During s6Step201Add0Work.toFinset s6Step201Add0_bounded s6Step201Add0_apart rfl

private theorem s6Step201Add0_distinct : (869::780::786::(s6Step201Add0A++s6Step201Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201Add0_owned : (869::780::786::(s6Step201Add0A++s6Step201Add0B)).toFinset⊆s6Step201Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step201Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201Add0_checked : compileHmrHybridCinLog s6Step201Add0Arena 780 869 786 s6Step201Add0A s6Step201Add0B s6Step201Add0Work=some s6Step201Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step201Add0Arena s6Step201Add0During 780 869 786 s6Step201Add0A s6Step201Add0B s6Step201Add0Work
    (by decide +kernel) (by decide +kernel) s6Step201Add0_distinct
    (fun q hq => s6Step201Add0_owned (List.mem_toFinset.mpr hq)) s6Step201Add0_borrowed

private theorem s6Step201Add1_apart : Disjoint s6Step201Add1Arena.live s6Step201Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step201Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201Add1_card : s6Step201Add1Arena.live.card=893 := by
  decide +kernel

private theorem s6Step201Add1_borrowed : s6Step201Add1Arena.checkBorrow (hmrHybridCount s6Step201Add1Arena s6Step201Add1B.length) s6Step201Add1Work=some s6Step201Add1During := by
  have len : s6Step201Add1Work.length=hmrHybridCount s6Step201Add1Arena s6Step201Add1B.length := by
    rw [hmrHybridCount,s6Step201Add1_card]
    decide +kernel
  have nd : s6Step201Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step201Add1Arena s6Step201Add1During s6Step201Add1Work.toFinset s6Step201Add1_bounded s6Step201Add1_apart rfl

private theorem s6Step201Add1_distinct : (869::780::786::(s6Step201Add1A++s6Step201Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201Add1_owned : (869::780::786::(s6Step201Add1A++s6Step201Add1B)).toFinset⊆s6Step201Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step201Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201Add1_checked : compileHmrHybridCinLog s6Step201Add1Arena 780 869 786 s6Step201Add1A s6Step201Add1B s6Step201Add1Work=some s6Step201Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step201Add1Arena s6Step201Add1During 780 869 786 s6Step201Add1A s6Step201Add1B s6Step201Add1Work
    (by decide +kernel) (by decide +kernel) s6Step201Add1_distinct
    (fun q hq => s6Step201Add1_owned (List.mem_toFinset.mpr hq)) s6Step201Add1_borrowed

private theorem s6Step201F4_apart : Disjoint (s6Step201Add0A++s6Step201Add0B).toFinset (s6Step201Add1A++s6Step201Add1B).toFinset := by
  have nd : ((s6Step201Add0A++s6Step201Add0B)++(s6Step201Add1A++s6Step201Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step201F4_carry : s6Step201F4FlagArena.checkBorrow 1 [786]=some s6Step201Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step201F4FlagArena,s6Step201HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step201F4FlagArena,s6Step201HeadFvAfter,s6Step201Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step201F4_distinct : (927::780::869::786::((s6Step201Add0A++s6Step201Add1A)++(s6Step201Add0B++s6Step201Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201F4_flag : s6Step201HeadFvAfter.checkBorrow 1 [869]=some s6Step201F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step201HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step201F4_owned : (927::780::((s6Step201Add0A++s6Step201Add1A)++(s6Step201Add0B++s6Step201Add1B))).toFinset⊆s6Step201HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step201HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201F4_checked : compileHmrHybridF4Log s6Step201HeadFvAfter 927 780 s6Step201Add0A s6Step201Add0B s6Step201Add1A s6Step201Add1B [869] [786] s6Step201Add0Work s6Step201Add1Work=some s6Step201F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step201HeadFvAfter s6Step201F4FlagArena s6Step201Add0Arena s6Step201Add0During s6Step201Add1During 927 780
    s6Step201Add0A s6Step201Add0B s6Step201Add1A s6Step201Add1B [869] [786] s6Step201Add0Work s6Step201Add1Work
    (fun q hq => s6Step201F4_owned (List.mem_toFinset.mpr hq)) s6Step201F4_flag s6Step201F4_carry
    s6Step201F4_distinct s6Step201F4_apart s6Step201Add0_checked s6Step201Add1_checked

private theorem s6Step201Front_branch : s6Step201FrontSigmaArena.checkBorrow 1 [780]=some s6Step201HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step201FrontSigmaArena,s6Step201EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step201FrontSigmaArena,s6Step201EntryGvAfter,s6Step201HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step201Front_entry : HmrFrontEntryValid s6Step201EntryFBefore s6Step201FrontBank 169 117 ⟨168,169,115,117⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step201FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step201EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step201EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<854) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step201FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step201Front_sigma : s6Step201EntryGvAfter.checkBorrow 1 [927]=some s6Step201FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step201EntryGvAfter,arenaWires]
  · rfl

private def s6Step201HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201HeadFBefore : Arena := s6Step201HeadGAfter

private def s6Step201HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424],795⟩

private def s6Step201HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825],776⟩

private def s6Step201HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],777⟩

private def s6Step201HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794],775⟩

private theorem s6Step201HeadBank_incomingDistinct : ([s6Step201HeadGRow,s6Step201HeadFRow,s6Step201HeadGvRow,s6Step201HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201HeadF_Incoming : rowsOwned s6Step201HeadFBefore [s6Step201HeadFRow,s6Step201HeadGvRow,s6Step201HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201HeadGRow,s6Step201HeadFRow,s6Step201HeadGvRow,s6Step201HeadFvRow] 1 s6Step201HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step201HeadBank_outgoingOwned : rowsOwned s6Step201HeadFvAfter [s6Step201HeadGOut,s6Step201HeadFOut,s6Step201HeadGvOut,s6Step201HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step201HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step201HeadF_Outgoing : rowsOwned s6Step201HeadFvAfter [s6Step201HeadFOut,s6Step201HeadGvOut,s6Step201HeadFvOut] :=
  hmrRows_owned_drop s6Step201HeadFvAfter [s6Step201HeadGOut,s6Step201HeadFOut,s6Step201HeadGvOut,s6Step201HeadFvOut] 1 s6Step201HeadBank_outgoingOwned

private theorem s6Step201HeadF_distinct : (s6Step201HeadFRow.sign::s6Step201HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201HeadF_owned : (s6Step201HeadFRow.sign::s6Step201HeadFRow.payload).toFinset⊆s6Step201HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201HeadF_reserved : s6Step201HeadFBefore.reserve s6Step201HeadFFresh.toFinset=some s6Step201HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step201HeadFFresh,arenaWires]
  · norm_num [s6Step201HeadFBefore,s6Step201HeadGAfter,s6Step201HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step201HeadFAfter,s6Step201HeadFBefore,s6Step201HeadGAfter,s6Step201HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step201HeadF_checked : planRowResizeLog s6Step201HeadFBefore s6Step201HeadFRow 170 s6Step201HeadFFresh=
    some (s6Step201HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 838],795⟩,growRow 795 s6Step201HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step201HeadFBefore s6Step201HeadFAfter s6Step201HeadFRow 170 s6Step201HeadFFresh
    s6Step201HeadF_distinct s6Step201HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step201HeadF_reserved
  have rowEq : WindowRow.mk (s6Step201HeadFRow.payload++s6Step201HeadFFresh) s6Step201HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 838],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step201HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step201HeadFvBefore : Arena := s6Step201HeadGvAfter

private theorem s6Step201HeadFv_Incoming : rowsOwned s6Step201HeadFvBefore [s6Step201HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201HeadGRow,s6Step201HeadFRow,s6Step201HeadGvRow,s6Step201HeadFvRow] 3 s6Step201HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step201HeadFv_Outgoing : rowsOwned s6Step201HeadFvAfter [s6Step201HeadFvOut] :=
  hmrRows_owned_drop s6Step201HeadFvAfter [s6Step201HeadGOut,s6Step201HeadFOut,s6Step201HeadGvOut,s6Step201HeadFvOut] 3 s6Step201HeadBank_outgoingOwned

private theorem s6Step201HeadFv_distinct : (s6Step201HeadFvRow.sign::s6Step201HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201HeadFv_owned : (s6Step201HeadFvRow.sign::s6Step201HeadFvRow.payload).toFinset⊆s6Step201HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201HeadFv_reserved : s6Step201HeadFvBefore.reserve s6Step201HeadFvFresh.toFinset=some s6Step201HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step201HeadFvFresh,arenaWires]
  · norm_num [s6Step201HeadFvBefore,s6Step201HeadGvAfter,s6Step201HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step201HeadFvAfter,s6Step201HeadFvBefore,s6Step201HeadGvAfter,s6Step201HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step201HeadFv_checked : planRowResizeLog s6Step201HeadFvBefore s6Step201HeadFvRow 118 s6Step201HeadFvFresh=
    some (s6Step201HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825, 822],776⟩,growRow 776 s6Step201HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step201HeadFvBefore s6Step201HeadFvAfter s6Step201HeadFvRow 118 s6Step201HeadFvFresh
    s6Step201HeadFv_distinct s6Step201HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step201HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step201HeadFvRow.payload++s6Step201HeadFvFresh) s6Step201HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 903, 825, 822],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step201HeadG_Incoming : rowsOwned s6Step201HeadGBefore [s6Step201HeadGRow,s6Step201HeadFRow,s6Step201HeadGvRow,s6Step201HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201HeadGRow,s6Step201HeadFRow,s6Step201HeadGvRow,s6Step201HeadFvRow] 0 s6Step201HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step201HeadG_Outgoing : rowsOwned s6Step201HeadFvAfter [s6Step201HeadGOut,s6Step201HeadFOut,s6Step201HeadGvOut,s6Step201HeadFvOut] :=
  hmrRows_owned_drop s6Step201HeadFvAfter [s6Step201HeadGOut,s6Step201HeadFOut,s6Step201HeadGvOut,s6Step201HeadFvOut] 0 s6Step201HeadBank_outgoingOwned

private theorem s6Step201HeadG_distinct : (s6Step201HeadGRow.sign::s6Step201HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201HeadG_owned : (s6Step201HeadGRow.sign::s6Step201HeadGRow.payload).toFinset⊆s6Step201HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201HeadG_reserved : s6Step201HeadGBefore.reserve s6Step201HeadGFresh.toFinset=some s6Step201HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step201HeadGFresh,arenaWires]
  · norm_num [s6Step201HeadGBefore,s6Step201HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step201HeadGAfter,s6Step201HeadGBefore,s6Step201HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step201HeadG_checked : planRowResizeLog s6Step201HeadGBefore s6Step201HeadGRow 170 s6Step201HeadGFresh=
    some (s6Step201HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 813],777⟩,growRow 777 s6Step201HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step201HeadGBefore s6Step201HeadGAfter s6Step201HeadGRow 170 s6Step201HeadGFresh
    s6Step201HeadG_distinct s6Step201HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step201HeadG_reserved
  have rowEq : WindowRow.mk (s6Step201HeadGRow.payload++s6Step201HeadGFresh) s6Step201HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step201HeadGvBefore : Arena := s6Step201HeadFAfter

private theorem s6Step201HeadGv_Incoming : rowsOwned s6Step201HeadGvBefore [s6Step201HeadGvRow,s6Step201HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step201HeadGRow,s6Step201HeadFRow,s6Step201HeadGvRow,s6Step201HeadFvRow] 2 s6Step201HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step201HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step201HeadGv_Outgoing : rowsOwned s6Step201HeadFvAfter [s6Step201HeadGvOut,s6Step201HeadFvOut] :=
  hmrRows_owned_drop s6Step201HeadFvAfter [s6Step201HeadGOut,s6Step201HeadFOut,s6Step201HeadGvOut,s6Step201HeadFvOut] 2 s6Step201HeadBank_outgoingOwned

private theorem s6Step201HeadGv_distinct : (s6Step201HeadGvRow.sign::s6Step201HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step201HeadGv_owned : (s6Step201HeadGvRow.sign::s6Step201HeadGvRow.payload).toFinset⊆s6Step201HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step201HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step201HeadGv_reserved : s6Step201HeadGvBefore.reserve s6Step201HeadGvFresh.toFinset=some s6Step201HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step201HeadGvFresh,arenaWires]
  · norm_num [s6Step201HeadGvBefore,s6Step201HeadFAfter,s6Step201HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step201HeadGvAfter,s6Step201HeadGvBefore,s6Step201HeadFAfter,s6Step201HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step201HeadGv_checked : planRowResizeLog s6Step201HeadGvBefore s6Step201HeadGvRow 118 s6Step201HeadGvFresh=
    some (s6Step201HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 791],775⟩,growRow 775 s6Step201HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step201HeadGvBefore s6Step201HeadGvAfter s6Step201HeadGvRow 118 s6Step201HeadGvFresh
    s6Step201HeadGv_distinct s6Step201HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step201HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step201HeadGvRow.payload++s6Step201HeadGvFresh) s6Step201HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 791],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step201HeadBank_rows : planWindowRowsLog s6Step201HeadGBefore [(s6Step201HeadGRow,170),(s6Step201HeadFRow,170),(s6Step201HeadGvRow,118),(s6Step201HeadFvRow,118)] [s6Step201HeadGFresh,s6Step201HeadFFresh,s6Step201HeadGvFresh,s6Step201HeadFvFresh]=
    some (s6Step201HeadFvAfter,[s6Step201HeadGOut,s6Step201HeadFOut,s6Step201HeadGvOut,s6Step201HeadFvOut],(growRow 777 s6Step201HeadGFresh ++ (growRow 795 s6Step201HeadFFresh ++ (growRow 775 s6Step201HeadGvFresh ++ (growRow 776 s6Step201HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step201HeadFvAfter [] []=some (s6Step201HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step201HeadFvBefore s6Step201HeadFvAfter s6Step201HeadFvAfter
    s6Step201HeadFvRow s6Step201HeadFvOut 118 s6Step201HeadFvFresh [] [] []
    (growRow 776 s6Step201HeadFvFresh) ([]) s6Step201HeadFv_Incoming s6Step201HeadFv_checked h4 s6Step201HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step201HeadGvBefore s6Step201HeadGvAfter s6Step201HeadFvAfter
    s6Step201HeadGvRow s6Step201HeadGvOut 118 s6Step201HeadGvFresh [(s6Step201HeadFvRow,118)] [s6Step201HeadFvFresh] [s6Step201HeadFvOut]
    (growRow 775 s6Step201HeadGvFresh) ((growRow 776 s6Step201HeadFvFresh ++ [])) s6Step201HeadGv_Incoming s6Step201HeadGv_checked h3 s6Step201HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step201HeadFBefore s6Step201HeadFAfter s6Step201HeadFvAfter
    s6Step201HeadFRow s6Step201HeadFOut 170 s6Step201HeadFFresh [(s6Step201HeadGvRow,118),(s6Step201HeadFvRow,118)] [s6Step201HeadGvFresh,s6Step201HeadFvFresh] [s6Step201HeadGvOut,s6Step201HeadFvOut]
    (growRow 795 s6Step201HeadFFresh) ((growRow 775 s6Step201HeadGvFresh ++ (growRow 776 s6Step201HeadFvFresh ++ []))) s6Step201HeadF_Incoming s6Step201HeadF_checked h2 s6Step201HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step201HeadGBefore s6Step201HeadGAfter s6Step201HeadFvAfter
    s6Step201HeadGRow s6Step201HeadGOut 170 s6Step201HeadGFresh [(s6Step201HeadFRow,170),(s6Step201HeadGvRow,118),(s6Step201HeadFvRow,118)] [s6Step201HeadFFresh,s6Step201HeadGvFresh,s6Step201HeadFvFresh] [s6Step201HeadFOut,s6Step201HeadGvOut,s6Step201HeadFvOut]
    (growRow 777 s6Step201HeadGFresh) ((growRow 795 s6Step201HeadFFresh ++ (growRow 775 s6Step201HeadGvFresh ++ (growRow 776 s6Step201HeadFvFresh ++ [])))) s6Step201HeadG_Incoming s6Step201HeadG_checked h1 s6Step201HeadG_Outgoing
  exact h0

private theorem s6Step201HeadBank_checked : compileHmrBankResizeLog .headroom s6Step201HeadGBefore ⟨s6Step201HeadFRow,s6Step201HeadGRow,s6Step201HeadFvRow,s6Step201HeadGvRow⟩ ⟨170,170,118,118⟩ [s6Step201HeadGFresh,s6Step201HeadFFresh,s6Step201HeadGvFresh,s6Step201HeadFvFresh]=
    some (s6Step201HeadFvAfter,⟨s6Step201HeadFOut,s6Step201HeadGOut,s6Step201HeadFvOut,s6Step201HeadGvOut⟩,(growRow 777 s6Step201HeadGFresh ++ (growRow 795 s6Step201HeadFFresh ++ (growRow 775 s6Step201HeadGvFresh ++ (growRow 776 s6Step201HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step201HeadBank_rows]
  rfl

private theorem s6Step201Front_checked : compileHmrSourceFrontLog s6Step201EntryFBefore s6Step201FrontBank 169 117 ⟨168,169,115,117⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step201FrontLog=some s6Step201FrontPlan := by
  have pairEq : s6Step201FrontPair=⟨s6Step201HeadFRow,s6Step201HeadGRow,s6Step201HeadFvRow,s6Step201HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step201FrontHead=⟨s6Step201ExitFRow,s6Step201ExitGRow,s6Step201ExitFvRow,s6Step201ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step201Add0A=s6Step201FrontHead.f.wires := by decide +kernel
  have gEq : s6Step201Add0B=s6Step201FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step201Add1A=s6Step201FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step201Add1B=s6Step201FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step201EntryFBefore s6Step201FrontBank 169 117 ⟨168,169,115,117⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step201FrontLog s6Step201FrontPlan
  · exact s6Step201Front_entry
  · exact s6Step201EntryBank_checked
  · exact s6Step201Front_sigma
  · rfl
  · exact s6Step201Front_branch
  · rfl
  · simpa only [s6Step201FrontPlan,pairEq] using s6Step201HeadBank_checked
  · simpa only [s6Step201FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step201F4_checked
  · exact s6Step201Counter_checked
  · rfl
  · simpa only [s6Step201FrontPlan,headEq] using s6Step201ExitBank_checked

private theorem s6Step201Complete_explicit_checked : compileHmrEarlyStepLog s6Step201EntryFBefore s6Step201FrontBank 169 117 ⟨168,169,115,117⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step201CompleteLog=some s6Step201CompletePlan := by
  let Q := s6Step201EarlyControlPlan
  have hq := s6Step201EarlyControl_plan_checked
  have fv1 : s6Step201CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step201CompleteOut.fv.payload[2]?.getD s6Step201CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step201CompleteOut.fv.payload[3]?.getD s6Step201CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step201CompleteOut.fv.payload[4]?.getD s6Step201CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step201EntryFBefore s6Step201EarlyControlArena s6Step201FrontBank 169 117 ⟨168,169,115,117⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step201CompleteLog s6Step201FrontPlan Q
    s6Step201Front_checked s6Step201Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step201Complete_owned s6Step201Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step201EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 927 s6Step201CompleteOut.fv.second (s6Step201CompleteOut.fv.payload[2]?.getD s6Step201CompleteOut.fv.sign) (s6Step201CompleteOut.fv.payload[3]?.getD s6Step201CompleteOut.fv.sign) (s6Step201CompleteOut.fv.payload[4]?.getD s6Step201CompleteOut.fv.sign) 780 47 s6Step201EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep201Arena : Arena := s6Step201EntryFBefore
def s6PrivateStep201Bank : WindowBank := s6Step201FrontBank
def s6PrivateStep201Spec : HmrSourceWalkStepLog := ⟨169,117,⟨168,169,115,117⟩,47,.early s6Step201CompleteLog⟩
def s6PrivateStep201Plan : HmrSourceStepPlan := .early s6Step201CompletePlan
theorem s6PrivateStep201_source : s6PrivateStep201Spec=s6ObservedLogs192[9] := rfl
theorem s6PrivateStep201_checked : compileHmrSourceStepLog s6PrivateStep201Arena s6PrivateStep201Bank
    s6PrivateStep201Spec.fgWidth s6PrivateStep201Spec.vWidth s6PrivateStep201Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 201 s6PrivateStep201Spec.need none s6PrivateStep201Spec.log=some s6PrivateStep201Plan := by
  change compileHmrSourceStepLog s6Step201EntryFBefore s6Step201FrontBank 169 117 ⟨168,169,115,117⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 201 47 none (.early s6Step201CompleteLog)=some (.early s6Step201CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 201<498)]
  rw [s6Step201Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
