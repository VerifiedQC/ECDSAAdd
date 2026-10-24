import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep318
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

private def s6Step320CompleteMoves : List (Wire × Wire) := [(853,366),(822,367)]

private def s6Step320EarlyControlLog : HmrEarlyControlLog := ⟨[822, 853, 843, 793, 841],[865],[860],[805, 817, 812, 915, 906, 792],[849]⟩

private def s6Step320FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [865, 860], [], [868]],[[805], [841], [843], [793]],[[], [], [], []]⟩,[880],[830],[817],[812],[915, 906, 792, 849, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[915, 906, 792, 849, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906]⟩

private def s6Step320CompleteLog : HmrEarlyStepLog := ⟨s6Step320FrontLog,s6Step320CompleteMoves,s6Step320EarlyControlLog⟩

private def s6Step320ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩

private def s6Step320ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step320ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩

private def s6Step320ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩

private def s6Step320FrontOut : WindowBank := ⟨s6Step320ExitFOut,s6Step320ExitGOut,s6Step320ExitFvOut,s6Step320ExitGvOut⟩

private def s6Step320CompleteOut : WindowBank := s6Step320FrontOut.repacked s6Step320CompleteMoves

private def s6Step320EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step320EarlyControlPositiveArena,[865],s6Step320EarlyControlEqualityArena,[860],⟨⟨880,false⟩,[⟨⟨865,false⟩,860⟩]⟩⟩

private def s6Step320EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨772,false⟩,853⟩,⟨⟨771,false⟩,843⟩,⟨⟨770,false⟩,793⟩,⟨⟨769,false⟩,841⟩]⟩

private def s6Step320EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step320EarlyControlZeroArena,s6Step320EarlyControlZeroPlan,s6Step320EarlyControlClassPlan,s6Step320EarlyControlFlagArena,s6Step320EarlyControlFittedArena,s6Step320EarlyControlHistoryArena,s6Step320EarlyControlSigmaArena,s6Step320EarlyControlOutputArena,s6Step320EarlyControlLog⟩

private def s6Step320CounterWork : List Wire := [817, 812, 915, 906]

private theorem s6Step320Counter_bounded : s6Step320CounterWork.toFinset⊆arenaWires := by norm_num [s6Step320CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step320HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320CounterDuring : Arena := ⟨s6Step320HeadFvAfter.live∪s6Step320CounterWork.toFinset,Finset.union_subset s6Step320HeadFvAfter.bounded s6Step320Counter_bounded⟩

private def s6Step320EntryFFresh : List Wire := []

private def s6Step320EntryFvFresh : List Wire := []

private def s6Step320EntryGFresh : List Wire := [865, 860]

private def s6Step320EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EntryGvFresh : List Wire := [868]

private def s6Step320ExitFExtra : List Wire := [366, 367, 841]

private def s6Step320ExitFvExtra : List Wire := [793]

private def s6Step320ExitGExtra : List Wire := [865, 860, 805]

private def s6Step320ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<366) ∨ (368≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320ExitGvExtra : List Wire := [843]

private def s6Step320Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320Add0Work : List Wire := [915, 906, 792, 849, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step320Add0_bounded : s6Step320Add0Work.toFinset⊆arenaWires := by
  have h : s6Step320Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step320Add0During : Arena := ⟨s6Step320Add0Arena.live∪s6Step320Add0Work.toFinset,Finset.union_subset s6Step320Add0Arena.bounded s6Step320Add0_bounded⟩

private def s6Step320Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320Add1Work : List Wire := [915, 906, 792, 849, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step320Add1_bounded : s6Step320Add1Work.toFinset⊆arenaWires := by
  have h : s6Step320Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step320Add1During : Arena := ⟨s6Step320Add1Arena.live∪s6Step320Add1Work.toFinset,Finset.union_subset s6Step320Add1Arena.bounded s6Step320Add1_bounded⟩

private def s6Step320F4FlagArena : Arena := ⟨s6Step320HeadFvAfter.live∪{817},Finset.union_subset s6Step320HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step320F4Plan : HmrHybridF4Plan := ⟨s6Step320F4FlagArena,[817],s6Step320Add0Arena,[812],s6Step320Add0During,s6Step320Add0Work,s6Step320Add1During,s6Step320Add1Work⟩

private def s6Step320HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩

private def s6Step320HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 793],776⟩

private def s6Step320HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 865, 860, 805],777⟩

private def s6Step320HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 843],775⟩

private def s6Step320FrontHead : WindowBank := ⟨s6Step320HeadFOut,s6Step320HeadGOut,s6Step320HeadFvOut,s6Step320HeadGvOut⟩

private def s6Step320EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step320EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step320EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 865, 860],777⟩

private def s6Step320EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩

private def s6Step320FrontPair : WindowBank := ⟨s6Step320EntryFOut,s6Step320EntryGOut,s6Step320EntryFvOut,s6Step320EntryGvOut⟩

private def s6Step320FrontSigmaArena : Arena := ⟨s6Step320EntryGvAfter.live∪{880},Finset.union_subset s6Step320EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step320HeadFFresh : List Wire := [841]

private def s6Step320HeadFvFresh : List Wire := [793]

private def s6Step320HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320HeadGFresh : List Wire := [805]

private def s6Step320HeadGvFresh : List Wire := [843]

private def s6Step320FrontPlan : HmrSourceFront := ⟨s6Step320EntryGvAfter,s6Step320FrontPair,(growRow 795 s6Step320EntryFFresh ++ (growRow 777 s6Step320EntryGFresh ++ (growRow 776 s6Step320EntryFvFresh ++ (growRow 775 s6Step320EntryGvFresh ++ [])))),s6Step320FrontSigmaArena,[880],s6Step320HeadGBefore,[830],
  s6Step320HeadFvAfter,s6Step320FrontHead,(growRow 777 s6Step320HeadGFresh ++ (growRow 795 s6Step320HeadFFresh ++ (growRow 775 s6Step320HeadGvFresh ++ (growRow 776 s6Step320HeadFvFresh ++ [])))),s6Step320F4Plan,s6Step320CounterDuring,s6Step320CounterWork,s6Step320ExitGvAfter,s6Step320FrontOut,(shrinkRow 777 s6Step320ExitGExtra ++ (shrinkRow 795 s6Step320ExitFExtra ++ (shrinkRow 776 s6Step320ExitFvExtra ++ (shrinkRow 775 s6Step320ExitGvExtra ++ []))))⟩

private def s6Step320CompletePlan : HmrEarlyStepPlan := ⟨s6Step320FrontPlan,s6Step320EarlyControlArena,s6Step320EarlyControlPlan,s6Step320CompleteMoves⟩

