import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep301
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

private def s6Step303CompleteMoves : List (Wire × Wire) := [(888,375)]

private def s6Step303EarlyControlLog : HmrEarlyControlLog := ⟨[888, 823, 793, 869, 886],[830],[805],[817, 812, 915, 906, 792, 849],[]⟩

private def s6Step303FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [803, 857], [], [898]],[[886], [869], [823], [793]],[[], [], [], []]⟩,[828],[865],[830],[805],[817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step303CompleteLog : HmrEarlyStepLog := ⟨s6Step303FrontLog,s6Step303CompleteMoves,s6Step303EarlyControlLog⟩

private def s6Step303ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374],795⟩

private def s6Step303ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩

private def s6Step303ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857],777⟩

private def s6Step303ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898],775⟩

private def s6Step303FrontOut : WindowBank := ⟨s6Step303ExitFOut,s6Step303ExitGOut,s6Step303ExitFvOut,s6Step303ExitGvOut⟩

private def s6Step303CompleteOut : WindowBank := s6Step303FrontOut.repacked s6Step303CompleteMoves

private def s6Step303EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step303EarlyControlPositiveArena,[830],s6Step303EarlyControlEqualityArena,[805],⟨⟨828,false⟩,[⟨⟨830,false⟩,805⟩]⟩⟩

private def s6Step303EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,888⟩,⟨⟨772,false⟩,823⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,869⟩,⟨⟨769,false⟩,886⟩]⟩

private def s6Step303EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step303EarlyControlZeroArena,s6Step303EarlyControlZeroPlan,s6Step303EarlyControlClassPlan,s6Step303EarlyControlFlagArena,s6Step303EarlyControlFittedArena,s6Step303EarlyControlHistoryArena,s6Step303EarlyControlSigmaArena,s6Step303EarlyControlOutputArena,s6Step303EarlyControlLog⟩

private def s6Step303CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step303Counter_bounded : s6Step303CounterWork.toFinset⊆arenaWires := by norm_num [s6Step303CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step303HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303CounterDuring : Arena := ⟨s6Step303HeadFvAfter.live∪s6Step303CounterWork.toFinset,Finset.union_subset s6Step303HeadFvAfter.bounded s6Step303Counter_bounded⟩

private def s6Step303EntryFFresh : List Wire := []

private def s6Step303EntryFvFresh : List Wire := []

private def s6Step303EntryGFresh : List Wire := [803, 857]

private def s6Step303EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EntryGvFresh : List Wire := [898]

private def s6Step303ExitFExtra : List Wire := [375, 869]

private def s6Step303ExitFvExtra : List Wire := [793]

private def s6Step303ExitGExtra : List Wire := [886]

private def s6Step303ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<375) ∨ (376≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303ExitGvExtra : List Wire := [823]

private def s6Step303Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303Add0Work : List Wire := [817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step303Add0_bounded : s6Step303Add0Work.toFinset⊆arenaWires := by
  have h : s6Step303Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step303Add0During : Arena := ⟨s6Step303Add0Arena.live∪s6Step303Add0Work.toFinset,Finset.union_subset s6Step303Add0Arena.bounded s6Step303Add0_bounded⟩

private def s6Step303Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303Add1Work : List Wire := [817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step303Add1_bounded : s6Step303Add1Work.toFinset⊆arenaWires := by
  have h : s6Step303Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step303Add1During : Arena := ⟨s6Step303Add1Arena.live∪s6Step303Add1Work.toFinset,Finset.union_subset s6Step303Add1Arena.bounded s6Step303Add1_bounded⟩

private def s6Step303F4FlagArena : Arena := ⟨s6Step303HeadFvAfter.live∪{830},Finset.union_subset s6Step303HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step303F4Plan : HmrHybridF4Plan := ⟨s6Step303F4FlagArena,[830],s6Step303Add0Arena,[805],s6Step303Add0During,s6Step303Add0Work,s6Step303Add1During,s6Step303Add1Work⟩

private def s6Step303HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 869],795⟩

private def s6Step303HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 793],776⟩

private def s6Step303HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857, 886],777⟩

private def s6Step303HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 823],775⟩

private def s6Step303FrontHead : WindowBank := ⟨s6Step303HeadFOut,s6Step303HeadGOut,s6Step303HeadFvOut,s6Step303HeadGvOut⟩

private def s6Step303EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩

private def s6Step303EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩

private def s6Step303EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857],777⟩

private def s6Step303EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898],775⟩

private def s6Step303FrontPair : WindowBank := ⟨s6Step303EntryFOut,s6Step303EntryGOut,s6Step303EntryFvOut,s6Step303EntryGvOut⟩

private def s6Step303FrontSigmaArena : Arena := ⟨s6Step303EntryGvAfter.live∪{828},Finset.union_subset s6Step303EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step303HeadFFresh : List Wire := [869]

private def s6Step303HeadFvFresh : List Wire := [793]

private def s6Step303HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303HeadGFresh : List Wire := [886]

private def s6Step303HeadGvFresh : List Wire := [823]

private def s6Step303FrontPlan : HmrSourceFront := ⟨s6Step303EntryGvAfter,s6Step303FrontPair,(growRow 795 s6Step303EntryFFresh ++ (growRow 777 s6Step303EntryGFresh ++ (growRow 776 s6Step303EntryFvFresh ++ (growRow 775 s6Step303EntryGvFresh ++ [])))),s6Step303FrontSigmaArena,[828],s6Step303HeadGBefore,[865],
  s6Step303HeadFvAfter,s6Step303FrontHead,(growRow 777 s6Step303HeadGFresh ++ (growRow 795 s6Step303HeadFFresh ++ (growRow 775 s6Step303HeadGvFresh ++ (growRow 776 s6Step303HeadFvFresh ++ [])))),s6Step303F4Plan,s6Step303CounterDuring,s6Step303CounterWork,s6Step303ExitGvAfter,s6Step303FrontOut,(shrinkRow 777 s6Step303ExitGExtra ++ (shrinkRow 795 s6Step303ExitFExtra ++ (shrinkRow 776 s6Step303ExitFvExtra ++ (shrinkRow 775 s6Step303ExitGvExtra ++ []))))⟩

private def s6Step303CompletePlan : HmrEarlyStepPlan := ⟨s6Step303FrontPlan,s6Step303EarlyControlArena,s6Step303EarlyControlPlan,s6Step303CompleteMoves⟩

