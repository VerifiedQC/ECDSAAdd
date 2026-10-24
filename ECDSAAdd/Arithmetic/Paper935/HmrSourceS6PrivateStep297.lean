import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep295
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

private def s6Step297CompleteMoves : List (Wire × Wire) := [(865,378)]

private def s6Step297EarlyControlLog : HmrEarlyControlLog := ⟨[865, 807, 922, 823, 825],[793],[886],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step297FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [825, 793], [], [848]],[[886], [823], [807], [922]],[[], [], [], []]⟩,[887],[828],[830],[805],[817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step297CompleteLog : HmrEarlyStepLog := ⟨s6Step297FrontLog,s6Step297CompleteMoves,s6Step297EarlyControlLog⟩

private def s6Step297ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377],795⟩

private def s6Step297ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩

private def s6Step297ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],777⟩

private def s6Step297ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848],775⟩

private def s6Step297FrontOut : WindowBank := ⟨s6Step297ExitFOut,s6Step297ExitGOut,s6Step297ExitFvOut,s6Step297ExitGvOut⟩

private def s6Step297CompleteOut : WindowBank := s6Step297FrontOut.repacked s6Step297CompleteMoves

private def s6Step297EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step297EarlyControlPositiveArena,[793],s6Step297EarlyControlEqualityArena,[886],⟨⟨887,false⟩,[⟨⟨793,false⟩,886⟩]⟩⟩

private def s6Step297EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,865⟩,⟨⟨772,false⟩,807⟩,⟨⟨771,false⟩,922⟩,⟨⟨770,false⟩,823⟩,⟨⟨769,false⟩,825⟩]⟩

private def s6Step297EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step297EarlyControlZeroArena,s6Step297EarlyControlZeroPlan,s6Step297EarlyControlClassPlan,s6Step297EarlyControlFlagArena,s6Step297EarlyControlFittedArena,s6Step297EarlyControlHistoryArena,s6Step297EarlyControlSigmaArena,s6Step297EarlyControlOutputArena,s6Step297EarlyControlLog⟩

private def s6Step297CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step297Counter_bounded : s6Step297CounterWork.toFinset⊆arenaWires := by norm_num [s6Step297CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step297HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297CounterDuring : Arena := ⟨s6Step297HeadFvAfter.live∪s6Step297CounterWork.toFinset,Finset.union_subset s6Step297HeadFvAfter.bounded s6Step297Counter_bounded⟩

private def s6Step297EntryFFresh : List Wire := []

private def s6Step297EntryFvFresh : List Wire := []

private def s6Step297EntryGFresh : List Wire := [825, 793]

private def s6Step297EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EntryGvFresh : List Wire := [848]

private def s6Step297ExitFExtra : List Wire := [378, 823]

private def s6Step297ExitFvExtra : List Wire := [922]

private def s6Step297ExitGExtra : List Wire := [825, 793, 886]

private def s6Step297ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<378) ∨ (379≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297ExitGvExtra : List Wire := [807]

private def s6Step297Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297Add0Work : List Wire := [817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step297Add0_bounded : s6Step297Add0Work.toFinset⊆arenaWires := by
  have h : s6Step297Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step297Add0During : Arena := ⟨s6Step297Add0Arena.live∪s6Step297Add0Work.toFinset,Finset.union_subset s6Step297Add0Arena.bounded s6Step297Add0_bounded⟩

private def s6Step297Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297Add1Work : List Wire := [817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step297Add1_bounded : s6Step297Add1Work.toFinset⊆arenaWires := by
  have h : s6Step297Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step297Add1During : Arena := ⟨s6Step297Add1Arena.live∪s6Step297Add1Work.toFinset,Finset.union_subset s6Step297Add1Arena.bounded s6Step297Add1_bounded⟩

private def s6Step297F4FlagArena : Arena := ⟨s6Step297HeadFvAfter.live∪{830},Finset.union_subset s6Step297HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step297F4Plan : HmrHybridF4Plan := ⟨s6Step297F4FlagArena,[830],s6Step297Add0Arena,[805],s6Step297Add0During,s6Step297Add0Work,s6Step297Add1During,s6Step297Add1Work⟩

private def s6Step297HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 823],795⟩

private def s6Step297HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 922],776⟩

private def s6Step297HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 825, 793, 886],777⟩

private def s6Step297HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 807],775⟩

private def s6Step297FrontHead : WindowBank := ⟨s6Step297HeadFOut,s6Step297HeadGOut,s6Step297HeadFvOut,s6Step297HeadGvOut⟩

private def s6Step297EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378],795⟩

private def s6Step297EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩

private def s6Step297EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 825, 793],777⟩

private def s6Step297EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848],775⟩

private def s6Step297FrontPair : WindowBank := ⟨s6Step297EntryFOut,s6Step297EntryGOut,s6Step297EntryFvOut,s6Step297EntryGvOut⟩

private def s6Step297FrontSigmaArena : Arena := ⟨s6Step297EntryGvAfter.live∪{887},Finset.union_subset s6Step297EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step297HeadFFresh : List Wire := [823]

private def s6Step297HeadFvFresh : List Wire := [922]

private def s6Step297HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297HeadGFresh : List Wire := [886]

private def s6Step297HeadGvFresh : List Wire := [807]

private def s6Step297FrontPlan : HmrSourceFront := ⟨s6Step297EntryGvAfter,s6Step297FrontPair,(growRow 795 s6Step297EntryFFresh ++ (growRow 777 s6Step297EntryGFresh ++ (growRow 776 s6Step297EntryFvFresh ++ (growRow 775 s6Step297EntryGvFresh ++ [])))),s6Step297FrontSigmaArena,[887],s6Step297HeadGBefore,[828],
  s6Step297HeadFvAfter,s6Step297FrontHead,(growRow 777 s6Step297HeadGFresh ++ (growRow 795 s6Step297HeadFFresh ++ (growRow 775 s6Step297HeadGvFresh ++ (growRow 776 s6Step297HeadFvFresh ++ [])))),s6Step297F4Plan,s6Step297CounterDuring,s6Step297CounterWork,s6Step297ExitGvAfter,s6Step297FrontOut,(shrinkRow 777 s6Step297ExitGExtra ++ (shrinkRow 795 s6Step297ExitFExtra ++ (shrinkRow 776 s6Step297ExitFvExtra ++ (shrinkRow 775 s6Step297ExitGvExtra ++ []))))⟩

private def s6Step297CompletePlan : HmrEarlyStepPlan := ⟨s6Step297FrontPlan,s6Step297EarlyControlArena,s6Step297EarlyControlPlan,s6Step297CompleteMoves⟩

