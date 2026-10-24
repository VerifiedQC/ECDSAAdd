import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep299
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

private def s6Step301CompleteMoves : List (Wire × Wire) := [(869,119),(803,376)]

private def s6Step301EarlyControlLog : HmrEarlyControlLog := ⟨[803, 869, 865, 828, 908],[823],[793],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step301FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [823], [], [922]],[[793], [908], [865], [828]],[[], [], [], []]⟩,[857],[886],[830],[805],[817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step301CompleteLog : HmrEarlyStepLog := ⟨s6Step301FrontLog,s6Step301CompleteMoves,s6Step301EarlyControlLog⟩

private def s6Step301ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375],795⟩

private def s6Step301ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807],776⟩

private def s6Step301ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118],777⟩

private def s6Step301ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩

private def s6Step301FrontOut : WindowBank := ⟨s6Step301ExitFOut,s6Step301ExitGOut,s6Step301ExitFvOut,s6Step301ExitGvOut⟩

private def s6Step301CompleteOut : WindowBank := s6Step301FrontOut.repacked s6Step301CompleteMoves

private def s6Step301EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step301EarlyControlPositiveArena,[823],s6Step301EarlyControlEqualityArena,[793],⟨⟨857,false⟩,[⟨⟨823,false⟩,793⟩]⟩⟩

private def s6Step301EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,803⟩,⟨⟨772,false⟩,869⟩,⟨⟨771,false⟩,865⟩,⟨⟨770,false⟩,828⟩,⟨⟨769,false⟩,908⟩]⟩

private def s6Step301EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step301EarlyControlZeroArena,s6Step301EarlyControlZeroPlan,s6Step301EarlyControlClassPlan,s6Step301EarlyControlFlagArena,s6Step301EarlyControlFittedArena,s6Step301EarlyControlHistoryArena,s6Step301EarlyControlSigmaArena,s6Step301EarlyControlOutputArena,s6Step301EarlyControlLog⟩

private def s6Step301CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step301Counter_bounded : s6Step301CounterWork.toFinset⊆arenaWires := by norm_num [s6Step301CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step301HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301CounterDuring : Arena := ⟨s6Step301HeadFvAfter.live∪s6Step301CounterWork.toFinset,Finset.union_subset s6Step301HeadFvAfter.bounded s6Step301Counter_bounded⟩

private def s6Step301EntryFFresh : List Wire := []

private def s6Step301EntryFvFresh : List Wire := []

private def s6Step301EntryGFresh : List Wire := [823]

private def s6Step301EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EntryGvFresh : List Wire := [922]

private def s6Step301ExitFExtra : List Wire := [376, 908]

private def s6Step301ExitFvExtra : List Wire := [828]

private def s6Step301ExitGExtra : List Wire := [119, 823, 793]

private def s6Step301ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<376) ∨ (377≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301ExitGvExtra : List Wire := [865]

private def s6Step301Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301Add0Work : List Wire := [817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step301Add0_bounded : s6Step301Add0Work.toFinset⊆arenaWires := by
  have h : s6Step301Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step301Add0During : Arena := ⟨s6Step301Add0Arena.live∪s6Step301Add0Work.toFinset,Finset.union_subset s6Step301Add0Arena.bounded s6Step301Add0_bounded⟩

private def s6Step301Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301Add1Work : List Wire := [817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step301Add1_bounded : s6Step301Add1Work.toFinset⊆arenaWires := by
  have h : s6Step301Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step301Add1During : Arena := ⟨s6Step301Add1Arena.live∪s6Step301Add1Work.toFinset,Finset.union_subset s6Step301Add1Arena.bounded s6Step301Add1_bounded⟩

private def s6Step301F4FlagArena : Arena := ⟨s6Step301HeadFvAfter.live∪{830},Finset.union_subset s6Step301HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step301F4Plan : HmrHybridF4Plan := ⟨s6Step301F4FlagArena,[830],s6Step301Add0Arena,[805],s6Step301Add0During,s6Step301Add0Work,s6Step301Add1During,s6Step301Add1Work⟩

private def s6Step301HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 908],795⟩

private def s6Step301HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 828],776⟩

private def s6Step301HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 823, 793],777⟩

private def s6Step301HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 865],775⟩

private def s6Step301FrontHead : WindowBank := ⟨s6Step301HeadFOut,s6Step301HeadGOut,s6Step301HeadFvOut,s6Step301HeadGvOut⟩

private def s6Step301EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376],795⟩

private def s6Step301EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807],776⟩

private def s6Step301EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 823],777⟩

private def s6Step301EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩

private def s6Step301FrontPair : WindowBank := ⟨s6Step301EntryFOut,s6Step301EntryGOut,s6Step301EntryFvOut,s6Step301EntryGvOut⟩

private def s6Step301FrontSigmaArena : Arena := ⟨s6Step301EntryGvAfter.live∪{857},Finset.union_subset s6Step301EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step301HeadFFresh : List Wire := [908]

private def s6Step301HeadFvFresh : List Wire := [828]

private def s6Step301HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301HeadGFresh : List Wire := [793]

private def s6Step301HeadGvFresh : List Wire := [865]

private def s6Step301FrontPlan : HmrSourceFront := ⟨s6Step301EntryGvAfter,s6Step301FrontPair,(growRow 795 s6Step301EntryFFresh ++ (growRow 777 s6Step301EntryGFresh ++ (growRow 776 s6Step301EntryFvFresh ++ (growRow 775 s6Step301EntryGvFresh ++ [])))),s6Step301FrontSigmaArena,[857],s6Step301HeadGBefore,[886],
  s6Step301HeadFvAfter,s6Step301FrontHead,(growRow 777 s6Step301HeadGFresh ++ (growRow 795 s6Step301HeadFFresh ++ (growRow 775 s6Step301HeadGvFresh ++ (growRow 776 s6Step301HeadFvFresh ++ [])))),s6Step301F4Plan,s6Step301CounterDuring,s6Step301CounterWork,s6Step301ExitGvAfter,s6Step301FrontOut,(shrinkRow 777 s6Step301ExitGExtra ++ (shrinkRow 795 s6Step301ExitFExtra ++ (shrinkRow 776 s6Step301ExitFvExtra ++ (shrinkRow 775 s6Step301ExitGvExtra ++ []))))⟩

private def s6Step301CompletePlan : HmrEarlyStepPlan := ⟨s6Step301FrontPlan,s6Step301EarlyControlArena,s6Step301EarlyControlPlan,s6Step301CompleteMoves⟩