private theorem s6Step303Complete_apart : List.Disjoint (s6Step303CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [828, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] := by
  have nd : ((s6Step303CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[828, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step303Complete_owned : (s6Step303CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step303EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step303CompleteMoveArena : Arena := ⟨s6Step303ExitGvAfter.live∪{375},Finset.union_subset s6Step303ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step303Complete_repack : s6Step303ExitGvAfter.checkRepack s6Step303CompleteMoves=some s6Step303EarlyControlArena := by
  have owned : 888∈s6Step303ExitGvAfter.live := by norm_num [s6Step303ExitGvAfter,arenaWires]
  have reserve : s6Step303ExitGvAfter.reserve {375}=some s6Step303CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step303ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step303CompleteMoveArena.retireSet {888}=s6Step303EarlyControlArena := by
    unfold Arena.retireSet s6Step303EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step303CompleteMoveArena,s6Step303ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step303CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step303CompleteMoveArena.retireSet {888}).checkRepack []=some s6Step303EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step303EarlyControl_branchOwned : ([865] : List Wire).toFinset⊆s6Step303EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EarlyControl_branch : compileHmrBranchRetirement s6Step303EarlyControlSigmaArena 865=some s6Step303EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step303EarlyControl_branchOwned
  · ext q
    simp [s6Step303EarlyControlOutputArena,s6Step303EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step303EarlyControl_classEqualityBorrow : s6Step303EarlyControlPositiveArena.checkBorrow (([828, 830] : List Wire).length-1) s6Step303EarlyControlLog.classWork=some s6Step303EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step303EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step303EarlyControlEqualityArena,s6Step303EarlyControlPositiveArena,s6Step303EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step303EarlyControl_classEqualityOwned : ([828, 830] : List Wire).toFinset⊆s6Step303EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EarlyControl_classEquality : compileHmrEqualityLog s6Step303EarlyControlPositiveArena [828, 830] 0 s6Step303EarlyControlLog.classWork=some (s6Step303EarlyControlEqualityArena,s6Step303EarlyControlLog.classWork,s6Step303EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step303EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step303EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step303EarlyControl_classOwned : ([769, 886, 828] : List Wire).toFinset⊆s6Step303EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EarlyControl_positiveBorrow : s6Step303EarlyControlZeroArena.checkBorrow (1) s6Step303EarlyControlLog.positiveWork=some s6Step303EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step303EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step303EarlyControlPositiveArena,s6Step303EarlyControlZeroArena,s6Step303EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step303EarlyControl_class : compileHmrSourceClassLog s6Step303EarlyControlZeroArena false 769 s6Step303EarlyControlZeroPlan.top 0 828 s6Step303EarlyControlLog.positiveWork s6Step303EarlyControlLog.classWork=some s6Step303EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step303EarlyControlClassPlan s6Step303EarlyControlZeroArena false 769 s6Step303EarlyControlZeroPlan.top 0 828
  constructor
  · decide +kernel
  · exact s6Step303EarlyControl_classOwned
  · exact s6Step303EarlyControl_positiveBorrow
  · exact s6Step303EarlyControl_classEquality

private theorem s6Step303EarlyControl_entryRecordOwned : ([865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step303EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EarlyControl_entrySigmaOwned : ([828, 254] : List Wire).toFinset⊆s6Step303EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EarlyControl_fitBorrow : s6Step303EarlyControlFlagArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step303EarlyControlLog.recordFresh=some s6Step303EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step303EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step303EarlyControlFittedArena,s6Step303EarlyControlFlagArena,s6Step303EarlyControlLog,arenaWires]

private theorem s6Step303EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step303EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EarlyControl_fit : compileHmrRecordGrowLog s6Step303EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step303EarlyControlLog.recordFresh=some s6Step303EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step303EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step303EarlyControl_fitBorrow

private theorem s6Step303EarlyControl_flagsBorrow : s6Step303EarlyControlEqualityArena.checkBorrow (6) s6Step303EarlyControlLog.flagWork=some s6Step303EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step303EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step303EarlyControlFlagArena,s6Step303EarlyControlEqualityArena,s6Step303EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step303EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step303EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EarlyControl_flags : compileHmrFlagsLog s6Step303EarlyControlClassPlan.equalityArena s6Step303EarlyControlClassPlan.equality.top 253 252 251 s6Step303EarlyControlLog.flagWork=some s6Step303EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step303EarlyControl_flagsOwned⟩
  · exact s6Step303EarlyControl_flagsBorrow

private theorem s6Step303EarlyControl_historyBorrow : s6Step303EarlyControlArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step303EarlyControlLog.recordFresh=some s6Step303EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step303EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step303EarlyControlHistoryArena,s6Step303EarlyControlArena,s6Step303EarlyControlLog,arenaWires]

private theorem s6Step303EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step303EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EarlyControl_history : compileHmrRecordGrowLog s6Step303EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step303EarlyControlLog.recordFresh=some s6Step303EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step303EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step303EarlyControl_historyBorrow

private theorem s6Step303EarlyControl_sigmaOwned : ([254, 828] : List Wire).toFinset⊆s6Step303EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EarlyControl_sigmaReleaseOwned : ([828] : List Wire).toFinset⊆s6Step303EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EarlyControl_sigmaRelease : s6Step303EarlyControlHistoryArena.release {828} (fun _ => false)=some s6Step303EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step303EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step303EarlyControlSigmaArena,s6Step303EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step303EarlyControl_sigma : compileHmrSigmaDropLog s6Step303EarlyControlHistoryArena false 0 0 254 828 []=some s6Step303EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step303EarlyControl_sigmaOwned⟩
  · exact s6Step303EarlyControl_sigmaRelease

private theorem s6Step303EarlyControl_zeroBorrow : s6Step303EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step303EarlyControlLog.zeroWork=some s6Step303EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step303EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step303EarlyControlZeroArena,s6Step303EarlyControlArena,s6Step303EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step303EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step303EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step303EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<888) ∨ (889≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EarlyControl_zero : compileHmrEqualityLog s6Step303EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step303EarlyControlLog.zeroWork=some (s6Step303EarlyControlZeroArena,s6Step303EarlyControlLog.zeroWork,s6Step303EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step303EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step303EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step303EarlyControl_logged : s6Step303EarlyControlPlan.Logged s6Step303EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 254 253 252 251 865 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step303EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step303EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step303EarlyControl_zero
  · exact s6Step303EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step303EarlyControl_flags
  · exact s6Step303EarlyControl_fit
  · exact s6Step303EarlyControl_history
  · exact s6Step303EarlyControl_sigma
  · exact s6Step303EarlyControl_branch

private theorem s6Step303EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step303EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 254 253 252 251 865 55 s6Step303EarlyControlLog=some s6Step303EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step303EarlyControlPlan s6Step303EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 254 253 252 251 865 55 s6Step303EarlyControl_logged

private def s6Step303EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩

private def s6Step303EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩

private def s6Step303EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩

private def s6Step303EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩

private def s6Step303FrontBank : WindowBank := ⟨s6Step303EntryFRow,s6Step303EntryGRow,s6Step303EntryFvRow,s6Step303EntryGvRow⟩

private def s6Step303Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 869, 795]

private def s6Step303Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857, 886, 777]

private def s6Step303Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 793, 776]

private def s6Step303Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 823, 775]

private theorem s6Step303Counter_apart : Disjoint s6Step303HeadFvAfter.live s6Step303CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step303HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303Counter_borrowed : s6Step303HeadFvAfter.checkBorrow 4 s6Step303CounterWork=some s6Step303CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step303HeadFvAfter s6Step303CounterDuring s6Step303CounterWork.toFinset s6Step303Counter_bounded s6Step303Counter_apart rfl

private theorem s6Step303Counter_owned : (828::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step303HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step303HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303Counter_checked : compileHmrCounterStepLog s6Step303HeadFvAfter true 828 [774, 773, 772, 771, 770, 769] s6Step303CounterWork=some s6Step303CounterDuring := by
  have owned : ∀q∈828::[774, 773, 772, 771, 770, 769],q∈s6Step303HeadFvAfter.live := fun q hq => s6Step303Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step303Counter_borrowed

private def s6Step303EntryFAfter : Arena := s6Step303EntryFBefore

private theorem s6Step303EntryBank_incomingDistinct : ([s6Step303EntryFRow,s6Step303EntryGRow,s6Step303EntryFvRow,s6Step303EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303EntryF_Incoming : rowsOwned s6Step303EntryFBefore [s6Step303EntryFRow,s6Step303EntryGRow,s6Step303EntryFvRow,s6Step303EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303EntryFRow,s6Step303EntryGRow,s6Step303EntryFvRow,s6Step303EntryGvRow] 0 s6Step303EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303EntryBank_outgoingOwned : rowsOwned s6Step303EntryGvAfter [s6Step303EntryFOut,s6Step303EntryGOut,s6Step303EntryFvOut,s6Step303EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step303EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303EntryF_Outgoing : rowsOwned s6Step303EntryGvAfter [s6Step303EntryFOut,s6Step303EntryGOut,s6Step303EntryFvOut,s6Step303EntryGvOut] :=
  hmrRows_owned_drop s6Step303EntryGvAfter [s6Step303EntryFOut,s6Step303EntryGOut,s6Step303EntryFvOut,s6Step303EntryGvOut] 0 s6Step303EntryBank_outgoingOwned

private theorem s6Step303EntryF_distinct : (s6Step303EntryFRow.sign::s6Step303EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303EntryF_owned : (s6Step303EntryFRow.sign::s6Step303EntryFRow.payload).toFinset⊆s6Step303EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EntryF_reserved : s6Step303EntryFBefore.reserve s6Step303EntryFFresh.toFinset=some s6Step303EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step303EntryFFresh,arenaWires]
  · norm_num [s6Step303EntryFBefore,s6Step303EntryFFresh,arenaWires]
  · simp only [s6Step303EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step303EntryF_checked : planRowResizeLog s6Step303EntryFBefore s6Step303EntryFRow 120 s6Step303EntryFFresh=
    some (s6Step303EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩,growRow 795 s6Step303EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step303EntryFBefore s6Step303EntryFAfter s6Step303EntryFRow 120 s6Step303EntryFFresh
    s6Step303EntryF_distinct s6Step303EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step303EntryF_reserved
  have rowEq : WindowRow.mk (s6Step303EntryFRow.payload++s6Step303EntryFFresh) s6Step303EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step303EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303EntryFvAfter : Arena := s6Step303EntryGAfter

private def s6Step303EntryFvBefore : Arena := s6Step303EntryGAfter

private theorem s6Step303EntryFv_Incoming : rowsOwned s6Step303EntryFvBefore [s6Step303EntryFvRow,s6Step303EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303EntryFRow,s6Step303EntryGRow,s6Step303EntryFvRow,s6Step303EntryGvRow] 2 s6Step303EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303EntryFv_Outgoing : rowsOwned s6Step303EntryGvAfter [s6Step303EntryFvOut,s6Step303EntryGvOut] :=
  hmrRows_owned_drop s6Step303EntryGvAfter [s6Step303EntryFOut,s6Step303EntryGOut,s6Step303EntryFvOut,s6Step303EntryGvOut] 2 s6Step303EntryBank_outgoingOwned

private theorem s6Step303EntryFv_distinct : (s6Step303EntryFvRow.sign::s6Step303EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303EntryFv_owned : (s6Step303EntryFvRow.sign::s6Step303EntryFvRow.payload).toFinset⊆s6Step303EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EntryFv_reserved : s6Step303EntryFvBefore.reserve s6Step303EntryFvFresh.toFinset=some s6Step303EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step303EntryFvFresh,arenaWires]
  · norm_num [s6Step303EntryFvBefore,s6Step303EntryGAfter,s6Step303EntryFvFresh,arenaWires]
  · simp only [s6Step303EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step303EntryFv_checked : planRowResizeLog s6Step303EntryFvBefore s6Step303EntryFvRow 167 s6Step303EntryFvFresh=
    some (s6Step303EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩,growRow 776 s6Step303EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step303EntryFvBefore s6Step303EntryFvAfter s6Step303EntryFvRow 167 s6Step303EntryFvFresh
    s6Step303EntryFv_distinct s6Step303EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step303EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step303EntryFvRow.payload++s6Step303EntryFvFresh) s6Step303EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step303EntryGBefore : Arena := s6Step303EntryFBefore

private theorem s6Step303EntryG_Incoming : rowsOwned s6Step303EntryGBefore [s6Step303EntryGRow,s6Step303EntryFvRow,s6Step303EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303EntryFRow,s6Step303EntryGRow,s6Step303EntryFvRow,s6Step303EntryGvRow] 1 s6Step303EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303EntryG_Outgoing : rowsOwned s6Step303EntryGvAfter [s6Step303EntryGOut,s6Step303EntryFvOut,s6Step303EntryGvOut] :=
  hmrRows_owned_drop s6Step303EntryGvAfter [s6Step303EntryFOut,s6Step303EntryGOut,s6Step303EntryFvOut,s6Step303EntryGvOut] 1 s6Step303EntryBank_outgoingOwned

private theorem s6Step303EntryG_distinct : (s6Step303EntryGRow.sign::s6Step303EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303EntryG_owned : (s6Step303EntryGRow.sign::s6Step303EntryGRow.payload).toFinset⊆s6Step303EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EntryG_reserved : s6Step303EntryGBefore.reserve s6Step303EntryGFresh.toFinset=some s6Step303EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step303EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step303EntryGBefore,s6Step303EntryFBefore,s6Step303EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step303EntryGAfter,s6Step303EntryGBefore,s6Step303EntryFBefore,s6Step303EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step303EntryG_checked : planRowResizeLog s6Step303EntryGBefore s6Step303EntryGRow 120 s6Step303EntryGFresh=
    some (s6Step303EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857],777⟩,growRow 777 s6Step303EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step303EntryGBefore s6Step303EntryGAfter s6Step303EntryGRow 120 s6Step303EntryGFresh
    s6Step303EntryG_distinct s6Step303EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step303EntryG_reserved
  have rowEq : WindowRow.mk (s6Step303EntryGRow.payload++s6Step303EntryGFresh) s6Step303EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step303EntryGvBefore : Arena := s6Step303EntryGAfter

private theorem s6Step303EntryGv_Incoming : rowsOwned s6Step303EntryGvBefore [s6Step303EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303EntryFRow,s6Step303EntryGRow,s6Step303EntryFvRow,s6Step303EntryGvRow] 3 s6Step303EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303EntryGv_Outgoing : rowsOwned s6Step303EntryGvAfter [s6Step303EntryGvOut] :=
  hmrRows_owned_drop s6Step303EntryGvAfter [s6Step303EntryFOut,s6Step303EntryGOut,s6Step303EntryFvOut,s6Step303EntryGvOut] 3 s6Step303EntryBank_outgoingOwned

private theorem s6Step303EntryGv_distinct : (s6Step303EntryGvRow.sign::s6Step303EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303EntryGv_owned : (s6Step303EntryGvRow.sign::s6Step303EntryGvRow.payload).toFinset⊆s6Step303EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303EntryGv_reserved : s6Step303EntryGvBefore.reserve s6Step303EntryGvFresh.toFinset=some s6Step303EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step303EntryGvFresh,arenaWires]
  · norm_num [s6Step303EntryGvBefore,s6Step303EntryGAfter,s6Step303EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step303EntryGvAfter,s6Step303EntryGvBefore,s6Step303EntryGAfter,s6Step303EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step303EntryGv_checked : planRowResizeLog s6Step303EntryGvBefore s6Step303EntryGvRow 167 s6Step303EntryGvFresh=
    some (s6Step303EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898],775⟩,growRow 775 s6Step303EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step303EntryGvBefore s6Step303EntryGvAfter s6Step303EntryGvRow 167 s6Step303EntryGvFresh
    s6Step303EntryGv_distinct s6Step303EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step303EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step303EntryGvRow.payload++s6Step303EntryGvFresh) s6Step303EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step303EntryBank_rows : planWindowRowsLog s6Step303EntryFBefore [(s6Step303EntryFRow,120),(s6Step303EntryGRow,120),(s6Step303EntryFvRow,167),(s6Step303EntryGvRow,167)] [s6Step303EntryFFresh,s6Step303EntryGFresh,s6Step303EntryFvFresh,s6Step303EntryGvFresh]=
    some (s6Step303EntryGvAfter,[s6Step303EntryFOut,s6Step303EntryGOut,s6Step303EntryFvOut,s6Step303EntryGvOut],(growRow 795 s6Step303EntryFFresh ++ (growRow 777 s6Step303EntryGFresh ++ (growRow 776 s6Step303EntryFvFresh ++ (growRow 775 s6Step303EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step303EntryGvAfter [] []=some (s6Step303EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step303EntryGvBefore s6Step303EntryGvAfter s6Step303EntryGvAfter
    s6Step303EntryGvRow s6Step303EntryGvOut 167 s6Step303EntryGvFresh [] [] []
    (growRow 775 s6Step303EntryGvFresh) ([]) s6Step303EntryGv_Incoming s6Step303EntryGv_checked h4 s6Step303EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step303EntryFvBefore s6Step303EntryFvAfter s6Step303EntryGvAfter
    s6Step303EntryFvRow s6Step303EntryFvOut 167 s6Step303EntryFvFresh [(s6Step303EntryGvRow,167)] [s6Step303EntryGvFresh] [s6Step303EntryGvOut]
    (growRow 776 s6Step303EntryFvFresh) ((growRow 775 s6Step303EntryGvFresh ++ [])) s6Step303EntryFv_Incoming s6Step303EntryFv_checked h3 s6Step303EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step303EntryGBefore s6Step303EntryGAfter s6Step303EntryGvAfter
    s6Step303EntryGRow s6Step303EntryGOut 120 s6Step303EntryGFresh [(s6Step303EntryFvRow,167),(s6Step303EntryGvRow,167)] [s6Step303EntryFvFresh,s6Step303EntryGvFresh] [s6Step303EntryFvOut,s6Step303EntryGvOut]
    (growRow 777 s6Step303EntryGFresh) ((growRow 776 s6Step303EntryFvFresh ++ (growRow 775 s6Step303EntryGvFresh ++ []))) s6Step303EntryG_Incoming s6Step303EntryG_checked h2 s6Step303EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step303EntryFBefore s6Step303EntryFAfter s6Step303EntryGvAfter
    s6Step303EntryFRow s6Step303EntryFOut 120 s6Step303EntryFFresh [(s6Step303EntryGRow,120),(s6Step303EntryFvRow,167),(s6Step303EntryGvRow,167)] [s6Step303EntryGFresh,s6Step303EntryFvFresh,s6Step303EntryGvFresh] [s6Step303EntryGOut,s6Step303EntryFvOut,s6Step303EntryGvOut]
    (growRow 795 s6Step303EntryFFresh) ((growRow 777 s6Step303EntryGFresh ++ (growRow 776 s6Step303EntryFvFresh ++ (growRow 775 s6Step303EntryGvFresh ++ [])))) s6Step303EntryF_Incoming s6Step303EntryF_checked h1 s6Step303EntryF_Outgoing
  exact h0

private theorem s6Step303EntryBank_checked : compileHmrBankResizeLog .entry s6Step303EntryFBefore ⟨s6Step303EntryFRow,s6Step303EntryGRow,s6Step303EntryFvRow,s6Step303EntryGvRow⟩ ⟨120,120,167,167⟩ [s6Step303EntryFFresh,s6Step303EntryGFresh,s6Step303EntryFvFresh,s6Step303EntryGvFresh]=
    some (s6Step303EntryGvAfter,⟨s6Step303EntryFOut,s6Step303EntryGOut,s6Step303EntryFvOut,s6Step303EntryGvOut⟩,(growRow 795 s6Step303EntryFFresh ++ (growRow 777 s6Step303EntryGFresh ++ (growRow 776 s6Step303EntryFvFresh ++ (growRow 775 s6Step303EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step303EntryBank_rows]
  rfl

private def s6Step303ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<375) ∨ (376≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303ExitFBefore : Arena := s6Step303ExitGAfter

private def s6Step303ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 869],795⟩

private def s6Step303ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 793],776⟩

private def s6Step303ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857, 886],777⟩

private def s6Step303ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 823],775⟩

private theorem s6Step303ExitBank_incomingDistinct : ([s6Step303ExitGRow,s6Step303ExitFRow,s6Step303ExitFvRow,s6Step303ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303ExitF_Incoming : rowsOwned s6Step303ExitFBefore [s6Step303ExitFRow,s6Step303ExitFvRow,s6Step303ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303ExitGRow,s6Step303ExitFRow,s6Step303ExitFvRow,s6Step303ExitGvRow] 1 s6Step303ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303ExitBank_outgoingOwned : rowsOwned s6Step303ExitGvAfter [s6Step303ExitGOut,s6Step303ExitFOut,s6Step303ExitFvOut,s6Step303ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step303ExitGvAfter (fun q => (0≤q ∧ q<375) ∨ (376≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303ExitF_Outgoing : rowsOwned s6Step303ExitGvAfter [s6Step303ExitFOut,s6Step303ExitFvOut,s6Step303ExitGvOut] :=
  hmrRows_owned_drop s6Step303ExitGvAfter [s6Step303ExitGOut,s6Step303ExitFOut,s6Step303ExitFvOut,s6Step303ExitGvOut] 1 s6Step303ExitBank_outgoingOwned

private theorem s6Step303ExitF_distinct : (s6Step303ExitFRow.sign::s6Step303ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303ExitF_owned : (s6Step303ExitFRow.sign::s6Step303ExitFRow.payload).toFinset⊆s6Step303ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303ExitF_retired : s6Step303ExitFBefore.retireSet s6Step303ExitFExtra.toFinset=s6Step303ExitFAfter := by
  unfold Arena.retireSet s6Step303ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step303ExitFBefore,s6Step303ExitGAfter,s6Step303ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step303ExitF_checked : planRowResizeLog s6Step303ExitFBefore s6Step303ExitFRow 119 []=
    some (s6Step303ExitFAfter,s6Step303ExitFOut,shrinkRow 795 s6Step303ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step303ExitFBefore s6Step303ExitFRow 119 s6Step303ExitF_distinct s6Step303ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step303ExitFRow.payload.take 119) s6Step303ExitFRow.sign=s6Step303ExitFOut := by decide +kernel
  have hi : s6Step303ExitFRow.payload.drop 119=s6Step303ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step303ExitF_retired] at result
  exact result

private def s6Step303ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<375) ∨ (376≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303ExitFvBefore : Arena := s6Step303ExitFAfter

private theorem s6Step303ExitFv_Incoming : rowsOwned s6Step303ExitFvBefore [s6Step303ExitFvRow,s6Step303ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303ExitGRow,s6Step303ExitFRow,s6Step303ExitFvRow,s6Step303ExitGvRow] 2 s6Step303ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303ExitFvBefore (fun q => (0≤q ∧ q<375) ∨ (376≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303ExitFv_Outgoing : rowsOwned s6Step303ExitGvAfter [s6Step303ExitFvOut,s6Step303ExitGvOut] :=
  hmrRows_owned_drop s6Step303ExitGvAfter [s6Step303ExitGOut,s6Step303ExitFOut,s6Step303ExitFvOut,s6Step303ExitGvOut] 2 s6Step303ExitBank_outgoingOwned

private theorem s6Step303ExitFv_distinct : (s6Step303ExitFvRow.sign::s6Step303ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303ExitFv_owned : (s6Step303ExitFvRow.sign::s6Step303ExitFvRow.payload).toFinset⊆s6Step303ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303ExitFvBefore (fun q => (0≤q ∧ q<375) ∨ (376≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303ExitFv_retired : s6Step303ExitFvBefore.retireSet s6Step303ExitFvExtra.toFinset=s6Step303ExitFvAfter := by
  unfold Arena.retireSet s6Step303ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step303ExitFvBefore,s6Step303ExitFAfter,s6Step303ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step303ExitFv_checked : planRowResizeLog s6Step303ExitFvBefore s6Step303ExitFvRow 167 []=
    some (s6Step303ExitFvAfter,s6Step303ExitFvOut,shrinkRow 776 s6Step303ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step303ExitFvBefore s6Step303ExitFvRow 167 s6Step303ExitFv_distinct s6Step303ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step303ExitFvRow.payload.take 167) s6Step303ExitFvRow.sign=s6Step303ExitFvOut := by decide +kernel
  have hi : s6Step303ExitFvRow.payload.drop 167=s6Step303ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step303ExitFv_retired] at result
  exact result

private def s6Step303ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step303ExitG_Incoming : rowsOwned s6Step303ExitGBefore [s6Step303ExitGRow,s6Step303ExitFRow,s6Step303ExitFvRow,s6Step303ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303ExitGRow,s6Step303ExitFRow,s6Step303ExitFvRow,s6Step303ExitGvRow] 0 s6Step303ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303ExitG_Outgoing : rowsOwned s6Step303ExitGvAfter [s6Step303ExitGOut,s6Step303ExitFOut,s6Step303ExitFvOut,s6Step303ExitGvOut] :=
  hmrRows_owned_drop s6Step303ExitGvAfter [s6Step303ExitGOut,s6Step303ExitFOut,s6Step303ExitFvOut,s6Step303ExitGvOut] 0 s6Step303ExitBank_outgoingOwned

private theorem s6Step303ExitG_distinct : (s6Step303ExitGRow.sign::s6Step303ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303ExitG_owned : (s6Step303ExitGRow.sign::s6Step303ExitGRow.payload).toFinset⊆s6Step303ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303ExitG_retired : s6Step303ExitGBefore.retireSet s6Step303ExitGExtra.toFinset=s6Step303ExitGAfter := by
  unfold Arena.retireSet s6Step303ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step303ExitGBefore,s6Step303ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step303ExitG_checked : planRowResizeLog s6Step303ExitGBefore s6Step303ExitGRow 120 []=
    some (s6Step303ExitGAfter,s6Step303ExitGOut,shrinkRow 777 s6Step303ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step303ExitGBefore s6Step303ExitGRow 120 s6Step303ExitG_distinct s6Step303ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step303ExitGRow.payload.take 120) s6Step303ExitGRow.sign=s6Step303ExitGOut := by decide +kernel
  have hi : s6Step303ExitGRow.payload.drop 120=s6Step303ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step303ExitG_retired] at result
  exact result

private def s6Step303ExitGvBefore : Arena := s6Step303ExitFvAfter

private theorem s6Step303ExitGv_Incoming : rowsOwned s6Step303ExitGvBefore [s6Step303ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303ExitGRow,s6Step303ExitFRow,s6Step303ExitFvRow,s6Step303ExitGvRow] 3 s6Step303ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303ExitGvBefore (fun q => (0≤q ∧ q<375) ∨ (376≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303ExitGv_Outgoing : rowsOwned s6Step303ExitGvAfter [s6Step303ExitGvOut] :=
  hmrRows_owned_drop s6Step303ExitGvAfter [s6Step303ExitGOut,s6Step303ExitFOut,s6Step303ExitFvOut,s6Step303ExitGvOut] 3 s6Step303ExitBank_outgoingOwned

private theorem s6Step303ExitGv_distinct : (s6Step303ExitGvRow.sign::s6Step303ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303ExitGv_owned : (s6Step303ExitGvRow.sign::s6Step303ExitGvRow.payload).toFinset⊆s6Step303ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303ExitGvBefore (fun q => (0≤q ∧ q<375) ∨ (376≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303ExitGv_retired : s6Step303ExitGvBefore.retireSet s6Step303ExitGvExtra.toFinset=s6Step303ExitGvAfter := by
  unfold Arena.retireSet s6Step303ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step303ExitGvBefore,s6Step303ExitFvAfter,s6Step303ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step303ExitGv_checked : planRowResizeLog s6Step303ExitGvBefore s6Step303ExitGvRow 167 []=
    some (s6Step303ExitGvAfter,s6Step303ExitGvOut,shrinkRow 775 s6Step303ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step303ExitGvBefore s6Step303ExitGvRow 167 s6Step303ExitGv_distinct s6Step303ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step303ExitGvRow.payload.take 167) s6Step303ExitGvRow.sign=s6Step303ExitGvOut := by decide +kernel
  have hi : s6Step303ExitGvRow.payload.drop 167=s6Step303ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step303ExitGv_retired] at result
  exact result

private theorem s6Step303ExitBank_rows : planWindowRowsLog s6Step303ExitGBefore [(s6Step303ExitGRow,120),(s6Step303ExitFRow,119),(s6Step303ExitFvRow,167),(s6Step303ExitGvRow,167)] [[],[],[],[]]=
    some (s6Step303ExitGvAfter,[s6Step303ExitGOut,s6Step303ExitFOut,s6Step303ExitFvOut,s6Step303ExitGvOut],(shrinkRow 777 s6Step303ExitGExtra ++ (shrinkRow 795 s6Step303ExitFExtra ++ (shrinkRow 776 s6Step303ExitFvExtra ++ (shrinkRow 775 s6Step303ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step303ExitGvAfter [] []=some (s6Step303ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step303ExitGvBefore s6Step303ExitGvAfter s6Step303ExitGvAfter
    s6Step303ExitGvRow s6Step303ExitGvOut 167 [] [] [] []
    (shrinkRow 775 s6Step303ExitGvExtra) ([]) s6Step303ExitGv_Incoming s6Step303ExitGv_checked h4 s6Step303ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step303ExitFvBefore s6Step303ExitFvAfter s6Step303ExitGvAfter
    s6Step303ExitFvRow s6Step303ExitFvOut 167 [] [(s6Step303ExitGvRow,167)] [[]] [s6Step303ExitGvOut]
    (shrinkRow 776 s6Step303ExitFvExtra) ((shrinkRow 775 s6Step303ExitGvExtra ++ [])) s6Step303ExitFv_Incoming s6Step303ExitFv_checked h3 s6Step303ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step303ExitFBefore s6Step303ExitFAfter s6Step303ExitGvAfter
    s6Step303ExitFRow s6Step303ExitFOut 119 [] [(s6Step303ExitFvRow,167),(s6Step303ExitGvRow,167)] [[],[]] [s6Step303ExitFvOut,s6Step303ExitGvOut]
    (shrinkRow 795 s6Step303ExitFExtra) ((shrinkRow 776 s6Step303ExitFvExtra ++ (shrinkRow 775 s6Step303ExitGvExtra ++ []))) s6Step303ExitF_Incoming s6Step303ExitF_checked h2 s6Step303ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step303ExitGBefore s6Step303ExitGAfter s6Step303ExitGvAfter
    s6Step303ExitGRow s6Step303ExitGOut 120 [] [(s6Step303ExitFRow,119),(s6Step303ExitFvRow,167),(s6Step303ExitGvRow,167)] [[],[],[]] [s6Step303ExitFOut,s6Step303ExitFvOut,s6Step303ExitGvOut]
    (shrinkRow 777 s6Step303ExitGExtra) ((shrinkRow 795 s6Step303ExitFExtra ++ (shrinkRow 776 s6Step303ExitFvExtra ++ (shrinkRow 775 s6Step303ExitGvExtra ++ [])))) s6Step303ExitG_Incoming s6Step303ExitG_checked h1 s6Step303ExitG_Outgoing
  exact h0

private theorem s6Step303ExitBank_checked : compileHmrBankResizeLog .exit s6Step303ExitGBefore ⟨s6Step303ExitFRow,s6Step303ExitGRow,s6Step303ExitFvRow,s6Step303ExitGvRow⟩ ⟨119,120,167,167⟩ [[],[],[],[]]=
    some (s6Step303ExitGvAfter,⟨s6Step303ExitFOut,s6Step303ExitGOut,s6Step303ExitFvOut,s6Step303ExitGvOut⟩,(shrinkRow 777 s6Step303ExitGExtra ++ (shrinkRow 795 s6Step303ExitFExtra ++ (shrinkRow 776 s6Step303ExitFvExtra ++ (shrinkRow 775 s6Step303ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step303ExitBank_rows]
  rfl

private theorem s6Step303Add0_apart : Disjoint s6Step303Add0Arena.live s6Step303Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step303Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303Add0_card : s6Step303Add0Arena.live.card=903 := by
  decide +kernel

private theorem s6Step303Add0_borrowed : s6Step303Add0Arena.checkBorrow (hmrHybridCount s6Step303Add0Arena s6Step303Add0B.length) s6Step303Add0Work=some s6Step303Add0During := by
  have len : s6Step303Add0Work.length=hmrHybridCount s6Step303Add0Arena s6Step303Add0B.length := by
    rw [hmrHybridCount,s6Step303Add0_card]
    decide +kernel
  have nd : s6Step303Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step303Add0Arena s6Step303Add0During s6Step303Add0Work.toFinset s6Step303Add0_bounded s6Step303Add0_apart rfl

private theorem s6Step303Add0_distinct : (830::865::805::(s6Step303Add0A++s6Step303Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303Add0_owned : (830::865::805::(s6Step303Add0A++s6Step303Add0B)).toFinset⊆s6Step303Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step303Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303Add0_checked : compileHmrHybridCinLog s6Step303Add0Arena 865 830 805 s6Step303Add0A s6Step303Add0B s6Step303Add0Work=some s6Step303Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step303Add0Arena s6Step303Add0During 865 830 805 s6Step303Add0A s6Step303Add0B s6Step303Add0Work
    (by decide +kernel) (by decide +kernel) s6Step303Add0_distinct
    (fun q hq => s6Step303Add0_owned (List.mem_toFinset.mpr hq)) s6Step303Add0_borrowed

private theorem s6Step303Add1_apart : Disjoint s6Step303Add1Arena.live s6Step303Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step303Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303Add1_card : s6Step303Add1Arena.live.card=903 := by
  decide +kernel

private theorem s6Step303Add1_borrowed : s6Step303Add1Arena.checkBorrow (hmrHybridCount s6Step303Add1Arena s6Step303Add1B.length) s6Step303Add1Work=some s6Step303Add1During := by
  have len : s6Step303Add1Work.length=hmrHybridCount s6Step303Add1Arena s6Step303Add1B.length := by
    rw [hmrHybridCount,s6Step303Add1_card]
    decide +kernel
  have nd : s6Step303Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step303Add1Arena s6Step303Add1During s6Step303Add1Work.toFinset s6Step303Add1_bounded s6Step303Add1_apart rfl

private theorem s6Step303Add1_distinct : (830::865::805::(s6Step303Add1A++s6Step303Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303Add1_owned : (830::865::805::(s6Step303Add1A++s6Step303Add1B)).toFinset⊆s6Step303Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step303Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303Add1_checked : compileHmrHybridCinLog s6Step303Add1Arena 865 830 805 s6Step303Add1A s6Step303Add1B s6Step303Add1Work=some s6Step303Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step303Add1Arena s6Step303Add1During 865 830 805 s6Step303Add1A s6Step303Add1B s6Step303Add1Work
    (by decide +kernel) (by decide +kernel) s6Step303Add1_distinct
    (fun q hq => s6Step303Add1_owned (List.mem_toFinset.mpr hq)) s6Step303Add1_borrowed

private theorem s6Step303F4_apart : Disjoint (s6Step303Add0A++s6Step303Add0B).toFinset (s6Step303Add1A++s6Step303Add1B).toFinset := by
  have nd : ((s6Step303Add0A++s6Step303Add0B)++(s6Step303Add1A++s6Step303Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step303F4_carry : s6Step303F4FlagArena.checkBorrow 1 [805]=some s6Step303Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step303F4FlagArena,s6Step303HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step303F4FlagArena,s6Step303HeadFvAfter,s6Step303Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step303F4_distinct : (828::865::830::805::((s6Step303Add0A++s6Step303Add1A)++(s6Step303Add0B++s6Step303Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303F4_flag : s6Step303HeadFvAfter.checkBorrow 1 [830]=some s6Step303F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step303HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step303F4_owned : (828::865::((s6Step303Add0A++s6Step303Add1A)++(s6Step303Add0B++s6Step303Add1B))).toFinset⊆s6Step303HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step303HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303F4_checked : compileHmrHybridF4Log s6Step303HeadFvAfter 828 865 s6Step303Add0A s6Step303Add0B s6Step303Add1A s6Step303Add1B [830] [805] s6Step303Add0Work s6Step303Add1Work=some s6Step303F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step303HeadFvAfter s6Step303F4FlagArena s6Step303Add0Arena s6Step303Add0During s6Step303Add1During 828 865
    s6Step303Add0A s6Step303Add0B s6Step303Add1A s6Step303Add1B [830] [805] s6Step303Add0Work s6Step303Add1Work
    (fun q hq => s6Step303F4_owned (List.mem_toFinset.mpr hq)) s6Step303F4_flag s6Step303F4_carry
    s6Step303F4_distinct s6Step303F4_apart s6Step303Add0_checked s6Step303Add1_checked

private theorem s6Step303Front_branch : s6Step303FrontSigmaArena.checkBorrow 1 [865]=some s6Step303HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step303FrontSigmaArena,s6Step303EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step303FrontSigmaArena,s6Step303EntryGvAfter,s6Step303HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step303Front_entry : HmrFrontEntryValid s6Step303EntryFBefore s6Step303FrontBank 120 167 ⟨119,120,167,167⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step303FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step303EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step303EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step303FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step303Front_sigma : s6Step303EntryGvAfter.checkBorrow 1 [828]=some s6Step303FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step303EntryGvAfter,arenaWires]
  · rfl

private def s6Step303HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303HeadFBefore : Arena := s6Step303HeadGAfter

private def s6Step303HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩

private def s6Step303HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩

private def s6Step303HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857],777⟩

private def s6Step303HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898],775⟩

private theorem s6Step303HeadBank_incomingDistinct : ([s6Step303HeadGRow,s6Step303HeadFRow,s6Step303HeadGvRow,s6Step303HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303HeadF_Incoming : rowsOwned s6Step303HeadFBefore [s6Step303HeadFRow,s6Step303HeadGvRow,s6Step303HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303HeadGRow,s6Step303HeadFRow,s6Step303HeadGvRow,s6Step303HeadFvRow] 1 s6Step303HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303HeadBank_outgoingOwned : rowsOwned s6Step303HeadFvAfter [s6Step303HeadGOut,s6Step303HeadFOut,s6Step303HeadGvOut,s6Step303HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step303HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303HeadF_Outgoing : rowsOwned s6Step303HeadFvAfter [s6Step303HeadFOut,s6Step303HeadGvOut,s6Step303HeadFvOut] :=
  hmrRows_owned_drop s6Step303HeadFvAfter [s6Step303HeadGOut,s6Step303HeadFOut,s6Step303HeadGvOut,s6Step303HeadFvOut] 1 s6Step303HeadBank_outgoingOwned

private theorem s6Step303HeadF_distinct : (s6Step303HeadFRow.sign::s6Step303HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303HeadF_owned : (s6Step303HeadFRow.sign::s6Step303HeadFRow.payload).toFinset⊆s6Step303HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303HeadF_reserved : s6Step303HeadFBefore.reserve s6Step303HeadFFresh.toFinset=some s6Step303HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step303HeadFFresh,arenaWires]
  · norm_num [s6Step303HeadFBefore,s6Step303HeadGAfter,s6Step303HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step303HeadFAfter,s6Step303HeadFBefore,s6Step303HeadGAfter,s6Step303HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step303HeadF_checked : planRowResizeLog s6Step303HeadFBefore s6Step303HeadFRow 121 s6Step303HeadFFresh=
    some (s6Step303HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 869],795⟩,growRow 795 s6Step303HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step303HeadFBefore s6Step303HeadFAfter s6Step303HeadFRow 121 s6Step303HeadFFresh
    s6Step303HeadF_distinct s6Step303HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step303HeadF_reserved
  have rowEq : WindowRow.mk (s6Step303HeadFRow.payload++s6Step303HeadFFresh) s6Step303HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 869],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step303HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step303HeadFvBefore : Arena := s6Step303HeadGvAfter

private theorem s6Step303HeadFv_Incoming : rowsOwned s6Step303HeadFvBefore [s6Step303HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303HeadGRow,s6Step303HeadFRow,s6Step303HeadGvRow,s6Step303HeadFvRow] 3 s6Step303HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303HeadFv_Outgoing : rowsOwned s6Step303HeadFvAfter [s6Step303HeadFvOut] :=
  hmrRows_owned_drop s6Step303HeadFvAfter [s6Step303HeadGOut,s6Step303HeadFOut,s6Step303HeadGvOut,s6Step303HeadFvOut] 3 s6Step303HeadBank_outgoingOwned

private theorem s6Step303HeadFv_distinct : (s6Step303HeadFvRow.sign::s6Step303HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303HeadFv_owned : (s6Step303HeadFvRow.sign::s6Step303HeadFvRow.payload).toFinset⊆s6Step303HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303HeadFv_reserved : s6Step303HeadFvBefore.reserve s6Step303HeadFvFresh.toFinset=some s6Step303HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step303HeadFvFresh,arenaWires]
  · norm_num [s6Step303HeadFvBefore,s6Step303HeadGvAfter,s6Step303HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step303HeadFvAfter,s6Step303HeadFvBefore,s6Step303HeadGvAfter,s6Step303HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step303HeadFv_checked : planRowResizeLog s6Step303HeadFvBefore s6Step303HeadFvRow 168 s6Step303HeadFvFresh=
    some (s6Step303HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 793],776⟩,growRow 776 s6Step303HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step303HeadFvBefore s6Step303HeadFvAfter s6Step303HeadFvRow 168 s6Step303HeadFvFresh
    s6Step303HeadFv_distinct s6Step303HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step303HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step303HeadFvRow.payload++s6Step303HeadFvFresh) s6Step303HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 793],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step303HeadG_Incoming : rowsOwned s6Step303HeadGBefore [s6Step303HeadGRow,s6Step303HeadFRow,s6Step303HeadGvRow,s6Step303HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303HeadGRow,s6Step303HeadFRow,s6Step303HeadGvRow,s6Step303HeadFvRow] 0 s6Step303HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303HeadG_Outgoing : rowsOwned s6Step303HeadFvAfter [s6Step303HeadGOut,s6Step303HeadFOut,s6Step303HeadGvOut,s6Step303HeadFvOut] :=
  hmrRows_owned_drop s6Step303HeadFvAfter [s6Step303HeadGOut,s6Step303HeadFOut,s6Step303HeadGvOut,s6Step303HeadFvOut] 0 s6Step303HeadBank_outgoingOwned

private theorem s6Step303HeadG_distinct : (s6Step303HeadGRow.sign::s6Step303HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303HeadG_owned : (s6Step303HeadGRow.sign::s6Step303HeadGRow.payload).toFinset⊆s6Step303HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303HeadG_reserved : s6Step303HeadGBefore.reserve s6Step303HeadGFresh.toFinset=some s6Step303HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step303HeadGFresh,arenaWires]
  · norm_num [s6Step303HeadGBefore,s6Step303HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step303HeadGAfter,s6Step303HeadGBefore,s6Step303HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step303HeadG_checked : planRowResizeLog s6Step303HeadGBefore s6Step303HeadGRow 121 s6Step303HeadGFresh=
    some (s6Step303HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857, 886],777⟩,growRow 777 s6Step303HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step303HeadGBefore s6Step303HeadGAfter s6Step303HeadGRow 121 s6Step303HeadGFresh
    s6Step303HeadG_distinct s6Step303HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step303HeadG_reserved
  have rowEq : WindowRow.mk (s6Step303HeadGRow.payload++s6Step303HeadGFresh) s6Step303HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 857, 886],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step303HeadGvBefore : Arena := s6Step303HeadFAfter

private theorem s6Step303HeadGv_Incoming : rowsOwned s6Step303HeadGvBefore [s6Step303HeadGvRow,s6Step303HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step303HeadGRow,s6Step303HeadFRow,s6Step303HeadGvRow,s6Step303HeadFvRow] 2 s6Step303HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step303HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step303HeadGv_Outgoing : rowsOwned s6Step303HeadFvAfter [s6Step303HeadGvOut,s6Step303HeadFvOut] :=
  hmrRows_owned_drop s6Step303HeadFvAfter [s6Step303HeadGOut,s6Step303HeadFOut,s6Step303HeadGvOut,s6Step303HeadFvOut] 2 s6Step303HeadBank_outgoingOwned

private theorem s6Step303HeadGv_distinct : (s6Step303HeadGvRow.sign::s6Step303HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step303HeadGv_owned : (s6Step303HeadGvRow.sign::s6Step303HeadGvRow.payload).toFinset⊆s6Step303HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step303HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step303HeadGv_reserved : s6Step303HeadGvBefore.reserve s6Step303HeadGvFresh.toFinset=some s6Step303HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step303HeadGvFresh,arenaWires]
  · norm_num [s6Step303HeadGvBefore,s6Step303HeadFAfter,s6Step303HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step303HeadGvAfter,s6Step303HeadGvBefore,s6Step303HeadFAfter,s6Step303HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step303HeadGv_checked : planRowResizeLog s6Step303HeadGvBefore s6Step303HeadGvRow 168 s6Step303HeadGvFresh=
    some (s6Step303HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 823],775⟩,growRow 775 s6Step303HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step303HeadGvBefore s6Step303HeadGvAfter s6Step303HeadGvRow 168 s6Step303HeadGvFresh
    s6Step303HeadGv_distinct s6Step303HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step303HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step303HeadGvRow.payload++s6Step303HeadGvFresh) s6Step303HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 823],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step303HeadBank_rows : planWindowRowsLog s6Step303HeadGBefore [(s6Step303HeadGRow,121),(s6Step303HeadFRow,121),(s6Step303HeadGvRow,168),(s6Step303HeadFvRow,168)] [s6Step303HeadGFresh,s6Step303HeadFFresh,s6Step303HeadGvFresh,s6Step303HeadFvFresh]=
    some (s6Step303HeadFvAfter,[s6Step303HeadGOut,s6Step303HeadFOut,s6Step303HeadGvOut,s6Step303HeadFvOut],(growRow 777 s6Step303HeadGFresh ++ (growRow 795 s6Step303HeadFFresh ++ (growRow 775 s6Step303HeadGvFresh ++ (growRow 776 s6Step303HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step303HeadFvAfter [] []=some (s6Step303HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step303HeadFvBefore s6Step303HeadFvAfter s6Step303HeadFvAfter
    s6Step303HeadFvRow s6Step303HeadFvOut 168 s6Step303HeadFvFresh [] [] []
    (growRow 776 s6Step303HeadFvFresh) ([]) s6Step303HeadFv_Incoming s6Step303HeadFv_checked h4 s6Step303HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step303HeadGvBefore s6Step303HeadGvAfter s6Step303HeadFvAfter
    s6Step303HeadGvRow s6Step303HeadGvOut 168 s6Step303HeadGvFresh [(s6Step303HeadFvRow,168)] [s6Step303HeadFvFresh] [s6Step303HeadFvOut]
    (growRow 775 s6Step303HeadGvFresh) ((growRow 776 s6Step303HeadFvFresh ++ [])) s6Step303HeadGv_Incoming s6Step303HeadGv_checked h3 s6Step303HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step303HeadFBefore s6Step303HeadFAfter s6Step303HeadFvAfter
    s6Step303HeadFRow s6Step303HeadFOut 121 s6Step303HeadFFresh [(s6Step303HeadGvRow,168),(s6Step303HeadFvRow,168)] [s6Step303HeadGvFresh,s6Step303HeadFvFresh] [s6Step303HeadGvOut,s6Step303HeadFvOut]
    (growRow 795 s6Step303HeadFFresh) ((growRow 775 s6Step303HeadGvFresh ++ (growRow 776 s6Step303HeadFvFresh ++ []))) s6Step303HeadF_Incoming s6Step303HeadF_checked h2 s6Step303HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step303HeadGBefore s6Step303HeadGAfter s6Step303HeadFvAfter
    s6Step303HeadGRow s6Step303HeadGOut 121 s6Step303HeadGFresh [(s6Step303HeadFRow,121),(s6Step303HeadGvRow,168),(s6Step303HeadFvRow,168)] [s6Step303HeadFFresh,s6Step303HeadGvFresh,s6Step303HeadFvFresh] [s6Step303HeadFOut,s6Step303HeadGvOut,s6Step303HeadFvOut]
    (growRow 777 s6Step303HeadGFresh) ((growRow 795 s6Step303HeadFFresh ++ (growRow 775 s6Step303HeadGvFresh ++ (growRow 776 s6Step303HeadFvFresh ++ [])))) s6Step303HeadG_Incoming s6Step303HeadG_checked h1 s6Step303HeadG_Outgoing
  exact h0

private theorem s6Step303HeadBank_checked : compileHmrBankResizeLog .headroom s6Step303HeadGBefore ⟨s6Step303HeadFRow,s6Step303HeadGRow,s6Step303HeadFvRow,s6Step303HeadGvRow⟩ ⟨121,121,168,168⟩ [s6Step303HeadGFresh,s6Step303HeadFFresh,s6Step303HeadGvFresh,s6Step303HeadFvFresh]=
    some (s6Step303HeadFvAfter,⟨s6Step303HeadFOut,s6Step303HeadGOut,s6Step303HeadFvOut,s6Step303HeadGvOut⟩,(growRow 777 s6Step303HeadGFresh ++ (growRow 795 s6Step303HeadFFresh ++ (growRow 775 s6Step303HeadGvFresh ++ (growRow 776 s6Step303HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step303HeadBank_rows]
  rfl

private theorem s6Step303Front_checked : compileHmrSourceFrontLog s6Step303EntryFBefore s6Step303FrontBank 120 167 ⟨119,120,167,167⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step303FrontLog=some s6Step303FrontPlan := by
  have pairEq : s6Step303FrontPair=⟨s6Step303HeadFRow,s6Step303HeadGRow,s6Step303HeadFvRow,s6Step303HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step303FrontHead=⟨s6Step303ExitFRow,s6Step303ExitGRow,s6Step303ExitFvRow,s6Step303ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step303Add0A=s6Step303FrontHead.f.wires := by decide +kernel
  have gEq : s6Step303Add0B=s6Step303FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step303Add1A=s6Step303FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step303Add1B=s6Step303FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step303EntryFBefore s6Step303FrontBank 120 167 ⟨119,120,167,167⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step303FrontLog s6Step303FrontPlan
  · exact s6Step303Front_entry
  · exact s6Step303EntryBank_checked
  · exact s6Step303Front_sigma
  · rfl
  · exact s6Step303Front_branch
  · rfl
  · simpa only [s6Step303FrontPlan,pairEq] using s6Step303HeadBank_checked
  · simpa only [s6Step303FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step303F4_checked
  · exact s6Step303Counter_checked
  · rfl
  · simpa only [s6Step303FrontPlan,headEq] using s6Step303ExitBank_checked

private theorem s6Step303Complete_explicit_checked : compileHmrEarlyStepLog s6Step303EntryFBefore s6Step303FrontBank 120 167 ⟨119,120,167,167⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step303CompleteLog=some s6Step303CompletePlan := by
  let Q := s6Step303EarlyControlPlan
  have hq := s6Step303EarlyControl_plan_checked
  have fv1 : s6Step303CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step303CompleteOut.fv.payload[2]?.getD s6Step303CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step303CompleteOut.fv.payload[3]?.getD s6Step303CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step303CompleteOut.fv.payload[4]?.getD s6Step303CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step303EntryFBefore s6Step303EarlyControlArena s6Step303FrontBank 120 167 ⟨119,120,167,167⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step303CompleteLog s6Step303FrontPlan Q
    s6Step303Front_checked s6Step303Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step303Complete_owned s6Step303Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step303EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 s6Step303CompleteOut.fv.second (s6Step303CompleteOut.fv.payload[2]?.getD s6Step303CompleteOut.fv.sign) (s6Step303CompleteOut.fv.payload[3]?.getD s6Step303CompleteOut.fv.sign) (s6Step303CompleteOut.fv.payload[4]?.getD s6Step303CompleteOut.fv.sign) 865 55 s6Step303EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep303Arena : Arena := s6Step303EntryFBefore
def s6PrivateStep303Bank : WindowBank := s6Step303FrontBank
def s6PrivateStep303Spec : HmrSourceWalkStepLog := ⟨120,167,⟨119,120,167,167⟩,55,.early s6Step303CompleteLog⟩
def s6PrivateStep303Plan : HmrSourceStepPlan := .early s6Step303CompletePlan
theorem s6PrivateStep303_source : s6PrivateStep303Spec=s6ObservedLogs288[15] := rfl
theorem s6PrivateStep303_checked : compileHmrSourceStepLog s6PrivateStep303Arena s6PrivateStep303Bank
    s6PrivateStep303Spec.fgWidth s6PrivateStep303Spec.vWidth s6PrivateStep303Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]
    6 498 303 s6PrivateStep303Spec.need none s6PrivateStep303Spec.log=some s6PrivateStep303Plan := by
  change compileHmrSourceStepLog s6Step303EntryFBefore s6Step303FrontBank 120 167 ⟨119,120,167,167⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 6 498 303 55 none (.early s6Step303CompleteLog)=some (.early s6Step303CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 303<498)]
  rw [s6Step303Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