private theorem s6Step297Complete_apart : List.Disjoint (s6Step297CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [887, 828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] := by
  have nd : ((s6Step297CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[887, 828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step297Complete_owned : (s6Step297CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step297EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step297CompleteMoveArena : Arena := ⟨s6Step297ExitGvAfter.live∪{378},Finset.union_subset s6Step297ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step297Complete_repack : s6Step297ExitGvAfter.checkRepack s6Step297CompleteMoves=some s6Step297EarlyControlArena := by
  have owned : 865∈s6Step297ExitGvAfter.live := by norm_num [s6Step297ExitGvAfter,arenaWires]
  have reserve : s6Step297ExitGvAfter.reserve {378}=some s6Step297CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step297ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step297CompleteMoveArena.retireSet {865}=s6Step297EarlyControlArena := by
    unfold Arena.retireSet s6Step297EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step297CompleteMoveArena,s6Step297ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step297CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step297CompleteMoveArena.retireSet {865}).checkRepack []=some s6Step297EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step297EarlyControl_branchOwned : ([828] : List Wire).toFinset⊆s6Step297EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EarlyControl_branch : compileHmrBranchRetirement s6Step297EarlyControlSigmaArena 828=some s6Step297EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step297EarlyControl_branchOwned
  · ext q
    simp [s6Step297EarlyControlOutputArena,s6Step297EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step297EarlyControl_classEqualityBorrow : s6Step297EarlyControlPositiveArena.checkBorrow (([887, 793] : List Wire).length-1) s6Step297EarlyControlLog.classWork=some s6Step297EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step297EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step297EarlyControlEqualityArena,s6Step297EarlyControlPositiveArena,s6Step297EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step297EarlyControl_classEqualityOwned : ([887, 793] : List Wire).toFinset⊆s6Step297EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EarlyControl_classEquality : compileHmrEqualityLog s6Step297EarlyControlPositiveArena [887, 793] 0 s6Step297EarlyControlLog.classWork=some (s6Step297EarlyControlEqualityArena,s6Step297EarlyControlLog.classWork,s6Step297EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step297EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step297EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step297EarlyControl_classOwned : ([769, 825, 887] : List Wire).toFinset⊆s6Step297EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EarlyControl_positiveBorrow : s6Step297EarlyControlZeroArena.checkBorrow (1) s6Step297EarlyControlLog.positiveWork=some s6Step297EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step297EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step297EarlyControlPositiveArena,s6Step297EarlyControlZeroArena,s6Step297EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step297EarlyControl_class : compileHmrSourceClassLog s6Step297EarlyControlZeroArena false 769 s6Step297EarlyControlZeroPlan.top 0 887 s6Step297EarlyControlLog.positiveWork s6Step297EarlyControlLog.classWork=some s6Step297EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step297EarlyControlClassPlan s6Step297EarlyControlZeroArena false 769 s6Step297EarlyControlZeroPlan.top 0 887
  constructor
  · decide +kernel
  · exact s6Step297EarlyControl_classOwned
  · exact s6Step297EarlyControl_positiveBorrow
  · exact s6Step297EarlyControl_classEquality

private theorem s6Step297EarlyControl_entryRecordOwned : ([828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step297EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EarlyControl_entrySigmaOwned : ([887, 254] : List Wire).toFinset⊆s6Step297EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EarlyControl_fitBorrow : s6Step297EarlyControlFlagArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step297EarlyControlLog.recordFresh=some s6Step297EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step297EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step297EarlyControlFittedArena,s6Step297EarlyControlFlagArena,s6Step297EarlyControlLog,arenaWires]

private theorem s6Step297EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step297EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EarlyControl_fit : compileHmrRecordGrowLog s6Step297EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step297EarlyControlLog.recordFresh=some s6Step297EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step297EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step297EarlyControl_fitBorrow

private theorem s6Step297EarlyControl_flagsBorrow : s6Step297EarlyControlEqualityArena.checkBorrow (6) s6Step297EarlyControlLog.flagWork=some s6Step297EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step297EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step297EarlyControlFlagArena,s6Step297EarlyControlEqualityArena,s6Step297EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step297EarlyControl_flagsOwned : ([886, 253, 252, 251] : List Wire).toFinset⊆s6Step297EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EarlyControl_flags : compileHmrFlagsLog s6Step297EarlyControlClassPlan.equalityArena s6Step297EarlyControlClassPlan.equality.top 253 252 251 s6Step297EarlyControlLog.flagWork=some s6Step297EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step297EarlyControl_flagsOwned⟩
  · exact s6Step297EarlyControl_flagsBorrow

private theorem s6Step297EarlyControl_historyBorrow : s6Step297EarlyControlArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step297EarlyControlLog.recordFresh=some s6Step297EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step297EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step297EarlyControlHistoryArena,s6Step297EarlyControlArena,s6Step297EarlyControlLog,arenaWires]

private theorem s6Step297EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step297EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EarlyControl_history : compileHmrRecordGrowLog s6Step297EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step297EarlyControlLog.recordFresh=some s6Step297EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step297EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step297EarlyControl_historyBorrow

private theorem s6Step297EarlyControl_sigmaOwned : ([254, 887] : List Wire).toFinset⊆s6Step297EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EarlyControl_sigmaReleaseOwned : ([887] : List Wire).toFinset⊆s6Step297EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EarlyControl_sigmaRelease : s6Step297EarlyControlHistoryArena.release {887} (fun _ => false)=some s6Step297EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step297EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step297EarlyControlSigmaArena,s6Step297EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step297EarlyControl_sigma : compileHmrSigmaDropLog s6Step297EarlyControlHistoryArena false 0 0 254 887 []=some s6Step297EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step297EarlyControl_sigmaOwned⟩
  · exact s6Step297EarlyControl_sigmaRelease

private theorem s6Step297EarlyControl_zeroBorrow : s6Step297EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step297EarlyControlLog.zeroWork=some s6Step297EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step297EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step297EarlyControlZeroArena,s6Step297EarlyControlArena,s6Step297EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step297EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step297EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step297EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EarlyControl_zero : compileHmrEqualityLog s6Step297EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step297EarlyControlLog.zeroWork=some (s6Step297EarlyControlZeroArena,s6Step297EarlyControlLog.zeroWork,s6Step297EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step297EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step297EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step297EarlyControl_logged : s6Step297EarlyControlPlan.Logged s6Step297EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 887 254 253 252 251 828 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step297EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step297EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step297EarlyControl_zero
  · exact s6Step297EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step297EarlyControl_flags
  · exact s6Step297EarlyControl_fit
  · exact s6Step297EarlyControl_history
  · exact s6Step297EarlyControl_sigma
  · exact s6Step297EarlyControl_branch

private theorem s6Step297EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step297EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 887 254 253 252 251 828 55 s6Step297EarlyControlLog=some s6Step297EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step297EarlyControlPlan s6Step297EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 887 254 253 252 251 828 55 s6Step297EarlyControl_logged

private def s6Step297EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378],795⟩

private def s6Step297EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩

private def s6Step297EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],777⟩

private def s6Step297EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892],775⟩

private def s6Step297FrontBank : WindowBank := ⟨s6Step297EntryFRow,s6Step297EntryGRow,s6Step297EntryFvRow,s6Step297EntryGvRow⟩

private def s6Step297Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 823, 795]

private def s6Step297Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 825, 793, 886, 777]

private def s6Step297Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 922, 776]

private def s6Step297Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 807, 775]

private theorem s6Step297Counter_apart : Disjoint s6Step297HeadFvAfter.live s6Step297CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step297HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297Counter_borrowed : s6Step297HeadFvAfter.checkBorrow 4 s6Step297CounterWork=some s6Step297CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step297HeadFvAfter s6Step297CounterDuring s6Step297CounterWork.toFinset s6Step297Counter_bounded s6Step297Counter_apart rfl