private theorem s6Step320Complete_apart : List.Disjoint (s6Step320CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [880, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] := by
  have nd : ((s6Step320CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[880, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step320Complete_owned : (s6Step320CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step320EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step320CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,367),(368,782),(783,790),(791,792),(794,797),(799,800),(802,805),(806,808),(809,812),(813,815),(818,819),(821,832),(833,841),(844,849),(850,853),(854,860),(861,865),(866,896),(897,906),(907,914),(917,918),(919,920),(921,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step320CompleteRelocationMove0Borrowed : Arena := ⟨s6Step320ExitGvAfter.live∪{366},Finset.union_subset s6Step320ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step320CompleteRelocationMove1Borrowed : Arena := ⟨s6Step320CompleteRelocationMove0After.live∪{367},Finset.union_subset s6Step320CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step320CompleteRelocation_move0_owned : 853∈s6Step320ExitGvAfter.live := by norm_num [s6Step320ExitGvAfter,arenaWires]

private theorem s6Step320CompleteRelocation_move0_reserve : s6Step320ExitGvAfter.reserve {366}=some s6Step320CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step320ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step320CompleteRelocation_move0_retire : s6Step320CompleteRelocationMove0Borrowed.retireSet {853}=s6Step320CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step320CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step320CompleteRelocationMove0Borrowed,s6Step320ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step320CompleteRelocation_move1_owned : 822∈s6Step320CompleteRelocationMove0After.live := by norm_num [s6Step320CompleteRelocationMove0After,arenaWires]

private theorem s6Step320CompleteRelocation_move1_reserve : s6Step320CompleteRelocationMove0After.reserve {367}=some s6Step320CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step320CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step320CompleteRelocation_move1_retire : s6Step320CompleteRelocationMove1Borrowed.retireSet {822}=s6Step320EarlyControlArena := by
  unfold Arena.retireSet s6Step320EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step320CompleteRelocationMove1Borrowed,s6Step320CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step320CompleteRelocation_checked : s6Step320ExitGvAfter.checkRepack [(853,366),(822,367)]=some s6Step320EarlyControlArena := by
  have tail2 : s6Step320EarlyControlArena.checkRepack []=some s6Step320EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step320CompleteRelocationMove0After s6Step320CompleteRelocationMove1Borrowed s6Step320EarlyControlArena s6Step320EarlyControlArena 822 367 []
    s6Step320CompleteRelocation_move1_owned s6Step320CompleteRelocation_move1_reserve s6Step320CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step320ExitGvAfter s6Step320CompleteRelocationMove0Borrowed s6Step320CompleteRelocationMove0After s6Step320EarlyControlArena 853 366 [(822,367)]
    s6Step320CompleteRelocation_move0_owned s6Step320CompleteRelocation_move0_reserve s6Step320CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step320Complete_repack : s6Step320ExitGvAfter.checkRepack s6Step320CompleteMoves=some s6Step320EarlyControlArena := by
  simpa only [s6Step320CompleteMoves] using s6Step320CompleteRelocation_checked

private theorem s6Step320EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s6Step320EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EarlyControl_branch : compileHmrBranchRetirement s6Step320EarlyControlSigmaArena 830=some s6Step320EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step320EarlyControl_branchOwned
  · ext q
    simp [s6Step320EarlyControlOutputArena,s6Step320EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step320EarlyControl_classEqualityBorrow : s6Step320EarlyControlPositiveArena.checkBorrow (([880, 865] : List Wire).length-1) s6Step320EarlyControlLog.classWork=some s6Step320EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step320EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step320EarlyControlEqualityArena,s6Step320EarlyControlPositiveArena,s6Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step320EarlyControl_classEqualityOwned : ([880, 865] : List Wire).toFinset⊆s6Step320EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EarlyControl_classEquality : compileHmrEqualityLog s6Step320EarlyControlPositiveArena [880, 865] 0 s6Step320EarlyControlLog.classWork=some (s6Step320EarlyControlEqualityArena,s6Step320EarlyControlLog.classWork,s6Step320EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step320EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step320EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step320EarlyControl_classOwned : ([769, 841, 880] : List Wire).toFinset⊆s6Step320EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EarlyControl_positiveBorrow : s6Step320EarlyControlZeroArena.checkBorrow (1) s6Step320EarlyControlLog.positiveWork=some s6Step320EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step320EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step320EarlyControlPositiveArena,s6Step320EarlyControlZeroArena,s6Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step320EarlyControl_class : compileHmrSourceClassLog s6Step320EarlyControlZeroArena false 769 s6Step320EarlyControlZeroPlan.top 0 880 s6Step320EarlyControlLog.positiveWork s6Step320EarlyControlLog.classWork=some s6Step320EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step320EarlyControlClassPlan s6Step320EarlyControlZeroArena false 769 s6Step320EarlyControlZeroPlan.top 0 880
  constructor
  · decide +kernel
  · exact s6Step320EarlyControl_classOwned
  · exact s6Step320EarlyControl_positiveBorrow
  · exact s6Step320EarlyControl_classEquality

private theorem s6Step320EarlyControl_entryRecordOwned : ([830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] : List Wire).toFinset⊆s6Step320EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EarlyControl_entrySigmaOwned : ([880, 254] : List Wire).toFinset⊆s6Step320EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EarlyControl_fitBorrow : s6Step320EarlyControlFlagArena.checkBorrow ((58-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] : List Wire).length)) s6Step320EarlyControlLog.recordFresh=some s6Step320EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step320EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step320EarlyControlFittedArena,s6Step320EarlyControlFlagArena,s6Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step320EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] : List Wire).toFinset⊆s6Step320EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EarlyControl_fit : compileHmrRecordGrowLog s6Step320EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] 58 s6Step320EarlyControlLog.recordFresh=some s6Step320EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step320EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step320EarlyControl_fitBorrow

private theorem s6Step320EarlyControl_flagsBorrow : s6Step320EarlyControlEqualityArena.checkBorrow (6) s6Step320EarlyControlLog.flagWork=some s6Step320EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step320EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step320EarlyControlFlagArena,s6Step320EarlyControlEqualityArena,s6Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step320EarlyControl_flagsOwned : ([860, 253, 252, 251] : List Wire).toFinset⊆s6Step320EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EarlyControl_flags : compileHmrFlagsLog s6Step320EarlyControlClassPlan.equalityArena s6Step320EarlyControlClassPlan.equality.top 253 252 251 s6Step320EarlyControlLog.flagWork=some s6Step320EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step320EarlyControl_flagsOwned⟩
  · exact s6Step320EarlyControl_flagsBorrow

private theorem s6Step320EarlyControl_historyBorrow : s6Step320EarlyControlArena.checkBorrow ((58-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] : List Wire).length)) s6Step320EarlyControlLog.recordFresh=some s6Step320EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step320EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step320EarlyControlHistoryArena,s6Step320EarlyControlArena,s6Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step320EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] : List Wire).toFinset⊆s6Step320EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EarlyControl_history : compileHmrRecordGrowLog s6Step320EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] 58 s6Step320EarlyControlLog.recordFresh=some s6Step320EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step320EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step320EarlyControl_historyBorrow

private theorem s6Step320EarlyControl_sigmaOwned : ([254, 880] : List Wire).toFinset⊆s6Step320EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EarlyControl_sigmaReleaseOwned : ([880] : List Wire).toFinset⊆s6Step320EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EarlyControl_sigmaRelease : s6Step320EarlyControlHistoryArena.release {880} (fun _ => false)=some s6Step320EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step320EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step320EarlyControlSigmaArena,s6Step320EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step320EarlyControl_sigma : compileHmrSigmaDropLog s6Step320EarlyControlHistoryArena false 0 0 254 880 []=some s6Step320EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step320EarlyControl_sigmaOwned⟩
  · exact s6Step320EarlyControl_sigmaRelease

private theorem s6Step320EarlyControl_zeroBorrow : s6Step320EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step320EarlyControlLog.zeroWork=some s6Step320EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step320EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step320EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step320EarlyControlZeroArena,s6Step320EarlyControlArena,s6Step320EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step320EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step320EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step320EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EarlyControl_zero : compileHmrEqualityLog s6Step320EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step320EarlyControlLog.zeroWork=some (s6Step320EarlyControlZeroArena,s6Step320EarlyControlLog.zeroWork,s6Step320EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step320EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step320EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step320EarlyControl_logged : s6Step320EarlyControlPlan.Logged s6Step320EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] 769 880 254 253 252 251 830 58 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step320EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step320EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step320EarlyControl_zero
  · exact s6Step320EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step320EarlyControl_flags
  · exact s6Step320EarlyControl_fit
  · exact s6Step320EarlyControl_history
  · exact s6Step320EarlyControl_sigma
  · exact s6Step320EarlyControl_branch

private theorem s6Step320EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step320EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] 769 880 254 253 252 251 830 58 s6Step320EarlyControlLog=some s6Step320EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step320EarlyControlPlan s6Step320EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] 769 880 254 253 252 251 830 58 s6Step320EarlyControl_logged

private def s6Step320EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step320EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step320EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩

private def s6Step320EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864],775⟩

