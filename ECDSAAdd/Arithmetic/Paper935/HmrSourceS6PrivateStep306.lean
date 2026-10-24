import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep304
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

private def s6Step306CompleteMoves : List (Wire × Wire) := [(890,373)]

private def s6Step306EarlyControlLog : HmrEarlyControlLog := ⟨[890, 803, 865, 793, 857],[830],[805],[817, 812, 915, 906, 792, 849],[811]⟩

private def s6Step306FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [869]],[[857], [793], [803], [865]],[[], [], [], []]⟩,[828],[796],[830],[805],[817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step306CompleteLog : HmrEarlyStepLog := ⟨s6Step306FrontLog,s6Step306CompleteMoves,s6Step306EarlyControlLog⟩

private def s6Step306ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372],795⟩

private def s6Step306ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩

private def s6Step306ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩

private def s6Step306ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩

private def s6Step306FrontOut : WindowBank := ⟨s6Step306ExitFOut,s6Step306ExitGOut,s6Step306ExitFvOut,s6Step306ExitGvOut⟩

private def s6Step306CompleteOut : WindowBank := s6Step306FrontOut.repacked s6Step306CompleteMoves

private def s6Step306EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step306EarlyControlPositiveArena,[830],s6Step306EarlyControlEqualityArena,[805],⟨⟨828,false⟩,[⟨⟨830,false⟩,805⟩]⟩⟩

private def s6Step306EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,890⟩,⟨⟨772,false⟩,803⟩,⟨⟨771,false⟩,865⟩,⟨⟨770,false⟩,793⟩,⟨⟨769,false⟩,857⟩]⟩

private def s6Step306EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step306EarlyControlZeroArena,s6Step306EarlyControlZeroPlan,s6Step306EarlyControlClassPlan,s6Step306EarlyControlFlagArena,s6Step306EarlyControlFittedArena,s6Step306EarlyControlHistoryArena,s6Step306EarlyControlSigmaArena,s6Step306EarlyControlOutputArena,s6Step306EarlyControlLog⟩

private def s6Step306CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step306Counter_bounded : s6Step306CounterWork.toFinset⊆arenaWires := by norm_num [s6Step306CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step306HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306CounterDuring : Arena := ⟨s6Step306HeadFvAfter.live∪s6Step306CounterWork.toFinset,Finset.union_subset s6Step306HeadFvAfter.bounded s6Step306Counter_bounded⟩

private def s6Step306EntryFFresh : List Wire := []

private def s6Step306EntryFvFresh : List Wire := []

private def s6Step306EntryGFresh : List Wire := []

private def s6Step306EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306EntryGvFresh : List Wire := [869]

private def s6Step306ExitFExtra : List Wire := [373, 793]

private def s6Step306ExitFvExtra : List Wire := [865]

private def s6Step306ExitGExtra : List Wire := [857]

private def s6Step306ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<373) ∨ (374≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306ExitGvExtra : List Wire := [803]

private def s6Step306Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306Add0Work : List Wire := [817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step306Add0_bounded : s6Step306Add0Work.toFinset⊆arenaWires := by
  have h : s6Step306Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step306Add0During : Arena := ⟨s6Step306Add0Arena.live∪s6Step306Add0Work.toFinset,Finset.union_subset s6Step306Add0Arena.bounded s6Step306Add0_bounded⟩

private def s6Step306Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306Add1Work : List Wire := [817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step306Add1_bounded : s6Step306Add1Work.toFinset⊆arenaWires := by
  have h : s6Step306Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step306Add1During : Arena := ⟨s6Step306Add1Arena.live∪s6Step306Add1Work.toFinset,Finset.union_subset s6Step306Add1Arena.bounded s6Step306Add1_bounded⟩

private def s6Step306F4FlagArena : Arena := ⟨s6Step306HeadFvAfter.live∪{830},Finset.union_subset s6Step306HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step306F4Plan : HmrHybridF4Plan := ⟨s6Step306F4FlagArena,[830],s6Step306Add0Arena,[805],s6Step306Add0During,s6Step306Add0Work,s6Step306Add1During,s6Step306Add1Work⟩

private def s6Step306HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 793],795⟩

private def s6Step306HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 865],776⟩

private def s6Step306HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 857],777⟩

private def s6Step306HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 803],775⟩

private def s6Step306FrontHead : WindowBank := ⟨s6Step306HeadFOut,s6Step306HeadGOut,s6Step306HeadFvOut,s6Step306HeadGvOut⟩

private def s6Step306EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373],795⟩

private def s6Step306EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩

private def s6Step306EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩

private def s6Step306EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩

private def s6Step306FrontPair : WindowBank := ⟨s6Step306EntryFOut,s6Step306EntryGOut,s6Step306EntryFvOut,s6Step306EntryGvOut⟩

private def s6Step306FrontSigmaArena : Arena := ⟨s6Step306EntryGvAfter.live∪{828},Finset.union_subset s6Step306EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step306HeadFFresh : List Wire := [793]

private def s6Step306HeadFvFresh : List Wire := [865]

private def s6Step306HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306HeadGFresh : List Wire := [857]

private def s6Step306HeadGvFresh : List Wire := [803]

private def s6Step306FrontPlan : HmrSourceFront := ⟨s6Step306EntryGvAfter,s6Step306FrontPair,(growRow 795 s6Step306EntryFFresh ++ (growRow 777 s6Step306EntryGFresh ++ (growRow 776 s6Step306EntryFvFresh ++ (growRow 775 s6Step306EntryGvFresh ++ [])))),s6Step306FrontSigmaArena,[828],s6Step306HeadGBefore,[796],
  s6Step306HeadFvAfter,s6Step306FrontHead,(growRow 777 s6Step306HeadGFresh ++ (growRow 795 s6Step306HeadFFresh ++ (growRow 775 s6Step306HeadGvFresh ++ (growRow 776 s6Step306HeadFvFresh ++ [])))),s6Step306F4Plan,s6Step306CounterDuring,s6Step306CounterWork,s6Step306ExitGvAfter,s6Step306FrontOut,(shrinkRow 777 s6Step306ExitGExtra ++ (shrinkRow 795 s6Step306ExitFExtra ++ (shrinkRow 776 s6Step306ExitFvExtra ++ (shrinkRow 775 s6Step306ExitGvExtra ++ []))))⟩

private def s6Step306CompletePlan : HmrEarlyStepPlan := ⟨s6Step306FrontPlan,s6Step306EarlyControlArena,s6Step306EarlyControlPlan,s6Step306CompleteMoves⟩

