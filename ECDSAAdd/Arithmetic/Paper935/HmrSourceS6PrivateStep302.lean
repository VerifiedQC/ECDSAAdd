import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep300
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

private def s6Step302CompleteMoves : List (Wire × Wire) := [(898,118)]

private def s6Step302EarlyControlLog : HmrEarlyControlLog := ⟨[898, 828, 865, 886, 869],[823],[793],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step302FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [886], [], []],[[869], [865], [828], [908]],[[], [], [], []]⟩,[857],[803],[823],[793],[830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[823, 793, 830, 805]⟩

private def s6Step302CompleteLog : HmrEarlyStepLog := ⟨s6Step302FrontLog,s6Step302CompleteMoves,s6Step302EarlyControlLog⟩

private def s6Step302ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩

private def s6Step302ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩

private def s6Step302ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩

private def s6Step302ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩

private def s6Step302FrontOut : WindowBank := ⟨s6Step302ExitFOut,s6Step302ExitGOut,s6Step302ExitFvOut,s6Step302ExitGvOut⟩

private def s6Step302CompleteOut : WindowBank := s6Step302FrontOut.repacked s6Step302CompleteMoves

private def s6Step302EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step302EarlyControlPositiveArena,[823],s6Step302EarlyControlEqualityArena,[793],⟨⟨857,false⟩,[⟨⟨823,false⟩,793⟩]⟩⟩

private def s6Step302EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,898⟩,⟨⟨772,false⟩,828⟩,⟨⟨771,false⟩,865⟩,⟨⟨770,false⟩,886⟩,⟨⟨769,false⟩,869⟩]⟩

private def s6Step302EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step302EarlyControlZeroArena,s6Step302EarlyControlZeroPlan,s6Step302EarlyControlClassPlan,s6Step302EarlyControlFlagArena,s6Step302EarlyControlFittedArena,s6Step302EarlyControlHistoryArena,s6Step302EarlyControlSigmaArena,s6Step302EarlyControlOutputArena,s6Step302EarlyControlLog⟩

private def s6Step302CounterWork : List Wire := [823, 793, 830, 805]

private theorem s6Step302Counter_bounded : s6Step302CounterWork.toFinset⊆arenaWires := by norm_num [s6Step302CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step302HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302CounterDuring : Arena := ⟨s6Step302HeadFvAfter.live∪s6Step302CounterWork.toFinset,Finset.union_subset s6Step302HeadFvAfter.bounded s6Step302Counter_bounded⟩

private def s6Step302EntryFFresh : List Wire := []

private def s6Step302EntryFvFresh : List Wire := []

private def s6Step302EntryGFresh : List Wire := [886]

private def s6Step302EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302EntryGvAfter : Arena := s6Step302EntryGAfter

private def s6Step302EntryGvFresh : List Wire := []

private def s6Step302ExitFExtra : List Wire := [865]

private def s6Step302ExitGExtra : List Wire := [118, 886, 869]

private def s6Step302ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302ExitGvExtra : List Wire := [828]

private def s6Step302Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step302Add0_bounded : s6Step302Add0Work.toFinset⊆arenaWires := by
  have h : s6Step302Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step302Add0During : Arena := ⟨s6Step302Add0Arena.live∪s6Step302Add0Work.toFinset,Finset.union_subset s6Step302Add0Arena.bounded s6Step302Add0_bounded⟩

private def s6Step302Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step302Add1_bounded : s6Step302Add1Work.toFinset⊆arenaWires := by
  have h : s6Step302Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step302Add1During : Arena := ⟨s6Step302Add1Arena.live∪s6Step302Add1Work.toFinset,Finset.union_subset s6Step302Add1Arena.bounded s6Step302Add1_bounded⟩

private def s6Step302F4FlagArena : Arena := ⟨s6Step302HeadFvAfter.live∪{823},Finset.union_subset s6Step302HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step302F4Plan : HmrHybridF4Plan := ⟨s6Step302F4FlagArena,[823],s6Step302Add0Arena,[793],s6Step302Add0During,s6Step302Add0Work,s6Step302Add1During,s6Step302Add1Work⟩

private def s6Step302HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 865],795⟩

private def s6Step302HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩

private def s6Step302HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 886, 869],777⟩

private def s6Step302HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 828],775⟩

private def s6Step302FrontHead : WindowBank := ⟨s6Step302HeadFOut,s6Step302HeadGOut,s6Step302HeadFvOut,s6Step302HeadGvOut⟩

private def s6Step302EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩

private def s6Step302EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807],776⟩

private def s6Step302EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 886],777⟩

private def s6Step302EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩

private def s6Step302FrontPair : WindowBank := ⟨s6Step302EntryFOut,s6Step302EntryGOut,s6Step302EntryFvOut,s6Step302EntryGvOut⟩

private def s6Step302FrontSigmaArena : Arena := ⟨s6Step302EntryGvAfter.live∪{857},Finset.union_subset s6Step302EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step302HeadFFresh : List Wire := [865]

private def s6Step302HeadFvFresh : List Wire := [908]

private def s6Step302HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302HeadGFresh : List Wire := [869]

private def s6Step302HeadGvFresh : List Wire := [828]

private def s6Step302FrontPlan : HmrSourceFront := ⟨s6Step302EntryGvAfter,s6Step302FrontPair,(growRow 795 s6Step302EntryFFresh ++ (growRow 777 s6Step302EntryGFresh ++ (growRow 776 s6Step302EntryFvFresh ++ (growRow 775 s6Step302EntryGvFresh ++ [])))),s6Step302FrontSigmaArena,[857],s6Step302HeadGBefore,[803],
  s6Step302HeadFvAfter,s6Step302FrontHead,(growRow 777 s6Step302HeadGFresh ++ (growRow 795 s6Step302HeadFFresh ++ (growRow 775 s6Step302HeadGvFresh ++ (growRow 776 s6Step302HeadFvFresh ++ [])))),s6Step302F4Plan,s6Step302CounterDuring,s6Step302CounterWork,s6Step302ExitGvAfter,s6Step302FrontOut,(shrinkRow 777 s6Step302ExitGExtra ++ (shrinkRow 795 s6Step302ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step302ExitGvExtra ++ []))))⟩

private def s6Step302CompletePlan : HmrEarlyStepPlan := ⟨s6Step302FrontPlan,s6Step302EarlyControlArena,s6Step302EarlyControlPlan,s6Step302CompleteMoves⟩