private theorem s6Step301Complete_apart : List.Disjoint (s6Step301CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [857, 886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] := by
  have nd : ((s6Step301CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[857, 886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step301Complete_owned : (s6Step301CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step301EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step301CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,376),(377,782),(783,790),(791,792),(794,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,865),(866,869),(870,896),(897,906),(907,908),(909,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step301CompleteRelocationMove0Borrowed : Arena := ⟨s6Step301ExitGvAfter.live∪{119},Finset.union_subset s6Step301ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step301CompleteRelocationMove1Borrowed : Arena := ⟨s6Step301CompleteRelocationMove0After.live∪{376},Finset.union_subset s6Step301CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step301CompleteRelocation_move0_owned : 869∈s6Step301ExitGvAfter.live := by norm_num [s6Step301ExitGvAfter,arenaWires]

private theorem s6Step301CompleteRelocation_move0_reserve : s6Step301ExitGvAfter.reserve {119}=some s6Step301CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step301ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step301CompleteRelocation_move0_retire : s6Step301CompleteRelocationMove0Borrowed.retireSet {869}=s6Step301CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step301CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step301CompleteRelocationMove0Borrowed,s6Step301ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step301CompleteRelocation_move1_owned : 803∈s6Step301CompleteRelocationMove0After.live := by norm_num [s6Step301CompleteRelocationMove0After,arenaWires]

private theorem s6Step301CompleteRelocation_move1_reserve : s6Step301CompleteRelocationMove0After.reserve {376}=some s6Step301CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step301CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step301CompleteRelocation_move1_retire : s6Step301CompleteRelocationMove1Borrowed.retireSet {803}=s6Step301EarlyControlArena := by
  unfold Arena.retireSet s6Step301EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step301CompleteRelocationMove1Borrowed,s6Step301CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step301CompleteRelocation_checked : s6Step301ExitGvAfter.checkRepack [(869,119),(803,376)]=some s6Step301EarlyControlArena := by
  have tail2 : s6Step301EarlyControlArena.checkRepack []=some s6Step301EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step301CompleteRelocationMove0After s6Step301CompleteRelocationMove1Borrowed s6Step301EarlyControlArena s6Step301EarlyControlArena 803 376 []
    s6Step301CompleteRelocation_move1_owned s6Step301CompleteRelocation_move1_reserve s6Step301CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step301ExitGvAfter s6Step301CompleteRelocationMove0Borrowed s6Step301CompleteRelocationMove0After s6Step301EarlyControlArena 869 119 [(803,376)]
    s6Step301CompleteRelocation_move0_owned s6Step301CompleteRelocation_move0_reserve s6Step301CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step301Complete_repack : s6Step301ExitGvAfter.checkRepack s6Step301CompleteMoves=some s6Step301EarlyControlArena := by
  simpa only [s6Step301CompleteMoves] using s6Step301CompleteRelocation_checked

private theorem s6Step301EarlyControl_branchOwned : ([886] : List Wire).toFinset⊆s6Step301EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EarlyControl_branch : compileHmrBranchRetirement s6Step301EarlyControlSigmaArena 886=some s6Step301EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step301EarlyControl_branchOwned
  · ext q
    simp [s6Step301EarlyControlOutputArena,s6Step301EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step301EarlyControl_classEqualityBorrow : s6Step301EarlyControlPositiveArena.checkBorrow (([857, 823] : List Wire).length-1) s6Step301EarlyControlLog.classWork=some s6Step301EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step301EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step301EarlyControlEqualityArena,s6Step301EarlyControlPositiveArena,s6Step301EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step301EarlyControl_classEqualityOwned : ([857, 823] : List Wire).toFinset⊆s6Step301EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EarlyControl_classEquality : compileHmrEqualityLog s6Step301EarlyControlPositiveArena [857, 823] 0 s6Step301EarlyControlLog.classWork=some (s6Step301EarlyControlEqualityArena,s6Step301EarlyControlLog.classWork,s6Step301EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step301EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step301EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step301EarlyControl_classOwned : ([769, 908, 857] : List Wire).toFinset⊆s6Step301EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EarlyControl_positiveBorrow : s6Step301EarlyControlZeroArena.checkBorrow (1) s6Step301EarlyControlLog.positiveWork=some s6Step301EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step301EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step301EarlyControlPositiveArena,s6Step301EarlyControlZeroArena,s6Step301EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step301EarlyControl_class : compileHmrSourceClassLog s6Step301EarlyControlZeroArena false 769 s6Step301EarlyControlZeroPlan.top 0 857 s6Step301EarlyControlLog.positiveWork s6Step301EarlyControlLog.classWork=some s6Step301EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step301EarlyControlClassPlan s6Step301EarlyControlZeroArena false 769 s6Step301EarlyControlZeroPlan.top 0 857
  constructor
  · decide +kernel
  · exact s6Step301EarlyControl_classOwned
  · exact s6Step301EarlyControl_positiveBorrow
  · exact s6Step301EarlyControl_classEquality

private theorem s6Step301EarlyControl_entryRecordOwned : ([886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step301EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EarlyControl_entrySigmaOwned : ([857, 254] : List Wire).toFinset⊆s6Step301EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EarlyControl_fitBorrow : s6Step301EarlyControlFlagArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step301EarlyControlLog.recordFresh=some s6Step301EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step301EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step301EarlyControlFittedArena,s6Step301EarlyControlFlagArena,s6Step301EarlyControlLog,arenaWires]

private theorem s6Step301EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step301EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EarlyControl_fit : compileHmrRecordGrowLog s6Step301EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step301EarlyControlLog.recordFresh=some s6Step301EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step301EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step301EarlyControl_fitBorrow

private theorem s6Step301EarlyControl_flagsBorrow : s6Step301EarlyControlEqualityArena.checkBorrow (6) s6Step301EarlyControlLog.flagWork=some s6Step301EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step301EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step301EarlyControlFlagArena,s6Step301EarlyControlEqualityArena,s6Step301EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step301EarlyControl_flagsOwned : ([793, 253, 252, 251] : List Wire).toFinset⊆s6Step301EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EarlyControl_flags : compileHmrFlagsLog s6Step301EarlyControlClassPlan.equalityArena s6Step301EarlyControlClassPlan.equality.top 253 252 251 s6Step301EarlyControlLog.flagWork=some s6Step301EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step301EarlyControl_flagsOwned⟩
  · exact s6Step301EarlyControl_flagsBorrow

private theorem s6Step301EarlyControl_historyBorrow : s6Step301EarlyControlArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step301EarlyControlLog.recordFresh=some s6Step301EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step301EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step301EarlyControlHistoryArena,s6Step301EarlyControlArena,s6Step301EarlyControlLog,arenaWires]

private theorem s6Step301EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step301EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EarlyControl_history : compileHmrRecordGrowLog s6Step301EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step301EarlyControlLog.recordFresh=some s6Step301EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step301EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step301EarlyControl_historyBorrow

private theorem s6Step301EarlyControl_sigmaOwned : ([254, 857] : List Wire).toFinset⊆s6Step301EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EarlyControl_sigmaReleaseOwned : ([857] : List Wire).toFinset⊆s6Step301EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EarlyControl_sigmaRelease : s6Step301EarlyControlHistoryArena.release {857} (fun _ => false)=some s6Step301EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step301EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step301EarlyControlSigmaArena,s6Step301EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step301EarlyControl_sigma : compileHmrSigmaDropLog s6Step301EarlyControlHistoryArena false 0 0 254 857 []=some s6Step301EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step301EarlyControl_sigmaOwned⟩
  · exact s6Step301EarlyControl_sigmaRelease

private theorem s6Step301EarlyControl_zeroBorrow : s6Step301EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step301EarlyControlLog.zeroWork=some s6Step301EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step301EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step301EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step301EarlyControlZeroArena,s6Step301EarlyControlArena,s6Step301EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step301EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step301EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step301EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EarlyControl_zero : compileHmrEqualityLog s6Step301EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step301EarlyControlLog.zeroWork=some (s6Step301EarlyControlZeroArena,s6Step301EarlyControlLog.zeroWork,s6Step301EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step301EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step301EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step301EarlyControl_logged : s6Step301EarlyControlPlan.Logged s6Step301EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 857 254 253 252 251 886 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step301EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step301EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step301EarlyControl_zero
  · exact s6Step301EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step301EarlyControl_flags
  · exact s6Step301EarlyControl_fit
  · exact s6Step301EarlyControl_history
  · exact s6Step301EarlyControl_sigma
  · exact s6Step301EarlyControl_branch

private theorem s6Step301EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step301EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 857 254 253 252 251 886 55 s6Step301EarlyControlLog=some s6Step301EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step301EarlyControlPlan s6Step301EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 857 254 253 252 251 886 55 s6Step301EarlyControl_logged

private def s6Step301EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376],795⟩

private def s6Step301EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807],776⟩

private def s6Step301EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119],777⟩

private def s6Step301EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887],775⟩

private def s6Step301FrontBank : WindowBank := ⟨s6Step301EntryFRow,s6Step301EntryGRow,s6Step301EntryFvRow,s6Step301EntryGvRow⟩

private def s6Step301Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 908, 795]

private def s6Step301Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 823, 793, 777]

private def s6Step301Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 828, 776]

private def s6Step301Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 865, 775]