private theorem s6Step297Counter_owned : (887::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step297HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step297HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297Counter_checked : compileHmrCounterStepLog s6Step297HeadFvAfter true 887 [774, 773, 772, 771, 770, 769] s6Step297CounterWork=some s6Step297CounterDuring := by
  have owned : ∀q∈887::[774, 773, 772, 771, 770, 769],q∈s6Step297HeadFvAfter.live := fun q hq => s6Step297Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step297Counter_borrowed

private def s6Step297EntryFAfter : Arena := s6Step297EntryFBefore

private theorem s6Step297EntryBank_incomingDistinct : ([s6Step297EntryFRow,s6Step297EntryGRow,s6Step297EntryFvRow,s6Step297EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297EntryF_Incoming : rowsOwned s6Step297EntryFBefore [s6Step297EntryFRow,s6Step297EntryGRow,s6Step297EntryFvRow,s6Step297EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297EntryFRow,s6Step297EntryGRow,s6Step297EntryFvRow,s6Step297EntryGvRow] 0 s6Step297EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297EntryBank_outgoingOwned : rowsOwned s6Step297EntryGvAfter [s6Step297EntryFOut,s6Step297EntryGOut,s6Step297EntryFvOut,s6Step297EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step297EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297EntryF_Outgoing : rowsOwned s6Step297EntryGvAfter [s6Step297EntryFOut,s6Step297EntryGOut,s6Step297EntryFvOut,s6Step297EntryGvOut] :=
  hmrRows_owned_drop s6Step297EntryGvAfter [s6Step297EntryFOut,s6Step297EntryGOut,s6Step297EntryFvOut,s6Step297EntryGvOut] 0 s6Step297EntryBank_outgoingOwned

private theorem s6Step297EntryF_distinct : (s6Step297EntryFRow.sign::s6Step297EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297EntryF_owned : (s6Step297EntryFRow.sign::s6Step297EntryFRow.payload).toFinset⊆s6Step297EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EntryF_reserved : s6Step297EntryFBefore.reserve s6Step297EntryFFresh.toFinset=some s6Step297EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step297EntryFFresh,arenaWires]
  · norm_num [s6Step297EntryFBefore,s6Step297EntryFFresh,arenaWires]
  · simp only [s6Step297EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step297EntryF_checked : planRowResizeLog s6Step297EntryFBefore s6Step297EntryFRow 123 s6Step297EntryFFresh=
    some (s6Step297EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378],795⟩,growRow 795 s6Step297EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step297EntryFBefore s6Step297EntryFAfter s6Step297EntryFRow 123 s6Step297EntryFFresh
    s6Step297EntryF_distinct s6Step297EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step297EntryF_reserved
  have rowEq : WindowRow.mk (s6Step297EntryFRow.payload++s6Step297EntryFFresh) s6Step297EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step297EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297EntryFvAfter : Arena := s6Step297EntryGAfter

private def s6Step297EntryFvBefore : Arena := s6Step297EntryGAfter

private theorem s6Step297EntryFv_Incoming : rowsOwned s6Step297EntryFvBefore [s6Step297EntryFvRow,s6Step297EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297EntryFRow,s6Step297EntryGRow,s6Step297EntryFvRow,s6Step297EntryGvRow] 2 s6Step297EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297EntryFv_Outgoing : rowsOwned s6Step297EntryGvAfter [s6Step297EntryFvOut,s6Step297EntryGvOut] :=
  hmrRows_owned_drop s6Step297EntryGvAfter [s6Step297EntryFOut,s6Step297EntryGOut,s6Step297EntryFvOut,s6Step297EntryGvOut] 2 s6Step297EntryBank_outgoingOwned

private theorem s6Step297EntryFv_distinct : (s6Step297EntryFvRow.sign::s6Step297EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297EntryFv_owned : (s6Step297EntryFvRow.sign::s6Step297EntryFvRow.payload).toFinset⊆s6Step297EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EntryFv_reserved : s6Step297EntryFvBefore.reserve s6Step297EntryFvFresh.toFinset=some s6Step297EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step297EntryFvFresh,arenaWires]
  · norm_num [s6Step297EntryFvBefore,s6Step297EntryGAfter,s6Step297EntryFvFresh,arenaWires]
  · simp only [s6Step297EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step297EntryFv_checked : planRowResizeLog s6Step297EntryFvBefore s6Step297EntryFvRow 164 s6Step297EntryFvFresh=
    some (s6Step297EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩,growRow 776 s6Step297EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step297EntryFvBefore s6Step297EntryFvAfter s6Step297EntryFvRow 164 s6Step297EntryFvFresh
    s6Step297EntryFv_distinct s6Step297EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step297EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step297EntryFvRow.payload++s6Step297EntryFvFresh) s6Step297EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step297EntryGBefore : Arena := s6Step297EntryFBefore

private theorem s6Step297EntryG_Incoming : rowsOwned s6Step297EntryGBefore [s6Step297EntryGRow,s6Step297EntryFvRow,s6Step297EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297EntryFRow,s6Step297EntryGRow,s6Step297EntryFvRow,s6Step297EntryGvRow] 1 s6Step297EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297EntryG_Outgoing : rowsOwned s6Step297EntryGvAfter [s6Step297EntryGOut,s6Step297EntryFvOut,s6Step297EntryGvOut] :=
  hmrRows_owned_drop s6Step297EntryGvAfter [s6Step297EntryFOut,s6Step297EntryGOut,s6Step297EntryFvOut,s6Step297EntryGvOut] 1 s6Step297EntryBank_outgoingOwned

private theorem s6Step297EntryG_distinct : (s6Step297EntryGRow.sign::s6Step297EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297EntryG_owned : (s6Step297EntryGRow.sign::s6Step297EntryGRow.payload).toFinset⊆s6Step297EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EntryG_reserved : s6Step297EntryGBefore.reserve s6Step297EntryGFresh.toFinset=some s6Step297EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step297EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step297EntryGBefore,s6Step297EntryFBefore,s6Step297EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step297EntryGAfter,s6Step297EntryGBefore,s6Step297EntryFBefore,s6Step297EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step297EntryG_checked : planRowResizeLog s6Step297EntryGBefore s6Step297EntryGRow 123 s6Step297EntryGFresh=
    some (s6Step297EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 825, 793],777⟩,growRow 777 s6Step297EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step297EntryGBefore s6Step297EntryGAfter s6Step297EntryGRow 123 s6Step297EntryGFresh
    s6Step297EntryG_distinct s6Step297EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step297EntryG_reserved
  have rowEq : WindowRow.mk (s6Step297EntryGRow.payload++s6Step297EntryGFresh) s6Step297EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 825, 793],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step297EntryGvBefore : Arena := s6Step297EntryGAfter

private theorem s6Step297EntryGv_Incoming : rowsOwned s6Step297EntryGvBefore [s6Step297EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297EntryFRow,s6Step297EntryGRow,s6Step297EntryFvRow,s6Step297EntryGvRow] 3 s6Step297EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297EntryGv_Outgoing : rowsOwned s6Step297EntryGvAfter [s6Step297EntryGvOut] :=
  hmrRows_owned_drop s6Step297EntryGvAfter [s6Step297EntryFOut,s6Step297EntryGOut,s6Step297EntryFvOut,s6Step297EntryGvOut] 3 s6Step297EntryBank_outgoingOwned

private theorem s6Step297EntryGv_distinct : (s6Step297EntryGvRow.sign::s6Step297EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297EntryGv_owned : (s6Step297EntryGvRow.sign::s6Step297EntryGvRow.payload).toFinset⊆s6Step297EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297EntryGv_reserved : s6Step297EntryGvBefore.reserve s6Step297EntryGvFresh.toFinset=some s6Step297EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step297EntryGvFresh,arenaWires]
  · norm_num [s6Step297EntryGvBefore,s6Step297EntryGAfter,s6Step297EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step297EntryGvAfter,s6Step297EntryGvBefore,s6Step297EntryGAfter,s6Step297EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step297EntryGv_checked : planRowResizeLog s6Step297EntryGvBefore s6Step297EntryGvRow 164 s6Step297EntryGvFresh=
    some (s6Step297EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848],775⟩,growRow 775 s6Step297EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step297EntryGvBefore s6Step297EntryGvAfter s6Step297EntryGvRow 164 s6Step297EntryGvFresh
    s6Step297EntryGv_distinct s6Step297EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step297EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step297EntryGvRow.payload++s6Step297EntryGvFresh) s6Step297EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step297EntryBank_rows : planWindowRowsLog s6Step297EntryFBefore [(s6Step297EntryFRow,123),(s6Step297EntryGRow,123),(s6Step297EntryFvRow,164),(s6Step297EntryGvRow,164)] [s6Step297EntryFFresh,s6Step297EntryGFresh,s6Step297EntryFvFresh,s6Step297EntryGvFresh]=
    some (s6Step297EntryGvAfter,[s6Step297EntryFOut,s6Step297EntryGOut,s6Step297EntryFvOut,s6Step297EntryGvOut],(growRow 795 s6Step297EntryFFresh ++ (growRow 777 s6Step297EntryGFresh ++ (growRow 776 s6Step297EntryFvFresh ++ (growRow 775 s6Step297EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step297EntryGvAfter [] []=some (s6Step297EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step297EntryGvBefore s6Step297EntryGvAfter s6Step297EntryGvAfter
    s6Step297EntryGvRow s6Step297EntryGvOut 164 s6Step297EntryGvFresh [] [] []
    (growRow 775 s6Step297EntryGvFresh) ([]) s6Step297EntryGv_Incoming s6Step297EntryGv_checked h4 s6Step297EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step297EntryFvBefore s6Step297EntryFvAfter s6Step297EntryGvAfter
    s6Step297EntryFvRow s6Step297EntryFvOut 164 s6Step297EntryFvFresh [(s6Step297EntryGvRow,164)] [s6Step297EntryGvFresh] [s6Step297EntryGvOut]
    (growRow 776 s6Step297EntryFvFresh) ((growRow 775 s6Step297EntryGvFresh ++ [])) s6Step297EntryFv_Incoming s6Step297EntryFv_checked h3 s6Step297EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step297EntryGBefore s6Step297EntryGAfter s6Step297EntryGvAfter
    s6Step297EntryGRow s6Step297EntryGOut 123 s6Step297EntryGFresh [(s6Step297EntryFvRow,164),(s6Step297EntryGvRow,164)] [s6Step297EntryFvFresh,s6Step297EntryGvFresh] [s6Step297EntryFvOut,s6Step297EntryGvOut]
    (growRow 777 s6Step297EntryGFresh) ((growRow 776 s6Step297EntryFvFresh ++ (growRow 775 s6Step297EntryGvFresh ++ []))) s6Step297EntryG_Incoming s6Step297EntryG_checked h2 s6Step297EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step297EntryFBefore s6Step297EntryFAfter s6Step297EntryGvAfter
    s6Step297EntryFRow s6Step297EntryFOut 123 s6Step297EntryFFresh [(s6Step297EntryGRow,123),(s6Step297EntryFvRow,164),(s6Step297EntryGvRow,164)] [s6Step297EntryGFresh,s6Step297EntryFvFresh,s6Step297EntryGvFresh] [s6Step297EntryGOut,s6Step297EntryFvOut,s6Step297EntryGvOut]
    (growRow 795 s6Step297EntryFFresh) ((growRow 777 s6Step297EntryGFresh ++ (growRow 776 s6Step297EntryFvFresh ++ (growRow 775 s6Step297EntryGvFresh ++ [])))) s6Step297EntryF_Incoming s6Step297EntryF_checked h1 s6Step297EntryF_Outgoing
  exact h0

private theorem s6Step297EntryBank_checked : compileHmrBankResizeLog .entry s6Step297EntryFBefore ⟨s6Step297EntryFRow,s6Step297EntryGRow,s6Step297EntryFvRow,s6Step297EntryGvRow⟩ ⟨123,123,164,164⟩ [s6Step297EntryFFresh,s6Step297EntryGFresh,s6Step297EntryFvFresh,s6Step297EntryGvFresh]=
    some (s6Step297EntryGvAfter,⟨s6Step297EntryFOut,s6Step297EntryGOut,s6Step297EntryFvOut,s6Step297EntryGvOut⟩,(growRow 795 s6Step297EntryFFresh ++ (growRow 777 s6Step297EntryGFresh ++ (growRow 776 s6Step297EntryFvFresh ++ (growRow 775 s6Step297EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step297EntryBank_rows]
  rfl

private def s6Step297ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<378) ∨ (379≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297ExitFBefore : Arena := s6Step297ExitGAfter

private def s6Step297ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 823],795⟩

private def s6Step297ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 922],776⟩

private def s6Step297ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 825, 793, 886],777⟩

private def s6Step297ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 807],775⟩

private theorem s6Step297ExitBank_incomingDistinct : ([s6Step297ExitGRow,s6Step297ExitFRow,s6Step297ExitFvRow,s6Step297ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297ExitF_Incoming : rowsOwned s6Step297ExitFBefore [s6Step297ExitFRow,s6Step297ExitFvRow,s6Step297ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297ExitGRow,s6Step297ExitFRow,s6Step297ExitFvRow,s6Step297ExitGvRow] 1 s6Step297ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297ExitBank_outgoingOwned : rowsOwned s6Step297ExitGvAfter [s6Step297ExitGOut,s6Step297ExitFOut,s6Step297ExitFvOut,s6Step297ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step297ExitGvAfter (fun q => (0≤q ∧ q<378) ∨ (379≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297ExitF_Outgoing : rowsOwned s6Step297ExitGvAfter [s6Step297ExitFOut,s6Step297ExitFvOut,s6Step297ExitGvOut] :=
  hmrRows_owned_drop s6Step297ExitGvAfter [s6Step297ExitGOut,s6Step297ExitFOut,s6Step297ExitFvOut,s6Step297ExitGvOut] 1 s6Step297ExitBank_outgoingOwned

private theorem s6Step297ExitF_distinct : (s6Step297ExitFRow.sign::s6Step297ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297ExitF_owned : (s6Step297ExitFRow.sign::s6Step297ExitFRow.payload).toFinset⊆s6Step297ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297ExitF_retired : s6Step297ExitFBefore.retireSet s6Step297ExitFExtra.toFinset=s6Step297ExitFAfter := by
  unfold Arena.retireSet s6Step297ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step297ExitFBefore,s6Step297ExitGAfter,s6Step297ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step297ExitF_checked : planRowResizeLog s6Step297ExitFBefore s6Step297ExitFRow 122 []=
    some (s6Step297ExitFAfter,s6Step297ExitFOut,shrinkRow 795 s6Step297ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step297ExitFBefore s6Step297ExitFRow 122 s6Step297ExitF_distinct s6Step297ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step297ExitFRow.payload.take 122) s6Step297ExitFRow.sign=s6Step297ExitFOut := by decide +kernel
  have hi : s6Step297ExitFRow.payload.drop 122=s6Step297ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step297ExitF_retired] at result
  exact result

private def s6Step297ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<378) ∨ (379≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297ExitFvBefore : Arena := s6Step297ExitFAfter

private theorem s6Step297ExitFv_Incoming : rowsOwned s6Step297ExitFvBefore [s6Step297ExitFvRow,s6Step297ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297ExitGRow,s6Step297ExitFRow,s6Step297ExitFvRow,s6Step297ExitGvRow] 2 s6Step297ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297ExitFvBefore (fun q => (0≤q ∧ q<378) ∨ (379≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297ExitFv_Outgoing : rowsOwned s6Step297ExitGvAfter [s6Step297ExitFvOut,s6Step297ExitGvOut] :=
  hmrRows_owned_drop s6Step297ExitGvAfter [s6Step297ExitGOut,s6Step297ExitFOut,s6Step297ExitFvOut,s6Step297ExitGvOut] 2 s6Step297ExitBank_outgoingOwned

private theorem s6Step297ExitFv_distinct : (s6Step297ExitFvRow.sign::s6Step297ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297ExitFv_owned : (s6Step297ExitFvRow.sign::s6Step297ExitFvRow.payload).toFinset⊆s6Step297ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297ExitFvBefore (fun q => (0≤q ∧ q<378) ∨ (379≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297ExitFv_retired : s6Step297ExitFvBefore.retireSet s6Step297ExitFvExtra.toFinset=s6Step297ExitFvAfter := by
  unfold Arena.retireSet s6Step297ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step297ExitFvBefore,s6Step297ExitFAfter,s6Step297ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step297ExitFv_checked : planRowResizeLog s6Step297ExitFvBefore s6Step297ExitFvRow 164 []=
    some (s6Step297ExitFvAfter,s6Step297ExitFvOut,shrinkRow 776 s6Step297ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step297ExitFvBefore s6Step297ExitFvRow 164 s6Step297ExitFv_distinct s6Step297ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step297ExitFvRow.payload.take 164) s6Step297ExitFvRow.sign=s6Step297ExitFvOut := by decide +kernel
  have hi : s6Step297ExitFvRow.payload.drop 164=s6Step297ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step297ExitFv_retired] at result
  exact result

private def s6Step297ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step297ExitG_Incoming : rowsOwned s6Step297ExitGBefore [s6Step297ExitGRow,s6Step297ExitFRow,s6Step297ExitFvRow,s6Step297ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297ExitGRow,s6Step297ExitFRow,s6Step297ExitFvRow,s6Step297ExitGvRow] 0 s6Step297ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297ExitG_Outgoing : rowsOwned s6Step297ExitGvAfter [s6Step297ExitGOut,s6Step297ExitFOut,s6Step297ExitFvOut,s6Step297ExitGvOut] :=
  hmrRows_owned_drop s6Step297ExitGvAfter [s6Step297ExitGOut,s6Step297ExitFOut,s6Step297ExitFvOut,s6Step297ExitGvOut] 0 s6Step297ExitBank_outgoingOwned

private theorem s6Step297ExitG_distinct : (s6Step297ExitGRow.sign::s6Step297ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297ExitG_owned : (s6Step297ExitGRow.sign::s6Step297ExitGRow.payload).toFinset⊆s6Step297ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297ExitG_retired : s6Step297ExitGBefore.retireSet s6Step297ExitGExtra.toFinset=s6Step297ExitGAfter := by
  unfold Arena.retireSet s6Step297ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step297ExitGBefore,s6Step297ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step297ExitG_checked : planRowResizeLog s6Step297ExitGBefore s6Step297ExitGRow 121 []=
    some (s6Step297ExitGAfter,s6Step297ExitGOut,shrinkRow 777 s6Step297ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step297ExitGBefore s6Step297ExitGRow 121 s6Step297ExitG_distinct s6Step297ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step297ExitGRow.payload.take 121) s6Step297ExitGRow.sign=s6Step297ExitGOut := by decide +kernel
  have hi : s6Step297ExitGRow.payload.drop 121=s6Step297ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step297ExitG_retired] at result
  exact result

private def s6Step297ExitGvBefore : Arena := s6Step297ExitFvAfter

private theorem s6Step297ExitGv_Incoming : rowsOwned s6Step297ExitGvBefore [s6Step297ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297ExitGRow,s6Step297ExitFRow,s6Step297ExitFvRow,s6Step297ExitGvRow] 3 s6Step297ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297ExitGvBefore (fun q => (0≤q ∧ q<378) ∨ (379≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297ExitGv_Outgoing : rowsOwned s6Step297ExitGvAfter [s6Step297ExitGvOut] :=
  hmrRows_owned_drop s6Step297ExitGvAfter [s6Step297ExitGOut,s6Step297ExitFOut,s6Step297ExitFvOut,s6Step297ExitGvOut] 3 s6Step297ExitBank_outgoingOwned

private theorem s6Step297ExitGv_distinct : (s6Step297ExitGvRow.sign::s6Step297ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297ExitGv_owned : (s6Step297ExitGvRow.sign::s6Step297ExitGvRow.payload).toFinset⊆s6Step297ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297ExitGvBefore (fun q => (0≤q ∧ q<378) ∨ (379≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297ExitGv_retired : s6Step297ExitGvBefore.retireSet s6Step297ExitGvExtra.toFinset=s6Step297ExitGvAfter := by
  unfold Arena.retireSet s6Step297ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step297ExitGvBefore,s6Step297ExitFvAfter,s6Step297ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step297ExitGv_checked : planRowResizeLog s6Step297ExitGvBefore s6Step297ExitGvRow 164 []=
    some (s6Step297ExitGvAfter,s6Step297ExitGvOut,shrinkRow 775 s6Step297ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step297ExitGvBefore s6Step297ExitGvRow 164 s6Step297ExitGv_distinct s6Step297ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step297ExitGvRow.payload.take 164) s6Step297ExitGvRow.sign=s6Step297ExitGvOut := by decide +kernel
  have hi : s6Step297ExitGvRow.payload.drop 164=s6Step297ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step297ExitGv_retired] at result
  exact result

private theorem s6Step297ExitBank_rows : planWindowRowsLog s6Step297ExitGBefore [(s6Step297ExitGRow,121),(s6Step297ExitFRow,122),(s6Step297ExitFvRow,164),(s6Step297ExitGvRow,164)] [[],[],[],[]]=
    some (s6Step297ExitGvAfter,[s6Step297ExitGOut,s6Step297ExitFOut,s6Step297ExitFvOut,s6Step297ExitGvOut],(shrinkRow 777 s6Step297ExitGExtra ++ (shrinkRow 795 s6Step297ExitFExtra ++ (shrinkRow 776 s6Step297ExitFvExtra ++ (shrinkRow 775 s6Step297ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step297ExitGvAfter [] []=some (s6Step297ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step297ExitGvBefore s6Step297ExitGvAfter s6Step297ExitGvAfter
    s6Step297ExitGvRow s6Step297ExitGvOut 164 [] [] [] []
    (shrinkRow 775 s6Step297ExitGvExtra) ([]) s6Step297ExitGv_Incoming s6Step297ExitGv_checked h4 s6Step297ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step297ExitFvBefore s6Step297ExitFvAfter s6Step297ExitGvAfter
    s6Step297ExitFvRow s6Step297ExitFvOut 164 [] [(s6Step297ExitGvRow,164)] [[]] [s6Step297ExitGvOut]
    (shrinkRow 776 s6Step297ExitFvExtra) ((shrinkRow 775 s6Step297ExitGvExtra ++ [])) s6Step297ExitFv_Incoming s6Step297ExitFv_checked h3 s6Step297ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step297ExitFBefore s6Step297ExitFAfter s6Step297ExitGvAfter
    s6Step297ExitFRow s6Step297ExitFOut 122 [] [(s6Step297ExitFvRow,164),(s6Step297ExitGvRow,164)] [[],[]] [s6Step297ExitFvOut,s6Step297ExitGvOut]
    (shrinkRow 795 s6Step297ExitFExtra) ((shrinkRow 776 s6Step297ExitFvExtra ++ (shrinkRow 775 s6Step297ExitGvExtra ++ []))) s6Step297ExitF_Incoming s6Step297ExitF_checked h2 s6Step297ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step297ExitGBefore s6Step297ExitGAfter s6Step297ExitGvAfter
    s6Step297ExitGRow s6Step297ExitGOut 121 [] [(s6Step297ExitFRow,122),(s6Step297ExitFvRow,164),(s6Step297ExitGvRow,164)] [[],[],[]] [s6Step297ExitFOut,s6Step297ExitFvOut,s6Step297ExitGvOut]
    (shrinkRow 777 s6Step297ExitGExtra) ((shrinkRow 795 s6Step297ExitFExtra ++ (shrinkRow 776 s6Step297ExitFvExtra ++ (shrinkRow 775 s6Step297ExitGvExtra ++ [])))) s6Step297ExitG_Incoming s6Step297ExitG_checked h1 s6Step297ExitG_Outgoing
  exact h0

private theorem s6Step297ExitBank_checked : compileHmrBankResizeLog .exit s6Step297ExitGBefore ⟨s6Step297ExitFRow,s6Step297ExitGRow,s6Step297ExitFvRow,s6Step297ExitGvRow⟩ ⟨122,121,164,164⟩ [[],[],[],[]]=
    some (s6Step297ExitGvAfter,⟨s6Step297ExitFOut,s6Step297ExitGOut,s6Step297ExitFvOut,s6Step297ExitGvOut⟩,(shrinkRow 777 s6Step297ExitGExtra ++ (shrinkRow 795 s6Step297ExitFExtra ++ (shrinkRow 776 s6Step297ExitFvExtra ++ (shrinkRow 775 s6Step297ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step297ExitBank_rows]
  rfl

private theorem s6Step297Add0_apart : Disjoint s6Step297Add0Arena.live s6Step297Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step297Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297Add0_card : s6Step297Add0Arena.live.card=903 := by
  decide +kernel

private theorem s6Step297Add0_borrowed : s6Step297Add0Arena.checkBorrow (hmrHybridCount s6Step297Add0Arena s6Step297Add0B.length) s6Step297Add0Work=some s6Step297Add0During := by
  have len : s6Step297Add0Work.length=hmrHybridCount s6Step297Add0Arena s6Step297Add0B.length := by
    rw [hmrHybridCount,s6Step297Add0_card]
    decide +kernel
  have nd : s6Step297Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step297Add0Arena s6Step297Add0During s6Step297Add0Work.toFinset s6Step297Add0_bounded s6Step297Add0_apart rfl

private theorem s6Step297Add0_distinct : (830::828::805::(s6Step297Add0A++s6Step297Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297Add0_owned : (830::828::805::(s6Step297Add0A++s6Step297Add0B)).toFinset⊆s6Step297Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step297Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297Add0_checked : compileHmrHybridCinLog s6Step297Add0Arena 828 830 805 s6Step297Add0A s6Step297Add0B s6Step297Add0Work=some s6Step297Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step297Add0Arena s6Step297Add0During 828 830 805 s6Step297Add0A s6Step297Add0B s6Step297Add0Work
    (by decide +kernel) (by decide +kernel) s6Step297Add0_distinct
    (fun q hq => s6Step297Add0_owned (List.mem_toFinset.mpr hq)) s6Step297Add0_borrowed

private theorem s6Step297Add1_apart : Disjoint s6Step297Add1Arena.live s6Step297Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step297Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297Add1_card : s6Step297Add1Arena.live.card=903 := by
  decide +kernel

private theorem s6Step297Add1_borrowed : s6Step297Add1Arena.checkBorrow (hmrHybridCount s6Step297Add1Arena s6Step297Add1B.length) s6Step297Add1Work=some s6Step297Add1During := by
  have len : s6Step297Add1Work.length=hmrHybridCount s6Step297Add1Arena s6Step297Add1B.length := by
    rw [hmrHybridCount,s6Step297Add1_card]
    decide +kernel
  have nd : s6Step297Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step297Add1Arena s6Step297Add1During s6Step297Add1Work.toFinset s6Step297Add1_bounded s6Step297Add1_apart rfl

private theorem s6Step297Add1_distinct : (830::828::805::(s6Step297Add1A++s6Step297Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297Add1_owned : (830::828::805::(s6Step297Add1A++s6Step297Add1B)).toFinset⊆s6Step297Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step297Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297Add1_checked : compileHmrHybridCinLog s6Step297Add1Arena 828 830 805 s6Step297Add1A s6Step297Add1B s6Step297Add1Work=some s6Step297Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step297Add1Arena s6Step297Add1During 828 830 805 s6Step297Add1A s6Step297Add1B s6Step297Add1Work
    (by decide +kernel) (by decide +kernel) s6Step297Add1_distinct
    (fun q hq => s6Step297Add1_owned (List.mem_toFinset.mpr hq)) s6Step297Add1_borrowed

private theorem s6Step297F4_apart : Disjoint (s6Step297Add0A++s6Step297Add0B).toFinset (s6Step297Add1A++s6Step297Add1B).toFinset := by
  have nd : ((s6Step297Add0A++s6Step297Add0B)++(s6Step297Add1A++s6Step297Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step297F4_carry : s6Step297F4FlagArena.checkBorrow 1 [805]=some s6Step297Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step297F4FlagArena,s6Step297HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step297F4FlagArena,s6Step297HeadFvAfter,s6Step297Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step297F4_distinct : (887::828::830::805::((s6Step297Add0A++s6Step297Add1A)++(s6Step297Add0B++s6Step297Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297F4_flag : s6Step297HeadFvAfter.checkBorrow 1 [830]=some s6Step297F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step297HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step297F4_owned : (887::828::((s6Step297Add0A++s6Step297Add1A)++(s6Step297Add0B++s6Step297Add1B))).toFinset⊆s6Step297HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step297HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297F4_checked : compileHmrHybridF4Log s6Step297HeadFvAfter 887 828 s6Step297Add0A s6Step297Add0B s6Step297Add1A s6Step297Add1B [830] [805] s6Step297Add0Work s6Step297Add1Work=some s6Step297F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step297HeadFvAfter s6Step297F4FlagArena s6Step297Add0Arena s6Step297Add0During s6Step297Add1During 887 828
    s6Step297Add0A s6Step297Add0B s6Step297Add1A s6Step297Add1B [830] [805] s6Step297Add0Work s6Step297Add1Work
    (fun q hq => s6Step297F4_owned (List.mem_toFinset.mpr hq)) s6Step297F4_flag s6Step297F4_carry
    s6Step297F4_distinct s6Step297F4_apart s6Step297Add0_checked s6Step297Add1_checked

private theorem s6Step297Front_branch : s6Step297FrontSigmaArena.checkBorrow 1 [828]=some s6Step297HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step297FrontSigmaArena,s6Step297EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step297FrontSigmaArena,s6Step297EntryGvAfter,s6Step297HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step297Front_entry : HmrFrontEntryValid s6Step297EntryFBefore s6Step297FrontBank 123 164 ⟨122,121,164,164⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step297FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step297EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step297EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step297FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step297Front_sigma : s6Step297EntryGvAfter.checkBorrow 1 [887]=some s6Step297FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step297EntryGvAfter,arenaWires]
  · rfl

private def s6Step297HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297HeadFBefore : Arena := s6Step297HeadGAfter

private def s6Step297HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378],795⟩

private def s6Step297HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩

private def s6Step297HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 825, 793],777⟩

private def s6Step297HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848],775⟩

private theorem s6Step297HeadBank_incomingDistinct : ([s6Step297HeadGRow,s6Step297HeadFRow,s6Step297HeadGvRow,s6Step297HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297HeadF_Incoming : rowsOwned s6Step297HeadFBefore [s6Step297HeadFRow,s6Step297HeadGvRow,s6Step297HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297HeadGRow,s6Step297HeadFRow,s6Step297HeadGvRow,s6Step297HeadFvRow] 1 s6Step297HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297HeadBank_outgoingOwned : rowsOwned s6Step297HeadFvAfter [s6Step297HeadGOut,s6Step297HeadFOut,s6Step297HeadGvOut,s6Step297HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step297HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297HeadF_Outgoing : rowsOwned s6Step297HeadFvAfter [s6Step297HeadFOut,s6Step297HeadGvOut,s6Step297HeadFvOut] :=
  hmrRows_owned_drop s6Step297HeadFvAfter [s6Step297HeadGOut,s6Step297HeadFOut,s6Step297HeadGvOut,s6Step297HeadFvOut] 1 s6Step297HeadBank_outgoingOwned

private theorem s6Step297HeadF_distinct : (s6Step297HeadFRow.sign::s6Step297HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297HeadF_owned : (s6Step297HeadFRow.sign::s6Step297HeadFRow.payload).toFinset⊆s6Step297HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297HeadF_reserved : s6Step297HeadFBefore.reserve s6Step297HeadFFresh.toFinset=some s6Step297HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step297HeadFFresh,arenaWires]
  · norm_num [s6Step297HeadFBefore,s6Step297HeadGAfter,s6Step297HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step297HeadFAfter,s6Step297HeadFBefore,s6Step297HeadGAfter,s6Step297HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step297HeadF_checked : planRowResizeLog s6Step297HeadFBefore s6Step297HeadFRow 124 s6Step297HeadFFresh=
    some (s6Step297HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 823],795⟩,growRow 795 s6Step297HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step297HeadFBefore s6Step297HeadFAfter s6Step297HeadFRow 124 s6Step297HeadFFresh
    s6Step297HeadF_distinct s6Step297HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step297HeadF_reserved
  have rowEq : WindowRow.mk (s6Step297HeadFRow.payload++s6Step297HeadFFresh) s6Step297HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 823],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step297HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step297HeadFvBefore : Arena := s6Step297HeadGvAfter

private theorem s6Step297HeadFv_Incoming : rowsOwned s6Step297HeadFvBefore [s6Step297HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297HeadGRow,s6Step297HeadFRow,s6Step297HeadGvRow,s6Step297HeadFvRow] 3 s6Step297HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297HeadFv_Outgoing : rowsOwned s6Step297HeadFvAfter [s6Step297HeadFvOut] :=
  hmrRows_owned_drop s6Step297HeadFvAfter [s6Step297HeadGOut,s6Step297HeadFOut,s6Step297HeadGvOut,s6Step297HeadFvOut] 3 s6Step297HeadBank_outgoingOwned

private theorem s6Step297HeadFv_distinct : (s6Step297HeadFvRow.sign::s6Step297HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297HeadFv_owned : (s6Step297HeadFvRow.sign::s6Step297HeadFvRow.payload).toFinset⊆s6Step297HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297HeadFv_reserved : s6Step297HeadFvBefore.reserve s6Step297HeadFvFresh.toFinset=some s6Step297HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step297HeadFvFresh,arenaWires]
  · norm_num [s6Step297HeadFvBefore,s6Step297HeadGvAfter,s6Step297HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step297HeadFvAfter,s6Step297HeadFvBefore,s6Step297HeadGvAfter,s6Step297HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step297HeadFv_checked : planRowResizeLog s6Step297HeadFvBefore s6Step297HeadFvRow 165 s6Step297HeadFvFresh=
    some (s6Step297HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 922],776⟩,growRow 776 s6Step297HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step297HeadFvBefore s6Step297HeadFvAfter s6Step297HeadFvRow 165 s6Step297HeadFvFresh
    s6Step297HeadFv_distinct s6Step297HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step297HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step297HeadFvRow.payload++s6Step297HeadFvFresh) s6Step297HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 922],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step297HeadG_Incoming : rowsOwned s6Step297HeadGBefore [s6Step297HeadGRow,s6Step297HeadFRow,s6Step297HeadGvRow,s6Step297HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297HeadGRow,s6Step297HeadFRow,s6Step297HeadGvRow,s6Step297HeadFvRow] 0 s6Step297HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297HeadG_Outgoing : rowsOwned s6Step297HeadFvAfter [s6Step297HeadGOut,s6Step297HeadFOut,s6Step297HeadGvOut,s6Step297HeadFvOut] :=
  hmrRows_owned_drop s6Step297HeadFvAfter [s6Step297HeadGOut,s6Step297HeadFOut,s6Step297HeadGvOut,s6Step297HeadFvOut] 0 s6Step297HeadBank_outgoingOwned

private theorem s6Step297HeadG_distinct : (s6Step297HeadGRow.sign::s6Step297HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297HeadG_owned : (s6Step297HeadGRow.sign::s6Step297HeadGRow.payload).toFinset⊆s6Step297HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297HeadG_reserved : s6Step297HeadGBefore.reserve s6Step297HeadGFresh.toFinset=some s6Step297HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step297HeadGFresh,arenaWires]
  · norm_num [s6Step297HeadGBefore,s6Step297HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step297HeadGAfter,s6Step297HeadGBefore,s6Step297HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step297HeadG_checked : planRowResizeLog s6Step297HeadGBefore s6Step297HeadGRow 124 s6Step297HeadGFresh=
    some (s6Step297HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 825, 793, 886],777⟩,growRow 777 s6Step297HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step297HeadGBefore s6Step297HeadGAfter s6Step297HeadGRow 124 s6Step297HeadGFresh
    s6Step297HeadG_distinct s6Step297HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step297HeadG_reserved
  have rowEq : WindowRow.mk (s6Step297HeadGRow.payload++s6Step297HeadGFresh) s6Step297HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 825, 793, 886],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step297HeadGvBefore : Arena := s6Step297HeadFAfter

private theorem s6Step297HeadGv_Incoming : rowsOwned s6Step297HeadGvBefore [s6Step297HeadGvRow,s6Step297HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step297HeadGRow,s6Step297HeadFRow,s6Step297HeadGvRow,s6Step297HeadFvRow] 2 s6Step297HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step297HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step297HeadGv_Outgoing : rowsOwned s6Step297HeadFvAfter [s6Step297HeadGvOut,s6Step297HeadFvOut] :=
  hmrRows_owned_drop s6Step297HeadFvAfter [s6Step297HeadGOut,s6Step297HeadFOut,s6Step297HeadGvOut,s6Step297HeadFvOut] 2 s6Step297HeadBank_outgoingOwned

private theorem s6Step297HeadGv_distinct : (s6Step297HeadGvRow.sign::s6Step297HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step297HeadGv_owned : (s6Step297HeadGvRow.sign::s6Step297HeadGvRow.payload).toFinset⊆s6Step297HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step297HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step297HeadGv_reserved : s6Step297HeadGvBefore.reserve s6Step297HeadGvFresh.toFinset=some s6Step297HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step297HeadGvFresh,arenaWires]
  · norm_num [s6Step297HeadGvBefore,s6Step297HeadFAfter,s6Step297HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step297HeadGvAfter,s6Step297HeadGvBefore,s6Step297HeadFAfter,s6Step297HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step297HeadGv_checked : planRowResizeLog s6Step297HeadGvBefore s6Step297HeadGvRow 165 s6Step297HeadGvFresh=
    some (s6Step297HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 807],775⟩,growRow 775 s6Step297HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step297HeadGvBefore s6Step297HeadGvAfter s6Step297HeadGvRow 165 s6Step297HeadGvFresh
    s6Step297HeadGv_distinct s6Step297HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step297HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step297HeadGvRow.payload++s6Step297HeadGvFresh) s6Step297HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 807],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step297HeadBank_rows : planWindowRowsLog s6Step297HeadGBefore [(s6Step297HeadGRow,124),(s6Step297HeadFRow,124),(s6Step297HeadGvRow,165),(s6Step297HeadFvRow,165)] [s6Step297HeadGFresh,s6Step297HeadFFresh,s6Step297HeadGvFresh,s6Step297HeadFvFresh]=
    some (s6Step297HeadFvAfter,[s6Step297HeadGOut,s6Step297HeadFOut,s6Step297HeadGvOut,s6Step297HeadFvOut],(growRow 777 s6Step297HeadGFresh ++ (growRow 795 s6Step297HeadFFresh ++ (growRow 775 s6Step297HeadGvFresh ++ (growRow 776 s6Step297HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step297HeadFvAfter [] []=some (s6Step297HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step297HeadFvBefore s6Step297HeadFvAfter s6Step297HeadFvAfter
    s6Step297HeadFvRow s6Step297HeadFvOut 165 s6Step297HeadFvFresh [] [] []
    (growRow 776 s6Step297HeadFvFresh) ([]) s6Step297HeadFv_Incoming s6Step297HeadFv_checked h4 s6Step297HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step297HeadGvBefore s6Step297HeadGvAfter s6Step297HeadFvAfter
    s6Step297HeadGvRow s6Step297HeadGvOut 165 s6Step297HeadGvFresh [(s6Step297HeadFvRow,165)] [s6Step297HeadFvFresh] [s6Step297HeadFvOut]
    (growRow 775 s6Step297HeadGvFresh) ((growRow 776 s6Step297HeadFvFresh ++ [])) s6Step297HeadGv_Incoming s6Step297HeadGv_checked h3 s6Step297HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step297HeadFBefore s6Step297HeadFAfter s6Step297HeadFvAfter
    s6Step297HeadFRow s6Step297HeadFOut 124 s6Step297HeadFFresh [(s6Step297HeadGvRow,165),(s6Step297HeadFvRow,165)] [s6Step297HeadGvFresh,s6Step297HeadFvFresh] [s6Step297HeadGvOut,s6Step297HeadFvOut]
    (growRow 795 s6Step297HeadFFresh) ((growRow 775 s6Step297HeadGvFresh ++ (growRow 776 s6Step297HeadFvFresh ++ []))) s6Step297HeadF_Incoming s6Step297HeadF_checked h2 s6Step297HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step297HeadGBefore s6Step297HeadGAfter s6Step297HeadFvAfter
    s6Step297HeadGRow s6Step297HeadGOut 124 s6Step297HeadGFresh [(s6Step297HeadFRow,124),(s6Step297HeadGvRow,165),(s6Step297HeadFvRow,165)] [s6Step297HeadFFresh,s6Step297HeadGvFresh,s6Step297HeadFvFresh] [s6Step297HeadFOut,s6Step297HeadGvOut,s6Step297HeadFvOut]
    (growRow 777 s6Step297HeadGFresh) ((growRow 795 s6Step297HeadFFresh ++ (growRow 775 s6Step297HeadGvFresh ++ (growRow 776 s6Step297HeadFvFresh ++ [])))) s6Step297HeadG_Incoming s6Step297HeadG_checked h1 s6Step297HeadG_Outgoing
  exact h0

private theorem s6Step297HeadBank_checked : compileHmrBankResizeLog .headroom s6Step297HeadGBefore ⟨s6Step297HeadFRow,s6Step297HeadGRow,s6Step297HeadFvRow,s6Step297HeadGvRow⟩ ⟨124,124,165,165⟩ [s6Step297HeadGFresh,s6Step297HeadFFresh,s6Step297HeadGvFresh,s6Step297HeadFvFresh]=
    some (s6Step297HeadFvAfter,⟨s6Step297HeadFOut,s6Step297HeadGOut,s6Step297HeadFvOut,s6Step297HeadGvOut⟩,(growRow 777 s6Step297HeadGFresh ++ (growRow 795 s6Step297HeadFFresh ++ (growRow 775 s6Step297HeadGvFresh ++ (growRow 776 s6Step297HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step297HeadBank_rows]
  rfl

private theorem s6Step297Front_checked : compileHmrSourceFrontLog s6Step297EntryFBefore s6Step297FrontBank 123 164 ⟨122,121,164,164⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step297FrontLog=some s6Step297FrontPlan := by
  have pairEq : s6Step297FrontPair=⟨s6Step297HeadFRow,s6Step297HeadGRow,s6Step297HeadFvRow,s6Step297HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step297FrontHead=⟨s6Step297ExitFRow,s6Step297ExitGRow,s6Step297ExitFvRow,s6Step297ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step297Add0A=s6Step297FrontHead.f.wires := by decide +kernel
  have gEq : s6Step297Add0B=s6Step297FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step297Add1A=s6Step297FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step297Add1B=s6Step297FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step297EntryFBefore s6Step297FrontBank 123 164 ⟨122,121,164,164⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step297FrontLog s6Step297FrontPlan
  · exact s6Step297Front_entry
  · exact s6Step297EntryBank_checked
  · exact s6Step297Front_sigma
  · rfl
  · exact s6Step297Front_branch
  · rfl
  · simpa only [s6Step297FrontPlan,pairEq] using s6Step297HeadBank_checked
  · simpa only [s6Step297FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step297F4_checked
  · exact s6Step297Counter_checked
  · rfl
  · simpa only [s6Step297FrontPlan,headEq] using s6Step297ExitBank_checked

private theorem s6Step297Complete_explicit_checked : compileHmrEarlyStepLog s6Step297EntryFBefore s6Step297FrontBank 123 164 ⟨122,121,164,164⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step297CompleteLog=some s6Step297CompletePlan := by
  let Q := s6Step297EarlyControlPlan
  have hq := s6Step297EarlyControl_plan_checked
  have fv1 : s6Step297CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step297CompleteOut.fv.payload[2]?.getD s6Step297CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step297CompleteOut.fv.payload[3]?.getD s6Step297CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step297CompleteOut.fv.payload[4]?.getD s6Step297CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step297EntryFBefore s6Step297EarlyControlArena s6Step297FrontBank 123 164 ⟨122,121,164,164⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step297CompleteLog s6Step297FrontPlan Q
    s6Step297Front_checked s6Step297Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step297Complete_owned s6Step297Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step297EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 887 s6Step297CompleteOut.fv.second (s6Step297CompleteOut.fv.payload[2]?.getD s6Step297CompleteOut.fv.sign) (s6Step297CompleteOut.fv.payload[3]?.getD s6Step297CompleteOut.fv.sign) (s6Step297CompleteOut.fv.payload[4]?.getD s6Step297CompleteOut.fv.sign) 828 55 s6Step297EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep297Arena : Arena := s6Step297EntryFBefore
def s6PrivateStep297Bank : WindowBank := s6Step297FrontBank
def s6PrivateStep297Spec : HmrSourceWalkStepLog := ⟨123,164,⟨122,121,164,164⟩,55,.early s6Step297CompleteLog⟩
def s6PrivateStep297Plan : HmrSourceStepPlan := .early s6Step297CompletePlan
theorem s6PrivateStep297_source : s6PrivateStep297Spec=s6ObservedLogs288[9] := rfl
theorem s6PrivateStep297_checked : compileHmrSourceStepLog s6PrivateStep297Arena s6PrivateStep297Bank
    s6PrivateStep297Spec.fgWidth s6PrivateStep297Spec.vWidth s6PrivateStep297Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]
    6 498 297 s6PrivateStep297Spec.need none s6PrivateStep297Spec.log=some s6PrivateStep297Plan := by
  change compileHmrSourceStepLog s6Step297EntryFBefore s6Step297FrontBank 123 164 ⟨122,121,164,164⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 6 498 297 55 none (.early s6Step297CompleteLog)=some (.early s6Step297CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 297<498)]
  rw [s6Step297Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