private theorem s6Step306Complete_apart : List.Disjoint (s6Step306CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [828, 796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] := by
  have nd : ((s6Step306CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[828, 796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step306Complete_owned : (s6Step306CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step306EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step306CompleteMoveArena : Arena := ⟨s6Step306ExitGvAfter.live∪{373},Finset.union_subset s6Step306ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step306Complete_repack : s6Step306ExitGvAfter.checkRepack s6Step306CompleteMoves=some s6Step306EarlyControlArena := by
  have owned : 890∈s6Step306ExitGvAfter.live := by norm_num [s6Step306ExitGvAfter,arenaWires]
  have reserve : s6Step306ExitGvAfter.reserve {373}=some s6Step306CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step306ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step306CompleteMoveArena.retireSet {890}=s6Step306EarlyControlArena := by
    unfold Arena.retireSet s6Step306EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step306CompleteMoveArena,s6Step306ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step306CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step306CompleteMoveArena.retireSet {890}).checkRepack []=some s6Step306EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step306EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s6Step306EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EarlyControl_branch : compileHmrBranchRetirement s6Step306EarlyControlSigmaArena 796=some s6Step306EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step306EarlyControl_branchOwned
  · ext q
    simp [s6Step306EarlyControlOutputArena,s6Step306EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step306EarlyControl_classEqualityBorrow : s6Step306EarlyControlPositiveArena.checkBorrow (([828, 830] : List Wire).length-1) s6Step306EarlyControlLog.classWork=some s6Step306EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step306EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step306EarlyControlEqualityArena,s6Step306EarlyControlPositiveArena,s6Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step306EarlyControl_classEqualityOwned : ([828, 830] : List Wire).toFinset⊆s6Step306EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EarlyControl_classEquality : compileHmrEqualityLog s6Step306EarlyControlPositiveArena [828, 830] 0 s6Step306EarlyControlLog.classWork=some (s6Step306EarlyControlEqualityArena,s6Step306EarlyControlLog.classWork,s6Step306EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step306EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step306EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step306EarlyControl_classOwned : ([769, 857, 828] : List Wire).toFinset⊆s6Step306EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EarlyControl_positiveBorrow : s6Step306EarlyControlZeroArena.checkBorrow (1) s6Step306EarlyControlLog.positiveWork=some s6Step306EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step306EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step306EarlyControlPositiveArena,s6Step306EarlyControlZeroArena,s6Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step306EarlyControl_class : compileHmrSourceClassLog s6Step306EarlyControlZeroArena false 769 s6Step306EarlyControlZeroPlan.top 0 828 s6Step306EarlyControlLog.positiveWork s6Step306EarlyControlLog.classWork=some s6Step306EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step306EarlyControlClassPlan s6Step306EarlyControlZeroArena false 769 s6Step306EarlyControlZeroPlan.top 0 828
  constructor
  · decide +kernel
  · exact s6Step306EarlyControl_classOwned
  · exact s6Step306EarlyControl_positiveBorrow
  · exact s6Step306EarlyControl_classEquality

private theorem s6Step306EarlyControl_entryRecordOwned : ([796, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step306EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EarlyControl_entrySigmaOwned : ([828, 254] : List Wire).toFinset⊆s6Step306EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EarlyControl_fitBorrow : s6Step306EarlyControlFlagArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step306EarlyControlLog.recordFresh=some s6Step306EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step306EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step306EarlyControlFittedArena,s6Step306EarlyControlFlagArena,s6Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step306EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step306EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EarlyControl_fit : compileHmrRecordGrowLog s6Step306EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 56 s6Step306EarlyControlLog.recordFresh=some s6Step306EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step306EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step306EarlyControl_fitBorrow

private theorem s6Step306EarlyControl_flagsBorrow : s6Step306EarlyControlEqualityArena.checkBorrow (6) s6Step306EarlyControlLog.flagWork=some s6Step306EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step306EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step306EarlyControlFlagArena,s6Step306EarlyControlEqualityArena,s6Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step306EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step306EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EarlyControl_flags : compileHmrFlagsLog s6Step306EarlyControlClassPlan.equalityArena s6Step306EarlyControlClassPlan.equality.top 253 252 251 s6Step306EarlyControlLog.flagWork=some s6Step306EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step306EarlyControl_flagsOwned⟩
  · exact s6Step306EarlyControl_flagsBorrow

private theorem s6Step306EarlyControl_historyBorrow : s6Step306EarlyControlArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step306EarlyControlLog.recordFresh=some s6Step306EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step306EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step306EarlyControlHistoryArena,s6Step306EarlyControlArena,s6Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step306EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step306EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EarlyControl_history : compileHmrRecordGrowLog s6Step306EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 56 s6Step306EarlyControlLog.recordFresh=some s6Step306EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step306EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step306EarlyControl_historyBorrow

private theorem s6Step306EarlyControl_sigmaOwned : ([254, 828] : List Wire).toFinset⊆s6Step306EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EarlyControl_sigmaReleaseOwned : ([828] : List Wire).toFinset⊆s6Step306EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EarlyControl_sigmaRelease : s6Step306EarlyControlHistoryArena.release {828} (fun _ => false)=some s6Step306EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step306EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step306EarlyControlSigmaArena,s6Step306EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step306EarlyControl_sigma : compileHmrSigmaDropLog s6Step306EarlyControlHistoryArena false 0 0 254 828 []=some s6Step306EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step306EarlyControl_sigmaOwned⟩
  · exact s6Step306EarlyControl_sigmaRelease

private theorem s6Step306EarlyControl_zeroBorrow : s6Step306EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step306EarlyControlLog.zeroWork=some s6Step306EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step306EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step306EarlyControlZeroArena,s6Step306EarlyControlArena,s6Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step306EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step306EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step306EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EarlyControl_zero : compileHmrEqualityLog s6Step306EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step306EarlyControlLog.zeroWork=some (s6Step306EarlyControlZeroArena,s6Step306EarlyControlLog.zeroWork,s6Step306EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step306EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step306EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step306EarlyControl_logged : s6Step306EarlyControlPlan.Logged s6Step306EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 254 253 252 251 796 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step306EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step306EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step306EarlyControl_zero
  · exact s6Step306EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step306EarlyControl_flags
  · exact s6Step306EarlyControl_fit
  · exact s6Step306EarlyControl_history
  · exact s6Step306EarlyControl_sigma
  · exact s6Step306EarlyControl_branch

private theorem s6Step306EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step306EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 254 253 252 251 796 56 s6Step306EarlyControlLog=some s6Step306EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step306EarlyControlPlan s6Step306EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 254 253 252 251 796 56 s6Step306EarlyControl_logged

private def s6Step306EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373],795⟩

private def s6Step306EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩

private def s6Step306EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩

private def s6Step306EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888],775⟩

private def s6Step306FrontBank : WindowBank := ⟨s6Step306EntryFRow,s6Step306EntryGRow,s6Step306EntryFvRow,s6Step306EntryGvRow⟩

private def s6Step306Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 793, 795]

private def s6Step306Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 857, 777]

private def s6Step306Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 865, 776]

private def s6Step306Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 803, 775]

private theorem s6Step306Counter_apart : Disjoint s6Step306HeadFvAfter.live s6Step306CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step306HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306Counter_borrowed : s6Step306HeadFvAfter.checkBorrow 4 s6Step306CounterWork=some s6Step306CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step306HeadFvAfter s6Step306CounterDuring s6Step306CounterWork.toFinset s6Step306Counter_bounded s6Step306Counter_apart rfl

private theorem s6Step306Counter_owned : (828::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step306HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step306HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306Counter_checked : compileHmrCounterStepLog s6Step306HeadFvAfter true 828 [774, 773, 772, 771, 770, 769] s6Step306CounterWork=some s6Step306CounterDuring := by
  have owned : ∀q∈828::[774, 773, 772, 771, 770, 769],q∈s6Step306HeadFvAfter.live := fun q hq => s6Step306Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step306Counter_borrowed

private def s6Step306EntryFAfter : Arena := s6Step306EntryFBefore

private theorem s6Step306EntryBank_incomingDistinct : ([s6Step306EntryFRow,s6Step306EntryGRow,s6Step306EntryFvRow,s6Step306EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306EntryF_Incoming : rowsOwned s6Step306EntryFBefore [s6Step306EntryFRow,s6Step306EntryGRow,s6Step306EntryFvRow,s6Step306EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306EntryFRow,s6Step306EntryGRow,s6Step306EntryFvRow,s6Step306EntryGvRow] 0 s6Step306EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306EntryBank_outgoingOwned : rowsOwned s6Step306EntryGvAfter [s6Step306EntryFOut,s6Step306EntryGOut,s6Step306EntryFvOut,s6Step306EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step306EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306EntryF_Outgoing : rowsOwned s6Step306EntryGvAfter [s6Step306EntryFOut,s6Step306EntryGOut,s6Step306EntryFvOut,s6Step306EntryGvOut] :=
  hmrRows_owned_drop s6Step306EntryGvAfter [s6Step306EntryFOut,s6Step306EntryGOut,s6Step306EntryFvOut,s6Step306EntryGvOut] 0 s6Step306EntryBank_outgoingOwned

private theorem s6Step306EntryF_distinct : (s6Step306EntryFRow.sign::s6Step306EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306EntryF_owned : (s6Step306EntryFRow.sign::s6Step306EntryFRow.payload).toFinset⊆s6Step306EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EntryF_reserved : s6Step306EntryFBefore.reserve s6Step306EntryFFresh.toFinset=some s6Step306EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step306EntryFFresh,arenaWires]
  · norm_num [s6Step306EntryFBefore,s6Step306EntryFFresh,arenaWires]
  · simp only [s6Step306EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step306EntryF_checked : planRowResizeLog s6Step306EntryFBefore s6Step306EntryFRow 118 s6Step306EntryFFresh=
    some (s6Step306EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373],795⟩,growRow 795 s6Step306EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step306EntryFBefore s6Step306EntryFAfter s6Step306EntryFRow 118 s6Step306EntryFFresh
    s6Step306EntryF_distinct s6Step306EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step306EntryF_reserved
  have rowEq : WindowRow.mk (s6Step306EntryFRow.payload++s6Step306EntryFFresh) s6Step306EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step306EntryFvAfter : Arena := s6Step306EntryFBefore

private def s6Step306EntryFvBefore : Arena := s6Step306EntryFBefore

private theorem s6Step306EntryFv_Incoming : rowsOwned s6Step306EntryFvBefore [s6Step306EntryFvRow,s6Step306EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306EntryFRow,s6Step306EntryGRow,s6Step306EntryFvRow,s6Step306EntryGvRow] 2 s6Step306EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306EntryFv_Outgoing : rowsOwned s6Step306EntryGvAfter [s6Step306EntryFvOut,s6Step306EntryGvOut] :=
  hmrRows_owned_drop s6Step306EntryGvAfter [s6Step306EntryFOut,s6Step306EntryGOut,s6Step306EntryFvOut,s6Step306EntryGvOut] 2 s6Step306EntryBank_outgoingOwned

private theorem s6Step306EntryFv_distinct : (s6Step306EntryFvRow.sign::s6Step306EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306EntryFv_owned : (s6Step306EntryFvRow.sign::s6Step306EntryFvRow.payload).toFinset⊆s6Step306EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EntryFv_reserved : s6Step306EntryFvBefore.reserve s6Step306EntryFvFresh.toFinset=some s6Step306EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step306EntryFvFresh,arenaWires]
  · norm_num [s6Step306EntryFvBefore,s6Step306EntryFBefore,s6Step306EntryFvFresh,arenaWires]
  · simp only [s6Step306EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step306EntryFv_checked : planRowResizeLog s6Step306EntryFvBefore s6Step306EntryFvRow 169 s6Step306EntryFvFresh=
    some (s6Step306EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩,growRow 776 s6Step306EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step306EntryFvBefore s6Step306EntryFvAfter s6Step306EntryFvRow 169 s6Step306EntryFvFresh
    s6Step306EntryFv_distinct s6Step306EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step306EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step306EntryFvRow.payload++s6Step306EntryFvFresh) s6Step306EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step306EntryGAfter : Arena := s6Step306EntryFBefore

private def s6Step306EntryGBefore : Arena := s6Step306EntryFBefore

private theorem s6Step306EntryG_Incoming : rowsOwned s6Step306EntryGBefore [s6Step306EntryGRow,s6Step306EntryFvRow,s6Step306EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306EntryFRow,s6Step306EntryGRow,s6Step306EntryFvRow,s6Step306EntryGvRow] 1 s6Step306EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306EntryG_Outgoing : rowsOwned s6Step306EntryGvAfter [s6Step306EntryGOut,s6Step306EntryFvOut,s6Step306EntryGvOut] :=
  hmrRows_owned_drop s6Step306EntryGvAfter [s6Step306EntryFOut,s6Step306EntryGOut,s6Step306EntryFvOut,s6Step306EntryGvOut] 1 s6Step306EntryBank_outgoingOwned

private theorem s6Step306EntryG_distinct : (s6Step306EntryGRow.sign::s6Step306EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306EntryG_owned : (s6Step306EntryGRow.sign::s6Step306EntryGRow.payload).toFinset⊆s6Step306EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EntryG_reserved : s6Step306EntryGBefore.reserve s6Step306EntryGFresh.toFinset=some s6Step306EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step306EntryGFresh,arenaWires]
  · norm_num [s6Step306EntryGBefore,s6Step306EntryFBefore,s6Step306EntryGFresh,arenaWires]
  · simp only [s6Step306EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step306EntryG_checked : planRowResizeLog s6Step306EntryGBefore s6Step306EntryGRow 118 s6Step306EntryGFresh=
    some (s6Step306EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩,growRow 777 s6Step306EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step306EntryGBefore s6Step306EntryGAfter s6Step306EntryGRow 118 s6Step306EntryGFresh
    s6Step306EntryG_distinct s6Step306EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step306EntryG_reserved
  have rowEq : WindowRow.mk (s6Step306EntryGRow.payload++s6Step306EntryGFresh) s6Step306EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step306EntryGvBefore : Arena := s6Step306EntryFBefore

private theorem s6Step306EntryGv_Incoming : rowsOwned s6Step306EntryGvBefore [s6Step306EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306EntryFRow,s6Step306EntryGRow,s6Step306EntryFvRow,s6Step306EntryGvRow] 3 s6Step306EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306EntryGv_Outgoing : rowsOwned s6Step306EntryGvAfter [s6Step306EntryGvOut] :=
  hmrRows_owned_drop s6Step306EntryGvAfter [s6Step306EntryFOut,s6Step306EntryGOut,s6Step306EntryFvOut,s6Step306EntryGvOut] 3 s6Step306EntryBank_outgoingOwned

private theorem s6Step306EntryGv_distinct : (s6Step306EntryGvRow.sign::s6Step306EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306EntryGv_owned : (s6Step306EntryGvRow.sign::s6Step306EntryGvRow.payload).toFinset⊆s6Step306EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306EntryGv_reserved : s6Step306EntryGvBefore.reserve s6Step306EntryGvFresh.toFinset=some s6Step306EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step306EntryGvFresh,arenaWires]
  · norm_num [s6Step306EntryGvBefore,s6Step306EntryFBefore,s6Step306EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step306EntryGvAfter,s6Step306EntryGvBefore,s6Step306EntryFBefore,s6Step306EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step306EntryGv_checked : planRowResizeLog s6Step306EntryGvBefore s6Step306EntryGvRow 169 s6Step306EntryGvFresh=
    some (s6Step306EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩,growRow 775 s6Step306EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step306EntryGvBefore s6Step306EntryGvAfter s6Step306EntryGvRow 169 s6Step306EntryGvFresh
    s6Step306EntryGv_distinct s6Step306EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step306EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step306EntryGvRow.payload++s6Step306EntryGvFresh) s6Step306EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step306EntryBank_rows : planWindowRowsLog s6Step306EntryFBefore [(s6Step306EntryFRow,118),(s6Step306EntryGRow,118),(s6Step306EntryFvRow,169),(s6Step306EntryGvRow,169)] [s6Step306EntryFFresh,s6Step306EntryGFresh,s6Step306EntryFvFresh,s6Step306EntryGvFresh]=
    some (s6Step306EntryGvAfter,[s6Step306EntryFOut,s6Step306EntryGOut,s6Step306EntryFvOut,s6Step306EntryGvOut],(growRow 795 s6Step306EntryFFresh ++ (growRow 777 s6Step306EntryGFresh ++ (growRow 776 s6Step306EntryFvFresh ++ (growRow 775 s6Step306EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step306EntryGvAfter [] []=some (s6Step306EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step306EntryGvBefore s6Step306EntryGvAfter s6Step306EntryGvAfter
    s6Step306EntryGvRow s6Step306EntryGvOut 169 s6Step306EntryGvFresh [] [] []
    (growRow 775 s6Step306EntryGvFresh) ([]) s6Step306EntryGv_Incoming s6Step306EntryGv_checked h4 s6Step306EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step306EntryFvBefore s6Step306EntryFvAfter s6Step306EntryGvAfter
    s6Step306EntryFvRow s6Step306EntryFvOut 169 s6Step306EntryFvFresh [(s6Step306EntryGvRow,169)] [s6Step306EntryGvFresh] [s6Step306EntryGvOut]
    (growRow 776 s6Step306EntryFvFresh) ((growRow 775 s6Step306EntryGvFresh ++ [])) s6Step306EntryFv_Incoming s6Step306EntryFv_checked h3 s6Step306EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step306EntryGBefore s6Step306EntryGAfter s6Step306EntryGvAfter
    s6Step306EntryGRow s6Step306EntryGOut 118 s6Step306EntryGFresh [(s6Step306EntryFvRow,169),(s6Step306EntryGvRow,169)] [s6Step306EntryFvFresh,s6Step306EntryGvFresh] [s6Step306EntryFvOut,s6Step306EntryGvOut]
    (growRow 777 s6Step306EntryGFresh) ((growRow 776 s6Step306EntryFvFresh ++ (growRow 775 s6Step306EntryGvFresh ++ []))) s6Step306EntryG_Incoming s6Step306EntryG_checked h2 s6Step306EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step306EntryFBefore s6Step306EntryFAfter s6Step306EntryGvAfter
    s6Step306EntryFRow s6Step306EntryFOut 118 s6Step306EntryFFresh [(s6Step306EntryGRow,118),(s6Step306EntryFvRow,169),(s6Step306EntryGvRow,169)] [s6Step306EntryGFresh,s6Step306EntryFvFresh,s6Step306EntryGvFresh] [s6Step306EntryGOut,s6Step306EntryFvOut,s6Step306EntryGvOut]
    (growRow 795 s6Step306EntryFFresh) ((growRow 777 s6Step306EntryGFresh ++ (growRow 776 s6Step306EntryFvFresh ++ (growRow 775 s6Step306EntryGvFresh ++ [])))) s6Step306EntryF_Incoming s6Step306EntryF_checked h1 s6Step306EntryF_Outgoing
  exact h0

private theorem s6Step306EntryBank_checked : compileHmrBankResizeLog .entry s6Step306EntryFBefore ⟨s6Step306EntryFRow,s6Step306EntryGRow,s6Step306EntryFvRow,s6Step306EntryGvRow⟩ ⟨118,118,169,169⟩ [s6Step306EntryFFresh,s6Step306EntryGFresh,s6Step306EntryFvFresh,s6Step306EntryGvFresh]=
    some (s6Step306EntryGvAfter,⟨s6Step306EntryFOut,s6Step306EntryGOut,s6Step306EntryFvOut,s6Step306EntryGvOut⟩,(growRow 795 s6Step306EntryFFresh ++ (growRow 777 s6Step306EntryGFresh ++ (growRow 776 s6Step306EntryFvFresh ++ (growRow 775 s6Step306EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step306EntryBank_rows]
  rfl

private def s6Step306ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<373) ∨ (374≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306ExitFBefore : Arena := s6Step306ExitGAfter

private def s6Step306ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 793],795⟩

private def s6Step306ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 865],776⟩

private def s6Step306ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 857],777⟩

private def s6Step306ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 803],775⟩

private theorem s6Step306ExitBank_incomingDistinct : ([s6Step306ExitGRow,s6Step306ExitFRow,s6Step306ExitFvRow,s6Step306ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306ExitF_Incoming : rowsOwned s6Step306ExitFBefore [s6Step306ExitFRow,s6Step306ExitFvRow,s6Step306ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306ExitGRow,s6Step306ExitFRow,s6Step306ExitFvRow,s6Step306ExitGvRow] 1 s6Step306ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306ExitBank_outgoingOwned : rowsOwned s6Step306ExitGvAfter [s6Step306ExitGOut,s6Step306ExitFOut,s6Step306ExitFvOut,s6Step306ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step306ExitGvAfter (fun q => (0≤q ∧ q<373) ∨ (374≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306ExitF_Outgoing : rowsOwned s6Step306ExitGvAfter [s6Step306ExitFOut,s6Step306ExitFvOut,s6Step306ExitGvOut] :=
  hmrRows_owned_drop s6Step306ExitGvAfter [s6Step306ExitGOut,s6Step306ExitFOut,s6Step306ExitFvOut,s6Step306ExitGvOut] 1 s6Step306ExitBank_outgoingOwned

private theorem s6Step306ExitF_distinct : (s6Step306ExitFRow.sign::s6Step306ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306ExitF_owned : (s6Step306ExitFRow.sign::s6Step306ExitFRow.payload).toFinset⊆s6Step306ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306ExitF_retired : s6Step306ExitFBefore.retireSet s6Step306ExitFExtra.toFinset=s6Step306ExitFAfter := by
  unfold Arena.retireSet s6Step306ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step306ExitFBefore,s6Step306ExitGAfter,s6Step306ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step306ExitF_checked : planRowResizeLog s6Step306ExitFBefore s6Step306ExitFRow 117 []=
    some (s6Step306ExitFAfter,s6Step306ExitFOut,shrinkRow 795 s6Step306ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step306ExitFBefore s6Step306ExitFRow 117 s6Step306ExitF_distinct s6Step306ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step306ExitFRow.payload.take 117) s6Step306ExitFRow.sign=s6Step306ExitFOut := by decide +kernel
  have hi : s6Step306ExitFRow.payload.drop 117=s6Step306ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step306ExitF_retired] at result
  exact result

private def s6Step306ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<373) ∨ (374≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306ExitFvBefore : Arena := s6Step306ExitFAfter

private theorem s6Step306ExitFv_Incoming : rowsOwned s6Step306ExitFvBefore [s6Step306ExitFvRow,s6Step306ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306ExitGRow,s6Step306ExitFRow,s6Step306ExitFvRow,s6Step306ExitGvRow] 2 s6Step306ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306ExitFvBefore (fun q => (0≤q ∧ q<373) ∨ (374≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306ExitFv_Outgoing : rowsOwned s6Step306ExitGvAfter [s6Step306ExitFvOut,s6Step306ExitGvOut] :=
  hmrRows_owned_drop s6Step306ExitGvAfter [s6Step306ExitGOut,s6Step306ExitFOut,s6Step306ExitFvOut,s6Step306ExitGvOut] 2 s6Step306ExitBank_outgoingOwned

private theorem s6Step306ExitFv_distinct : (s6Step306ExitFvRow.sign::s6Step306ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306ExitFv_owned : (s6Step306ExitFvRow.sign::s6Step306ExitFvRow.payload).toFinset⊆s6Step306ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306ExitFvBefore (fun q => (0≤q ∧ q<373) ∨ (374≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306ExitFv_retired : s6Step306ExitFvBefore.retireSet s6Step306ExitFvExtra.toFinset=s6Step306ExitFvAfter := by
  unfold Arena.retireSet s6Step306ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step306ExitFvBefore,s6Step306ExitFAfter,s6Step306ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step306ExitFv_checked : planRowResizeLog s6Step306ExitFvBefore s6Step306ExitFvRow 169 []=
    some (s6Step306ExitFvAfter,s6Step306ExitFvOut,shrinkRow 776 s6Step306ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step306ExitFvBefore s6Step306ExitFvRow 169 s6Step306ExitFv_distinct s6Step306ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step306ExitFvRow.payload.take 169) s6Step306ExitFvRow.sign=s6Step306ExitFvOut := by decide +kernel
  have hi : s6Step306ExitFvRow.payload.drop 169=s6Step306ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step306ExitFv_retired] at result
  exact result

private def s6Step306ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step306ExitG_Incoming : rowsOwned s6Step306ExitGBefore [s6Step306ExitGRow,s6Step306ExitFRow,s6Step306ExitFvRow,s6Step306ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306ExitGRow,s6Step306ExitFRow,s6Step306ExitFvRow,s6Step306ExitGvRow] 0 s6Step306ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306ExitG_Outgoing : rowsOwned s6Step306ExitGvAfter [s6Step306ExitGOut,s6Step306ExitFOut,s6Step306ExitFvOut,s6Step306ExitGvOut] :=
  hmrRows_owned_drop s6Step306ExitGvAfter [s6Step306ExitGOut,s6Step306ExitFOut,s6Step306ExitFvOut,s6Step306ExitGvOut] 0 s6Step306ExitBank_outgoingOwned

private theorem s6Step306ExitG_distinct : (s6Step306ExitGRow.sign::s6Step306ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306ExitG_owned : (s6Step306ExitGRow.sign::s6Step306ExitGRow.payload).toFinset⊆s6Step306ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306ExitG_retired : s6Step306ExitGBefore.retireSet s6Step306ExitGExtra.toFinset=s6Step306ExitGAfter := by
  unfold Arena.retireSet s6Step306ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step306ExitGBefore,s6Step306ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step306ExitG_checked : planRowResizeLog s6Step306ExitGBefore s6Step306ExitGRow 118 []=
    some (s6Step306ExitGAfter,s6Step306ExitGOut,shrinkRow 777 s6Step306ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step306ExitGBefore s6Step306ExitGRow 118 s6Step306ExitG_distinct s6Step306ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step306ExitGRow.payload.take 118) s6Step306ExitGRow.sign=s6Step306ExitGOut := by decide +kernel
  have hi : s6Step306ExitGRow.payload.drop 118=s6Step306ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step306ExitG_retired] at result
  exact result

private def s6Step306ExitGvBefore : Arena := s6Step306ExitFvAfter

private theorem s6Step306ExitGv_Incoming : rowsOwned s6Step306ExitGvBefore [s6Step306ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306ExitGRow,s6Step306ExitFRow,s6Step306ExitFvRow,s6Step306ExitGvRow] 3 s6Step306ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306ExitGvBefore (fun q => (0≤q ∧ q<373) ∨ (374≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306ExitGv_Outgoing : rowsOwned s6Step306ExitGvAfter [s6Step306ExitGvOut] :=
  hmrRows_owned_drop s6Step306ExitGvAfter [s6Step306ExitGOut,s6Step306ExitFOut,s6Step306ExitFvOut,s6Step306ExitGvOut] 3 s6Step306ExitBank_outgoingOwned

private theorem s6Step306ExitGv_distinct : (s6Step306ExitGvRow.sign::s6Step306ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306ExitGv_owned : (s6Step306ExitGvRow.sign::s6Step306ExitGvRow.payload).toFinset⊆s6Step306ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306ExitGvBefore (fun q => (0≤q ∧ q<373) ∨ (374≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306ExitGv_retired : s6Step306ExitGvBefore.retireSet s6Step306ExitGvExtra.toFinset=s6Step306ExitGvAfter := by
  unfold Arena.retireSet s6Step306ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step306ExitGvBefore,s6Step306ExitFvAfter,s6Step306ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step306ExitGv_checked : planRowResizeLog s6Step306ExitGvBefore s6Step306ExitGvRow 169 []=
    some (s6Step306ExitGvAfter,s6Step306ExitGvOut,shrinkRow 775 s6Step306ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step306ExitGvBefore s6Step306ExitGvRow 169 s6Step306ExitGv_distinct s6Step306ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step306ExitGvRow.payload.take 169) s6Step306ExitGvRow.sign=s6Step306ExitGvOut := by decide +kernel
  have hi : s6Step306ExitGvRow.payload.drop 169=s6Step306ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step306ExitGv_retired] at result
  exact result

private theorem s6Step306ExitBank_rows : planWindowRowsLog s6Step306ExitGBefore [(s6Step306ExitGRow,118),(s6Step306ExitFRow,117),(s6Step306ExitFvRow,169),(s6Step306ExitGvRow,169)] [[],[],[],[]]=
    some (s6Step306ExitGvAfter,[s6Step306ExitGOut,s6Step306ExitFOut,s6Step306ExitFvOut,s6Step306ExitGvOut],(shrinkRow 777 s6Step306ExitGExtra ++ (shrinkRow 795 s6Step306ExitFExtra ++ (shrinkRow 776 s6Step306ExitFvExtra ++ (shrinkRow 775 s6Step306ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step306ExitGvAfter [] []=some (s6Step306ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step306ExitGvBefore s6Step306ExitGvAfter s6Step306ExitGvAfter
    s6Step306ExitGvRow s6Step306ExitGvOut 169 [] [] [] []
    (shrinkRow 775 s6Step306ExitGvExtra) ([]) s6Step306ExitGv_Incoming s6Step306ExitGv_checked h4 s6Step306ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step306ExitFvBefore s6Step306ExitFvAfter s6Step306ExitGvAfter
    s6Step306ExitFvRow s6Step306ExitFvOut 169 [] [(s6Step306ExitGvRow,169)] [[]] [s6Step306ExitGvOut]
    (shrinkRow 776 s6Step306ExitFvExtra) ((shrinkRow 775 s6Step306ExitGvExtra ++ [])) s6Step306ExitFv_Incoming s6Step306ExitFv_checked h3 s6Step306ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step306ExitFBefore s6Step306ExitFAfter s6Step306ExitGvAfter
    s6Step306ExitFRow s6Step306ExitFOut 117 [] [(s6Step306ExitFvRow,169),(s6Step306ExitGvRow,169)] [[],[]] [s6Step306ExitFvOut,s6Step306ExitGvOut]
    (shrinkRow 795 s6Step306ExitFExtra) ((shrinkRow 776 s6Step306ExitFvExtra ++ (shrinkRow 775 s6Step306ExitGvExtra ++ []))) s6Step306ExitF_Incoming s6Step306ExitF_checked h2 s6Step306ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step306ExitGBefore s6Step306ExitGAfter s6Step306ExitGvAfter
    s6Step306ExitGRow s6Step306ExitGOut 118 [] [(s6Step306ExitFRow,117),(s6Step306ExitFvRow,169),(s6Step306ExitGvRow,169)] [[],[],[]] [s6Step306ExitFOut,s6Step306ExitFvOut,s6Step306ExitGvOut]
    (shrinkRow 777 s6Step306ExitGExtra) ((shrinkRow 795 s6Step306ExitFExtra ++ (shrinkRow 776 s6Step306ExitFvExtra ++ (shrinkRow 775 s6Step306ExitGvExtra ++ [])))) s6Step306ExitG_Incoming s6Step306ExitG_checked h1 s6Step306ExitG_Outgoing
  exact h0

private theorem s6Step306ExitBank_checked : compileHmrBankResizeLog .exit s6Step306ExitGBefore ⟨s6Step306ExitFRow,s6Step306ExitGRow,s6Step306ExitFvRow,s6Step306ExitGvRow⟩ ⟨117,118,169,169⟩ [[],[],[],[]]=
    some (s6Step306ExitGvAfter,⟨s6Step306ExitFOut,s6Step306ExitGOut,s6Step306ExitFvOut,s6Step306ExitGvOut⟩,(shrinkRow 777 s6Step306ExitGExtra ++ (shrinkRow 795 s6Step306ExitFExtra ++ (shrinkRow 776 s6Step306ExitFvExtra ++ (shrinkRow 775 s6Step306ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step306ExitBank_rows]
  rfl

private theorem s6Step306Add0_apart : Disjoint s6Step306Add0Arena.live s6Step306Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step306Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306Add0_card : s6Step306Add0Arena.live.card=903 := by
  decide +kernel

private theorem s6Step306Add0_borrowed : s6Step306Add0Arena.checkBorrow (hmrHybridCount s6Step306Add0Arena s6Step306Add0B.length) s6Step306Add0Work=some s6Step306Add0During := by
  have len : s6Step306Add0Work.length=hmrHybridCount s6Step306Add0Arena s6Step306Add0B.length := by
    rw [hmrHybridCount,s6Step306Add0_card]
    decide +kernel
  have nd : s6Step306Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step306Add0Arena s6Step306Add0During s6Step306Add0Work.toFinset s6Step306Add0_bounded s6Step306Add0_apart rfl

private theorem s6Step306Add0_distinct : (830::796::805::(s6Step306Add0A++s6Step306Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306Add0_owned : (830::796::805::(s6Step306Add0A++s6Step306Add0B)).toFinset⊆s6Step306Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step306Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306Add0_checked : compileHmrHybridCinLog s6Step306Add0Arena 796 830 805 s6Step306Add0A s6Step306Add0B s6Step306Add0Work=some s6Step306Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step306Add0Arena s6Step306Add0During 796 830 805 s6Step306Add0A s6Step306Add0B s6Step306Add0Work
    (by decide +kernel) (by decide +kernel) s6Step306Add0_distinct
    (fun q hq => s6Step306Add0_owned (List.mem_toFinset.mpr hq)) s6Step306Add0_borrowed

private theorem s6Step306Add1_apart : Disjoint s6Step306Add1Arena.live s6Step306Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step306Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306Add1_card : s6Step306Add1Arena.live.card=903 := by
  decide +kernel

private theorem s6Step306Add1_borrowed : s6Step306Add1Arena.checkBorrow (hmrHybridCount s6Step306Add1Arena s6Step306Add1B.length) s6Step306Add1Work=some s6Step306Add1During := by
  have len : s6Step306Add1Work.length=hmrHybridCount s6Step306Add1Arena s6Step306Add1B.length := by
    rw [hmrHybridCount,s6Step306Add1_card]
    decide +kernel
  have nd : s6Step306Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step306Add1Arena s6Step306Add1During s6Step306Add1Work.toFinset s6Step306Add1_bounded s6Step306Add1_apart rfl

private theorem s6Step306Add1_distinct : (830::796::805::(s6Step306Add1A++s6Step306Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306Add1_owned : (830::796::805::(s6Step306Add1A++s6Step306Add1B)).toFinset⊆s6Step306Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step306Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306Add1_checked : compileHmrHybridCinLog s6Step306Add1Arena 796 830 805 s6Step306Add1A s6Step306Add1B s6Step306Add1Work=some s6Step306Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step306Add1Arena s6Step306Add1During 796 830 805 s6Step306Add1A s6Step306Add1B s6Step306Add1Work
    (by decide +kernel) (by decide +kernel) s6Step306Add1_distinct
    (fun q hq => s6Step306Add1_owned (List.mem_toFinset.mpr hq)) s6Step306Add1_borrowed

private theorem s6Step306F4_apart : Disjoint (s6Step306Add0A++s6Step306Add0B).toFinset (s6Step306Add1A++s6Step306Add1B).toFinset := by
  have nd : ((s6Step306Add0A++s6Step306Add0B)++(s6Step306Add1A++s6Step306Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step306F4_carry : s6Step306F4FlagArena.checkBorrow 1 [805]=some s6Step306Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step306F4FlagArena,s6Step306HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step306F4FlagArena,s6Step306HeadFvAfter,s6Step306Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step306F4_distinct : (828::796::830::805::((s6Step306Add0A++s6Step306Add1A)++(s6Step306Add0B++s6Step306Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306F4_flag : s6Step306HeadFvAfter.checkBorrow 1 [830]=some s6Step306F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step306HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step306F4_owned : (828::796::((s6Step306Add0A++s6Step306Add1A)++(s6Step306Add0B++s6Step306Add1B))).toFinset⊆s6Step306HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step306HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306F4_checked : compileHmrHybridF4Log s6Step306HeadFvAfter 828 796 s6Step306Add0A s6Step306Add0B s6Step306Add1A s6Step306Add1B [830] [805] s6Step306Add0Work s6Step306Add1Work=some s6Step306F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step306HeadFvAfter s6Step306F4FlagArena s6Step306Add0Arena s6Step306Add0During s6Step306Add1During 828 796
    s6Step306Add0A s6Step306Add0B s6Step306Add1A s6Step306Add1B [830] [805] s6Step306Add0Work s6Step306Add1Work
    (fun q hq => s6Step306F4_owned (List.mem_toFinset.mpr hq)) s6Step306F4_flag s6Step306F4_carry
    s6Step306F4_distinct s6Step306F4_apart s6Step306Add0_checked s6Step306Add1_checked

private theorem s6Step306Front_branch : s6Step306FrontSigmaArena.checkBorrow 1 [796]=some s6Step306HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step306FrontSigmaArena,s6Step306EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step306FrontSigmaArena,s6Step306EntryGvAfter,s6Step306HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step306Front_entry : HmrFrontEntryValid s6Step306EntryFBefore s6Step306FrontBank 118 169 ⟨117,118,169,169⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step306FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step306EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step306EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step306FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step306Front_sigma : s6Step306EntryGvAfter.checkBorrow 1 [828]=some s6Step306FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step306EntryGvAfter,arenaWires]
  · rfl

private def s6Step306HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306HeadFBefore : Arena := s6Step306HeadGAfter

private def s6Step306HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373],795⟩

private def s6Step306HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩

private def s6Step306HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩

private def s6Step306HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩

private theorem s6Step306HeadBank_incomingDistinct : ([s6Step306HeadGRow,s6Step306HeadFRow,s6Step306HeadGvRow,s6Step306HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306HeadF_Incoming : rowsOwned s6Step306HeadFBefore [s6Step306HeadFRow,s6Step306HeadGvRow,s6Step306HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306HeadGRow,s6Step306HeadFRow,s6Step306HeadGvRow,s6Step306HeadFvRow] 1 s6Step306HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306HeadBank_outgoingOwned : rowsOwned s6Step306HeadFvAfter [s6Step306HeadGOut,s6Step306HeadFOut,s6Step306HeadGvOut,s6Step306HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step306HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306HeadF_Outgoing : rowsOwned s6Step306HeadFvAfter [s6Step306HeadFOut,s6Step306HeadGvOut,s6Step306HeadFvOut] :=
  hmrRows_owned_drop s6Step306HeadFvAfter [s6Step306HeadGOut,s6Step306HeadFOut,s6Step306HeadGvOut,s6Step306HeadFvOut] 1 s6Step306HeadBank_outgoingOwned

private theorem s6Step306HeadF_distinct : (s6Step306HeadFRow.sign::s6Step306HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306HeadF_owned : (s6Step306HeadFRow.sign::s6Step306HeadFRow.payload).toFinset⊆s6Step306HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306HeadF_reserved : s6Step306HeadFBefore.reserve s6Step306HeadFFresh.toFinset=some s6Step306HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step306HeadFFresh,arenaWires]
  · norm_num [s6Step306HeadFBefore,s6Step306HeadGAfter,s6Step306HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step306HeadFAfter,s6Step306HeadFBefore,s6Step306HeadGAfter,s6Step306HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step306HeadF_checked : planRowResizeLog s6Step306HeadFBefore s6Step306HeadFRow 119 s6Step306HeadFFresh=
    some (s6Step306HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 793],795⟩,growRow 795 s6Step306HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step306HeadFBefore s6Step306HeadFAfter s6Step306HeadFRow 119 s6Step306HeadFFresh
    s6Step306HeadF_distinct s6Step306HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step306HeadF_reserved
  have rowEq : WindowRow.mk (s6Step306HeadFRow.payload++s6Step306HeadFFresh) s6Step306HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 793],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step306HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step306HeadFvBefore : Arena := s6Step306HeadGvAfter

private theorem s6Step306HeadFv_Incoming : rowsOwned s6Step306HeadFvBefore [s6Step306HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306HeadGRow,s6Step306HeadFRow,s6Step306HeadGvRow,s6Step306HeadFvRow] 3 s6Step306HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306HeadFv_Outgoing : rowsOwned s6Step306HeadFvAfter [s6Step306HeadFvOut] :=
  hmrRows_owned_drop s6Step306HeadFvAfter [s6Step306HeadGOut,s6Step306HeadFOut,s6Step306HeadGvOut,s6Step306HeadFvOut] 3 s6Step306HeadBank_outgoingOwned

private theorem s6Step306HeadFv_distinct : (s6Step306HeadFvRow.sign::s6Step306HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306HeadFv_owned : (s6Step306HeadFvRow.sign::s6Step306HeadFvRow.payload).toFinset⊆s6Step306HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306HeadFv_reserved : s6Step306HeadFvBefore.reserve s6Step306HeadFvFresh.toFinset=some s6Step306HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step306HeadFvFresh,arenaWires]
  · norm_num [s6Step306HeadFvBefore,s6Step306HeadGvAfter,s6Step306HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step306HeadFvAfter,s6Step306HeadFvBefore,s6Step306HeadGvAfter,s6Step306HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step306HeadFv_checked : planRowResizeLog s6Step306HeadFvBefore s6Step306HeadFvRow 170 s6Step306HeadFvFresh=
    some (s6Step306HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 865],776⟩,growRow 776 s6Step306HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step306HeadFvBefore s6Step306HeadFvAfter s6Step306HeadFvRow 170 s6Step306HeadFvFresh
    s6Step306HeadFv_distinct s6Step306HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step306HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step306HeadFvRow.payload++s6Step306HeadFvFresh) s6Step306HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 865],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step306HeadG_Incoming : rowsOwned s6Step306HeadGBefore [s6Step306HeadGRow,s6Step306HeadFRow,s6Step306HeadGvRow,s6Step306HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306HeadGRow,s6Step306HeadFRow,s6Step306HeadGvRow,s6Step306HeadFvRow] 0 s6Step306HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306HeadG_Outgoing : rowsOwned s6Step306HeadFvAfter [s6Step306HeadGOut,s6Step306HeadFOut,s6Step306HeadGvOut,s6Step306HeadFvOut] :=
  hmrRows_owned_drop s6Step306HeadFvAfter [s6Step306HeadGOut,s6Step306HeadFOut,s6Step306HeadGvOut,s6Step306HeadFvOut] 0 s6Step306HeadBank_outgoingOwned

private theorem s6Step306HeadG_distinct : (s6Step306HeadGRow.sign::s6Step306HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306HeadG_owned : (s6Step306HeadGRow.sign::s6Step306HeadGRow.payload).toFinset⊆s6Step306HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306HeadG_reserved : s6Step306HeadGBefore.reserve s6Step306HeadGFresh.toFinset=some s6Step306HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step306HeadGFresh,arenaWires]
  · norm_num [s6Step306HeadGBefore,s6Step306HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step306HeadGAfter,s6Step306HeadGBefore,s6Step306HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step306HeadG_checked : planRowResizeLog s6Step306HeadGBefore s6Step306HeadGRow 119 s6Step306HeadGFresh=
    some (s6Step306HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 857],777⟩,growRow 777 s6Step306HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step306HeadGBefore s6Step306HeadGAfter s6Step306HeadGRow 119 s6Step306HeadGFresh
    s6Step306HeadG_distinct s6Step306HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step306HeadG_reserved
  have rowEq : WindowRow.mk (s6Step306HeadGRow.payload++s6Step306HeadGFresh) s6Step306HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 857],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step306HeadGvBefore : Arena := s6Step306HeadFAfter

private theorem s6Step306HeadGv_Incoming : rowsOwned s6Step306HeadGvBefore [s6Step306HeadGvRow,s6Step306HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step306HeadGRow,s6Step306HeadFRow,s6Step306HeadGvRow,s6Step306HeadFvRow] 2 s6Step306HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step306HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step306HeadGv_Outgoing : rowsOwned s6Step306HeadFvAfter [s6Step306HeadGvOut,s6Step306HeadFvOut] :=
  hmrRows_owned_drop s6Step306HeadFvAfter [s6Step306HeadGOut,s6Step306HeadFOut,s6Step306HeadGvOut,s6Step306HeadFvOut] 2 s6Step306HeadBank_outgoingOwned

private theorem s6Step306HeadGv_distinct : (s6Step306HeadGvRow.sign::s6Step306HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step306HeadGv_owned : (s6Step306HeadGvRow.sign::s6Step306HeadGvRow.payload).toFinset⊆s6Step306HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step306HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step306HeadGv_reserved : s6Step306HeadGvBefore.reserve s6Step306HeadGvFresh.toFinset=some s6Step306HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step306HeadGvFresh,arenaWires]
  · norm_num [s6Step306HeadGvBefore,s6Step306HeadFAfter,s6Step306HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step306HeadGvAfter,s6Step306HeadGvBefore,s6Step306HeadFAfter,s6Step306HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step306HeadGv_checked : planRowResizeLog s6Step306HeadGvBefore s6Step306HeadGvRow 170 s6Step306HeadGvFresh=
    some (s6Step306HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 803],775⟩,growRow 775 s6Step306HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step306HeadGvBefore s6Step306HeadGvAfter s6Step306HeadGvRow 170 s6Step306HeadGvFresh
    s6Step306HeadGv_distinct s6Step306HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step306HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step306HeadGvRow.payload++s6Step306HeadGvFresh) s6Step306HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 803],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step306HeadBank_rows : planWindowRowsLog s6Step306HeadGBefore [(s6Step306HeadGRow,119),(s6Step306HeadFRow,119),(s6Step306HeadGvRow,170),(s6Step306HeadFvRow,170)] [s6Step306HeadGFresh,s6Step306HeadFFresh,s6Step306HeadGvFresh,s6Step306HeadFvFresh]=
    some (s6Step306HeadFvAfter,[s6Step306HeadGOut,s6Step306HeadFOut,s6Step306HeadGvOut,s6Step306HeadFvOut],(growRow 777 s6Step306HeadGFresh ++ (growRow 795 s6Step306HeadFFresh ++ (growRow 775 s6Step306HeadGvFresh ++ (growRow 776 s6Step306HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step306HeadFvAfter [] []=some (s6Step306HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step306HeadFvBefore s6Step306HeadFvAfter s6Step306HeadFvAfter
    s6Step306HeadFvRow s6Step306HeadFvOut 170 s6Step306HeadFvFresh [] [] []
    (growRow 776 s6Step306HeadFvFresh) ([]) s6Step306HeadFv_Incoming s6Step306HeadFv_checked h4 s6Step306HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step306HeadGvBefore s6Step306HeadGvAfter s6Step306HeadFvAfter
    s6Step306HeadGvRow s6Step306HeadGvOut 170 s6Step306HeadGvFresh [(s6Step306HeadFvRow,170)] [s6Step306HeadFvFresh] [s6Step306HeadFvOut]
    (growRow 775 s6Step306HeadGvFresh) ((growRow 776 s6Step306HeadFvFresh ++ [])) s6Step306HeadGv_Incoming s6Step306HeadGv_checked h3 s6Step306HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step306HeadFBefore s6Step306HeadFAfter s6Step306HeadFvAfter
    s6Step306HeadFRow s6Step306HeadFOut 119 s6Step306HeadFFresh [(s6Step306HeadGvRow,170),(s6Step306HeadFvRow,170)] [s6Step306HeadGvFresh,s6Step306HeadFvFresh] [s6Step306HeadGvOut,s6Step306HeadFvOut]
    (growRow 795 s6Step306HeadFFresh) ((growRow 775 s6Step306HeadGvFresh ++ (growRow 776 s6Step306HeadFvFresh ++ []))) s6Step306HeadF_Incoming s6Step306HeadF_checked h2 s6Step306HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step306HeadGBefore s6Step306HeadGAfter s6Step306HeadFvAfter
    s6Step306HeadGRow s6Step306HeadGOut 119 s6Step306HeadGFresh [(s6Step306HeadFRow,119),(s6Step306HeadGvRow,170),(s6Step306HeadFvRow,170)] [s6Step306HeadFFresh,s6Step306HeadGvFresh,s6Step306HeadFvFresh] [s6Step306HeadFOut,s6Step306HeadGvOut,s6Step306HeadFvOut]
    (growRow 777 s6Step306HeadGFresh) ((growRow 795 s6Step306HeadFFresh ++ (growRow 775 s6Step306HeadGvFresh ++ (growRow 776 s6Step306HeadFvFresh ++ [])))) s6Step306HeadG_Incoming s6Step306HeadG_checked h1 s6Step306HeadG_Outgoing
  exact h0

private theorem s6Step306HeadBank_checked : compileHmrBankResizeLog .headroom s6Step306HeadGBefore ⟨s6Step306HeadFRow,s6Step306HeadGRow,s6Step306HeadFvRow,s6Step306HeadGvRow⟩ ⟨119,119,170,170⟩ [s6Step306HeadGFresh,s6Step306HeadFFresh,s6Step306HeadGvFresh,s6Step306HeadFvFresh]=
    some (s6Step306HeadFvAfter,⟨s6Step306HeadFOut,s6Step306HeadGOut,s6Step306HeadFvOut,s6Step306HeadGvOut⟩,(growRow 777 s6Step306HeadGFresh ++ (growRow 795 s6Step306HeadFFresh ++ (growRow 775 s6Step306HeadGvFresh ++ (growRow 776 s6Step306HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step306HeadBank_rows]
  rfl

private theorem s6Step306Front_checked : compileHmrSourceFrontLog s6Step306EntryFBefore s6Step306FrontBank 118 169 ⟨117,118,169,169⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step306FrontLog=some s6Step306FrontPlan := by
  have pairEq : s6Step306FrontPair=⟨s6Step306HeadFRow,s6Step306HeadGRow,s6Step306HeadFvRow,s6Step306HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step306FrontHead=⟨s6Step306ExitFRow,s6Step306ExitGRow,s6Step306ExitFvRow,s6Step306ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step306Add0A=s6Step306FrontHead.f.wires := by decide +kernel
  have gEq : s6Step306Add0B=s6Step306FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step306Add1A=s6Step306FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step306Add1B=s6Step306FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step306EntryFBefore s6Step306FrontBank 118 169 ⟨117,118,169,169⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step306FrontLog s6Step306FrontPlan
  · exact s6Step306Front_entry
  · exact s6Step306EntryBank_checked
  · exact s6Step306Front_sigma
  · rfl
  · exact s6Step306Front_branch
  · rfl
  · simpa only [s6Step306FrontPlan,pairEq] using s6Step306HeadBank_checked
  · simpa only [s6Step306FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step306F4_checked
  · exact s6Step306Counter_checked
  · rfl
  · simpa only [s6Step306FrontPlan,headEq] using s6Step306ExitBank_checked

private theorem s6Step306Complete_explicit_checked : compileHmrEarlyStepLog s6Step306EntryFBefore s6Step306FrontBank 118 169 ⟨117,118,169,169⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 56 s6Step306CompleteLog=some s6Step306CompletePlan := by
  let Q := s6Step306EarlyControlPlan
  have hq := s6Step306EarlyControl_plan_checked
  have fv1 : s6Step306CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step306CompleteOut.fv.payload[2]?.getD s6Step306CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step306CompleteOut.fv.payload[3]?.getD s6Step306CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step306CompleteOut.fv.payload[4]?.getD s6Step306CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step306EntryFBefore s6Step306EarlyControlArena s6Step306FrontBank 118 169 ⟨117,118,169,169⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 56 s6Step306CompleteLog s6Step306FrontPlan Q
    s6Step306Front_checked s6Step306Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step306Complete_owned s6Step306Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step306EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 828 s6Step306CompleteOut.fv.second (s6Step306CompleteOut.fv.payload[2]?.getD s6Step306CompleteOut.fv.sign) (s6Step306CompleteOut.fv.payload[3]?.getD s6Step306CompleteOut.fv.sign) (s6Step306CompleteOut.fv.payload[4]?.getD s6Step306CompleteOut.fv.sign) 796 56 s6Step306EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep306Arena : Arena := s6Step306EntryFBefore
def s6PrivateStep306Bank : WindowBank := s6Step306FrontBank
def s6PrivateStep306Spec : HmrSourceWalkStepLog := ⟨118,169,⟨117,118,169,169⟩,56,.early s6Step306CompleteLog⟩
def s6PrivateStep306Plan : HmrSourceStepPlan := .early s6Step306CompletePlan
theorem s6PrivateStep306_source : s6PrivateStep306Spec=s6ObservedLogs304[2] := rfl
theorem s6PrivateStep306_checked : compileHmrSourceStepLog s6PrivateStep306Arena s6PrivateStep306Bank
    s6PrivateStep306Spec.fgWidth s6PrivateStep306Spec.vWidth s6PrivateStep306Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]
    6 498 306 s6PrivateStep306Spec.need none s6PrivateStep306Spec.log=some s6PrivateStep306Plan := by
  change compileHmrSourceStepLog s6Step306EntryFBefore s6Step306FrontBank 118 169 ⟨117,118,169,169⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 6 498 306 56 none (.early s6Step306CompleteLog)=some (.early s6Step306CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 306<498)]
  rw [s6Step306Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