private theorem s6Step301Counter_apart : Disjoint s6Step301HeadFvAfter.live s6Step301CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step301HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301Counter_borrowed : s6Step301HeadFvAfter.checkBorrow 4 s6Step301CounterWork=some s6Step301CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step301HeadFvAfter s6Step301CounterDuring s6Step301CounterWork.toFinset s6Step301Counter_bounded s6Step301Counter_apart rfl

private theorem s6Step301Counter_owned : (857::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step301HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step301HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301Counter_checked : compileHmrCounterStepLog s6Step301HeadFvAfter true 857 [774, 773, 772, 771, 770, 769] s6Step301CounterWork=some s6Step301CounterDuring := by
  have owned : ∀q∈857::[774, 773, 772, 771, 770, 769],q∈s6Step301HeadFvAfter.live := fun q hq => s6Step301Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step301Counter_borrowed

private def s6Step301EntryFAfter : Arena := s6Step301EntryFBefore

private theorem s6Step301EntryBank_incomingDistinct : ([s6Step301EntryFRow,s6Step301EntryGRow,s6Step301EntryFvRow,s6Step301EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301EntryF_Incoming : rowsOwned s6Step301EntryFBefore [s6Step301EntryFRow,s6Step301EntryGRow,s6Step301EntryFvRow,s6Step301EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301EntryFRow,s6Step301EntryGRow,s6Step301EntryFvRow,s6Step301EntryGvRow] 0 s6Step301EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301EntryBank_outgoingOwned : rowsOwned s6Step301EntryGvAfter [s6Step301EntryFOut,s6Step301EntryGOut,s6Step301EntryFvOut,s6Step301EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step301EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301EntryF_Outgoing : rowsOwned s6Step301EntryGvAfter [s6Step301EntryFOut,s6Step301EntryGOut,s6Step301EntryFvOut,s6Step301EntryGvOut] :=
  hmrRows_owned_drop s6Step301EntryGvAfter [s6Step301EntryFOut,s6Step301EntryGOut,s6Step301EntryFvOut,s6Step301EntryGvOut] 0 s6Step301EntryBank_outgoingOwned

private theorem s6Step301EntryF_distinct : (s6Step301EntryFRow.sign::s6Step301EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301EntryF_owned : (s6Step301EntryFRow.sign::s6Step301EntryFRow.payload).toFinset⊆s6Step301EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EntryF_reserved : s6Step301EntryFBefore.reserve s6Step301EntryFFresh.toFinset=some s6Step301EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step301EntryFFresh,arenaWires]
  · norm_num [s6Step301EntryFBefore,s6Step301EntryFFresh,arenaWires]
  · simp only [s6Step301EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step301EntryF_checked : planRowResizeLog s6Step301EntryFBefore s6Step301EntryFRow 121 s6Step301EntryFFresh=
    some (s6Step301EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376],795⟩,growRow 795 s6Step301EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step301EntryFBefore s6Step301EntryFAfter s6Step301EntryFRow 121 s6Step301EntryFFresh
    s6Step301EntryF_distinct s6Step301EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step301EntryF_reserved
  have rowEq : WindowRow.mk (s6Step301EntryFRow.payload++s6Step301EntryFFresh) s6Step301EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step301EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301EntryFvAfter : Arena := s6Step301EntryGAfter

private def s6Step301EntryFvBefore : Arena := s6Step301EntryGAfter

private theorem s6Step301EntryFv_Incoming : rowsOwned s6Step301EntryFvBefore [s6Step301EntryFvRow,s6Step301EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301EntryFRow,s6Step301EntryGRow,s6Step301EntryFvRow,s6Step301EntryGvRow] 2 s6Step301EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301EntryFv_Outgoing : rowsOwned s6Step301EntryGvAfter [s6Step301EntryFvOut,s6Step301EntryGvOut] :=
  hmrRows_owned_drop s6Step301EntryGvAfter [s6Step301EntryFOut,s6Step301EntryGOut,s6Step301EntryFvOut,s6Step301EntryGvOut] 2 s6Step301EntryBank_outgoingOwned

private theorem s6Step301EntryFv_distinct : (s6Step301EntryFvRow.sign::s6Step301EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301EntryFv_owned : (s6Step301EntryFvRow.sign::s6Step301EntryFvRow.payload).toFinset⊆s6Step301EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EntryFv_reserved : s6Step301EntryFvBefore.reserve s6Step301EntryFvFresh.toFinset=some s6Step301EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step301EntryFvFresh,arenaWires]
  · norm_num [s6Step301EntryFvBefore,s6Step301EntryGAfter,s6Step301EntryFvFresh,arenaWires]
  · simp only [s6Step301EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step301EntryFv_checked : planRowResizeLog s6Step301EntryFvBefore s6Step301EntryFvRow 166 s6Step301EntryFvFresh=
    some (s6Step301EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807],776⟩,growRow 776 s6Step301EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step301EntryFvBefore s6Step301EntryFvAfter s6Step301EntryFvRow 166 s6Step301EntryFvFresh
    s6Step301EntryFv_distinct s6Step301EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step301EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step301EntryFvRow.payload++s6Step301EntryFvFresh) s6Step301EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step301EntryGBefore : Arena := s6Step301EntryFBefore

private theorem s6Step301EntryG_Incoming : rowsOwned s6Step301EntryGBefore [s6Step301EntryGRow,s6Step301EntryFvRow,s6Step301EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301EntryFRow,s6Step301EntryGRow,s6Step301EntryFvRow,s6Step301EntryGvRow] 1 s6Step301EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301EntryG_Outgoing : rowsOwned s6Step301EntryGvAfter [s6Step301EntryGOut,s6Step301EntryFvOut,s6Step301EntryGvOut] :=
  hmrRows_owned_drop s6Step301EntryGvAfter [s6Step301EntryFOut,s6Step301EntryGOut,s6Step301EntryFvOut,s6Step301EntryGvOut] 1 s6Step301EntryBank_outgoingOwned

private theorem s6Step301EntryG_distinct : (s6Step301EntryGRow.sign::s6Step301EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301EntryG_owned : (s6Step301EntryGRow.sign::s6Step301EntryGRow.payload).toFinset⊆s6Step301EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EntryG_reserved : s6Step301EntryGBefore.reserve s6Step301EntryGFresh.toFinset=some s6Step301EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step301EntryGFresh,arenaWires]
  · norm_num [s6Step301EntryGBefore,s6Step301EntryFBefore,s6Step301EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step301EntryGAfter,s6Step301EntryGBefore,s6Step301EntryFBefore,s6Step301EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step301EntryG_checked : planRowResizeLog s6Step301EntryGBefore s6Step301EntryGRow 121 s6Step301EntryGFresh=
    some (s6Step301EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 823],777⟩,growRow 777 s6Step301EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step301EntryGBefore s6Step301EntryGAfter s6Step301EntryGRow 121 s6Step301EntryGFresh
    s6Step301EntryG_distinct s6Step301EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step301EntryG_reserved
  have rowEq : WindowRow.mk (s6Step301EntryGRow.payload++s6Step301EntryGFresh) s6Step301EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 823],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step301EntryGvBefore : Arena := s6Step301EntryGAfter

private theorem s6Step301EntryGv_Incoming : rowsOwned s6Step301EntryGvBefore [s6Step301EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301EntryFRow,s6Step301EntryGRow,s6Step301EntryFvRow,s6Step301EntryGvRow] 3 s6Step301EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301EntryGv_Outgoing : rowsOwned s6Step301EntryGvAfter [s6Step301EntryGvOut] :=
  hmrRows_owned_drop s6Step301EntryGvAfter [s6Step301EntryFOut,s6Step301EntryGOut,s6Step301EntryFvOut,s6Step301EntryGvOut] 3 s6Step301EntryBank_outgoingOwned

private theorem s6Step301EntryGv_distinct : (s6Step301EntryGvRow.sign::s6Step301EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301EntryGv_owned : (s6Step301EntryGvRow.sign::s6Step301EntryGvRow.payload).toFinset⊆s6Step301EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301EntryGv_reserved : s6Step301EntryGvBefore.reserve s6Step301EntryGvFresh.toFinset=some s6Step301EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step301EntryGvFresh,arenaWires]
  · norm_num [s6Step301EntryGvBefore,s6Step301EntryGAfter,s6Step301EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step301EntryGvAfter,s6Step301EntryGvBefore,s6Step301EntryGAfter,s6Step301EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step301EntryGv_checked : planRowResizeLog s6Step301EntryGvBefore s6Step301EntryGvRow 166 s6Step301EntryGvFresh=
    some (s6Step301EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩,growRow 775 s6Step301EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step301EntryGvBefore s6Step301EntryGvAfter s6Step301EntryGvRow 166 s6Step301EntryGvFresh
    s6Step301EntryGv_distinct s6Step301EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step301EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step301EntryGvRow.payload++s6Step301EntryGvFresh) s6Step301EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step301EntryBank_rows : planWindowRowsLog s6Step301EntryFBefore [(s6Step301EntryFRow,121),(s6Step301EntryGRow,121),(s6Step301EntryFvRow,166),(s6Step301EntryGvRow,166)] [s6Step301EntryFFresh,s6Step301EntryGFresh,s6Step301EntryFvFresh,s6Step301EntryGvFresh]=
    some (s6Step301EntryGvAfter,[s6Step301EntryFOut,s6Step301EntryGOut,s6Step301EntryFvOut,s6Step301EntryGvOut],(growRow 795 s6Step301EntryFFresh ++ (growRow 777 s6Step301EntryGFresh ++ (growRow 776 s6Step301EntryFvFresh ++ (growRow 775 s6Step301EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step301EntryGvAfter [] []=some (s6Step301EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step301EntryGvBefore s6Step301EntryGvAfter s6Step301EntryGvAfter
    s6Step301EntryGvRow s6Step301EntryGvOut 166 s6Step301EntryGvFresh [] [] []
    (growRow 775 s6Step301EntryGvFresh) ([]) s6Step301EntryGv_Incoming s6Step301EntryGv_checked h4 s6Step301EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step301EntryFvBefore s6Step301EntryFvAfter s6Step301EntryGvAfter
    s6Step301EntryFvRow s6Step301EntryFvOut 166 s6Step301EntryFvFresh [(s6Step301EntryGvRow,166)] [s6Step301EntryGvFresh] [s6Step301EntryGvOut]
    (growRow 776 s6Step301EntryFvFresh) ((growRow 775 s6Step301EntryGvFresh ++ [])) s6Step301EntryFv_Incoming s6Step301EntryFv_checked h3 s6Step301EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step301EntryGBefore s6Step301EntryGAfter s6Step301EntryGvAfter
    s6Step301EntryGRow s6Step301EntryGOut 121 s6Step301EntryGFresh [(s6Step301EntryFvRow,166),(s6Step301EntryGvRow,166)] [s6Step301EntryFvFresh,s6Step301EntryGvFresh] [s6Step301EntryFvOut,s6Step301EntryGvOut]
    (growRow 777 s6Step301EntryGFresh) ((growRow 776 s6Step301EntryFvFresh ++ (growRow 775 s6Step301EntryGvFresh ++ []))) s6Step301EntryG_Incoming s6Step301EntryG_checked h2 s6Step301EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step301EntryFBefore s6Step301EntryFAfter s6Step301EntryGvAfter
    s6Step301EntryFRow s6Step301EntryFOut 121 s6Step301EntryFFresh [(s6Step301EntryGRow,121),(s6Step301EntryFvRow,166),(s6Step301EntryGvRow,166)] [s6Step301EntryGFresh,s6Step301EntryFvFresh,s6Step301EntryGvFresh] [s6Step301EntryGOut,s6Step301EntryFvOut,s6Step301EntryGvOut]
    (growRow 795 s6Step301EntryFFresh) ((growRow 777 s6Step301EntryGFresh ++ (growRow 776 s6Step301EntryFvFresh ++ (growRow 775 s6Step301EntryGvFresh ++ [])))) s6Step301EntryF_Incoming s6Step301EntryF_checked h1 s6Step301EntryF_Outgoing
  exact h0

private theorem s6Step301EntryBank_checked : compileHmrBankResizeLog .entry s6Step301EntryFBefore ⟨s6Step301EntryFRow,s6Step301EntryGRow,s6Step301EntryFvRow,s6Step301EntryGvRow⟩ ⟨121,121,166,166⟩ [s6Step301EntryFFresh,s6Step301EntryGFresh,s6Step301EntryFvFresh,s6Step301EntryGvFresh]=
    some (s6Step301EntryGvAfter,⟨s6Step301EntryFOut,s6Step301EntryGOut,s6Step301EntryFvOut,s6Step301EntryGvOut⟩,(growRow 795 s6Step301EntryFFresh ++ (growRow 777 s6Step301EntryGFresh ++ (growRow 776 s6Step301EntryFvFresh ++ (growRow 775 s6Step301EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step301EntryBank_rows]
  rfl

private def s6Step301ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<376) ∨ (377≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301ExitFBefore : Arena := s6Step301ExitGAfter

private def s6Step301ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 908],795⟩

private def s6Step301ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 828],776⟩

private def s6Step301ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 823, 793],777⟩

private def s6Step301ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 865],775⟩

private theorem s6Step301ExitBank_incomingDistinct : ([s6Step301ExitGRow,s6Step301ExitFRow,s6Step301ExitFvRow,s6Step301ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301ExitF_Incoming : rowsOwned s6Step301ExitFBefore [s6Step301ExitFRow,s6Step301ExitFvRow,s6Step301ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301ExitGRow,s6Step301ExitFRow,s6Step301ExitFvRow,s6Step301ExitGvRow] 1 s6Step301ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301ExitFBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301ExitBank_outgoingOwned : rowsOwned s6Step301ExitGvAfter [s6Step301ExitGOut,s6Step301ExitFOut,s6Step301ExitFvOut,s6Step301ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step301ExitGvAfter (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<376) ∨ (377≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301ExitF_Outgoing : rowsOwned s6Step301ExitGvAfter [s6Step301ExitFOut,s6Step301ExitFvOut,s6Step301ExitGvOut] :=
  hmrRows_owned_drop s6Step301ExitGvAfter [s6Step301ExitGOut,s6Step301ExitFOut,s6Step301ExitFvOut,s6Step301ExitGvOut] 1 s6Step301ExitBank_outgoingOwned

private theorem s6Step301ExitF_distinct : (s6Step301ExitFRow.sign::s6Step301ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301ExitF_owned : (s6Step301ExitFRow.sign::s6Step301ExitFRow.payload).toFinset⊆s6Step301ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301ExitFBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301ExitF_retired : s6Step301ExitFBefore.retireSet s6Step301ExitFExtra.toFinset=s6Step301ExitFAfter := by
  unfold Arena.retireSet s6Step301ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step301ExitFBefore,s6Step301ExitGAfter,s6Step301ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step301ExitF_checked : planRowResizeLog s6Step301ExitFBefore s6Step301ExitFRow 120 []=
    some (s6Step301ExitFAfter,s6Step301ExitFOut,shrinkRow 795 s6Step301ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step301ExitFBefore s6Step301ExitFRow 120 s6Step301ExitF_distinct s6Step301ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step301ExitFRow.payload.take 120) s6Step301ExitFRow.sign=s6Step301ExitFOut := by decide +kernel
  have hi : s6Step301ExitFRow.payload.drop 120=s6Step301ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step301ExitF_retired] at result
  exact result

private def s6Step301ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<376) ∨ (377≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301ExitFvBefore : Arena := s6Step301ExitFAfter

private theorem s6Step301ExitFv_Incoming : rowsOwned s6Step301ExitFvBefore [s6Step301ExitFvRow,s6Step301ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301ExitGRow,s6Step301ExitFRow,s6Step301ExitFvRow,s6Step301ExitGvRow] 2 s6Step301ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301ExitFvBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<376) ∨ (377≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301ExitFv_Outgoing : rowsOwned s6Step301ExitGvAfter [s6Step301ExitFvOut,s6Step301ExitGvOut] :=
  hmrRows_owned_drop s6Step301ExitGvAfter [s6Step301ExitGOut,s6Step301ExitFOut,s6Step301ExitFvOut,s6Step301ExitGvOut] 2 s6Step301ExitBank_outgoingOwned

private theorem s6Step301ExitFv_distinct : (s6Step301ExitFvRow.sign::s6Step301ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301ExitFv_owned : (s6Step301ExitFvRow.sign::s6Step301ExitFvRow.payload).toFinset⊆s6Step301ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301ExitFvBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<376) ∨ (377≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301ExitFv_retired : s6Step301ExitFvBefore.retireSet s6Step301ExitFvExtra.toFinset=s6Step301ExitFvAfter := by
  unfold Arena.retireSet s6Step301ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step301ExitFvBefore,s6Step301ExitFAfter,s6Step301ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step301ExitFv_checked : planRowResizeLog s6Step301ExitFvBefore s6Step301ExitFvRow 166 []=
    some (s6Step301ExitFvAfter,s6Step301ExitFvOut,shrinkRow 776 s6Step301ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step301ExitFvBefore s6Step301ExitFvRow 166 s6Step301ExitFv_distinct s6Step301ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step301ExitFvRow.payload.take 166) s6Step301ExitFvRow.sign=s6Step301ExitFvOut := by decide +kernel
  have hi : s6Step301ExitFvRow.payload.drop 166=s6Step301ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step301ExitFv_retired] at result
  exact result

private def s6Step301ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step301ExitG_Incoming : rowsOwned s6Step301ExitGBefore [s6Step301ExitGRow,s6Step301ExitFRow,s6Step301ExitFvRow,s6Step301ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301ExitGRow,s6Step301ExitFRow,s6Step301ExitFvRow,s6Step301ExitGvRow] 0 s6Step301ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301ExitG_Outgoing : rowsOwned s6Step301ExitGvAfter [s6Step301ExitGOut,s6Step301ExitFOut,s6Step301ExitFvOut,s6Step301ExitGvOut] :=
  hmrRows_owned_drop s6Step301ExitGvAfter [s6Step301ExitGOut,s6Step301ExitFOut,s6Step301ExitFvOut,s6Step301ExitGvOut] 0 s6Step301ExitBank_outgoingOwned

private theorem s6Step301ExitG_distinct : (s6Step301ExitGRow.sign::s6Step301ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301ExitG_owned : (s6Step301ExitGRow.sign::s6Step301ExitGRow.payload).toFinset⊆s6Step301ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301ExitG_retired : s6Step301ExitGBefore.retireSet s6Step301ExitGExtra.toFinset=s6Step301ExitGAfter := by
  unfold Arena.retireSet s6Step301ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step301ExitGBefore,s6Step301ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step301ExitG_checked : planRowResizeLog s6Step301ExitGBefore s6Step301ExitGRow 119 []=
    some (s6Step301ExitGAfter,s6Step301ExitGOut,shrinkRow 777 s6Step301ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step301ExitGBefore s6Step301ExitGRow 119 s6Step301ExitG_distinct s6Step301ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step301ExitGRow.payload.take 119) s6Step301ExitGRow.sign=s6Step301ExitGOut := by decide +kernel
  have hi : s6Step301ExitGRow.payload.drop 119=s6Step301ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step301ExitG_retired] at result
  exact result

private def s6Step301ExitGvBefore : Arena := s6Step301ExitFvAfter

private theorem s6Step301ExitGv_Incoming : rowsOwned s6Step301ExitGvBefore [s6Step301ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301ExitGRow,s6Step301ExitFRow,s6Step301ExitFvRow,s6Step301ExitGvRow] 3 s6Step301ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301ExitGvBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<376) ∨ (377≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301ExitGv_Outgoing : rowsOwned s6Step301ExitGvAfter [s6Step301ExitGvOut] :=
  hmrRows_owned_drop s6Step301ExitGvAfter [s6Step301ExitGOut,s6Step301ExitFOut,s6Step301ExitFvOut,s6Step301ExitGvOut] 3 s6Step301ExitBank_outgoingOwned

private theorem s6Step301ExitGv_distinct : (s6Step301ExitGvRow.sign::s6Step301ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301ExitGv_owned : (s6Step301ExitGvRow.sign::s6Step301ExitGvRow.payload).toFinset⊆s6Step301ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301ExitGvBefore (fun q => (0≤q ∧ q<119) ∨ (120≤q ∧ q<376) ∨ (377≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301ExitGv_retired : s6Step301ExitGvBefore.retireSet s6Step301ExitGvExtra.toFinset=s6Step301ExitGvAfter := by
  unfold Arena.retireSet s6Step301ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step301ExitGvBefore,s6Step301ExitFvAfter,s6Step301ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step301ExitGv_checked : planRowResizeLog s6Step301ExitGvBefore s6Step301ExitGvRow 166 []=
    some (s6Step301ExitGvAfter,s6Step301ExitGvOut,shrinkRow 775 s6Step301ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step301ExitGvBefore s6Step301ExitGvRow 166 s6Step301ExitGv_distinct s6Step301ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step301ExitGvRow.payload.take 166) s6Step301ExitGvRow.sign=s6Step301ExitGvOut := by decide +kernel
  have hi : s6Step301ExitGvRow.payload.drop 166=s6Step301ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step301ExitGv_retired] at result
  exact result

private theorem s6Step301ExitBank_rows : planWindowRowsLog s6Step301ExitGBefore [(s6Step301ExitGRow,119),(s6Step301ExitFRow,120),(s6Step301ExitFvRow,166),(s6Step301ExitGvRow,166)] [[],[],[],[]]=
    some (s6Step301ExitGvAfter,[s6Step301ExitGOut,s6Step301ExitFOut,s6Step301ExitFvOut,s6Step301ExitGvOut],(shrinkRow 777 s6Step301ExitGExtra ++ (shrinkRow 795 s6Step301ExitFExtra ++ (shrinkRow 776 s6Step301ExitFvExtra ++ (shrinkRow 775 s6Step301ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step301ExitGvAfter [] []=some (s6Step301ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step301ExitGvBefore s6Step301ExitGvAfter s6Step301ExitGvAfter
    s6Step301ExitGvRow s6Step301ExitGvOut 166 [] [] [] []
    (shrinkRow 775 s6Step301ExitGvExtra) ([]) s6Step301ExitGv_Incoming s6Step301ExitGv_checked h4 s6Step301ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step301ExitFvBefore s6Step301ExitFvAfter s6Step301ExitGvAfter
    s6Step301ExitFvRow s6Step301ExitFvOut 166 [] [(s6Step301ExitGvRow,166)] [[]] [s6Step301ExitGvOut]
    (shrinkRow 776 s6Step301ExitFvExtra) ((shrinkRow 775 s6Step301ExitGvExtra ++ [])) s6Step301ExitFv_Incoming s6Step301ExitFv_checked h3 s6Step301ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step301ExitFBefore s6Step301ExitFAfter s6Step301ExitGvAfter
    s6Step301ExitFRow s6Step301ExitFOut 120 [] [(s6Step301ExitFvRow,166),(s6Step301ExitGvRow,166)] [[],[]] [s6Step301ExitFvOut,s6Step301ExitGvOut]
    (shrinkRow 795 s6Step301ExitFExtra) ((shrinkRow 776 s6Step301ExitFvExtra ++ (shrinkRow 775 s6Step301ExitGvExtra ++ []))) s6Step301ExitF_Incoming s6Step301ExitF_checked h2 s6Step301ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step301ExitGBefore s6Step301ExitGAfter s6Step301ExitGvAfter
    s6Step301ExitGRow s6Step301ExitGOut 119 [] [(s6Step301ExitFRow,120),(s6Step301ExitFvRow,166),(s6Step301ExitGvRow,166)] [[],[],[]] [s6Step301ExitFOut,s6Step301ExitFvOut,s6Step301ExitGvOut]
    (shrinkRow 777 s6Step301ExitGExtra) ((shrinkRow 795 s6Step301ExitFExtra ++ (shrinkRow 776 s6Step301ExitFvExtra ++ (shrinkRow 775 s6Step301ExitGvExtra ++ [])))) s6Step301ExitG_Incoming s6Step301ExitG_checked h1 s6Step301ExitG_Outgoing
  exact h0

private theorem s6Step301ExitBank_checked : compileHmrBankResizeLog .exit s6Step301ExitGBefore ⟨s6Step301ExitFRow,s6Step301ExitGRow,s6Step301ExitFvRow,s6Step301ExitGvRow⟩ ⟨120,119,166,166⟩ [[],[],[],[]]=
    some (s6Step301ExitGvAfter,⟨s6Step301ExitFOut,s6Step301ExitGOut,s6Step301ExitFvOut,s6Step301ExitGvOut⟩,(shrinkRow 777 s6Step301ExitGExtra ++ (shrinkRow 795 s6Step301ExitFExtra ++ (shrinkRow 776 s6Step301ExitFvExtra ++ (shrinkRow 775 s6Step301ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step301ExitBank_rows]
  rfl

private theorem s6Step301Add0_apart : Disjoint s6Step301Add0Arena.live s6Step301Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step301Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301Add0_card : s6Step301Add0Arena.live.card=903 := by
  decide +kernel

private theorem s6Step301Add0_borrowed : s6Step301Add0Arena.checkBorrow (hmrHybridCount s6Step301Add0Arena s6Step301Add0B.length) s6Step301Add0Work=some s6Step301Add0During := by
  have len : s6Step301Add0Work.length=hmrHybridCount s6Step301Add0Arena s6Step301Add0B.length := by
    rw [hmrHybridCount,s6Step301Add0_card]
    decide +kernel
  have nd : s6Step301Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step301Add0Arena s6Step301Add0During s6Step301Add0Work.toFinset s6Step301Add0_bounded s6Step301Add0_apart rfl

private theorem s6Step301Add0_distinct : (830::886::805::(s6Step301Add0A++s6Step301Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301Add0_owned : (830::886::805::(s6Step301Add0A++s6Step301Add0B)).toFinset⊆s6Step301Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step301Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301Add0_checked : compileHmrHybridCinLog s6Step301Add0Arena 886 830 805 s6Step301Add0A s6Step301Add0B s6Step301Add0Work=some s6Step301Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step301Add0Arena s6Step301Add0During 886 830 805 s6Step301Add0A s6Step301Add0B s6Step301Add0Work
    (by decide +kernel) (by decide +kernel) s6Step301Add0_distinct
    (fun q hq => s6Step301Add0_owned (List.mem_toFinset.mpr hq)) s6Step301Add0_borrowed

private theorem s6Step301Add1_apart : Disjoint s6Step301Add1Arena.live s6Step301Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step301Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301Add1_card : s6Step301Add1Arena.live.card=903 := by
  decide +kernel

private theorem s6Step301Add1_borrowed : s6Step301Add1Arena.checkBorrow (hmrHybridCount s6Step301Add1Arena s6Step301Add1B.length) s6Step301Add1Work=some s6Step301Add1During := by
  have len : s6Step301Add1Work.length=hmrHybridCount s6Step301Add1Arena s6Step301Add1B.length := by
    rw [hmrHybridCount,s6Step301Add1_card]
    decide +kernel
  have nd : s6Step301Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step301Add1Arena s6Step301Add1During s6Step301Add1Work.toFinset s6Step301Add1_bounded s6Step301Add1_apart rfl

private theorem s6Step301Add1_distinct : (830::886::805::(s6Step301Add1A++s6Step301Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301Add1_owned : (830::886::805::(s6Step301Add1A++s6Step301Add1B)).toFinset⊆s6Step301Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step301Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301Add1_checked : compileHmrHybridCinLog s6Step301Add1Arena 886 830 805 s6Step301Add1A s6Step301Add1B s6Step301Add1Work=some s6Step301Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step301Add1Arena s6Step301Add1During 886 830 805 s6Step301Add1A s6Step301Add1B s6Step301Add1Work
    (by decide +kernel) (by decide +kernel) s6Step301Add1_distinct
    (fun q hq => s6Step301Add1_owned (List.mem_toFinset.mpr hq)) s6Step301Add1_borrowed

private theorem s6Step301F4_apart : Disjoint (s6Step301Add0A++s6Step301Add0B).toFinset (s6Step301Add1A++s6Step301Add1B).toFinset := by
  have nd : ((s6Step301Add0A++s6Step301Add0B)++(s6Step301Add1A++s6Step301Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step301F4_carry : s6Step301F4FlagArena.checkBorrow 1 [805]=some s6Step301Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step301F4FlagArena,s6Step301HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step301F4FlagArena,s6Step301HeadFvAfter,s6Step301Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step301F4_distinct : (857::886::830::805::((s6Step301Add0A++s6Step301Add1A)++(s6Step301Add0B++s6Step301Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301F4_flag : s6Step301HeadFvAfter.checkBorrow 1 [830]=some s6Step301F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step301HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step301F4_owned : (857::886::((s6Step301Add0A++s6Step301Add1A)++(s6Step301Add0B++s6Step301Add1B))).toFinset⊆s6Step301HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step301HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301F4_checked : compileHmrHybridF4Log s6Step301HeadFvAfter 857 886 s6Step301Add0A s6Step301Add0B s6Step301Add1A s6Step301Add1B [830] [805] s6Step301Add0Work s6Step301Add1Work=some s6Step301F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step301HeadFvAfter s6Step301F4FlagArena s6Step301Add0Arena s6Step301Add0During s6Step301Add1During 857 886
    s6Step301Add0A s6Step301Add0B s6Step301Add1A s6Step301Add1B [830] [805] s6Step301Add0Work s6Step301Add1Work
    (fun q hq => s6Step301F4_owned (List.mem_toFinset.mpr hq)) s6Step301F4_flag s6Step301F4_carry
    s6Step301F4_distinct s6Step301F4_apart s6Step301Add0_checked s6Step301Add1_checked

private theorem s6Step301Front_branch : s6Step301FrontSigmaArena.checkBorrow 1 [886]=some s6Step301HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step301FrontSigmaArena,s6Step301EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step301FrontSigmaArena,s6Step301EntryGvAfter,s6Step301HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step301Front_entry : HmrFrontEntryValid s6Step301EntryFBefore s6Step301FrontBank 121 166 ⟨120,119,166,166⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step301FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step301EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step301EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step301FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step301Front_sigma : s6Step301EntryGvAfter.checkBorrow 1 [857]=some s6Step301FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step301EntryGvAfter,arenaWires]
  · rfl

private def s6Step301HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301HeadFBefore : Arena := s6Step301HeadGAfter

private def s6Step301HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376],795⟩

private def s6Step301HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807],776⟩

private def s6Step301HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 823],777⟩

private def s6Step301HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922],775⟩

private theorem s6Step301HeadBank_incomingDistinct : ([s6Step301HeadGRow,s6Step301HeadFRow,s6Step301HeadGvRow,s6Step301HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301HeadF_Incoming : rowsOwned s6Step301HeadFBefore [s6Step301HeadFRow,s6Step301HeadGvRow,s6Step301HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301HeadGRow,s6Step301HeadFRow,s6Step301HeadGvRow,s6Step301HeadFvRow] 1 s6Step301HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301HeadBank_outgoingOwned : rowsOwned s6Step301HeadFvAfter [s6Step301HeadGOut,s6Step301HeadFOut,s6Step301HeadGvOut,s6Step301HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step301HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301HeadF_Outgoing : rowsOwned s6Step301HeadFvAfter [s6Step301HeadFOut,s6Step301HeadGvOut,s6Step301HeadFvOut] :=
  hmrRows_owned_drop s6Step301HeadFvAfter [s6Step301HeadGOut,s6Step301HeadFOut,s6Step301HeadGvOut,s6Step301HeadFvOut] 1 s6Step301HeadBank_outgoingOwned

private theorem s6Step301HeadF_distinct : (s6Step301HeadFRow.sign::s6Step301HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301HeadF_owned : (s6Step301HeadFRow.sign::s6Step301HeadFRow.payload).toFinset⊆s6Step301HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301HeadF_reserved : s6Step301HeadFBefore.reserve s6Step301HeadFFresh.toFinset=some s6Step301HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step301HeadFFresh,arenaWires]
  · norm_num [s6Step301HeadFBefore,s6Step301HeadGAfter,s6Step301HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step301HeadFAfter,s6Step301HeadFBefore,s6Step301HeadGAfter,s6Step301HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step301HeadF_checked : planRowResizeLog s6Step301HeadFBefore s6Step301HeadFRow 122 s6Step301HeadFFresh=
    some (s6Step301HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 908],795⟩,growRow 795 s6Step301HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step301HeadFBefore s6Step301HeadFAfter s6Step301HeadFRow 122 s6Step301HeadFFresh
    s6Step301HeadF_distinct s6Step301HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step301HeadF_reserved
  have rowEq : WindowRow.mk (s6Step301HeadFRow.payload++s6Step301HeadFFresh) s6Step301HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 908],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step301HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step301HeadFvBefore : Arena := s6Step301HeadGvAfter

private theorem s6Step301HeadFv_Incoming : rowsOwned s6Step301HeadFvBefore [s6Step301HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301HeadGRow,s6Step301HeadFRow,s6Step301HeadGvRow,s6Step301HeadFvRow] 3 s6Step301HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301HeadFv_Outgoing : rowsOwned s6Step301HeadFvAfter [s6Step301HeadFvOut] :=
  hmrRows_owned_drop s6Step301HeadFvAfter [s6Step301HeadGOut,s6Step301HeadFOut,s6Step301HeadGvOut,s6Step301HeadFvOut] 3 s6Step301HeadBank_outgoingOwned

private theorem s6Step301HeadFv_distinct : (s6Step301HeadFvRow.sign::s6Step301HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301HeadFv_owned : (s6Step301HeadFvRow.sign::s6Step301HeadFvRow.payload).toFinset⊆s6Step301HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301HeadFv_reserved : s6Step301HeadFvBefore.reserve s6Step301HeadFvFresh.toFinset=some s6Step301HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step301HeadFvFresh,arenaWires]
  · norm_num [s6Step301HeadFvBefore,s6Step301HeadGvAfter,s6Step301HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step301HeadFvAfter,s6Step301HeadFvBefore,s6Step301HeadGvAfter,s6Step301HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step301HeadFv_checked : planRowResizeLog s6Step301HeadFvBefore s6Step301HeadFvRow 167 s6Step301HeadFvFresh=
    some (s6Step301HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 828],776⟩,growRow 776 s6Step301HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step301HeadFvBefore s6Step301HeadFvAfter s6Step301HeadFvRow 167 s6Step301HeadFvFresh
    s6Step301HeadFv_distinct s6Step301HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step301HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step301HeadFvRow.payload++s6Step301HeadFvFresh) s6Step301HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 828],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step301HeadG_Incoming : rowsOwned s6Step301HeadGBefore [s6Step301HeadGRow,s6Step301HeadFRow,s6Step301HeadGvRow,s6Step301HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301HeadGRow,s6Step301HeadFRow,s6Step301HeadGvRow,s6Step301HeadFvRow] 0 s6Step301HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301HeadG_Outgoing : rowsOwned s6Step301HeadFvAfter [s6Step301HeadGOut,s6Step301HeadFOut,s6Step301HeadGvOut,s6Step301HeadFvOut] :=
  hmrRows_owned_drop s6Step301HeadFvAfter [s6Step301HeadGOut,s6Step301HeadFOut,s6Step301HeadGvOut,s6Step301HeadFvOut] 0 s6Step301HeadBank_outgoingOwned

private theorem s6Step301HeadG_distinct : (s6Step301HeadGRow.sign::s6Step301HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301HeadG_owned : (s6Step301HeadGRow.sign::s6Step301HeadGRow.payload).toFinset⊆s6Step301HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<908) ∨ (909≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301HeadG_reserved : s6Step301HeadGBefore.reserve s6Step301HeadGFresh.toFinset=some s6Step301HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step301HeadGFresh,arenaWires]
  · norm_num [s6Step301HeadGBefore,s6Step301HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step301HeadGAfter,s6Step301HeadGBefore,s6Step301HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step301HeadG_checked : planRowResizeLog s6Step301HeadGBefore s6Step301HeadGRow 122 s6Step301HeadGFresh=
    some (s6Step301HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 823, 793],777⟩,growRow 777 s6Step301HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step301HeadGBefore s6Step301HeadGAfter s6Step301HeadGRow 122 s6Step301HeadGFresh
    s6Step301HeadG_distinct s6Step301HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step301HeadG_reserved
  have rowEq : WindowRow.mk (s6Step301HeadGRow.payload++s6Step301HeadGFresh) s6Step301HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 823, 793],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step301HeadGvBefore : Arena := s6Step301HeadFAfter

private theorem s6Step301HeadGv_Incoming : rowsOwned s6Step301HeadGvBefore [s6Step301HeadGvRow,s6Step301HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step301HeadGRow,s6Step301HeadFRow,s6Step301HeadGvRow,s6Step301HeadFvRow] 2 s6Step301HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step301HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step301HeadGv_Outgoing : rowsOwned s6Step301HeadFvAfter [s6Step301HeadGvOut,s6Step301HeadFvOut] :=
  hmrRows_owned_drop s6Step301HeadFvAfter [s6Step301HeadGOut,s6Step301HeadFOut,s6Step301HeadGvOut,s6Step301HeadFvOut] 2 s6Step301HeadBank_outgoingOwned

private theorem s6Step301HeadGv_distinct : (s6Step301HeadGvRow.sign::s6Step301HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step301HeadGv_owned : (s6Step301HeadGvRow.sign::s6Step301HeadGvRow.payload).toFinset⊆s6Step301HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step301HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step301HeadGv_reserved : s6Step301HeadGvBefore.reserve s6Step301HeadGvFresh.toFinset=some s6Step301HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step301HeadGvFresh,arenaWires]
  · norm_num [s6Step301HeadGvBefore,s6Step301HeadFAfter,s6Step301HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step301HeadGvAfter,s6Step301HeadGvBefore,s6Step301HeadFAfter,s6Step301HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step301HeadGv_checked : planRowResizeLog s6Step301HeadGvBefore s6Step301HeadGvRow 167 s6Step301HeadGvFresh=
    some (s6Step301HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 865],775⟩,growRow 775 s6Step301HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step301HeadGvBefore s6Step301HeadGvAfter s6Step301HeadGvRow 167 s6Step301HeadGvFresh
    s6Step301HeadGv_distinct s6Step301HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step301HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step301HeadGvRow.payload++s6Step301HeadGvFresh) s6Step301HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 865],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step301HeadBank_rows : planWindowRowsLog s6Step301HeadGBefore [(s6Step301HeadGRow,122),(s6Step301HeadFRow,122),(s6Step301HeadGvRow,167),(s6Step301HeadFvRow,167)] [s6Step301HeadGFresh,s6Step301HeadFFresh,s6Step301HeadGvFresh,s6Step301HeadFvFresh]=
    some (s6Step301HeadFvAfter,[s6Step301HeadGOut,s6Step301HeadFOut,s6Step301HeadGvOut,s6Step301HeadFvOut],(growRow 777 s6Step301HeadGFresh ++ (growRow 795 s6Step301HeadFFresh ++ (growRow 775 s6Step301HeadGvFresh ++ (growRow 776 s6Step301HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step301HeadFvAfter [] []=some (s6Step301HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step301HeadFvBefore s6Step301HeadFvAfter s6Step301HeadFvAfter
    s6Step301HeadFvRow s6Step301HeadFvOut 167 s6Step301HeadFvFresh [] [] []
    (growRow 776 s6Step301HeadFvFresh) ([]) s6Step301HeadFv_Incoming s6Step301HeadFv_checked h4 s6Step301HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step301HeadGvBefore s6Step301HeadGvAfter s6Step301HeadFvAfter
    s6Step301HeadGvRow s6Step301HeadGvOut 167 s6Step301HeadGvFresh [(s6Step301HeadFvRow,167)] [s6Step301HeadFvFresh] [s6Step301HeadFvOut]
    (growRow 775 s6Step301HeadGvFresh) ((growRow 776 s6Step301HeadFvFresh ++ [])) s6Step301HeadGv_Incoming s6Step301HeadGv_checked h3 s6Step301HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step301HeadFBefore s6Step301HeadFAfter s6Step301HeadFvAfter
    s6Step301HeadFRow s6Step301HeadFOut 122 s6Step301HeadFFresh [(s6Step301HeadGvRow,167),(s6Step301HeadFvRow,167)] [s6Step301HeadGvFresh,s6Step301HeadFvFresh] [s6Step301HeadGvOut,s6Step301HeadFvOut]
    (growRow 795 s6Step301HeadFFresh) ((growRow 775 s6Step301HeadGvFresh ++ (growRow 776 s6Step301HeadFvFresh ++ []))) s6Step301HeadF_Incoming s6Step301HeadF_checked h2 s6Step301HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step301HeadGBefore s6Step301HeadGAfter s6Step301HeadFvAfter
    s6Step301HeadGRow s6Step301HeadGOut 122 s6Step301HeadGFresh [(s6Step301HeadFRow,122),(s6Step301HeadGvRow,167),(s6Step301HeadFvRow,167)] [s6Step301HeadFFresh,s6Step301HeadGvFresh,s6Step301HeadFvFresh] [s6Step301HeadFOut,s6Step301HeadGvOut,s6Step301HeadFvOut]
    (growRow 777 s6Step301HeadGFresh) ((growRow 795 s6Step301HeadFFresh ++ (growRow 775 s6Step301HeadGvFresh ++ (growRow 776 s6Step301HeadFvFresh ++ [])))) s6Step301HeadG_Incoming s6Step301HeadG_checked h1 s6Step301HeadG_Outgoing
  exact h0

private theorem s6Step301HeadBank_checked : compileHmrBankResizeLog .headroom s6Step301HeadGBefore ⟨s6Step301HeadFRow,s6Step301HeadGRow,s6Step301HeadFvRow,s6Step301HeadGvRow⟩ ⟨122,122,167,167⟩ [s6Step301HeadGFresh,s6Step301HeadFFresh,s6Step301HeadGvFresh,s6Step301HeadFvFresh]=
    some (s6Step301HeadFvAfter,⟨s6Step301HeadFOut,s6Step301HeadGOut,s6Step301HeadFvOut,s6Step301HeadGvOut⟩,(growRow 777 s6Step301HeadGFresh ++ (growRow 795 s6Step301HeadFFresh ++ (growRow 775 s6Step301HeadGvFresh ++ (growRow 776 s6Step301HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step301HeadBank_rows]
  rfl

private theorem s6Step301Front_checked : compileHmrSourceFrontLog s6Step301EntryFBefore s6Step301FrontBank 121 166 ⟨120,119,166,166⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step301FrontLog=some s6Step301FrontPlan := by
  have pairEq : s6Step301FrontPair=⟨s6Step301HeadFRow,s6Step301HeadGRow,s6Step301HeadFvRow,s6Step301HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step301FrontHead=⟨s6Step301ExitFRow,s6Step301ExitGRow,s6Step301ExitFvRow,s6Step301ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step301Add0A=s6Step301FrontHead.f.wires := by decide +kernel
  have gEq : s6Step301Add0B=s6Step301FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step301Add1A=s6Step301FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step301Add1B=s6Step301FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step301EntryFBefore s6Step301FrontBank 121 166 ⟨120,119,166,166⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step301FrontLog s6Step301FrontPlan
  · exact s6Step301Front_entry
  · exact s6Step301EntryBank_checked
  · exact s6Step301Front_sigma
  · rfl
  · exact s6Step301Front_branch
  · rfl
  · simpa only [s6Step301FrontPlan,pairEq] using s6Step301HeadBank_checked
  · simpa only [s6Step301FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step301F4_checked
  · exact s6Step301Counter_checked
  · rfl
  · simpa only [s6Step301FrontPlan,headEq] using s6Step301ExitBank_checked

private theorem s6Step301Complete_explicit_checked : compileHmrEarlyStepLog s6Step301EntryFBefore s6Step301FrontBank 121 166 ⟨120,119,166,166⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step301CompleteLog=some s6Step301CompletePlan := by
  let Q := s6Step301EarlyControlPlan
  have hq := s6Step301EarlyControl_plan_checked
  have fv1 : s6Step301CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step301CompleteOut.fv.payload[2]?.getD s6Step301CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step301CompleteOut.fv.payload[3]?.getD s6Step301CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step301CompleteOut.fv.payload[4]?.getD s6Step301CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step301EntryFBefore s6Step301EarlyControlArena s6Step301FrontBank 121 166 ⟨120,119,166,166⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step301CompleteLog s6Step301FrontPlan Q
    s6Step301Front_checked s6Step301Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step301Complete_owned s6Step301Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step301EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 857 s6Step301CompleteOut.fv.second (s6Step301CompleteOut.fv.payload[2]?.getD s6Step301CompleteOut.fv.sign) (s6Step301CompleteOut.fv.payload[3]?.getD s6Step301CompleteOut.fv.sign) (s6Step301CompleteOut.fv.payload[4]?.getD s6Step301CompleteOut.fv.sign) 886 55 s6Step301EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep301Arena : Arena := s6Step301EntryFBefore
def s6PrivateStep301Bank : WindowBank := s6Step301FrontBank
def s6PrivateStep301Spec : HmrSourceWalkStepLog := ⟨121,166,⟨120,119,166,166⟩,55,.early s6Step301CompleteLog⟩
def s6PrivateStep301Plan : HmrSourceStepPlan := .early s6Step301CompletePlan
theorem s6PrivateStep301_source : s6PrivateStep301Spec=s6ObservedLogs288[13] := rfl
theorem s6PrivateStep301_checked : compileHmrSourceStepLog s6PrivateStep301Arena s6PrivateStep301Bank
    s6PrivateStep301Spec.fgWidth s6PrivateStep301Spec.vWidth s6PrivateStep301Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]
    6 498 301 s6PrivateStep301Spec.need none s6PrivateStep301Spec.log=some s6PrivateStep301Plan := by
  change compileHmrSourceStepLog s6Step301EntryFBefore s6Step301FrontBank 121 166 ⟨120,119,166,166⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 6 498 301 55 none (.early s6Step301CompleteLog)=some (.early s6Step301CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 301<498)]
  rw [s6Step301Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