private theorem s6Step302Complete_apart : List.Disjoint (s6Step302CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [857, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] := by
  have nd : ((s6Step302CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[857, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step302Complete_owned : (s6Step302CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step302EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step302CompleteMoveArena : Arena := ⟨s6Step302ExitGvAfter.live∪{118},Finset.union_subset s6Step302ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step302Complete_repack : s6Step302ExitGvAfter.checkRepack s6Step302CompleteMoves=some s6Step302EarlyControlArena := by
  have owned : 898∈s6Step302ExitGvAfter.live := by norm_num [s6Step302ExitGvAfter,arenaWires]
  have reserve : s6Step302ExitGvAfter.reserve {118}=some s6Step302CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step302ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step302CompleteMoveArena.retireSet {898}=s6Step302EarlyControlArena := by
    unfold Arena.retireSet s6Step302EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step302CompleteMoveArena,s6Step302ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step302CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step302CompleteMoveArena.retireSet {898}).checkRepack []=some s6Step302EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step302EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s6Step302EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EarlyControl_branch : compileHmrBranchRetirement s6Step302EarlyControlSigmaArena 803=some s6Step302EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step302EarlyControl_branchOwned
  · ext q
    simp [s6Step302EarlyControlOutputArena,s6Step302EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step302EarlyControl_classEqualityBorrow : s6Step302EarlyControlPositiveArena.checkBorrow (([857, 823] : List Wire).length-1) s6Step302EarlyControlLog.classWork=some s6Step302EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step302EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step302EarlyControlEqualityArena,s6Step302EarlyControlPositiveArena,s6Step302EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step302EarlyControl_classEqualityOwned : ([857, 823] : List Wire).toFinset⊆s6Step302EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EarlyControl_classEquality : compileHmrEqualityLog s6Step302EarlyControlPositiveArena [857, 823] 0 s6Step302EarlyControlLog.classWork=some (s6Step302EarlyControlEqualityArena,s6Step302EarlyControlLog.classWork,s6Step302EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step302EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step302EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step302EarlyControl_classOwned : ([769, 869, 857] : List Wire).toFinset⊆s6Step302EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EarlyControl_positiveBorrow : s6Step302EarlyControlZeroArena.checkBorrow (1) s6Step302EarlyControlLog.positiveWork=some s6Step302EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step302EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step302EarlyControlPositiveArena,s6Step302EarlyControlZeroArena,s6Step302EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step302EarlyControl_class : compileHmrSourceClassLog s6Step302EarlyControlZeroArena false 769 s6Step302EarlyControlZeroPlan.top 0 857 s6Step302EarlyControlLog.positiveWork s6Step302EarlyControlLog.classWork=some s6Step302EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step302EarlyControlClassPlan s6Step302EarlyControlZeroArena false 769 s6Step302EarlyControlZeroPlan.top 0 857
  constructor
  · decide +kernel
  · exact s6Step302EarlyControl_classOwned
  · exact s6Step302EarlyControl_positiveBorrow
  · exact s6Step302EarlyControl_classEquality

private theorem s6Step302EarlyControl_entryRecordOwned : ([803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step302EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EarlyControl_entrySigmaOwned : ([857, 254] : List Wire).toFinset⊆s6Step302EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EarlyControl_fitBorrow : s6Step302EarlyControlFlagArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step302EarlyControlLog.recordFresh=some s6Step302EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step302EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step302EarlyControlFittedArena,s6Step302EarlyControlFlagArena,s6Step302EarlyControlLog,arenaWires]

private theorem s6Step302EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step302EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EarlyControl_fit : compileHmrRecordGrowLog s6Step302EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step302EarlyControlLog.recordFresh=some s6Step302EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step302EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step302EarlyControl_fitBorrow

private theorem s6Step302EarlyControl_flagsBorrow : s6Step302EarlyControlEqualityArena.checkBorrow (6) s6Step302EarlyControlLog.flagWork=some s6Step302EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step302EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step302EarlyControlFlagArena,s6Step302EarlyControlEqualityArena,s6Step302EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step302EarlyControl_flagsOwned : ([793, 253, 252, 251] : List Wire).toFinset⊆s6Step302EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EarlyControl_flags : compileHmrFlagsLog s6Step302EarlyControlClassPlan.equalityArena s6Step302EarlyControlClassPlan.equality.top 253 252 251 s6Step302EarlyControlLog.flagWork=some s6Step302EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step302EarlyControl_flagsOwned⟩
  · exact s6Step302EarlyControl_flagsBorrow

private theorem s6Step302EarlyControl_historyBorrow : s6Step302EarlyControlArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step302EarlyControlLog.recordFresh=some s6Step302EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step302EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step302EarlyControlHistoryArena,s6Step302EarlyControlArena,s6Step302EarlyControlLog,arenaWires]

private theorem s6Step302EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step302EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EarlyControl_history : compileHmrRecordGrowLog s6Step302EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step302EarlyControlLog.recordFresh=some s6Step302EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step302EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step302EarlyControl_historyBorrow

private theorem s6Step302EarlyControl_sigmaOwned : ([254, 857] : List Wire).toFinset⊆s6Step302EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EarlyControl_sigmaReleaseOwned : ([857] : List Wire).toFinset⊆s6Step302EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EarlyControl_sigmaRelease : s6Step302EarlyControlHistoryArena.release {857} (fun _ => false)=some s6Step302EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step302EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step302EarlyControlSigmaArena,s6Step302EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step302EarlyControl_sigma : compileHmrSigmaDropLog s6Step302EarlyControlHistoryArena false 0 0 254 857 []=some s6Step302EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step302EarlyControl_sigmaOwned⟩
  · exact s6Step302EarlyControl_sigmaRelease

private theorem s6Step302EarlyControl_zeroBorrow : s6Step302EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step302EarlyControlLog.zeroWork=some s6Step302EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step302EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step302EarlyControlZeroArena,s6Step302EarlyControlArena,s6Step302EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step302EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step302EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step302EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<898) ∨ (899≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EarlyControl_zero : compileHmrEqualityLog s6Step302EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step302EarlyControlLog.zeroWork=some (s6Step302EarlyControlZeroArena,s6Step302EarlyControlLog.zeroWork,s6Step302EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step302EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step302EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step302EarlyControl_logged : s6Step302EarlyControlPlan.Logged s6Step302EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 857 254 253 252 251 803 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step302EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step302EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step302EarlyControl_zero
  · exact s6Step302EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step302EarlyControl_flags
  · exact s6Step302EarlyControl_fit
  · exact s6Step302EarlyControl_history
  · exact s6Step302EarlyControl_sigma
  · exact s6Step302EarlyControl_branch

private theorem s6Step302EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step302EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 857 254 253 252 251 803 55 s6Step302EarlyControlLog=some s6Step302EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step302EarlyControlPlan s6Step302EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 857 254 253 252 251 803 55 s6Step302EarlyControl_logged

private def s6Step302EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩

private def s6Step302EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807],776⟩

private def s6Step302EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118],777⟩

private def s6Step302EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩

private def s6Step302FrontBank : WindowBank := ⟨s6Step302EntryFRow,s6Step302EntryGRow,s6Step302EntryFvRow,s6Step302EntryGvRow⟩

private def s6Step302Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 865, 795]

private def s6Step302Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 886, 869, 777]

private def s6Step302Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 776]

private def s6Step302Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 828, 775]

private theorem s6Step302Counter_apart : Disjoint s6Step302HeadFvAfter.live s6Step302CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step302HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302Counter_borrowed : s6Step302HeadFvAfter.checkBorrow 4 s6Step302CounterWork=some s6Step302CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step302HeadFvAfter s6Step302CounterDuring s6Step302CounterWork.toFinset s6Step302Counter_bounded s6Step302Counter_apart rfl

private theorem s6Step302Counter_owned : (857::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step302HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step302HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302Counter_checked : compileHmrCounterStepLog s6Step302HeadFvAfter true 857 [774, 773, 772, 771, 770, 769] s6Step302CounterWork=some s6Step302CounterDuring := by
  have owned : ∀q∈857::[774, 773, 772, 771, 770, 769],q∈s6Step302HeadFvAfter.live := fun q hq => s6Step302Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step302Counter_borrowed

private def s6Step302EntryFAfter : Arena := s6Step302EntryFBefore

private theorem s6Step302EntryBank_incomingDistinct : ([s6Step302EntryFRow,s6Step302EntryGRow,s6Step302EntryFvRow,s6Step302EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302EntryF_Incoming : rowsOwned s6Step302EntryFBefore [s6Step302EntryFRow,s6Step302EntryGRow,s6Step302EntryFvRow,s6Step302EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302EntryFRow,s6Step302EntryGRow,s6Step302EntryFvRow,s6Step302EntryGvRow] 0 s6Step302EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302EntryBank_outgoingOwned : rowsOwned s6Step302EntryGvAfter [s6Step302EntryFOut,s6Step302EntryGOut,s6Step302EntryFvOut,s6Step302EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step302EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302EntryF_Outgoing : rowsOwned s6Step302EntryGvAfter [s6Step302EntryFOut,s6Step302EntryGOut,s6Step302EntryFvOut,s6Step302EntryGvOut] :=
  hmrRows_owned_drop s6Step302EntryGvAfter [s6Step302EntryFOut,s6Step302EntryGOut,s6Step302EntryFvOut,s6Step302EntryGvOut] 0 s6Step302EntryBank_outgoingOwned

private theorem s6Step302EntryF_distinct : (s6Step302EntryFRow.sign::s6Step302EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302EntryF_owned : (s6Step302EntryFRow.sign::s6Step302EntryFRow.payload).toFinset⊆s6Step302EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EntryF_reserved : s6Step302EntryFBefore.reserve s6Step302EntryFFresh.toFinset=some s6Step302EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step302EntryFFresh,arenaWires]
  · norm_num [s6Step302EntryFBefore,s6Step302EntryFFresh,arenaWires]
  · simp only [s6Step302EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step302EntryF_checked : planRowResizeLog s6Step302EntryFBefore s6Step302EntryFRow 120 s6Step302EntryFFresh=
    some (s6Step302EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩,growRow 795 s6Step302EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step302EntryFBefore s6Step302EntryFAfter s6Step302EntryFRow 120 s6Step302EntryFFresh
    s6Step302EntryF_distinct s6Step302EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step302EntryF_reserved
  have rowEq : WindowRow.mk (s6Step302EntryFRow.payload++s6Step302EntryFFresh) s6Step302EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step302EntryFvAfter : Arena := s6Step302EntryGAfter

private def s6Step302EntryFvBefore : Arena := s6Step302EntryGAfter

private theorem s6Step302EntryFv_Incoming : rowsOwned s6Step302EntryFvBefore [s6Step302EntryFvRow,s6Step302EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302EntryFRow,s6Step302EntryGRow,s6Step302EntryFvRow,s6Step302EntryGvRow] 2 s6Step302EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302EntryFv_Outgoing : rowsOwned s6Step302EntryGvAfter [s6Step302EntryFvOut,s6Step302EntryGvOut] :=
  hmrRows_owned_drop s6Step302EntryGvAfter [s6Step302EntryFOut,s6Step302EntryGOut,s6Step302EntryFvOut,s6Step302EntryGvOut] 2 s6Step302EntryBank_outgoingOwned

private theorem s6Step302EntryFv_distinct : (s6Step302EntryFvRow.sign::s6Step302EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302EntryFv_owned : (s6Step302EntryFvRow.sign::s6Step302EntryFvRow.payload).toFinset⊆s6Step302EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EntryFv_reserved : s6Step302EntryFvBefore.reserve s6Step302EntryFvFresh.toFinset=some s6Step302EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step302EntryFvFresh,arenaWires]
  · norm_num [s6Step302EntryFvBefore,s6Step302EntryGAfter,s6Step302EntryFvFresh,arenaWires]
  · simp only [s6Step302EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step302EntryFv_checked : planRowResizeLog s6Step302EntryFvBefore s6Step302EntryFvRow 166 s6Step302EntryFvFresh=
    some (s6Step302EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807],776⟩,growRow 776 s6Step302EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step302EntryFvBefore s6Step302EntryFvAfter s6Step302EntryFvRow 166 s6Step302EntryFvFresh
    s6Step302EntryFv_distinct s6Step302EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step302EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step302EntryFvRow.payload++s6Step302EntryFvFresh) s6Step302EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step302EntryGBefore : Arena := s6Step302EntryFBefore

private theorem s6Step302EntryG_Incoming : rowsOwned s6Step302EntryGBefore [s6Step302EntryGRow,s6Step302EntryFvRow,s6Step302EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302EntryFRow,s6Step302EntryGRow,s6Step302EntryFvRow,s6Step302EntryGvRow] 1 s6Step302EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302EntryG_Outgoing : rowsOwned s6Step302EntryGvAfter [s6Step302EntryGOut,s6Step302EntryFvOut,s6Step302EntryGvOut] :=
  hmrRows_owned_drop s6Step302EntryGvAfter [s6Step302EntryFOut,s6Step302EntryGOut,s6Step302EntryFvOut,s6Step302EntryGvOut] 1 s6Step302EntryBank_outgoingOwned

private theorem s6Step302EntryG_distinct : (s6Step302EntryGRow.sign::s6Step302EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302EntryG_owned : (s6Step302EntryGRow.sign::s6Step302EntryGRow.payload).toFinset⊆s6Step302EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EntryG_reserved : s6Step302EntryGBefore.reserve s6Step302EntryGFresh.toFinset=some s6Step302EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step302EntryGFresh,arenaWires]
  · norm_num [s6Step302EntryGBefore,s6Step302EntryFBefore,s6Step302EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step302EntryGAfter,s6Step302EntryGBefore,s6Step302EntryFBefore,s6Step302EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step302EntryG_checked : planRowResizeLog s6Step302EntryGBefore s6Step302EntryGRow 120 s6Step302EntryGFresh=
    some (s6Step302EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 886],777⟩,growRow 777 s6Step302EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step302EntryGBefore s6Step302EntryGAfter s6Step302EntryGRow 120 s6Step302EntryGFresh
    s6Step302EntryG_distinct s6Step302EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step302EntryG_reserved
  have rowEq : WindowRow.mk (s6Step302EntryGRow.payload++s6Step302EntryGFresh) s6Step302EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 886],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step302EntryGvBefore : Arena := s6Step302EntryGAfter

private theorem s6Step302EntryGv_Incoming : rowsOwned s6Step302EntryGvBefore [s6Step302EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302EntryFRow,s6Step302EntryGRow,s6Step302EntryFvRow,s6Step302EntryGvRow] 3 s6Step302EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302EntryGv_Outgoing : rowsOwned s6Step302EntryGvAfter [s6Step302EntryGvOut] :=
  hmrRows_owned_drop s6Step302EntryGvAfter [s6Step302EntryFOut,s6Step302EntryGOut,s6Step302EntryFvOut,s6Step302EntryGvOut] 3 s6Step302EntryBank_outgoingOwned

private theorem s6Step302EntryGv_distinct : (s6Step302EntryGvRow.sign::s6Step302EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302EntryGv_owned : (s6Step302EntryGvRow.sign::s6Step302EntryGvRow.payload).toFinset⊆s6Step302EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302EntryGv_reserved : s6Step302EntryGvBefore.reserve s6Step302EntryGvFresh.toFinset=some s6Step302EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step302EntryGvFresh,arenaWires]
  · norm_num [s6Step302EntryGvBefore,s6Step302EntryGAfter,s6Step302EntryGvFresh,arenaWires]
  · simp only [s6Step302EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step302EntryGv_checked : planRowResizeLog s6Step302EntryGvBefore s6Step302EntryGvRow 166 s6Step302EntryGvFresh=
    some (s6Step302EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩,growRow 775 s6Step302EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step302EntryGvBefore s6Step302EntryGvAfter s6Step302EntryGvRow 166 s6Step302EntryGvFresh
    s6Step302EntryGv_distinct s6Step302EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step302EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step302EntryGvRow.payload++s6Step302EntryGvFresh) s6Step302EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step302EntryBank_rows : planWindowRowsLog s6Step302EntryFBefore [(s6Step302EntryFRow,120),(s6Step302EntryGRow,120),(s6Step302EntryFvRow,166),(s6Step302EntryGvRow,166)] [s6Step302EntryFFresh,s6Step302EntryGFresh,s6Step302EntryFvFresh,s6Step302EntryGvFresh]=
    some (s6Step302EntryGvAfter,[s6Step302EntryFOut,s6Step302EntryGOut,s6Step302EntryFvOut,s6Step302EntryGvOut],(growRow 795 s6Step302EntryFFresh ++ (growRow 777 s6Step302EntryGFresh ++ (growRow 776 s6Step302EntryFvFresh ++ (growRow 775 s6Step302EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step302EntryGvAfter [] []=some (s6Step302EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step302EntryGvBefore s6Step302EntryGvAfter s6Step302EntryGvAfter
    s6Step302EntryGvRow s6Step302EntryGvOut 166 s6Step302EntryGvFresh [] [] []
    (growRow 775 s6Step302EntryGvFresh) ([]) s6Step302EntryGv_Incoming s6Step302EntryGv_checked h4 s6Step302EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step302EntryFvBefore s6Step302EntryFvAfter s6Step302EntryGvAfter
    s6Step302EntryFvRow s6Step302EntryFvOut 166 s6Step302EntryFvFresh [(s6Step302EntryGvRow,166)] [s6Step302EntryGvFresh] [s6Step302EntryGvOut]
    (growRow 776 s6Step302EntryFvFresh) ((growRow 775 s6Step302EntryGvFresh ++ [])) s6Step302EntryFv_Incoming s6Step302EntryFv_checked h3 s6Step302EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step302EntryGBefore s6Step302EntryGAfter s6Step302EntryGvAfter
    s6Step302EntryGRow s6Step302EntryGOut 120 s6Step302EntryGFresh [(s6Step302EntryFvRow,166),(s6Step302EntryGvRow,166)] [s6Step302EntryFvFresh,s6Step302EntryGvFresh] [s6Step302EntryFvOut,s6Step302EntryGvOut]
    (growRow 777 s6Step302EntryGFresh) ((growRow 776 s6Step302EntryFvFresh ++ (growRow 775 s6Step302EntryGvFresh ++ []))) s6Step302EntryG_Incoming s6Step302EntryG_checked h2 s6Step302EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step302EntryFBefore s6Step302EntryFAfter s6Step302EntryGvAfter
    s6Step302EntryFRow s6Step302EntryFOut 120 s6Step302EntryFFresh [(s6Step302EntryGRow,120),(s6Step302EntryFvRow,166),(s6Step302EntryGvRow,166)] [s6Step302EntryGFresh,s6Step302EntryFvFresh,s6Step302EntryGvFresh] [s6Step302EntryGOut,s6Step302EntryFvOut,s6Step302EntryGvOut]
    (growRow 795 s6Step302EntryFFresh) ((growRow 777 s6Step302EntryGFresh ++ (growRow 776 s6Step302EntryFvFresh ++ (growRow 775 s6Step302EntryGvFresh ++ [])))) s6Step302EntryF_Incoming s6Step302EntryF_checked h1 s6Step302EntryF_Outgoing
  exact h0

private theorem s6Step302EntryBank_checked : compileHmrBankResizeLog .entry s6Step302EntryFBefore ⟨s6Step302EntryFRow,s6Step302EntryGRow,s6Step302EntryFvRow,s6Step302EntryGvRow⟩ ⟨120,120,166,166⟩ [s6Step302EntryFFresh,s6Step302EntryGFresh,s6Step302EntryFvFresh,s6Step302EntryGvFresh]=
    some (s6Step302EntryGvAfter,⟨s6Step302EntryFOut,s6Step302EntryGOut,s6Step302EntryFvOut,s6Step302EntryGvOut⟩,(growRow 795 s6Step302EntryFFresh ++ (growRow 777 s6Step302EntryGFresh ++ (growRow 776 s6Step302EntryFvFresh ++ (growRow 775 s6Step302EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step302EntryBank_rows]
  rfl

private def s6Step302ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302ExitFBefore : Arena := s6Step302ExitGAfter

private def s6Step302ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 865],795⟩

private def s6Step302ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩

private def s6Step302ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 886, 869],777⟩

private def s6Step302ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 828],775⟩

private theorem s6Step302ExitBank_incomingDistinct : ([s6Step302ExitGRow,s6Step302ExitFRow,s6Step302ExitFvRow,s6Step302ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302ExitF_Incoming : rowsOwned s6Step302ExitFBefore [s6Step302ExitFRow,s6Step302ExitFvRow,s6Step302ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302ExitGRow,s6Step302ExitFRow,s6Step302ExitFvRow,s6Step302ExitGvRow] 1 s6Step302ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302ExitFBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302ExitBank_outgoingOwned : rowsOwned s6Step302ExitGvAfter [s6Step302ExitGOut,s6Step302ExitFOut,s6Step302ExitFvOut,s6Step302ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step302ExitGvAfter (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302ExitF_Outgoing : rowsOwned s6Step302ExitGvAfter [s6Step302ExitFOut,s6Step302ExitFvOut,s6Step302ExitGvOut] :=
  hmrRows_owned_drop s6Step302ExitGvAfter [s6Step302ExitGOut,s6Step302ExitFOut,s6Step302ExitFvOut,s6Step302ExitGvOut] 1 s6Step302ExitBank_outgoingOwned

private theorem s6Step302ExitF_distinct : (s6Step302ExitFRow.sign::s6Step302ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302ExitF_owned : (s6Step302ExitFRow.sign::s6Step302ExitFRow.payload).toFinset⊆s6Step302ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302ExitFBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302ExitF_retired : s6Step302ExitFBefore.retireSet s6Step302ExitFExtra.toFinset=s6Step302ExitFAfter := by
  unfold Arena.retireSet s6Step302ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step302ExitFBefore,s6Step302ExitGAfter,s6Step302ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step302ExitF_checked : planRowResizeLog s6Step302ExitFBefore s6Step302ExitFRow 120 []=
    some (s6Step302ExitFAfter,s6Step302ExitFOut,shrinkRow 795 s6Step302ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step302ExitFBefore s6Step302ExitFRow 120 s6Step302ExitF_distinct s6Step302ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step302ExitFRow.payload.take 120) s6Step302ExitFRow.sign=s6Step302ExitFOut := by decide +kernel
  have hi : s6Step302ExitFRow.payload.drop 120=s6Step302ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step302ExitF_retired] at result
  exact result

private def s6Step302ExitFvAfter : Arena := s6Step302ExitFAfter

private def s6Step302ExitFvBefore : Arena := s6Step302ExitFAfter

private theorem s6Step302ExitFv_Incoming : rowsOwned s6Step302ExitFvBefore [s6Step302ExitFvRow,s6Step302ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302ExitGRow,s6Step302ExitFRow,s6Step302ExitFvRow,s6Step302ExitGvRow] 2 s6Step302ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302ExitFvBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302ExitFv_Outgoing : rowsOwned s6Step302ExitGvAfter [s6Step302ExitFvOut,s6Step302ExitGvOut] :=
  hmrRows_owned_drop s6Step302ExitGvAfter [s6Step302ExitGOut,s6Step302ExitFOut,s6Step302ExitFvOut,s6Step302ExitGvOut] 2 s6Step302ExitBank_outgoingOwned

private theorem s6Step302ExitFv_distinct : (s6Step302ExitFvRow.sign::s6Step302ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302ExitFv_owned : (s6Step302ExitFvRow.sign::s6Step302ExitFvRow.payload).toFinset⊆s6Step302ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302ExitFvBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302ExitFv_reserved : s6Step302ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step302ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step302ExitFv_checked : planRowResizeLog s6Step302ExitFvBefore s6Step302ExitFvRow 167 []=
    some (s6Step302ExitFvAfter,s6Step302ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step302ExitFvBefore s6Step302ExitFvAfter s6Step302ExitFvRow 167 []
    s6Step302ExitFv_distinct s6Step302ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step302ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step302ExitFvRow.payload++[]) s6Step302ExitFvRow.sign=s6Step302ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step302ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step302ExitG_Incoming : rowsOwned s6Step302ExitGBefore [s6Step302ExitGRow,s6Step302ExitFRow,s6Step302ExitFvRow,s6Step302ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302ExitGRow,s6Step302ExitFRow,s6Step302ExitFvRow,s6Step302ExitGvRow] 0 s6Step302ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302ExitG_Outgoing : rowsOwned s6Step302ExitGvAfter [s6Step302ExitGOut,s6Step302ExitFOut,s6Step302ExitFvOut,s6Step302ExitGvOut] :=
  hmrRows_owned_drop s6Step302ExitGvAfter [s6Step302ExitGOut,s6Step302ExitFOut,s6Step302ExitFvOut,s6Step302ExitGvOut] 0 s6Step302ExitBank_outgoingOwned

private theorem s6Step302ExitG_distinct : (s6Step302ExitGRow.sign::s6Step302ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302ExitG_owned : (s6Step302ExitGRow.sign::s6Step302ExitGRow.payload).toFinset⊆s6Step302ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302ExitG_retired : s6Step302ExitGBefore.retireSet s6Step302ExitGExtra.toFinset=s6Step302ExitGAfter := by
  unfold Arena.retireSet s6Step302ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step302ExitGBefore,s6Step302ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step302ExitG_checked : planRowResizeLog s6Step302ExitGBefore s6Step302ExitGRow 118 []=
    some (s6Step302ExitGAfter,s6Step302ExitGOut,shrinkRow 777 s6Step302ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step302ExitGBefore s6Step302ExitGRow 118 s6Step302ExitG_distinct s6Step302ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step302ExitGRow.payload.take 118) s6Step302ExitGRow.sign=s6Step302ExitGOut := by decide +kernel
  have hi : s6Step302ExitGRow.payload.drop 118=s6Step302ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step302ExitG_retired] at result
  exact result

private def s6Step302ExitGvBefore : Arena := s6Step302ExitFAfter

private theorem s6Step302ExitGv_Incoming : rowsOwned s6Step302ExitGvBefore [s6Step302ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302ExitGRow,s6Step302ExitFRow,s6Step302ExitFvRow,s6Step302ExitGvRow] 3 s6Step302ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302ExitGvBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302ExitGv_Outgoing : rowsOwned s6Step302ExitGvAfter [s6Step302ExitGvOut] :=
  hmrRows_owned_drop s6Step302ExitGvAfter [s6Step302ExitGOut,s6Step302ExitFOut,s6Step302ExitFvOut,s6Step302ExitGvOut] 3 s6Step302ExitBank_outgoingOwned

private theorem s6Step302ExitGv_distinct : (s6Step302ExitGvRow.sign::s6Step302ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302ExitGv_owned : (s6Step302ExitGvRow.sign::s6Step302ExitGvRow.payload).toFinset⊆s6Step302ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302ExitGvBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302ExitGv_retired : s6Step302ExitGvBefore.retireSet s6Step302ExitGvExtra.toFinset=s6Step302ExitGvAfter := by
  unfold Arena.retireSet s6Step302ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step302ExitGvBefore,s6Step302ExitFAfter,s6Step302ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step302ExitGv_checked : planRowResizeLog s6Step302ExitGvBefore s6Step302ExitGvRow 166 []=
    some (s6Step302ExitGvAfter,s6Step302ExitGvOut,shrinkRow 775 s6Step302ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step302ExitGvBefore s6Step302ExitGvRow 166 s6Step302ExitGv_distinct s6Step302ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step302ExitGvRow.payload.take 166) s6Step302ExitGvRow.sign=s6Step302ExitGvOut := by decide +kernel
  have hi : s6Step302ExitGvRow.payload.drop 166=s6Step302ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step302ExitGv_retired] at result
  exact result

private theorem s6Step302ExitBank_rows : planWindowRowsLog s6Step302ExitGBefore [(s6Step302ExitGRow,118),(s6Step302ExitFRow,120),(s6Step302ExitFvRow,167),(s6Step302ExitGvRow,166)] [[],[],[],[]]=
    some (s6Step302ExitGvAfter,[s6Step302ExitGOut,s6Step302ExitFOut,s6Step302ExitFvOut,s6Step302ExitGvOut],(shrinkRow 777 s6Step302ExitGExtra ++ (shrinkRow 795 s6Step302ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step302ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step302ExitGvAfter [] []=some (s6Step302ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step302ExitGvBefore s6Step302ExitGvAfter s6Step302ExitGvAfter
    s6Step302ExitGvRow s6Step302ExitGvOut 166 [] [] [] []
    (shrinkRow 775 s6Step302ExitGvExtra) ([]) s6Step302ExitGv_Incoming s6Step302ExitGv_checked h4 s6Step302ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step302ExitFvBefore s6Step302ExitFvAfter s6Step302ExitGvAfter
    s6Step302ExitFvRow s6Step302ExitFvOut 167 [] [(s6Step302ExitGvRow,166)] [[]] [s6Step302ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step302ExitGvExtra ++ [])) s6Step302ExitFv_Incoming s6Step302ExitFv_checked h3 s6Step302ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step302ExitFBefore s6Step302ExitFAfter s6Step302ExitGvAfter
    s6Step302ExitFRow s6Step302ExitFOut 120 [] [(s6Step302ExitFvRow,167),(s6Step302ExitGvRow,166)] [[],[]] [s6Step302ExitFvOut,s6Step302ExitGvOut]
    (shrinkRow 795 s6Step302ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step302ExitGvExtra ++ []))) s6Step302ExitF_Incoming s6Step302ExitF_checked h2 s6Step302ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step302ExitGBefore s6Step302ExitGAfter s6Step302ExitGvAfter
    s6Step302ExitGRow s6Step302ExitGOut 118 [] [(s6Step302ExitFRow,120),(s6Step302ExitFvRow,167),(s6Step302ExitGvRow,166)] [[],[],[]] [s6Step302ExitFOut,s6Step302ExitFvOut,s6Step302ExitGvOut]
    (shrinkRow 777 s6Step302ExitGExtra) ((shrinkRow 795 s6Step302ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step302ExitGvExtra ++ [])))) s6Step302ExitG_Incoming s6Step302ExitG_checked h1 s6Step302ExitG_Outgoing
  exact h0

private theorem s6Step302ExitBank_checked : compileHmrBankResizeLog .exit s6Step302ExitGBefore ⟨s6Step302ExitFRow,s6Step302ExitGRow,s6Step302ExitFvRow,s6Step302ExitGvRow⟩ ⟨120,118,167,166⟩ [[],[],[],[]]=
    some (s6Step302ExitGvAfter,⟨s6Step302ExitFOut,s6Step302ExitGOut,s6Step302ExitFvOut,s6Step302ExitGvOut⟩,(shrinkRow 777 s6Step302ExitGExtra ++ (shrinkRow 795 s6Step302ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step302ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step302ExitBank_rows]
  rfl

private theorem s6Step302Add0_apart : Disjoint s6Step302Add0Arena.live s6Step302Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step302Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302Add0_card : s6Step302Add0Arena.live.card=901 := by
  decide +kernel

private theorem s6Step302Add0_borrowed : s6Step302Add0Arena.checkBorrow (hmrHybridCount s6Step302Add0Arena s6Step302Add0B.length) s6Step302Add0Work=some s6Step302Add0During := by
  have len : s6Step302Add0Work.length=hmrHybridCount s6Step302Add0Arena s6Step302Add0B.length := by
    rw [hmrHybridCount,s6Step302Add0_card]
    decide +kernel
  have nd : s6Step302Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step302Add0Arena s6Step302Add0During s6Step302Add0Work.toFinset s6Step302Add0_bounded s6Step302Add0_apart rfl

private theorem s6Step302Add0_distinct : (823::803::793::(s6Step302Add0A++s6Step302Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302Add0_owned : (823::803::793::(s6Step302Add0A++s6Step302Add0B)).toFinset⊆s6Step302Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step302Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302Add0_checked : compileHmrHybridCinLog s6Step302Add0Arena 803 823 793 s6Step302Add0A s6Step302Add0B s6Step302Add0Work=some s6Step302Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step302Add0Arena s6Step302Add0During 803 823 793 s6Step302Add0A s6Step302Add0B s6Step302Add0Work
    (by decide +kernel) (by decide +kernel) s6Step302Add0_distinct
    (fun q hq => s6Step302Add0_owned (List.mem_toFinset.mpr hq)) s6Step302Add0_borrowed

private theorem s6Step302Add1_apart : Disjoint s6Step302Add1Arena.live s6Step302Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step302Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302Add1_card : s6Step302Add1Arena.live.card=901 := by
  decide +kernel

private theorem s6Step302Add1_borrowed : s6Step302Add1Arena.checkBorrow (hmrHybridCount s6Step302Add1Arena s6Step302Add1B.length) s6Step302Add1Work=some s6Step302Add1During := by
  have len : s6Step302Add1Work.length=hmrHybridCount s6Step302Add1Arena s6Step302Add1B.length := by
    rw [hmrHybridCount,s6Step302Add1_card]
    decide +kernel
  have nd : s6Step302Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step302Add1Arena s6Step302Add1During s6Step302Add1Work.toFinset s6Step302Add1_bounded s6Step302Add1_apart rfl

private theorem s6Step302Add1_distinct : (823::803::793::(s6Step302Add1A++s6Step302Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302Add1_owned : (823::803::793::(s6Step302Add1A++s6Step302Add1B)).toFinset⊆s6Step302Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step302Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302Add1_checked : compileHmrHybridCinLog s6Step302Add1Arena 803 823 793 s6Step302Add1A s6Step302Add1B s6Step302Add1Work=some s6Step302Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step302Add1Arena s6Step302Add1During 803 823 793 s6Step302Add1A s6Step302Add1B s6Step302Add1Work
    (by decide +kernel) (by decide +kernel) s6Step302Add1_distinct
    (fun q hq => s6Step302Add1_owned (List.mem_toFinset.mpr hq)) s6Step302Add1_borrowed

private theorem s6Step302F4_apart : Disjoint (s6Step302Add0A++s6Step302Add0B).toFinset (s6Step302Add1A++s6Step302Add1B).toFinset := by
  have nd : ((s6Step302Add0A++s6Step302Add0B)++(s6Step302Add1A++s6Step302Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step302F4_carry : s6Step302F4FlagArena.checkBorrow 1 [793]=some s6Step302Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step302F4FlagArena,s6Step302HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step302F4FlagArena,s6Step302HeadFvAfter,s6Step302Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step302F4_distinct : (857::803::823::793::((s6Step302Add0A++s6Step302Add1A)++(s6Step302Add0B++s6Step302Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302F4_flag : s6Step302HeadFvAfter.checkBorrow 1 [823]=some s6Step302F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step302HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step302F4_owned : (857::803::((s6Step302Add0A++s6Step302Add1A)++(s6Step302Add0B++s6Step302Add1B))).toFinset⊆s6Step302HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step302HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302F4_checked : compileHmrHybridF4Log s6Step302HeadFvAfter 857 803 s6Step302Add0A s6Step302Add0B s6Step302Add1A s6Step302Add1B [823] [793] s6Step302Add0Work s6Step302Add1Work=some s6Step302F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step302HeadFvAfter s6Step302F4FlagArena s6Step302Add0Arena s6Step302Add0During s6Step302Add1During 857 803
    s6Step302Add0A s6Step302Add0B s6Step302Add1A s6Step302Add1B [823] [793] s6Step302Add0Work s6Step302Add1Work
    (fun q hq => s6Step302F4_owned (List.mem_toFinset.mpr hq)) s6Step302F4_flag s6Step302F4_carry
    s6Step302F4_distinct s6Step302F4_apart s6Step302Add0_checked s6Step302Add1_checked

private theorem s6Step302Front_branch : s6Step302FrontSigmaArena.checkBorrow 1 [803]=some s6Step302HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step302FrontSigmaArena,s6Step302EntryGvAfter,s6Step302EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step302FrontSigmaArena,s6Step302EntryGvAfter,s6Step302EntryGAfter,s6Step302HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step302Front_entry : HmrFrontEntryValid s6Step302EntryFBefore s6Step302FrontBank 120 166 ⟨120,118,167,166⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step302FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step302EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step302EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step302FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step302Front_sigma : s6Step302EntryGvAfter.checkBorrow 1 [857]=some s6Step302FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step302EntryGvAfter,s6Step302EntryGAfter,arenaWires]
  · rfl

private def s6Step302HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302HeadFBefore : Arena := s6Step302HeadGAfter

private def s6Step302HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩

private def s6Step302HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807],776⟩

private def s6Step302HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 886],777⟩

private def s6Step302HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩

private theorem s6Step302HeadBank_incomingDistinct : ([s6Step302HeadGRow,s6Step302HeadFRow,s6Step302HeadGvRow,s6Step302HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302HeadF_Incoming : rowsOwned s6Step302HeadFBefore [s6Step302HeadFRow,s6Step302HeadGvRow,s6Step302HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302HeadGRow,s6Step302HeadFRow,s6Step302HeadGvRow,s6Step302HeadFvRow] 1 s6Step302HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302HeadBank_outgoingOwned : rowsOwned s6Step302HeadFvAfter [s6Step302HeadGOut,s6Step302HeadFOut,s6Step302HeadGvOut,s6Step302HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step302HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302HeadF_Outgoing : rowsOwned s6Step302HeadFvAfter [s6Step302HeadFOut,s6Step302HeadGvOut,s6Step302HeadFvOut] :=
  hmrRows_owned_drop s6Step302HeadFvAfter [s6Step302HeadGOut,s6Step302HeadFOut,s6Step302HeadGvOut,s6Step302HeadFvOut] 1 s6Step302HeadBank_outgoingOwned

private theorem s6Step302HeadF_distinct : (s6Step302HeadFRow.sign::s6Step302HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302HeadF_owned : (s6Step302HeadFRow.sign::s6Step302HeadFRow.payload).toFinset⊆s6Step302HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302HeadF_reserved : s6Step302HeadFBefore.reserve s6Step302HeadFFresh.toFinset=some s6Step302HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step302HeadFFresh,arenaWires]
  · norm_num [s6Step302HeadFBefore,s6Step302HeadGAfter,s6Step302HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step302HeadFAfter,s6Step302HeadFBefore,s6Step302HeadGAfter,s6Step302HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step302HeadF_checked : planRowResizeLog s6Step302HeadFBefore s6Step302HeadFRow 121 s6Step302HeadFFresh=
    some (s6Step302HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 865],795⟩,growRow 795 s6Step302HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step302HeadFBefore s6Step302HeadFAfter s6Step302HeadFRow 121 s6Step302HeadFFresh
    s6Step302HeadF_distinct s6Step302HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step302HeadF_reserved
  have rowEq : WindowRow.mk (s6Step302HeadFRow.payload++s6Step302HeadFFresh) s6Step302HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 865],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step302HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step302HeadFvBefore : Arena := s6Step302HeadGvAfter

private theorem s6Step302HeadFv_Incoming : rowsOwned s6Step302HeadFvBefore [s6Step302HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302HeadGRow,s6Step302HeadFRow,s6Step302HeadGvRow,s6Step302HeadFvRow] 3 s6Step302HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302HeadFv_Outgoing : rowsOwned s6Step302HeadFvAfter [s6Step302HeadFvOut] :=
  hmrRows_owned_drop s6Step302HeadFvAfter [s6Step302HeadGOut,s6Step302HeadFOut,s6Step302HeadGvOut,s6Step302HeadFvOut] 3 s6Step302HeadBank_outgoingOwned

private theorem s6Step302HeadFv_distinct : (s6Step302HeadFvRow.sign::s6Step302HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302HeadFv_owned : (s6Step302HeadFvRow.sign::s6Step302HeadFvRow.payload).toFinset⊆s6Step302HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302HeadFv_reserved : s6Step302HeadFvBefore.reserve s6Step302HeadFvFresh.toFinset=some s6Step302HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step302HeadFvFresh,arenaWires]
  · norm_num [s6Step302HeadFvBefore,s6Step302HeadGvAfter,s6Step302HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step302HeadFvAfter,s6Step302HeadFvBefore,s6Step302HeadGvAfter,s6Step302HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step302HeadFv_checked : planRowResizeLog s6Step302HeadFvBefore s6Step302HeadFvRow 167 s6Step302HeadFvFresh=
    some (s6Step302HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩,growRow 776 s6Step302HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step302HeadFvBefore s6Step302HeadFvAfter s6Step302HeadFvRow 167 s6Step302HeadFvFresh
    s6Step302HeadFv_distinct s6Step302HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step302HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step302HeadFvRow.payload++s6Step302HeadFvFresh) s6Step302HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step302HeadG_Incoming : rowsOwned s6Step302HeadGBefore [s6Step302HeadGRow,s6Step302HeadFRow,s6Step302HeadGvRow,s6Step302HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302HeadGRow,s6Step302HeadFRow,s6Step302HeadGvRow,s6Step302HeadFvRow] 0 s6Step302HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302HeadG_Outgoing : rowsOwned s6Step302HeadFvAfter [s6Step302HeadGOut,s6Step302HeadFOut,s6Step302HeadGvOut,s6Step302HeadFvOut] :=
  hmrRows_owned_drop s6Step302HeadFvAfter [s6Step302HeadGOut,s6Step302HeadFOut,s6Step302HeadGvOut,s6Step302HeadFvOut] 0 s6Step302HeadBank_outgoingOwned

private theorem s6Step302HeadG_distinct : (s6Step302HeadGRow.sign::s6Step302HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302HeadG_owned : (s6Step302HeadGRow.sign::s6Step302HeadGRow.payload).toFinset⊆s6Step302HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302HeadG_reserved : s6Step302HeadGBefore.reserve s6Step302HeadGFresh.toFinset=some s6Step302HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step302HeadGFresh,arenaWires]
  · norm_num [s6Step302HeadGBefore,s6Step302HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step302HeadGAfter,s6Step302HeadGBefore,s6Step302HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step302HeadG_checked : planRowResizeLog s6Step302HeadGBefore s6Step302HeadGRow 121 s6Step302HeadGFresh=
    some (s6Step302HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 886, 869],777⟩,growRow 777 s6Step302HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step302HeadGBefore s6Step302HeadGAfter s6Step302HeadGRow 121 s6Step302HeadGFresh
    s6Step302HeadG_distinct s6Step302HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step302HeadG_reserved
  have rowEq : WindowRow.mk (s6Step302HeadGRow.payload++s6Step302HeadGFresh) s6Step302HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 886, 869],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step302HeadGvBefore : Arena := s6Step302HeadFAfter

private theorem s6Step302HeadGv_Incoming : rowsOwned s6Step302HeadGvBefore [s6Step302HeadGvRow,s6Step302HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step302HeadGRow,s6Step302HeadFRow,s6Step302HeadGvRow,s6Step302HeadFvRow] 2 s6Step302HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step302HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step302HeadGv_Outgoing : rowsOwned s6Step302HeadFvAfter [s6Step302HeadGvOut,s6Step302HeadFvOut] :=
  hmrRows_owned_drop s6Step302HeadFvAfter [s6Step302HeadGOut,s6Step302HeadFOut,s6Step302HeadGvOut,s6Step302HeadFvOut] 2 s6Step302HeadBank_outgoingOwned

private theorem s6Step302HeadGv_distinct : (s6Step302HeadGvRow.sign::s6Step302HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step302HeadGv_owned : (s6Step302HeadGvRow.sign::s6Step302HeadGvRow.payload).toFinset⊆s6Step302HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step302HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step302HeadGv_reserved : s6Step302HeadGvBefore.reserve s6Step302HeadGvFresh.toFinset=some s6Step302HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step302HeadGvFresh,arenaWires]
  · norm_num [s6Step302HeadGvBefore,s6Step302HeadFAfter,s6Step302HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step302HeadGvAfter,s6Step302HeadGvBefore,s6Step302HeadFAfter,s6Step302HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step302HeadGv_checked : planRowResizeLog s6Step302HeadGvBefore s6Step302HeadGvRow 167 s6Step302HeadGvFresh=
    some (s6Step302HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 828],775⟩,growRow 775 s6Step302HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step302HeadGvBefore s6Step302HeadGvAfter s6Step302HeadGvRow 167 s6Step302HeadGvFresh
    s6Step302HeadGv_distinct s6Step302HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step302HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step302HeadGvRow.payload++s6Step302HeadGvFresh) s6Step302HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 828],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step302HeadBank_rows : planWindowRowsLog s6Step302HeadGBefore [(s6Step302HeadGRow,121),(s6Step302HeadFRow,121),(s6Step302HeadGvRow,167),(s6Step302HeadFvRow,167)] [s6Step302HeadGFresh,s6Step302HeadFFresh,s6Step302HeadGvFresh,s6Step302HeadFvFresh]=
    some (s6Step302HeadFvAfter,[s6Step302HeadGOut,s6Step302HeadFOut,s6Step302HeadGvOut,s6Step302HeadFvOut],(growRow 777 s6Step302HeadGFresh ++ (growRow 795 s6Step302HeadFFresh ++ (growRow 775 s6Step302HeadGvFresh ++ (growRow 776 s6Step302HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step302HeadFvAfter [] []=some (s6Step302HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step302HeadFvBefore s6Step302HeadFvAfter s6Step302HeadFvAfter
    s6Step302HeadFvRow s6Step302HeadFvOut 167 s6Step302HeadFvFresh [] [] []
    (growRow 776 s6Step302HeadFvFresh) ([]) s6Step302HeadFv_Incoming s6Step302HeadFv_checked h4 s6Step302HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step302HeadGvBefore s6Step302HeadGvAfter s6Step302HeadFvAfter
    s6Step302HeadGvRow s6Step302HeadGvOut 167 s6Step302HeadGvFresh [(s6Step302HeadFvRow,167)] [s6Step302HeadFvFresh] [s6Step302HeadFvOut]
    (growRow 775 s6Step302HeadGvFresh) ((growRow 776 s6Step302HeadFvFresh ++ [])) s6Step302HeadGv_Incoming s6Step302HeadGv_checked h3 s6Step302HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step302HeadFBefore s6Step302HeadFAfter s6Step302HeadFvAfter
    s6Step302HeadFRow s6Step302HeadFOut 121 s6Step302HeadFFresh [(s6Step302HeadGvRow,167),(s6Step302HeadFvRow,167)] [s6Step302HeadGvFresh,s6Step302HeadFvFresh] [s6Step302HeadGvOut,s6Step302HeadFvOut]
    (growRow 795 s6Step302HeadFFresh) ((growRow 775 s6Step302HeadGvFresh ++ (growRow 776 s6Step302HeadFvFresh ++ []))) s6Step302HeadF_Incoming s6Step302HeadF_checked h2 s6Step302HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step302HeadGBefore s6Step302HeadGAfter s6Step302HeadFvAfter
    s6Step302HeadGRow s6Step302HeadGOut 121 s6Step302HeadGFresh [(s6Step302HeadFRow,121),(s6Step302HeadGvRow,167),(s6Step302HeadFvRow,167)] [s6Step302HeadFFresh,s6Step302HeadGvFresh,s6Step302HeadFvFresh] [s6Step302HeadFOut,s6Step302HeadGvOut,s6Step302HeadFvOut]
    (growRow 777 s6Step302HeadGFresh) ((growRow 795 s6Step302HeadFFresh ++ (growRow 775 s6Step302HeadGvFresh ++ (growRow 776 s6Step302HeadFvFresh ++ [])))) s6Step302HeadG_Incoming s6Step302HeadG_checked h1 s6Step302HeadG_Outgoing
  exact h0

private theorem s6Step302HeadBank_checked : compileHmrBankResizeLog .headroom s6Step302HeadGBefore ⟨s6Step302HeadFRow,s6Step302HeadGRow,s6Step302HeadFvRow,s6Step302HeadGvRow⟩ ⟨121,121,167,167⟩ [s6Step302HeadGFresh,s6Step302HeadFFresh,s6Step302HeadGvFresh,s6Step302HeadFvFresh]=
    some (s6Step302HeadFvAfter,⟨s6Step302HeadFOut,s6Step302HeadGOut,s6Step302HeadFvOut,s6Step302HeadGvOut⟩,(growRow 777 s6Step302HeadGFresh ++ (growRow 795 s6Step302HeadFFresh ++ (growRow 775 s6Step302HeadGvFresh ++ (growRow 776 s6Step302HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step302HeadBank_rows]
  rfl

private theorem s6Step302Front_checked : compileHmrSourceFrontLog s6Step302EntryFBefore s6Step302FrontBank 120 166 ⟨120,118,167,166⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step302FrontLog=some s6Step302FrontPlan := by
  have pairEq : s6Step302FrontPair=⟨s6Step302HeadFRow,s6Step302HeadGRow,s6Step302HeadFvRow,s6Step302HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step302FrontHead=⟨s6Step302ExitFRow,s6Step302ExitGRow,s6Step302ExitFvRow,s6Step302ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step302Add0A=s6Step302FrontHead.f.wires := by decide +kernel
  have gEq : s6Step302Add0B=s6Step302FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step302Add1A=s6Step302FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step302Add1B=s6Step302FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step302EntryFBefore s6Step302FrontBank 120 166 ⟨120,118,167,166⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step302FrontLog s6Step302FrontPlan
  · exact s6Step302Front_entry
  · exact s6Step302EntryBank_checked
  · exact s6Step302Front_sigma
  · rfl
  · exact s6Step302Front_branch
  · rfl
  · simpa only [s6Step302FrontPlan,pairEq] using s6Step302HeadBank_checked
  · simpa only [s6Step302FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step302F4_checked
  · exact s6Step302Counter_checked
  · rfl
  · simpa only [s6Step302FrontPlan,headEq] using s6Step302ExitBank_checked

private theorem s6Step302Complete_explicit_checked : compileHmrEarlyStepLog s6Step302EntryFBefore s6Step302FrontBank 120 166 ⟨120,118,167,166⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step302CompleteLog=some s6Step302CompletePlan := by
  let Q := s6Step302EarlyControlPlan
  have hq := s6Step302EarlyControl_plan_checked
  have fv1 : s6Step302CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step302CompleteOut.fv.payload[2]?.getD s6Step302CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step302CompleteOut.fv.payload[3]?.getD s6Step302CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step302CompleteOut.fv.payload[4]?.getD s6Step302CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step302EntryFBefore s6Step302EarlyControlArena s6Step302FrontBank 120 166 ⟨120,118,167,166⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step302CompleteLog s6Step302FrontPlan Q
    s6Step302Front_checked s6Step302Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step302Complete_owned s6Step302Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step302EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 857 s6Step302CompleteOut.fv.second (s6Step302CompleteOut.fv.payload[2]?.getD s6Step302CompleteOut.fv.sign) (s6Step302CompleteOut.fv.payload[3]?.getD s6Step302CompleteOut.fv.sign) (s6Step302CompleteOut.fv.payload[4]?.getD s6Step302CompleteOut.fv.sign) 803 55 s6Step302EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep302Arena : Arena := s6Step302EntryFBefore
def s6PrivateStep302Bank : WindowBank := s6Step302FrontBank
def s6PrivateStep302Spec : HmrSourceWalkStepLog := ⟨120,166,⟨120,118,167,166⟩,55,.early s6Step302CompleteLog⟩
def s6PrivateStep302Plan : HmrSourceStepPlan := .early s6Step302CompletePlan
theorem s6PrivateStep302_source : s6PrivateStep302Spec=s6ObservedLogs288[14] := rfl
theorem s6PrivateStep302_checked : compileHmrSourceStepLog s6PrivateStep302Arena s6PrivateStep302Bank
    s6PrivateStep302Spec.fgWidth s6PrivateStep302Spec.vWidth s6PrivateStep302Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]
    6 498 302 s6PrivateStep302Spec.need none s6PrivateStep302Spec.log=some s6PrivateStep302Plan := by
  change compileHmrSourceStepLog s6Step302EntryFBefore s6Step302FrontBank 120 166 ⟨120,118,167,166⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 6 498 302 55 none (.early s6Step302CompleteLog)=some (.early s6Step302CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 302<498)]
  rw [s6Step302Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