private def s6Step320FrontBank : WindowBank := ⟨s6Step320EntryFRow,s6Step320EntryGRow,s6Step320EntryFvRow,s6Step320EntryGvRow⟩

private def s6Step320Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841, 795]

private def s6Step320Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 865, 860, 805, 777]

private def s6Step320Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 793, 776]

private def s6Step320Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 843, 775]

private theorem s6Step320Counter_apart : Disjoint s6Step320HeadFvAfter.live s6Step320CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step320HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320Counter_borrowed : s6Step320HeadFvAfter.checkBorrow 4 s6Step320CounterWork=some s6Step320CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step320HeadFvAfter s6Step320CounterDuring s6Step320CounterWork.toFinset s6Step320Counter_bounded s6Step320Counter_apart rfl

private theorem s6Step320Counter_owned : (880::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step320HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step320HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320Counter_checked : compileHmrCounterStepLog s6Step320HeadFvAfter true 880 [774, 773, 772, 771, 770, 769] s6Step320CounterWork=some s6Step320CounterDuring := by
  have owned : ∀q∈880::[774, 773, 772, 771, 770, 769],q∈s6Step320HeadFvAfter.live := fun q hq => s6Step320Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step320Counter_borrowed

private def s6Step320EntryFAfter : Arena := s6Step320EntryFBefore

private theorem s6Step320EntryBank_incomingDistinct : ([s6Step320EntryFRow,s6Step320EntryGRow,s6Step320EntryFvRow,s6Step320EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320EntryF_Incoming : rowsOwned s6Step320EntryFBefore [s6Step320EntryFRow,s6Step320EntryGRow,s6Step320EntryFvRow,s6Step320EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320EntryFRow,s6Step320EntryGRow,s6Step320EntryFvRow,s6Step320EntryGvRow] 0 s6Step320EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320EntryBank_outgoingOwned : rowsOwned s6Step320EntryGvAfter [s6Step320EntryFOut,s6Step320EntryGOut,s6Step320EntryFvOut,s6Step320EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step320EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320EntryF_Outgoing : rowsOwned s6Step320EntryGvAfter [s6Step320EntryFOut,s6Step320EntryGOut,s6Step320EntryFvOut,s6Step320EntryGvOut] :=
  hmrRows_owned_drop s6Step320EntryGvAfter [s6Step320EntryFOut,s6Step320EntryGOut,s6Step320EntryFvOut,s6Step320EntryGvOut] 0 s6Step320EntryBank_outgoingOwned

private theorem s6Step320EntryF_distinct : (s6Step320EntryFRow.sign::s6Step320EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320EntryF_owned : (s6Step320EntryFRow.sign::s6Step320EntryFRow.payload).toFinset⊆s6Step320EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EntryF_reserved : s6Step320EntryFBefore.reserve s6Step320EntryFFresh.toFinset=some s6Step320EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step320EntryFFresh,arenaWires]
  · norm_num [s6Step320EntryFBefore,s6Step320EntryFFresh,arenaWires]
  · simp only [s6Step320EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step320EntryF_checked : planRowResizeLog s6Step320EntryFBefore s6Step320EntryFRow 112 s6Step320EntryFFresh=
    some (s6Step320EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩,growRow 795 s6Step320EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step320EntryFBefore s6Step320EntryFAfter s6Step320EntryFRow 112 s6Step320EntryFFresh
    s6Step320EntryF_distinct s6Step320EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step320EntryF_reserved
  have rowEq : WindowRow.mk (s6Step320EntryFRow.payload++s6Step320EntryFFresh) s6Step320EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step320EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320EntryFvAfter : Arena := s6Step320EntryGAfter

private def s6Step320EntryFvBefore : Arena := s6Step320EntryGAfter

private theorem s6Step320EntryFv_Incoming : rowsOwned s6Step320EntryFvBefore [s6Step320EntryFvRow,s6Step320EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320EntryFRow,s6Step320EntryGRow,s6Step320EntryFvRow,s6Step320EntryGvRow] 2 s6Step320EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320EntryFv_Outgoing : rowsOwned s6Step320EntryGvAfter [s6Step320EntryFvOut,s6Step320EntryGvOut] :=
  hmrRows_owned_drop s6Step320EntryGvAfter [s6Step320EntryFOut,s6Step320EntryGOut,s6Step320EntryFvOut,s6Step320EntryGvOut] 2 s6Step320EntryBank_outgoingOwned

private theorem s6Step320EntryFv_distinct : (s6Step320EntryFvRow.sign::s6Step320EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320EntryFv_owned : (s6Step320EntryFvRow.sign::s6Step320EntryFvRow.payload).toFinset⊆s6Step320EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EntryFv_reserved : s6Step320EntryFvBefore.reserve s6Step320EntryFvFresh.toFinset=some s6Step320EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step320EntryFvFresh,arenaWires]
  · norm_num [s6Step320EntryFvBefore,s6Step320EntryGAfter,s6Step320EntryFvFresh,arenaWires]
  · simp only [s6Step320EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step320EntryFv_checked : planRowResizeLog s6Step320EntryFvBefore s6Step320EntryFvRow 176 s6Step320EntryFvFresh=
    some (s6Step320EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩,growRow 776 s6Step320EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step320EntryFvBefore s6Step320EntryFvAfter s6Step320EntryFvRow 176 s6Step320EntryFvFresh
    s6Step320EntryFv_distinct s6Step320EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step320EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step320EntryFvRow.payload++s6Step320EntryFvFresh) s6Step320EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step320EntryGBefore : Arena := s6Step320EntryFBefore

private theorem s6Step320EntryG_Incoming : rowsOwned s6Step320EntryGBefore [s6Step320EntryGRow,s6Step320EntryFvRow,s6Step320EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320EntryFRow,s6Step320EntryGRow,s6Step320EntryFvRow,s6Step320EntryGvRow] 1 s6Step320EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320EntryG_Outgoing : rowsOwned s6Step320EntryGvAfter [s6Step320EntryGOut,s6Step320EntryFvOut,s6Step320EntryGvOut] :=
  hmrRows_owned_drop s6Step320EntryGvAfter [s6Step320EntryFOut,s6Step320EntryGOut,s6Step320EntryFvOut,s6Step320EntryGvOut] 1 s6Step320EntryBank_outgoingOwned

private theorem s6Step320EntryG_distinct : (s6Step320EntryGRow.sign::s6Step320EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320EntryG_owned : (s6Step320EntryGRow.sign::s6Step320EntryGRow.payload).toFinset⊆s6Step320EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EntryG_reserved : s6Step320EntryGBefore.reserve s6Step320EntryGFresh.toFinset=some s6Step320EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step320EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step320EntryGBefore,s6Step320EntryFBefore,s6Step320EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step320EntryGAfter,s6Step320EntryGBefore,s6Step320EntryFBefore,s6Step320EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step320EntryG_checked : planRowResizeLog s6Step320EntryGBefore s6Step320EntryGRow 112 s6Step320EntryGFresh=
    some (s6Step320EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 865, 860],777⟩,growRow 777 s6Step320EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step320EntryGBefore s6Step320EntryGAfter s6Step320EntryGRow 112 s6Step320EntryGFresh
    s6Step320EntryG_distinct s6Step320EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step320EntryG_reserved
  have rowEq : WindowRow.mk (s6Step320EntryGRow.payload++s6Step320EntryGFresh) s6Step320EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 865, 860],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step320EntryGvBefore : Arena := s6Step320EntryGAfter

private theorem s6Step320EntryGv_Incoming : rowsOwned s6Step320EntryGvBefore [s6Step320EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320EntryFRow,s6Step320EntryGRow,s6Step320EntryFvRow,s6Step320EntryGvRow] 3 s6Step320EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320EntryGv_Outgoing : rowsOwned s6Step320EntryGvAfter [s6Step320EntryGvOut] :=
  hmrRows_owned_drop s6Step320EntryGvAfter [s6Step320EntryFOut,s6Step320EntryGOut,s6Step320EntryFvOut,s6Step320EntryGvOut] 3 s6Step320EntryBank_outgoingOwned

private theorem s6Step320EntryGv_distinct : (s6Step320EntryGvRow.sign::s6Step320EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320EntryGv_owned : (s6Step320EntryGvRow.sign::s6Step320EntryGvRow.payload).toFinset⊆s6Step320EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320EntryGv_reserved : s6Step320EntryGvBefore.reserve s6Step320EntryGvFresh.toFinset=some s6Step320EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step320EntryGvFresh,arenaWires]
  · norm_num [s6Step320EntryGvBefore,s6Step320EntryGAfter,s6Step320EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step320EntryGvAfter,s6Step320EntryGvBefore,s6Step320EntryGAfter,s6Step320EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step320EntryGv_checked : planRowResizeLog s6Step320EntryGvBefore s6Step320EntryGvRow 176 s6Step320EntryGvFresh=
    some (s6Step320EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩,growRow 775 s6Step320EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step320EntryGvBefore s6Step320EntryGvAfter s6Step320EntryGvRow 176 s6Step320EntryGvFresh
    s6Step320EntryGv_distinct s6Step320EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step320EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step320EntryGvRow.payload++s6Step320EntryGvFresh) s6Step320EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step320EntryBank_rows : planWindowRowsLog s6Step320EntryFBefore [(s6Step320EntryFRow,112),(s6Step320EntryGRow,112),(s6Step320EntryFvRow,176),(s6Step320EntryGvRow,176)] [s6Step320EntryFFresh,s6Step320EntryGFresh,s6Step320EntryFvFresh,s6Step320EntryGvFresh]=
    some (s6Step320EntryGvAfter,[s6Step320EntryFOut,s6Step320EntryGOut,s6Step320EntryFvOut,s6Step320EntryGvOut],(growRow 795 s6Step320EntryFFresh ++ (growRow 777 s6Step320EntryGFresh ++ (growRow 776 s6Step320EntryFvFresh ++ (growRow 775 s6Step320EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step320EntryGvAfter [] []=some (s6Step320EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step320EntryGvBefore s6Step320EntryGvAfter s6Step320EntryGvAfter
    s6Step320EntryGvRow s6Step320EntryGvOut 176 s6Step320EntryGvFresh [] [] []
    (growRow 775 s6Step320EntryGvFresh) ([]) s6Step320EntryGv_Incoming s6Step320EntryGv_checked h4 s6Step320EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step320EntryFvBefore s6Step320EntryFvAfter s6Step320EntryGvAfter
    s6Step320EntryFvRow s6Step320EntryFvOut 176 s6Step320EntryFvFresh [(s6Step320EntryGvRow,176)] [s6Step320EntryGvFresh] [s6Step320EntryGvOut]
    (growRow 776 s6Step320EntryFvFresh) ((growRow 775 s6Step320EntryGvFresh ++ [])) s6Step320EntryFv_Incoming s6Step320EntryFv_checked h3 s6Step320EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step320EntryGBefore s6Step320EntryGAfter s6Step320EntryGvAfter
    s6Step320EntryGRow s6Step320EntryGOut 112 s6Step320EntryGFresh [(s6Step320EntryFvRow,176),(s6Step320EntryGvRow,176)] [s6Step320EntryFvFresh,s6Step320EntryGvFresh] [s6Step320EntryFvOut,s6Step320EntryGvOut]
    (growRow 777 s6Step320EntryGFresh) ((growRow 776 s6Step320EntryFvFresh ++ (growRow 775 s6Step320EntryGvFresh ++ []))) s6Step320EntryG_Incoming s6Step320EntryG_checked h2 s6Step320EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step320EntryFBefore s6Step320EntryFAfter s6Step320EntryGvAfter
    s6Step320EntryFRow s6Step320EntryFOut 112 s6Step320EntryFFresh [(s6Step320EntryGRow,112),(s6Step320EntryFvRow,176),(s6Step320EntryGvRow,176)] [s6Step320EntryGFresh,s6Step320EntryFvFresh,s6Step320EntryGvFresh] [s6Step320EntryGOut,s6Step320EntryFvOut,s6Step320EntryGvOut]
    (growRow 795 s6Step320EntryFFresh) ((growRow 777 s6Step320EntryGFresh ++ (growRow 776 s6Step320EntryFvFresh ++ (growRow 775 s6Step320EntryGvFresh ++ [])))) s6Step320EntryF_Incoming s6Step320EntryF_checked h1 s6Step320EntryF_Outgoing
  exact h0

private theorem s6Step320EntryBank_checked : compileHmrBankResizeLog .entry s6Step320EntryFBefore ⟨s6Step320EntryFRow,s6Step320EntryGRow,s6Step320EntryFvRow,s6Step320EntryGvRow⟩ ⟨112,112,176,176⟩ [s6Step320EntryFFresh,s6Step320EntryGFresh,s6Step320EntryFvFresh,s6Step320EntryGvFresh]=
    some (s6Step320EntryGvAfter,⟨s6Step320EntryFOut,s6Step320EntryGOut,s6Step320EntryFvOut,s6Step320EntryGvOut⟩,(growRow 795 s6Step320EntryFFresh ++ (growRow 777 s6Step320EntryGFresh ++ (growRow 776 s6Step320EntryFvFresh ++ (growRow 775 s6Step320EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step320EntryBank_rows]
  rfl

private def s6Step320ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<366) ∨ (368≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320ExitFBefore : Arena := s6Step320ExitGAfter

private def s6Step320ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩

private def s6Step320ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 793],776⟩

private def s6Step320ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 865, 860, 805],777⟩

private def s6Step320ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 843],775⟩

private theorem s6Step320ExitBank_incomingDistinct : ([s6Step320ExitGRow,s6Step320ExitFRow,s6Step320ExitFvRow,s6Step320ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320ExitF_Incoming : rowsOwned s6Step320ExitFBefore [s6Step320ExitFRow,s6Step320ExitFvRow,s6Step320ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320ExitGRow,s6Step320ExitFRow,s6Step320ExitFvRow,s6Step320ExitGvRow] 1 s6Step320ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320ExitBank_outgoingOwned : rowsOwned s6Step320ExitGvAfter [s6Step320ExitGOut,s6Step320ExitFOut,s6Step320ExitFvOut,s6Step320ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step320ExitGvAfter (fun q => (0≤q ∧ q<366) ∨ (368≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320ExitF_Outgoing : rowsOwned s6Step320ExitGvAfter [s6Step320ExitFOut,s6Step320ExitFvOut,s6Step320ExitGvOut] :=
  hmrRows_owned_drop s6Step320ExitGvAfter [s6Step320ExitGOut,s6Step320ExitFOut,s6Step320ExitFvOut,s6Step320ExitGvOut] 1 s6Step320ExitBank_outgoingOwned

private theorem s6Step320ExitF_distinct : (s6Step320ExitFRow.sign::s6Step320ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320ExitF_owned : (s6Step320ExitFRow.sign::s6Step320ExitFRow.payload).toFinset⊆s6Step320ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320ExitF_retired : s6Step320ExitFBefore.retireSet s6Step320ExitFExtra.toFinset=s6Step320ExitFAfter := by
  unfold Arena.retireSet s6Step320ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step320ExitFBefore,s6Step320ExitGAfter,s6Step320ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step320ExitF_checked : planRowResizeLog s6Step320ExitFBefore s6Step320ExitFRow 110 []=
    some (s6Step320ExitFAfter,s6Step320ExitFOut,shrinkRow 795 s6Step320ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step320ExitFBefore s6Step320ExitFRow 110 s6Step320ExitF_distinct s6Step320ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step320ExitFRow.payload.take 110) s6Step320ExitFRow.sign=s6Step320ExitFOut := by decide +kernel
  have hi : s6Step320ExitFRow.payload.drop 110=s6Step320ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step320ExitF_retired] at result
  exact result

private def s6Step320ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<366) ∨ (368≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320ExitFvBefore : Arena := s6Step320ExitFAfter

private theorem s6Step320ExitFv_Incoming : rowsOwned s6Step320ExitFvBefore [s6Step320ExitFvRow,s6Step320ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320ExitGRow,s6Step320ExitFRow,s6Step320ExitFvRow,s6Step320ExitGvRow] 2 s6Step320ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320ExitFvBefore (fun q => (0≤q ∧ q<366) ∨ (368≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320ExitFv_Outgoing : rowsOwned s6Step320ExitGvAfter [s6Step320ExitFvOut,s6Step320ExitGvOut] :=
  hmrRows_owned_drop s6Step320ExitGvAfter [s6Step320ExitGOut,s6Step320ExitFOut,s6Step320ExitFvOut,s6Step320ExitGvOut] 2 s6Step320ExitBank_outgoingOwned

private theorem s6Step320ExitFv_distinct : (s6Step320ExitFvRow.sign::s6Step320ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320ExitFv_owned : (s6Step320ExitFvRow.sign::s6Step320ExitFvRow.payload).toFinset⊆s6Step320ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320ExitFvBefore (fun q => (0≤q ∧ q<366) ∨ (368≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320ExitFv_retired : s6Step320ExitFvBefore.retireSet s6Step320ExitFvExtra.toFinset=s6Step320ExitFvAfter := by
  unfold Arena.retireSet s6Step320ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step320ExitFvBefore,s6Step320ExitFAfter,s6Step320ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step320ExitFv_checked : planRowResizeLog s6Step320ExitFvBefore s6Step320ExitFvRow 176 []=
    some (s6Step320ExitFvAfter,s6Step320ExitFvOut,shrinkRow 776 s6Step320ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step320ExitFvBefore s6Step320ExitFvRow 176 s6Step320ExitFv_distinct s6Step320ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step320ExitFvRow.payload.take 176) s6Step320ExitFvRow.sign=s6Step320ExitFvOut := by decide +kernel
  have hi : s6Step320ExitFvRow.payload.drop 176=s6Step320ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step320ExitFv_retired] at result
  exact result

private def s6Step320ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step320ExitG_Incoming : rowsOwned s6Step320ExitGBefore [s6Step320ExitGRow,s6Step320ExitFRow,s6Step320ExitFvRow,s6Step320ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320ExitGRow,s6Step320ExitFRow,s6Step320ExitFvRow,s6Step320ExitGvRow] 0 s6Step320ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320ExitG_Outgoing : rowsOwned s6Step320ExitGvAfter [s6Step320ExitGOut,s6Step320ExitFOut,s6Step320ExitFvOut,s6Step320ExitGvOut] :=
  hmrRows_owned_drop s6Step320ExitGvAfter [s6Step320ExitGOut,s6Step320ExitFOut,s6Step320ExitFvOut,s6Step320ExitGvOut] 0 s6Step320ExitBank_outgoingOwned

private theorem s6Step320ExitG_distinct : (s6Step320ExitGRow.sign::s6Step320ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320ExitG_owned : (s6Step320ExitGRow.sign::s6Step320ExitGRow.payload).toFinset⊆s6Step320ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320ExitG_retired : s6Step320ExitGBefore.retireSet s6Step320ExitGExtra.toFinset=s6Step320ExitGAfter := by
  unfold Arena.retireSet s6Step320ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step320ExitGBefore,s6Step320ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step320ExitG_checked : planRowResizeLog s6Step320ExitGBefore s6Step320ExitGRow 110 []=
    some (s6Step320ExitGAfter,s6Step320ExitGOut,shrinkRow 777 s6Step320ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step320ExitGBefore s6Step320ExitGRow 110 s6Step320ExitG_distinct s6Step320ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step320ExitGRow.payload.take 110) s6Step320ExitGRow.sign=s6Step320ExitGOut := by decide +kernel
  have hi : s6Step320ExitGRow.payload.drop 110=s6Step320ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step320ExitG_retired] at result
  exact result

private def s6Step320ExitGvBefore : Arena := s6Step320ExitFvAfter

private theorem s6Step320ExitGv_Incoming : rowsOwned s6Step320ExitGvBefore [s6Step320ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320ExitGRow,s6Step320ExitFRow,s6Step320ExitFvRow,s6Step320ExitGvRow] 3 s6Step320ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320ExitGvBefore (fun q => (0≤q ∧ q<366) ∨ (368≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320ExitGv_Outgoing : rowsOwned s6Step320ExitGvAfter [s6Step320ExitGvOut] :=
  hmrRows_owned_drop s6Step320ExitGvAfter [s6Step320ExitGOut,s6Step320ExitFOut,s6Step320ExitFvOut,s6Step320ExitGvOut] 3 s6Step320ExitBank_outgoingOwned

private theorem s6Step320ExitGv_distinct : (s6Step320ExitGvRow.sign::s6Step320ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320ExitGv_owned : (s6Step320ExitGvRow.sign::s6Step320ExitGvRow.payload).toFinset⊆s6Step320ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320ExitGvBefore (fun q => (0≤q ∧ q<366) ∨ (368≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320ExitGv_retired : s6Step320ExitGvBefore.retireSet s6Step320ExitGvExtra.toFinset=s6Step320ExitGvAfter := by
  unfold Arena.retireSet s6Step320ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step320ExitGvBefore,s6Step320ExitFvAfter,s6Step320ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step320ExitGv_checked : planRowResizeLog s6Step320ExitGvBefore s6Step320ExitGvRow 176 []=
    some (s6Step320ExitGvAfter,s6Step320ExitGvOut,shrinkRow 775 s6Step320ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step320ExitGvBefore s6Step320ExitGvRow 176 s6Step320ExitGv_distinct s6Step320ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step320ExitGvRow.payload.take 176) s6Step320ExitGvRow.sign=s6Step320ExitGvOut := by decide +kernel
  have hi : s6Step320ExitGvRow.payload.drop 176=s6Step320ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step320ExitGv_retired] at result
  exact result

private theorem s6Step320ExitBank_rows : planWindowRowsLog s6Step320ExitGBefore [(s6Step320ExitGRow,110),(s6Step320ExitFRow,110),(s6Step320ExitFvRow,176),(s6Step320ExitGvRow,176)] [[],[],[],[]]=
    some (s6Step320ExitGvAfter,[s6Step320ExitGOut,s6Step320ExitFOut,s6Step320ExitFvOut,s6Step320ExitGvOut],(shrinkRow 777 s6Step320ExitGExtra ++ (shrinkRow 795 s6Step320ExitFExtra ++ (shrinkRow 776 s6Step320ExitFvExtra ++ (shrinkRow 775 s6Step320ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step320ExitGvAfter [] []=some (s6Step320ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step320ExitGvBefore s6Step320ExitGvAfter s6Step320ExitGvAfter
    s6Step320ExitGvRow s6Step320ExitGvOut 176 [] [] [] []
    (shrinkRow 775 s6Step320ExitGvExtra) ([]) s6Step320ExitGv_Incoming s6Step320ExitGv_checked h4 s6Step320ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step320ExitFvBefore s6Step320ExitFvAfter s6Step320ExitGvAfter
    s6Step320ExitFvRow s6Step320ExitFvOut 176 [] [(s6Step320ExitGvRow,176)] [[]] [s6Step320ExitGvOut]
    (shrinkRow 776 s6Step320ExitFvExtra) ((shrinkRow 775 s6Step320ExitGvExtra ++ [])) s6Step320ExitFv_Incoming s6Step320ExitFv_checked h3 s6Step320ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step320ExitFBefore s6Step320ExitFAfter s6Step320ExitGvAfter
    s6Step320ExitFRow s6Step320ExitFOut 110 [] [(s6Step320ExitFvRow,176),(s6Step320ExitGvRow,176)] [[],[]] [s6Step320ExitFvOut,s6Step320ExitGvOut]
    (shrinkRow 795 s6Step320ExitFExtra) ((shrinkRow 776 s6Step320ExitFvExtra ++ (shrinkRow 775 s6Step320ExitGvExtra ++ []))) s6Step320ExitF_Incoming s6Step320ExitF_checked h2 s6Step320ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step320ExitGBefore s6Step320ExitGAfter s6Step320ExitGvAfter
    s6Step320ExitGRow s6Step320ExitGOut 110 [] [(s6Step320ExitFRow,110),(s6Step320ExitFvRow,176),(s6Step320ExitGvRow,176)] [[],[],[]] [s6Step320ExitFOut,s6Step320ExitFvOut,s6Step320ExitGvOut]
    (shrinkRow 777 s6Step320ExitGExtra) ((shrinkRow 795 s6Step320ExitFExtra ++ (shrinkRow 776 s6Step320ExitFvExtra ++ (shrinkRow 775 s6Step320ExitGvExtra ++ [])))) s6Step320ExitG_Incoming s6Step320ExitG_checked h1 s6Step320ExitG_Outgoing
  exact h0

private theorem s6Step320ExitBank_checked : compileHmrBankResizeLog .exit s6Step320ExitGBefore ⟨s6Step320ExitFRow,s6Step320ExitGRow,s6Step320ExitFvRow,s6Step320ExitGvRow⟩ ⟨110,110,176,176⟩ [[],[],[],[]]=
    some (s6Step320ExitGvAfter,⟨s6Step320ExitFOut,s6Step320ExitGOut,s6Step320ExitFvOut,s6Step320ExitGvOut⟩,(shrinkRow 777 s6Step320ExitGExtra ++ (shrinkRow 795 s6Step320ExitFExtra ++ (shrinkRow 776 s6Step320ExitFvExtra ++ (shrinkRow 775 s6Step320ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step320ExitBank_rows]
  rfl

private theorem s6Step320Add0_apart : Disjoint s6Step320Add0Arena.live s6Step320Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step320Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320Add0_card : s6Step320Add0Arena.live.card=907 := by
  decide +kernel

private theorem s6Step320Add0_borrowed : s6Step320Add0Arena.checkBorrow (hmrHybridCount s6Step320Add0Arena s6Step320Add0B.length) s6Step320Add0Work=some s6Step320Add0During := by
  have len : s6Step320Add0Work.length=hmrHybridCount s6Step320Add0Arena s6Step320Add0B.length := by
    rw [hmrHybridCount,s6Step320Add0_card]
    decide +kernel
  have nd : s6Step320Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step320Add0Arena s6Step320Add0During s6Step320Add0Work.toFinset s6Step320Add0_bounded s6Step320Add0_apart rfl

private theorem s6Step320Add0_distinct : (817::830::812::(s6Step320Add0A++s6Step320Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320Add0_owned : (817::830::812::(s6Step320Add0A++s6Step320Add0B)).toFinset⊆s6Step320Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step320Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320Add0_checked : compileHmrHybridCinLog s6Step320Add0Arena 830 817 812 s6Step320Add0A s6Step320Add0B s6Step320Add0Work=some s6Step320Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step320Add0Arena s6Step320Add0During 830 817 812 s6Step320Add0A s6Step320Add0B s6Step320Add0Work
    (by decide +kernel) (by decide +kernel) s6Step320Add0_distinct
    (fun q hq => s6Step320Add0_owned (List.mem_toFinset.mpr hq)) s6Step320Add0_borrowed

private theorem s6Step320Add1_apart : Disjoint s6Step320Add1Arena.live s6Step320Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step320Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320Add1_card : s6Step320Add1Arena.live.card=907 := by
  decide +kernel

private theorem s6Step320Add1_borrowed : s6Step320Add1Arena.checkBorrow (hmrHybridCount s6Step320Add1Arena s6Step320Add1B.length) s6Step320Add1Work=some s6Step320Add1During := by
  have len : s6Step320Add1Work.length=hmrHybridCount s6Step320Add1Arena s6Step320Add1B.length := by
    rw [hmrHybridCount,s6Step320Add1_card]
    decide +kernel
  have nd : s6Step320Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step320Add1Arena s6Step320Add1During s6Step320Add1Work.toFinset s6Step320Add1_bounded s6Step320Add1_apart rfl

private theorem s6Step320Add1_distinct : (817::830::812::(s6Step320Add1A++s6Step320Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320Add1_owned : (817::830::812::(s6Step320Add1A++s6Step320Add1B)).toFinset⊆s6Step320Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step320Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320Add1_checked : compileHmrHybridCinLog s6Step320Add1Arena 830 817 812 s6Step320Add1A s6Step320Add1B s6Step320Add1Work=some s6Step320Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step320Add1Arena s6Step320Add1During 830 817 812 s6Step320Add1A s6Step320Add1B s6Step320Add1Work
    (by decide +kernel) (by decide +kernel) s6Step320Add1_distinct
    (fun q hq => s6Step320Add1_owned (List.mem_toFinset.mpr hq)) s6Step320Add1_borrowed

private theorem s6Step320F4_apart : Disjoint (s6Step320Add0A++s6Step320Add0B).toFinset (s6Step320Add1A++s6Step320Add1B).toFinset := by
  have nd : ((s6Step320Add0A++s6Step320Add0B)++(s6Step320Add1A++s6Step320Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step320F4_carry : s6Step320F4FlagArena.checkBorrow 1 [812]=some s6Step320Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step320F4FlagArena,s6Step320HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step320F4FlagArena,s6Step320HeadFvAfter,s6Step320Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step320F4_distinct : (880::830::817::812::((s6Step320Add0A++s6Step320Add1A)++(s6Step320Add0B++s6Step320Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320F4_flag : s6Step320HeadFvAfter.checkBorrow 1 [817]=some s6Step320F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step320HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step320F4_owned : (880::830::((s6Step320Add0A++s6Step320Add1A)++(s6Step320Add0B++s6Step320Add1B))).toFinset⊆s6Step320HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step320HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320F4_checked : compileHmrHybridF4Log s6Step320HeadFvAfter 880 830 s6Step320Add0A s6Step320Add0B s6Step320Add1A s6Step320Add1B [817] [812] s6Step320Add0Work s6Step320Add1Work=some s6Step320F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step320HeadFvAfter s6Step320F4FlagArena s6Step320Add0Arena s6Step320Add0During s6Step320Add1During 880 830
    s6Step320Add0A s6Step320Add0B s6Step320Add1A s6Step320Add1B [817] [812] s6Step320Add0Work s6Step320Add1Work
    (fun q hq => s6Step320F4_owned (List.mem_toFinset.mpr hq)) s6Step320F4_flag s6Step320F4_carry
    s6Step320F4_distinct s6Step320F4_apart s6Step320Add0_checked s6Step320Add1_checked

private theorem s6Step320Front_branch : s6Step320FrontSigmaArena.checkBorrow 1 [830]=some s6Step320HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step320FrontSigmaArena,s6Step320EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step320FrontSigmaArena,s6Step320EntryGvAfter,s6Step320HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step320Front_entry : HmrFrontEntryValid s6Step320EntryFBefore s6Step320FrontBank 112 176 ⟨110,110,176,176⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step320FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step320EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step320EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<868) ∨ (869≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step320FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step320Front_sigma : s6Step320EntryGvAfter.checkBorrow 1 [880]=some s6Step320FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step320EntryGvAfter,arenaWires]
  · rfl

private def s6Step320HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320HeadFBefore : Arena := s6Step320HeadGAfter

private def s6Step320HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step320HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step320HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 865, 860],777⟩

private def s6Step320HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩

private theorem s6Step320HeadBank_incomingDistinct : ([s6Step320HeadGRow,s6Step320HeadFRow,s6Step320HeadGvRow,s6Step320HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320HeadF_Incoming : rowsOwned s6Step320HeadFBefore [s6Step320HeadFRow,s6Step320HeadGvRow,s6Step320HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320HeadGRow,s6Step320HeadFRow,s6Step320HeadGvRow,s6Step320HeadFvRow] 1 s6Step320HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320HeadBank_outgoingOwned : rowsOwned s6Step320HeadFvAfter [s6Step320HeadGOut,s6Step320HeadFOut,s6Step320HeadGvOut,s6Step320HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step320HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320HeadF_Outgoing : rowsOwned s6Step320HeadFvAfter [s6Step320HeadFOut,s6Step320HeadGvOut,s6Step320HeadFvOut] :=
  hmrRows_owned_drop s6Step320HeadFvAfter [s6Step320HeadGOut,s6Step320HeadFOut,s6Step320HeadGvOut,s6Step320HeadFvOut] 1 s6Step320HeadBank_outgoingOwned

private theorem s6Step320HeadF_distinct : (s6Step320HeadFRow.sign::s6Step320HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320HeadF_owned : (s6Step320HeadFRow.sign::s6Step320HeadFRow.payload).toFinset⊆s6Step320HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320HeadF_reserved : s6Step320HeadFBefore.reserve s6Step320HeadFFresh.toFinset=some s6Step320HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step320HeadFFresh,arenaWires]
  · norm_num [s6Step320HeadFBefore,s6Step320HeadGAfter,s6Step320HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step320HeadFAfter,s6Step320HeadFBefore,s6Step320HeadGAfter,s6Step320HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step320HeadF_checked : planRowResizeLog s6Step320HeadFBefore s6Step320HeadFRow 113 s6Step320HeadFFresh=
    some (s6Step320HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩,growRow 795 s6Step320HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step320HeadFBefore s6Step320HeadFAfter s6Step320HeadFRow 113 s6Step320HeadFFresh
    s6Step320HeadF_distinct s6Step320HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step320HeadF_reserved
  have rowEq : WindowRow.mk (s6Step320HeadFRow.payload++s6Step320HeadFFresh) s6Step320HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step320HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step320HeadFvBefore : Arena := s6Step320HeadGvAfter

private theorem s6Step320HeadFv_Incoming : rowsOwned s6Step320HeadFvBefore [s6Step320HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320HeadGRow,s6Step320HeadFRow,s6Step320HeadGvRow,s6Step320HeadFvRow] 3 s6Step320HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320HeadFv_Outgoing : rowsOwned s6Step320HeadFvAfter [s6Step320HeadFvOut] :=
  hmrRows_owned_drop s6Step320HeadFvAfter [s6Step320HeadGOut,s6Step320HeadFOut,s6Step320HeadGvOut,s6Step320HeadFvOut] 3 s6Step320HeadBank_outgoingOwned

private theorem s6Step320HeadFv_distinct : (s6Step320HeadFvRow.sign::s6Step320HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320HeadFv_owned : (s6Step320HeadFvRow.sign::s6Step320HeadFvRow.payload).toFinset⊆s6Step320HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320HeadFv_reserved : s6Step320HeadFvBefore.reserve s6Step320HeadFvFresh.toFinset=some s6Step320HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step320HeadFvFresh,arenaWires]
  · norm_num [s6Step320HeadFvBefore,s6Step320HeadGvAfter,s6Step320HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step320HeadFvAfter,s6Step320HeadFvBefore,s6Step320HeadGvAfter,s6Step320HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step320HeadFv_checked : planRowResizeLog s6Step320HeadFvBefore s6Step320HeadFvRow 177 s6Step320HeadFvFresh=
    some (s6Step320HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 793],776⟩,growRow 776 s6Step320HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step320HeadFvBefore s6Step320HeadFvAfter s6Step320HeadFvRow 177 s6Step320HeadFvFresh
    s6Step320HeadFv_distinct s6Step320HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step320HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step320HeadFvRow.payload++s6Step320HeadFvFresh) s6Step320HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 793],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step320HeadG_Incoming : rowsOwned s6Step320HeadGBefore [s6Step320HeadGRow,s6Step320HeadFRow,s6Step320HeadGvRow,s6Step320HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320HeadGRow,s6Step320HeadFRow,s6Step320HeadGvRow,s6Step320HeadFvRow] 0 s6Step320HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320HeadG_Outgoing : rowsOwned s6Step320HeadFvAfter [s6Step320HeadGOut,s6Step320HeadFOut,s6Step320HeadGvOut,s6Step320HeadFvOut] :=
  hmrRows_owned_drop s6Step320HeadFvAfter [s6Step320HeadGOut,s6Step320HeadFOut,s6Step320HeadGvOut,s6Step320HeadFvOut] 0 s6Step320HeadBank_outgoingOwned

private theorem s6Step320HeadG_distinct : (s6Step320HeadGRow.sign::s6Step320HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320HeadG_owned : (s6Step320HeadGRow.sign::s6Step320HeadGRow.payload).toFinset⊆s6Step320HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320HeadG_reserved : s6Step320HeadGBefore.reserve s6Step320HeadGFresh.toFinset=some s6Step320HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step320HeadGFresh,arenaWires]
  · norm_num [s6Step320HeadGBefore,s6Step320HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step320HeadGAfter,s6Step320HeadGBefore,s6Step320HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step320HeadG_checked : planRowResizeLog s6Step320HeadGBefore s6Step320HeadGRow 113 s6Step320HeadGFresh=
    some (s6Step320HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 865, 860, 805],777⟩,growRow 777 s6Step320HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step320HeadGBefore s6Step320HeadGAfter s6Step320HeadGRow 113 s6Step320HeadGFresh
    s6Step320HeadG_distinct s6Step320HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step320HeadG_reserved
  have rowEq : WindowRow.mk (s6Step320HeadGRow.payload++s6Step320HeadGFresh) s6Step320HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 865, 860, 805],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step320HeadGvBefore : Arena := s6Step320HeadFAfter

private theorem s6Step320HeadGv_Incoming : rowsOwned s6Step320HeadGvBefore [s6Step320HeadGvRow,s6Step320HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step320HeadGRow,s6Step320HeadFRow,s6Step320HeadGvRow,s6Step320HeadFvRow] 2 s6Step320HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step320HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step320HeadGv_Outgoing : rowsOwned s6Step320HeadFvAfter [s6Step320HeadGvOut,s6Step320HeadFvOut] :=
  hmrRows_owned_drop s6Step320HeadFvAfter [s6Step320HeadGOut,s6Step320HeadFOut,s6Step320HeadGvOut,s6Step320HeadFvOut] 2 s6Step320HeadBank_outgoingOwned

private theorem s6Step320HeadGv_distinct : (s6Step320HeadGvRow.sign::s6Step320HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step320HeadGv_owned : (s6Step320HeadGvRow.sign::s6Step320HeadGvRow.payload).toFinset⊆s6Step320HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step320HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step320HeadGv_reserved : s6Step320HeadGvBefore.reserve s6Step320HeadGvFresh.toFinset=some s6Step320HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step320HeadGvFresh,arenaWires]
  · norm_num [s6Step320HeadGvBefore,s6Step320HeadFAfter,s6Step320HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step320HeadGvAfter,s6Step320HeadGvBefore,s6Step320HeadFAfter,s6Step320HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step320HeadGv_checked : planRowResizeLog s6Step320HeadGvBefore s6Step320HeadGvRow 177 s6Step320HeadGvFresh=
    some (s6Step320HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 843],775⟩,growRow 775 s6Step320HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step320HeadGvBefore s6Step320HeadGvAfter s6Step320HeadGvRow 177 s6Step320HeadGvFresh
    s6Step320HeadGv_distinct s6Step320HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step320HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step320HeadGvRow.payload++s6Step320HeadGvFresh) s6Step320HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 843],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step320HeadBank_rows : planWindowRowsLog s6Step320HeadGBefore [(s6Step320HeadGRow,113),(s6Step320HeadFRow,113),(s6Step320HeadGvRow,177),(s6Step320HeadFvRow,177)] [s6Step320HeadGFresh,s6Step320HeadFFresh,s6Step320HeadGvFresh,s6Step320HeadFvFresh]=
    some (s6Step320HeadFvAfter,[s6Step320HeadGOut,s6Step320HeadFOut,s6Step320HeadGvOut,s6Step320HeadFvOut],(growRow 777 s6Step320HeadGFresh ++ (growRow 795 s6Step320HeadFFresh ++ (growRow 775 s6Step320HeadGvFresh ++ (growRow 776 s6Step320HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step320HeadFvAfter [] []=some (s6Step320HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step320HeadFvBefore s6Step320HeadFvAfter s6Step320HeadFvAfter
    s6Step320HeadFvRow s6Step320HeadFvOut 177 s6Step320HeadFvFresh [] [] []
    (growRow 776 s6Step320HeadFvFresh) ([]) s6Step320HeadFv_Incoming s6Step320HeadFv_checked h4 s6Step320HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step320HeadGvBefore s6Step320HeadGvAfter s6Step320HeadFvAfter
    s6Step320HeadGvRow s6Step320HeadGvOut 177 s6Step320HeadGvFresh [(s6Step320HeadFvRow,177)] [s6Step320HeadFvFresh] [s6Step320HeadFvOut]
    (growRow 775 s6Step320HeadGvFresh) ((growRow 776 s6Step320HeadFvFresh ++ [])) s6Step320HeadGv_Incoming s6Step320HeadGv_checked h3 s6Step320HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step320HeadFBefore s6Step320HeadFAfter s6Step320HeadFvAfter
    s6Step320HeadFRow s6Step320HeadFOut 113 s6Step320HeadFFresh [(s6Step320HeadGvRow,177),(s6Step320HeadFvRow,177)] [s6Step320HeadGvFresh,s6Step320HeadFvFresh] [s6Step320HeadGvOut,s6Step320HeadFvOut]
    (growRow 795 s6Step320HeadFFresh) ((growRow 775 s6Step320HeadGvFresh ++ (growRow 776 s6Step320HeadFvFresh ++ []))) s6Step320HeadF_Incoming s6Step320HeadF_checked h2 s6Step320HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step320HeadGBefore s6Step320HeadGAfter s6Step320HeadFvAfter
    s6Step320HeadGRow s6Step320HeadGOut 113 s6Step320HeadGFresh [(s6Step320HeadFRow,113),(s6Step320HeadGvRow,177),(s6Step320HeadFvRow,177)] [s6Step320HeadFFresh,s6Step320HeadGvFresh,s6Step320HeadFvFresh] [s6Step320HeadFOut,s6Step320HeadGvOut,s6Step320HeadFvOut]
    (growRow 777 s6Step320HeadGFresh) ((growRow 795 s6Step320HeadFFresh ++ (growRow 775 s6Step320HeadGvFresh ++ (growRow 776 s6Step320HeadFvFresh ++ [])))) s6Step320HeadG_Incoming s6Step320HeadG_checked h1 s6Step320HeadG_Outgoing
  exact h0

private theorem s6Step320HeadBank_checked : compileHmrBankResizeLog .headroom s6Step320HeadGBefore ⟨s6Step320HeadFRow,s6Step320HeadGRow,s6Step320HeadFvRow,s6Step320HeadGvRow⟩ ⟨113,113,177,177⟩ [s6Step320HeadGFresh,s6Step320HeadFFresh,s6Step320HeadGvFresh,s6Step320HeadFvFresh]=
    some (s6Step320HeadFvAfter,⟨s6Step320HeadFOut,s6Step320HeadGOut,s6Step320HeadFvOut,s6Step320HeadGvOut⟩,(growRow 777 s6Step320HeadGFresh ++ (growRow 795 s6Step320HeadFFresh ++ (growRow 775 s6Step320HeadGvFresh ++ (growRow 776 s6Step320HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step320HeadBank_rows]
  rfl

private theorem s6Step320Front_checked : compileHmrSourceFrontLog s6Step320EntryFBefore s6Step320FrontBank 112 176 ⟨110,110,176,176⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step320FrontLog=some s6Step320FrontPlan := by
  have pairEq : s6Step320FrontPair=⟨s6Step320HeadFRow,s6Step320HeadGRow,s6Step320HeadFvRow,s6Step320HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step320FrontHead=⟨s6Step320ExitFRow,s6Step320ExitGRow,s6Step320ExitFvRow,s6Step320ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step320Add0A=s6Step320FrontHead.f.wires := by decide +kernel
  have gEq : s6Step320Add0B=s6Step320FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step320Add1A=s6Step320FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step320Add1B=s6Step320FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step320EntryFBefore s6Step320FrontBank 112 176 ⟨110,110,176,176⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step320FrontLog s6Step320FrontPlan
  · exact s6Step320Front_entry
  · exact s6Step320EntryBank_checked
  · exact s6Step320Front_sigma
  · rfl
  · exact s6Step320Front_branch
  · rfl
  · simpa only [s6Step320FrontPlan,pairEq] using s6Step320HeadBank_checked
  · simpa only [s6Step320FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step320F4_checked
  · exact s6Step320Counter_checked
  · rfl
  · simpa only [s6Step320FrontPlan,headEq] using s6Step320ExitBank_checked

private theorem s6Step320Complete_explicit_checked : compileHmrEarlyStepLog s6Step320EntryFBefore s6Step320FrontBank 112 176 ⟨110,110,176,176⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] 58 s6Step320CompleteLog=some s6Step320CompletePlan := by
  let Q := s6Step320EarlyControlPlan
  have hq := s6Step320EarlyControl_plan_checked
  have fv1 : s6Step320CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step320CompleteOut.fv.payload[2]?.getD s6Step320CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step320CompleteOut.fv.payload[3]?.getD s6Step320CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step320CompleteOut.fv.payload[4]?.getD s6Step320CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step320EntryFBefore s6Step320EarlyControlArena s6Step320FrontBank 112 176 ⟨110,110,176,176⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] 58 s6Step320CompleteLog s6Step320FrontPlan Q
    s6Step320Front_checked s6Step320Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step320Complete_owned s6Step320Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step320EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] 769 880 s6Step320CompleteOut.fv.second (s6Step320CompleteOut.fv.payload[2]?.getD s6Step320CompleteOut.fv.sign) (s6Step320CompleteOut.fv.payload[3]?.getD s6Step320CompleteOut.fv.sign) (s6Step320CompleteOut.fv.payload[4]?.getD s6Step320CompleteOut.fv.sign) 830 58 s6Step320EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep320Arena : Arena := s6Step320EntryFBefore
def s6PrivateStep320Bank : WindowBank := s6Step320FrontBank
def s6PrivateStep320Spec : HmrSourceWalkStepLog := ⟨112,176,⟨110,110,176,176⟩,58,.early s6Step320CompleteLog⟩
def s6PrivateStep320Plan : HmrSourceStepPlan := .early s6Step320CompletePlan
theorem s6PrivateStep320_source : s6PrivateStep320Spec=s6ObservedLogs320[0] := rfl
theorem s6PrivateStep320_checked : compileHmrSourceStepLog s6PrivateStep320Arena s6PrivateStep320Bank
    s6PrivateStep320Spec.fgWidth s6PrivateStep320Spec.vWidth s6PrivateStep320Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925]
    6 498 320 s6PrivateStep320Spec.need none s6PrivateStep320Spec.log=some s6PrivateStep320Plan := by
  change compileHmrSourceStepLog s6Step320EntryFBefore s6Step320FrontBank 112 176 ⟨110,110,176,176⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] 6 498 320 58 none (.early s6Step320CompleteLog)=some (.early s6Step320CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 320<498)]
  rw [s6Step320Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
