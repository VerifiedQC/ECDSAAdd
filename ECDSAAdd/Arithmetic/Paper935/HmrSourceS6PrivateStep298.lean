import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep296
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

private def s6Step298CompleteMoves : List (Wire × Wire) := []

private def s6Step298EarlyControlLog : HmrEarlyControlLog := ⟨[823, 922, 828, 807, 793],[886],[830],[805, 817, 812, 915, 906, 792],[]⟩

private def s6Step298FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [828], [], []],[[807], [922], [823], [825]],[[], [], [], []]⟩,[887],[865],[793],[886],[830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[793, 886, 830, 805]⟩

private def s6Step298CompleteLog : HmrEarlyStepLog := ⟨s6Step298FrontLog,s6Step298CompleteMoves,s6Step298EarlyControlLog⟩

private def s6Step298ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377],795⟩

private def s6Step298ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825],776⟩

private def s6Step298ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],777⟩

private def s6Step298ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848],775⟩

private def s6Step298FrontOut : WindowBank := ⟨s6Step298ExitFOut,s6Step298ExitGOut,s6Step298ExitFvOut,s6Step298ExitGvOut⟩

private def s6Step298CompleteOut : WindowBank := s6Step298FrontOut.repacked s6Step298CompleteMoves

private def s6Step298EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step298EarlyControlPositiveArena,[886],s6Step298EarlyControlEqualityArena,[830],⟨⟨887,false⟩,[⟨⟨886,false⟩,830⟩]⟩⟩

private def s6Step298EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,823⟩,⟨⟨772,false⟩,922⟩,⟨⟨771,false⟩,828⟩,⟨⟨770,false⟩,807⟩,⟨⟨769,false⟩,793⟩]⟩

private def s6Step298EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step298EarlyControlZeroArena,s6Step298EarlyControlZeroPlan,s6Step298EarlyControlClassPlan,s6Step298EarlyControlFlagArena,s6Step298EarlyControlFittedArena,s6Step298EarlyControlHistoryArena,s6Step298EarlyControlSigmaArena,s6Step298EarlyControlOutputArena,s6Step298EarlyControlLog⟩

private def s6Step298CounterWork : List Wire := [793, 886, 830, 805]

private theorem s6Step298Counter_bounded : s6Step298CounterWork.toFinset⊆arenaWires := by norm_num [s6Step298CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step298HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298CounterDuring : Arena := ⟨s6Step298HeadFvAfter.live∪s6Step298CounterWork.toFinset,Finset.union_subset s6Step298HeadFvAfter.bounded s6Step298Counter_bounded⟩

private def s6Step298EntryFFresh : List Wire := []

private def s6Step298EntryFvFresh : List Wire := []

private def s6Step298EntryGFresh : List Wire := [828]

private def s6Step298EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298EntryGvAfter : Arena := s6Step298EntryGAfter

private def s6Step298EntryGvFresh : List Wire := []

private def s6Step298ExitFExtra : List Wire := [922]

private def s6Step298ExitGExtra : List Wire := [828, 807]

private def s6Step298ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298ExitGvExtra : List Wire := [823]

private def s6Step298Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step298Add0_bounded : s6Step298Add0Work.toFinset⊆arenaWires := by
  have h : s6Step298Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step298Add0During : Arena := ⟨s6Step298Add0Arena.live∪s6Step298Add0Work.toFinset,Finset.union_subset s6Step298Add0Arena.bounded s6Step298Add0_bounded⟩

private def s6Step298Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step298Add1_bounded : s6Step298Add1Work.toFinset⊆arenaWires := by
  have h : s6Step298Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step298Add1During : Arena := ⟨s6Step298Add1Arena.live∪s6Step298Add1Work.toFinset,Finset.union_subset s6Step298Add1Arena.bounded s6Step298Add1_bounded⟩

private def s6Step298F4FlagArena : Arena := ⟨s6Step298HeadFvAfter.live∪{793},Finset.union_subset s6Step298HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step298F4Plan : HmrHybridF4Plan := ⟨s6Step298F4FlagArena,[793],s6Step298Add0Arena,[886],s6Step298Add0During,s6Step298Add0Work,s6Step298Add1During,s6Step298Add1Work⟩

private def s6Step298HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 922],795⟩

private def s6Step298HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825],776⟩

private def s6Step298HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 828, 807],777⟩

private def s6Step298HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 823],775⟩

private def s6Step298FrontHead : WindowBank := ⟨s6Step298HeadFOut,s6Step298HeadGOut,s6Step298HeadFvOut,s6Step298HeadGvOut⟩

private def s6Step298EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377],795⟩

private def s6Step298EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩

private def s6Step298EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 828],777⟩

private def s6Step298EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848],775⟩

private def s6Step298FrontPair : WindowBank := ⟨s6Step298EntryFOut,s6Step298EntryGOut,s6Step298EntryFvOut,s6Step298EntryGvOut⟩

private def s6Step298FrontSigmaArena : Arena := ⟨s6Step298EntryGvAfter.live∪{887},Finset.union_subset s6Step298EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step298HeadFFresh : List Wire := [922]

private def s6Step298HeadFvFresh : List Wire := [825]

private def s6Step298HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298HeadGFresh : List Wire := [807]

private def s6Step298HeadGvFresh : List Wire := [823]

private def s6Step298FrontPlan : HmrSourceFront := ⟨s6Step298EntryGvAfter,s6Step298FrontPair,(growRow 795 s6Step298EntryFFresh ++ (growRow 777 s6Step298EntryGFresh ++ (growRow 776 s6Step298EntryFvFresh ++ (growRow 775 s6Step298EntryGvFresh ++ [])))),s6Step298FrontSigmaArena,[887],s6Step298HeadGBefore,[865],
  s6Step298HeadFvAfter,s6Step298FrontHead,(growRow 777 s6Step298HeadGFresh ++ (growRow 795 s6Step298HeadFFresh ++ (growRow 775 s6Step298HeadGvFresh ++ (growRow 776 s6Step298HeadFvFresh ++ [])))),s6Step298F4Plan,s6Step298CounterDuring,s6Step298CounterWork,s6Step298ExitGvAfter,s6Step298FrontOut,(shrinkRow 777 s6Step298ExitGExtra ++ (shrinkRow 795 s6Step298ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step298ExitGvExtra ++ []))))⟩

private def s6Step298CompletePlan : HmrEarlyStepPlan := ⟨s6Step298FrontPlan,s6Step298EarlyControlArena,s6Step298EarlyControlPlan,s6Step298CompleteMoves⟩

private theorem s6Step298Complete_apart : List.Disjoint (s6Step298CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [887, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] := by
  have nd : ((s6Step298CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[887, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step298Complete_owned : (s6Step298CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step298EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298Complete_repack : s6Step298ExitGvAfter.checkRepack s6Step298CompleteMoves=some s6Step298EarlyControlArena := by rfl

private theorem s6Step298EarlyControl_branchOwned : ([865] : List Wire).toFinset⊆s6Step298EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EarlyControl_branch : compileHmrBranchRetirement s6Step298EarlyControlSigmaArena 865=some s6Step298EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step298EarlyControl_branchOwned
  · ext q
    simp [s6Step298EarlyControlOutputArena,s6Step298EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step298EarlyControl_classEqualityBorrow : s6Step298EarlyControlPositiveArena.checkBorrow (([887, 886] : List Wire).length-1) s6Step298EarlyControlLog.classWork=some s6Step298EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step298EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step298EarlyControlEqualityArena,s6Step298EarlyControlPositiveArena,s6Step298EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step298EarlyControl_classEqualityOwned : ([887, 886] : List Wire).toFinset⊆s6Step298EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EarlyControl_classEquality : compileHmrEqualityLog s6Step298EarlyControlPositiveArena [887, 886] 0 s6Step298EarlyControlLog.classWork=some (s6Step298EarlyControlEqualityArena,s6Step298EarlyControlLog.classWork,s6Step298EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step298EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step298EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step298EarlyControl_classOwned : ([769, 793, 887] : List Wire).toFinset⊆s6Step298EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EarlyControl_positiveBorrow : s6Step298EarlyControlZeroArena.checkBorrow (1) s6Step298EarlyControlLog.positiveWork=some s6Step298EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step298EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step298EarlyControlPositiveArena,s6Step298EarlyControlZeroArena,s6Step298EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step298EarlyControl_class : compileHmrSourceClassLog s6Step298EarlyControlZeroArena false 769 s6Step298EarlyControlZeroPlan.top 0 887 s6Step298EarlyControlLog.positiveWork s6Step298EarlyControlLog.classWork=some s6Step298EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step298EarlyControlClassPlan s6Step298EarlyControlZeroArena false 769 s6Step298EarlyControlZeroPlan.top 0 887
  constructor
  · decide +kernel
  · exact s6Step298EarlyControl_classOwned
  · exact s6Step298EarlyControl_positiveBorrow
  · exact s6Step298EarlyControl_classEquality

private theorem s6Step298EarlyControl_entryRecordOwned : ([865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step298EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EarlyControl_entrySigmaOwned : ([887, 254] : List Wire).toFinset⊆s6Step298EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EarlyControl_fitBorrow : s6Step298EarlyControlFlagArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step298EarlyControlLog.recordFresh=some s6Step298EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step298EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step298EarlyControlFittedArena,s6Step298EarlyControlFlagArena,s6Step298EarlyControlLog,arenaWires]

private theorem s6Step298EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step298EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EarlyControl_fit : compileHmrRecordGrowLog s6Step298EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step298EarlyControlLog.recordFresh=some s6Step298EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step298EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step298EarlyControl_fitBorrow

private theorem s6Step298EarlyControl_flagsBorrow : s6Step298EarlyControlEqualityArena.checkBorrow (6) s6Step298EarlyControlLog.flagWork=some s6Step298EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step298EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step298EarlyControlFlagArena,s6Step298EarlyControlEqualityArena,s6Step298EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step298EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s6Step298EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EarlyControl_flags : compileHmrFlagsLog s6Step298EarlyControlClassPlan.equalityArena s6Step298EarlyControlClassPlan.equality.top 253 252 251 s6Step298EarlyControlLog.flagWork=some s6Step298EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step298EarlyControl_flagsOwned⟩
  · exact s6Step298EarlyControl_flagsBorrow

private theorem s6Step298EarlyControl_historyBorrow : s6Step298EarlyControlArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step298EarlyControlLog.recordFresh=some s6Step298EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step298EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step298EarlyControlHistoryArena,s6Step298EarlyControlArena,s6Step298EarlyControlLog,arenaWires]

private theorem s6Step298EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step298EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EarlyControl_history : compileHmrRecordGrowLog s6Step298EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step298EarlyControlLog.recordFresh=some s6Step298EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step298EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step298EarlyControl_historyBorrow

private theorem s6Step298EarlyControl_sigmaOwned : ([254, 887] : List Wire).toFinset⊆s6Step298EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EarlyControl_sigmaReleaseOwned : ([887] : List Wire).toFinset⊆s6Step298EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EarlyControl_sigmaRelease : s6Step298EarlyControlHistoryArena.release {887} (fun _ => false)=some s6Step298EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step298EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step298EarlyControlSigmaArena,s6Step298EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step298EarlyControl_sigma : compileHmrSigmaDropLog s6Step298EarlyControlHistoryArena false 0 0 254 887 []=some s6Step298EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step298EarlyControl_sigmaOwned⟩
  · exact s6Step298EarlyControl_sigmaRelease

private theorem s6Step298EarlyControl_zeroBorrow : s6Step298EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step298EarlyControlLog.zeroWork=some s6Step298EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step298EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step298EarlyControlZeroArena,s6Step298EarlyControlArena,s6Step298EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step298EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step298EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step298EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EarlyControl_zero : compileHmrEqualityLog s6Step298EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step298EarlyControlLog.zeroWork=some (s6Step298EarlyControlZeroArena,s6Step298EarlyControlLog.zeroWork,s6Step298EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step298EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step298EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step298EarlyControl_logged : s6Step298EarlyControlPlan.Logged s6Step298EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 887 254 253 252 251 865 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step298EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step298EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step298EarlyControl_zero
  · exact s6Step298EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step298EarlyControl_flags
  · exact s6Step298EarlyControl_fit
  · exact s6Step298EarlyControl_history
  · exact s6Step298EarlyControl_sigma
  · exact s6Step298EarlyControl_branch

private theorem s6Step298EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step298EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 887 254 253 252 251 865 55 s6Step298EarlyControlLog=some s6Step298EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step298EarlyControlPlan s6Step298EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 887 254 253 252 251 865 55 s6Step298EarlyControl_logged

private def s6Step298EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377],795⟩

private def s6Step298EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩

private def s6Step298EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],777⟩

private def s6Step298EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848],775⟩

private def s6Step298FrontBank : WindowBank := ⟨s6Step298EntryFRow,s6Step298EntryGRow,s6Step298EntryFvRow,s6Step298EntryGvRow⟩

private def s6Step298Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 922, 795]

private def s6Step298Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 828, 807, 777]

private def s6Step298Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 776]

private def s6Step298Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 823, 775]

private theorem s6Step298Counter_apart : Disjoint s6Step298HeadFvAfter.live s6Step298CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step298HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298Counter_borrowed : s6Step298HeadFvAfter.checkBorrow 4 s6Step298CounterWork=some s6Step298CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step298HeadFvAfter s6Step298CounterDuring s6Step298CounterWork.toFinset s6Step298Counter_bounded s6Step298Counter_apart rfl

private theorem s6Step298Counter_owned : (887::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step298HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step298HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298Counter_checked : compileHmrCounterStepLog s6Step298HeadFvAfter true 887 [774, 773, 772, 771, 770, 769] s6Step298CounterWork=some s6Step298CounterDuring := by
  have owned : ∀q∈887::[774, 773, 772, 771, 770, 769],q∈s6Step298HeadFvAfter.live := fun q hq => s6Step298Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step298Counter_borrowed

private def s6Step298EntryFAfter : Arena := s6Step298EntryFBefore

private theorem s6Step298EntryBank_incomingDistinct : ([s6Step298EntryFRow,s6Step298EntryGRow,s6Step298EntryFvRow,s6Step298EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298EntryF_Incoming : rowsOwned s6Step298EntryFBefore [s6Step298EntryFRow,s6Step298EntryGRow,s6Step298EntryFvRow,s6Step298EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298EntryFRow,s6Step298EntryGRow,s6Step298EntryFvRow,s6Step298EntryGvRow] 0 s6Step298EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298EntryBank_outgoingOwned : rowsOwned s6Step298EntryGvAfter [s6Step298EntryFOut,s6Step298EntryGOut,s6Step298EntryFvOut,s6Step298EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step298EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298EntryF_Outgoing : rowsOwned s6Step298EntryGvAfter [s6Step298EntryFOut,s6Step298EntryGOut,s6Step298EntryFvOut,s6Step298EntryGvOut] :=
  hmrRows_owned_drop s6Step298EntryGvAfter [s6Step298EntryFOut,s6Step298EntryGOut,s6Step298EntryFvOut,s6Step298EntryGvOut] 0 s6Step298EntryBank_outgoingOwned

private theorem s6Step298EntryF_distinct : (s6Step298EntryFRow.sign::s6Step298EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298EntryF_owned : (s6Step298EntryFRow.sign::s6Step298EntryFRow.payload).toFinset⊆s6Step298EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EntryF_reserved : s6Step298EntryFBefore.reserve s6Step298EntryFFresh.toFinset=some s6Step298EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step298EntryFFresh,arenaWires]
  · norm_num [s6Step298EntryFBefore,s6Step298EntryFFresh,arenaWires]
  · simp only [s6Step298EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step298EntryF_checked : planRowResizeLog s6Step298EntryFBefore s6Step298EntryFRow 122 s6Step298EntryFFresh=
    some (s6Step298EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377],795⟩,growRow 795 s6Step298EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step298EntryFBefore s6Step298EntryFAfter s6Step298EntryFRow 122 s6Step298EntryFFresh
    s6Step298EntryF_distinct s6Step298EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step298EntryF_reserved
  have rowEq : WindowRow.mk (s6Step298EntryFRow.payload++s6Step298EntryFFresh) s6Step298EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step298EntryFvAfter : Arena := s6Step298EntryGAfter

private def s6Step298EntryFvBefore : Arena := s6Step298EntryGAfter

private theorem s6Step298EntryFv_Incoming : rowsOwned s6Step298EntryFvBefore [s6Step298EntryFvRow,s6Step298EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298EntryFRow,s6Step298EntryGRow,s6Step298EntryFvRow,s6Step298EntryGvRow] 2 s6Step298EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298EntryFv_Outgoing : rowsOwned s6Step298EntryGvAfter [s6Step298EntryFvOut,s6Step298EntryGvOut] :=
  hmrRows_owned_drop s6Step298EntryGvAfter [s6Step298EntryFOut,s6Step298EntryGOut,s6Step298EntryFvOut,s6Step298EntryGvOut] 2 s6Step298EntryBank_outgoingOwned

private theorem s6Step298EntryFv_distinct : (s6Step298EntryFvRow.sign::s6Step298EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298EntryFv_owned : (s6Step298EntryFvRow.sign::s6Step298EntryFvRow.payload).toFinset⊆s6Step298EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EntryFv_reserved : s6Step298EntryFvBefore.reserve s6Step298EntryFvFresh.toFinset=some s6Step298EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step298EntryFvFresh,arenaWires]
  · norm_num [s6Step298EntryFvBefore,s6Step298EntryGAfter,s6Step298EntryFvFresh,arenaWires]
  · simp only [s6Step298EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step298EntryFv_checked : planRowResizeLog s6Step298EntryFvBefore s6Step298EntryFvRow 164 s6Step298EntryFvFresh=
    some (s6Step298EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩,growRow 776 s6Step298EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step298EntryFvBefore s6Step298EntryFvAfter s6Step298EntryFvRow 164 s6Step298EntryFvFresh
    s6Step298EntryFv_distinct s6Step298EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step298EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step298EntryFvRow.payload++s6Step298EntryFvFresh) s6Step298EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step298EntryGBefore : Arena := s6Step298EntryFBefore

private theorem s6Step298EntryG_Incoming : rowsOwned s6Step298EntryGBefore [s6Step298EntryGRow,s6Step298EntryFvRow,s6Step298EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298EntryFRow,s6Step298EntryGRow,s6Step298EntryFvRow,s6Step298EntryGvRow] 1 s6Step298EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298EntryG_Outgoing : rowsOwned s6Step298EntryGvAfter [s6Step298EntryGOut,s6Step298EntryFvOut,s6Step298EntryGvOut] :=
  hmrRows_owned_drop s6Step298EntryGvAfter [s6Step298EntryFOut,s6Step298EntryGOut,s6Step298EntryFvOut,s6Step298EntryGvOut] 1 s6Step298EntryBank_outgoingOwned

private theorem s6Step298EntryG_distinct : (s6Step298EntryGRow.sign::s6Step298EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298EntryG_owned : (s6Step298EntryGRow.sign::s6Step298EntryGRow.payload).toFinset⊆s6Step298EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EntryG_reserved : s6Step298EntryGBefore.reserve s6Step298EntryGFresh.toFinset=some s6Step298EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step298EntryGFresh,arenaWires]
  · norm_num [s6Step298EntryGBefore,s6Step298EntryFBefore,s6Step298EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step298EntryGAfter,s6Step298EntryGBefore,s6Step298EntryFBefore,s6Step298EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step298EntryG_checked : planRowResizeLog s6Step298EntryGBefore s6Step298EntryGRow 122 s6Step298EntryGFresh=
    some (s6Step298EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 828],777⟩,growRow 777 s6Step298EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step298EntryGBefore s6Step298EntryGAfter s6Step298EntryGRow 122 s6Step298EntryGFresh
    s6Step298EntryG_distinct s6Step298EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step298EntryG_reserved
  have rowEq : WindowRow.mk (s6Step298EntryGRow.payload++s6Step298EntryGFresh) s6Step298EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 828],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step298EntryGvBefore : Arena := s6Step298EntryGAfter

private theorem s6Step298EntryGv_Incoming : rowsOwned s6Step298EntryGvBefore [s6Step298EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298EntryFRow,s6Step298EntryGRow,s6Step298EntryFvRow,s6Step298EntryGvRow] 3 s6Step298EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298EntryGv_Outgoing : rowsOwned s6Step298EntryGvAfter [s6Step298EntryGvOut] :=
  hmrRows_owned_drop s6Step298EntryGvAfter [s6Step298EntryFOut,s6Step298EntryGOut,s6Step298EntryFvOut,s6Step298EntryGvOut] 3 s6Step298EntryBank_outgoingOwned

private theorem s6Step298EntryGv_distinct : (s6Step298EntryGvRow.sign::s6Step298EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298EntryGv_owned : (s6Step298EntryGvRow.sign::s6Step298EntryGvRow.payload).toFinset⊆s6Step298EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298EntryGv_reserved : s6Step298EntryGvBefore.reserve s6Step298EntryGvFresh.toFinset=some s6Step298EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step298EntryGvFresh,arenaWires]
  · norm_num [s6Step298EntryGvBefore,s6Step298EntryGAfter,s6Step298EntryGvFresh,arenaWires]
  · simp only [s6Step298EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step298EntryGv_checked : planRowResizeLog s6Step298EntryGvBefore s6Step298EntryGvRow 164 s6Step298EntryGvFresh=
    some (s6Step298EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848],775⟩,growRow 775 s6Step298EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step298EntryGvBefore s6Step298EntryGvAfter s6Step298EntryGvRow 164 s6Step298EntryGvFresh
    s6Step298EntryGv_distinct s6Step298EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step298EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step298EntryGvRow.payload++s6Step298EntryGvFresh) s6Step298EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step298EntryBank_rows : planWindowRowsLog s6Step298EntryFBefore [(s6Step298EntryFRow,122),(s6Step298EntryGRow,122),(s6Step298EntryFvRow,164),(s6Step298EntryGvRow,164)] [s6Step298EntryFFresh,s6Step298EntryGFresh,s6Step298EntryFvFresh,s6Step298EntryGvFresh]=
    some (s6Step298EntryGvAfter,[s6Step298EntryFOut,s6Step298EntryGOut,s6Step298EntryFvOut,s6Step298EntryGvOut],(growRow 795 s6Step298EntryFFresh ++ (growRow 777 s6Step298EntryGFresh ++ (growRow 776 s6Step298EntryFvFresh ++ (growRow 775 s6Step298EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step298EntryGvAfter [] []=some (s6Step298EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step298EntryGvBefore s6Step298EntryGvAfter s6Step298EntryGvAfter
    s6Step298EntryGvRow s6Step298EntryGvOut 164 s6Step298EntryGvFresh [] [] []
    (growRow 775 s6Step298EntryGvFresh) ([]) s6Step298EntryGv_Incoming s6Step298EntryGv_checked h4 s6Step298EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step298EntryFvBefore s6Step298EntryFvAfter s6Step298EntryGvAfter
    s6Step298EntryFvRow s6Step298EntryFvOut 164 s6Step298EntryFvFresh [(s6Step298EntryGvRow,164)] [s6Step298EntryGvFresh] [s6Step298EntryGvOut]
    (growRow 776 s6Step298EntryFvFresh) ((growRow 775 s6Step298EntryGvFresh ++ [])) s6Step298EntryFv_Incoming s6Step298EntryFv_checked h3 s6Step298EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step298EntryGBefore s6Step298EntryGAfter s6Step298EntryGvAfter
    s6Step298EntryGRow s6Step298EntryGOut 122 s6Step298EntryGFresh [(s6Step298EntryFvRow,164),(s6Step298EntryGvRow,164)] [s6Step298EntryFvFresh,s6Step298EntryGvFresh] [s6Step298EntryFvOut,s6Step298EntryGvOut]
    (growRow 777 s6Step298EntryGFresh) ((growRow 776 s6Step298EntryFvFresh ++ (growRow 775 s6Step298EntryGvFresh ++ []))) s6Step298EntryG_Incoming s6Step298EntryG_checked h2 s6Step298EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step298EntryFBefore s6Step298EntryFAfter s6Step298EntryGvAfter
    s6Step298EntryFRow s6Step298EntryFOut 122 s6Step298EntryFFresh [(s6Step298EntryGRow,122),(s6Step298EntryFvRow,164),(s6Step298EntryGvRow,164)] [s6Step298EntryGFresh,s6Step298EntryFvFresh,s6Step298EntryGvFresh] [s6Step298EntryGOut,s6Step298EntryFvOut,s6Step298EntryGvOut]
    (growRow 795 s6Step298EntryFFresh) ((growRow 777 s6Step298EntryGFresh ++ (growRow 776 s6Step298EntryFvFresh ++ (growRow 775 s6Step298EntryGvFresh ++ [])))) s6Step298EntryF_Incoming s6Step298EntryF_checked h1 s6Step298EntryF_Outgoing
  exact h0

private theorem s6Step298EntryBank_checked : compileHmrBankResizeLog .entry s6Step298EntryFBefore ⟨s6Step298EntryFRow,s6Step298EntryGRow,s6Step298EntryFvRow,s6Step298EntryGvRow⟩ ⟨122,122,164,164⟩ [s6Step298EntryFFresh,s6Step298EntryGFresh,s6Step298EntryFvFresh,s6Step298EntryGvFresh]=
    some (s6Step298EntryGvAfter,⟨s6Step298EntryFOut,s6Step298EntryGOut,s6Step298EntryFvOut,s6Step298EntryGvOut⟩,(growRow 795 s6Step298EntryFFresh ++ (growRow 777 s6Step298EntryGFresh ++ (growRow 776 s6Step298EntryFvFresh ++ (growRow 775 s6Step298EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step298EntryBank_rows]
  rfl

private def s6Step298ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298ExitFBefore : Arena := s6Step298ExitGAfter

private def s6Step298ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 922],795⟩

private def s6Step298ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825],776⟩

private def s6Step298ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 828, 807],777⟩

private def s6Step298ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 823],775⟩

private theorem s6Step298ExitBank_incomingDistinct : ([s6Step298ExitGRow,s6Step298ExitFRow,s6Step298ExitFvRow,s6Step298ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298ExitF_Incoming : rowsOwned s6Step298ExitFBefore [s6Step298ExitFRow,s6Step298ExitFvRow,s6Step298ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298ExitGRow,s6Step298ExitFRow,s6Step298ExitFvRow,s6Step298ExitGvRow] 1 s6Step298ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298ExitBank_outgoingOwned : rowsOwned s6Step298ExitGvAfter [s6Step298ExitGOut,s6Step298ExitFOut,s6Step298ExitFvOut,s6Step298ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step298ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298ExitF_Outgoing : rowsOwned s6Step298ExitGvAfter [s6Step298ExitFOut,s6Step298ExitFvOut,s6Step298ExitGvOut] :=
  hmrRows_owned_drop s6Step298ExitGvAfter [s6Step298ExitGOut,s6Step298ExitFOut,s6Step298ExitFvOut,s6Step298ExitGvOut] 1 s6Step298ExitBank_outgoingOwned

private theorem s6Step298ExitF_distinct : (s6Step298ExitFRow.sign::s6Step298ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298ExitF_owned : (s6Step298ExitFRow.sign::s6Step298ExitFRow.payload).toFinset⊆s6Step298ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298ExitF_retired : s6Step298ExitFBefore.retireSet s6Step298ExitFExtra.toFinset=s6Step298ExitFAfter := by
  unfold Arena.retireSet s6Step298ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step298ExitFBefore,s6Step298ExitGAfter,s6Step298ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step298ExitF_checked : planRowResizeLog s6Step298ExitFBefore s6Step298ExitFRow 122 []=
    some (s6Step298ExitFAfter,s6Step298ExitFOut,shrinkRow 795 s6Step298ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step298ExitFBefore s6Step298ExitFRow 122 s6Step298ExitF_distinct s6Step298ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step298ExitFRow.payload.take 122) s6Step298ExitFRow.sign=s6Step298ExitFOut := by decide +kernel
  have hi : s6Step298ExitFRow.payload.drop 122=s6Step298ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step298ExitF_retired] at result
  exact result

private def s6Step298ExitFvAfter : Arena := s6Step298ExitFAfter

private def s6Step298ExitFvBefore : Arena := s6Step298ExitFAfter

private theorem s6Step298ExitFv_Incoming : rowsOwned s6Step298ExitFvBefore [s6Step298ExitFvRow,s6Step298ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298ExitGRow,s6Step298ExitFRow,s6Step298ExitFvRow,s6Step298ExitGvRow] 2 s6Step298ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298ExitFv_Outgoing : rowsOwned s6Step298ExitGvAfter [s6Step298ExitFvOut,s6Step298ExitGvOut] :=
  hmrRows_owned_drop s6Step298ExitGvAfter [s6Step298ExitGOut,s6Step298ExitFOut,s6Step298ExitFvOut,s6Step298ExitGvOut] 2 s6Step298ExitBank_outgoingOwned

private theorem s6Step298ExitFv_distinct : (s6Step298ExitFvRow.sign::s6Step298ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298ExitFv_owned : (s6Step298ExitFvRow.sign::s6Step298ExitFvRow.payload).toFinset⊆s6Step298ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298ExitFv_reserved : s6Step298ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step298ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step298ExitFv_checked : planRowResizeLog s6Step298ExitFvBefore s6Step298ExitFvRow 165 []=
    some (s6Step298ExitFvAfter,s6Step298ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step298ExitFvBefore s6Step298ExitFvAfter s6Step298ExitFvRow 165 []
    s6Step298ExitFv_distinct s6Step298ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step298ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step298ExitFvRow.payload++[]) s6Step298ExitFvRow.sign=s6Step298ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step298ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step298ExitG_Incoming : rowsOwned s6Step298ExitGBefore [s6Step298ExitGRow,s6Step298ExitFRow,s6Step298ExitFvRow,s6Step298ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298ExitGRow,s6Step298ExitFRow,s6Step298ExitFvRow,s6Step298ExitGvRow] 0 s6Step298ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298ExitG_Outgoing : rowsOwned s6Step298ExitGvAfter [s6Step298ExitGOut,s6Step298ExitFOut,s6Step298ExitFvOut,s6Step298ExitGvOut] :=
  hmrRows_owned_drop s6Step298ExitGvAfter [s6Step298ExitGOut,s6Step298ExitFOut,s6Step298ExitFvOut,s6Step298ExitGvOut] 0 s6Step298ExitBank_outgoingOwned

private theorem s6Step298ExitG_distinct : (s6Step298ExitGRow.sign::s6Step298ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298ExitG_owned : (s6Step298ExitGRow.sign::s6Step298ExitGRow.payload).toFinset⊆s6Step298ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298ExitG_retired : s6Step298ExitGBefore.retireSet s6Step298ExitGExtra.toFinset=s6Step298ExitGAfter := by
  unfold Arena.retireSet s6Step298ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step298ExitGBefore,s6Step298ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step298ExitG_checked : planRowResizeLog s6Step298ExitGBefore s6Step298ExitGRow 121 []=
    some (s6Step298ExitGAfter,s6Step298ExitGOut,shrinkRow 777 s6Step298ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step298ExitGBefore s6Step298ExitGRow 121 s6Step298ExitG_distinct s6Step298ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step298ExitGRow.payload.take 121) s6Step298ExitGRow.sign=s6Step298ExitGOut := by decide +kernel
  have hi : s6Step298ExitGRow.payload.drop 121=s6Step298ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step298ExitG_retired] at result
  exact result

private def s6Step298ExitGvBefore : Arena := s6Step298ExitFAfter

private theorem s6Step298ExitGv_Incoming : rowsOwned s6Step298ExitGvBefore [s6Step298ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298ExitGRow,s6Step298ExitFRow,s6Step298ExitFvRow,s6Step298ExitGvRow] 3 s6Step298ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298ExitGv_Outgoing : rowsOwned s6Step298ExitGvAfter [s6Step298ExitGvOut] :=
  hmrRows_owned_drop s6Step298ExitGvAfter [s6Step298ExitGOut,s6Step298ExitFOut,s6Step298ExitFvOut,s6Step298ExitGvOut] 3 s6Step298ExitBank_outgoingOwned

private theorem s6Step298ExitGv_distinct : (s6Step298ExitGvRow.sign::s6Step298ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298ExitGv_owned : (s6Step298ExitGvRow.sign::s6Step298ExitGvRow.payload).toFinset⊆s6Step298ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298ExitGv_retired : s6Step298ExitGvBefore.retireSet s6Step298ExitGvExtra.toFinset=s6Step298ExitGvAfter := by
  unfold Arena.retireSet s6Step298ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step298ExitGvBefore,s6Step298ExitFAfter,s6Step298ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step298ExitGv_checked : planRowResizeLog s6Step298ExitGvBefore s6Step298ExitGvRow 164 []=
    some (s6Step298ExitGvAfter,s6Step298ExitGvOut,shrinkRow 775 s6Step298ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step298ExitGvBefore s6Step298ExitGvRow 164 s6Step298ExitGv_distinct s6Step298ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step298ExitGvRow.payload.take 164) s6Step298ExitGvRow.sign=s6Step298ExitGvOut := by decide +kernel
  have hi : s6Step298ExitGvRow.payload.drop 164=s6Step298ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step298ExitGv_retired] at result
  exact result

private theorem s6Step298ExitBank_rows : planWindowRowsLog s6Step298ExitGBefore [(s6Step298ExitGRow,121),(s6Step298ExitFRow,122),(s6Step298ExitFvRow,165),(s6Step298ExitGvRow,164)] [[],[],[],[]]=
    some (s6Step298ExitGvAfter,[s6Step298ExitGOut,s6Step298ExitFOut,s6Step298ExitFvOut,s6Step298ExitGvOut],(shrinkRow 777 s6Step298ExitGExtra ++ (shrinkRow 795 s6Step298ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step298ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step298ExitGvAfter [] []=some (s6Step298ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step298ExitGvBefore s6Step298ExitGvAfter s6Step298ExitGvAfter
    s6Step298ExitGvRow s6Step298ExitGvOut 164 [] [] [] []
    (shrinkRow 775 s6Step298ExitGvExtra) ([]) s6Step298ExitGv_Incoming s6Step298ExitGv_checked h4 s6Step298ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step298ExitFvBefore s6Step298ExitFvAfter s6Step298ExitGvAfter
    s6Step298ExitFvRow s6Step298ExitFvOut 165 [] [(s6Step298ExitGvRow,164)] [[]] [s6Step298ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step298ExitGvExtra ++ [])) s6Step298ExitFv_Incoming s6Step298ExitFv_checked h3 s6Step298ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step298ExitFBefore s6Step298ExitFAfter s6Step298ExitGvAfter
    s6Step298ExitFRow s6Step298ExitFOut 122 [] [(s6Step298ExitFvRow,165),(s6Step298ExitGvRow,164)] [[],[]] [s6Step298ExitFvOut,s6Step298ExitGvOut]
    (shrinkRow 795 s6Step298ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step298ExitGvExtra ++ []))) s6Step298ExitF_Incoming s6Step298ExitF_checked h2 s6Step298ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step298ExitGBefore s6Step298ExitGAfter s6Step298ExitGvAfter
    s6Step298ExitGRow s6Step298ExitGOut 121 [] [(s6Step298ExitFRow,122),(s6Step298ExitFvRow,165),(s6Step298ExitGvRow,164)] [[],[],[]] [s6Step298ExitFOut,s6Step298ExitFvOut,s6Step298ExitGvOut]
    (shrinkRow 777 s6Step298ExitGExtra) ((shrinkRow 795 s6Step298ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step298ExitGvExtra ++ [])))) s6Step298ExitG_Incoming s6Step298ExitG_checked h1 s6Step298ExitG_Outgoing
  exact h0

private theorem s6Step298ExitBank_checked : compileHmrBankResizeLog .exit s6Step298ExitGBefore ⟨s6Step298ExitFRow,s6Step298ExitGRow,s6Step298ExitFvRow,s6Step298ExitGvRow⟩ ⟨122,121,165,164⟩ [[],[],[],[]]=
    some (s6Step298ExitGvAfter,⟨s6Step298ExitFOut,s6Step298ExitGOut,s6Step298ExitFvOut,s6Step298ExitGvOut⟩,(shrinkRow 777 s6Step298ExitGExtra ++ (shrinkRow 795 s6Step298ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step298ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step298ExitBank_rows]
  rfl

private theorem s6Step298Add0_apart : Disjoint s6Step298Add0Arena.live s6Step298Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step298Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298Add0_card : s6Step298Add0Arena.live.card=901 := by
  decide +kernel

private theorem s6Step298Add0_borrowed : s6Step298Add0Arena.checkBorrow (hmrHybridCount s6Step298Add0Arena s6Step298Add0B.length) s6Step298Add0Work=some s6Step298Add0During := by
  have len : s6Step298Add0Work.length=hmrHybridCount s6Step298Add0Arena s6Step298Add0B.length := by
    rw [hmrHybridCount,s6Step298Add0_card]
    decide +kernel
  have nd : s6Step298Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step298Add0Arena s6Step298Add0During s6Step298Add0Work.toFinset s6Step298Add0_bounded s6Step298Add0_apart rfl

private theorem s6Step298Add0_distinct : (793::865::886::(s6Step298Add0A++s6Step298Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298Add0_owned : (793::865::886::(s6Step298Add0A++s6Step298Add0B)).toFinset⊆s6Step298Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step298Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298Add0_checked : compileHmrHybridCinLog s6Step298Add0Arena 865 793 886 s6Step298Add0A s6Step298Add0B s6Step298Add0Work=some s6Step298Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step298Add0Arena s6Step298Add0During 865 793 886 s6Step298Add0A s6Step298Add0B s6Step298Add0Work
    (by decide +kernel) (by decide +kernel) s6Step298Add0_distinct
    (fun q hq => s6Step298Add0_owned (List.mem_toFinset.mpr hq)) s6Step298Add0_borrowed

private theorem s6Step298Add1_apart : Disjoint s6Step298Add1Arena.live s6Step298Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step298Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298Add1_card : s6Step298Add1Arena.live.card=901 := by
  decide +kernel

private theorem s6Step298Add1_borrowed : s6Step298Add1Arena.checkBorrow (hmrHybridCount s6Step298Add1Arena s6Step298Add1B.length) s6Step298Add1Work=some s6Step298Add1During := by
  have len : s6Step298Add1Work.length=hmrHybridCount s6Step298Add1Arena s6Step298Add1B.length := by
    rw [hmrHybridCount,s6Step298Add1_card]
    decide +kernel
  have nd : s6Step298Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step298Add1Arena s6Step298Add1During s6Step298Add1Work.toFinset s6Step298Add1_bounded s6Step298Add1_apart rfl

private theorem s6Step298Add1_distinct : (793::865::886::(s6Step298Add1A++s6Step298Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298Add1_owned : (793::865::886::(s6Step298Add1A++s6Step298Add1B)).toFinset⊆s6Step298Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step298Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298Add1_checked : compileHmrHybridCinLog s6Step298Add1Arena 865 793 886 s6Step298Add1A s6Step298Add1B s6Step298Add1Work=some s6Step298Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step298Add1Arena s6Step298Add1During 865 793 886 s6Step298Add1A s6Step298Add1B s6Step298Add1Work
    (by decide +kernel) (by decide +kernel) s6Step298Add1_distinct
    (fun q hq => s6Step298Add1_owned (List.mem_toFinset.mpr hq)) s6Step298Add1_borrowed

private theorem s6Step298F4_apart : Disjoint (s6Step298Add0A++s6Step298Add0B).toFinset (s6Step298Add1A++s6Step298Add1B).toFinset := by
  have nd : ((s6Step298Add0A++s6Step298Add0B)++(s6Step298Add1A++s6Step298Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step298F4_carry : s6Step298F4FlagArena.checkBorrow 1 [886]=some s6Step298Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step298F4FlagArena,s6Step298HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step298F4FlagArena,s6Step298HeadFvAfter,s6Step298Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step298F4_distinct : (887::865::793::886::((s6Step298Add0A++s6Step298Add1A)++(s6Step298Add0B++s6Step298Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298F4_flag : s6Step298HeadFvAfter.checkBorrow 1 [793]=some s6Step298F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step298HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step298F4_owned : (887::865::((s6Step298Add0A++s6Step298Add1A)++(s6Step298Add0B++s6Step298Add1B))).toFinset⊆s6Step298HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step298HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298F4_checked : compileHmrHybridF4Log s6Step298HeadFvAfter 887 865 s6Step298Add0A s6Step298Add0B s6Step298Add1A s6Step298Add1B [793] [886] s6Step298Add0Work s6Step298Add1Work=some s6Step298F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step298HeadFvAfter s6Step298F4FlagArena s6Step298Add0Arena s6Step298Add0During s6Step298Add1During 887 865
    s6Step298Add0A s6Step298Add0B s6Step298Add1A s6Step298Add1B [793] [886] s6Step298Add0Work s6Step298Add1Work
    (fun q hq => s6Step298F4_owned (List.mem_toFinset.mpr hq)) s6Step298F4_flag s6Step298F4_carry
    s6Step298F4_distinct s6Step298F4_apart s6Step298Add0_checked s6Step298Add1_checked

private theorem s6Step298Front_branch : s6Step298FrontSigmaArena.checkBorrow 1 [865]=some s6Step298HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step298FrontSigmaArena,s6Step298EntryGvAfter,s6Step298EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step298FrontSigmaArena,s6Step298EntryGvAfter,s6Step298EntryGAfter,s6Step298HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step298Front_entry : HmrFrontEntryValid s6Step298EntryFBefore s6Step298FrontBank 122 164 ⟨122,121,165,164⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step298FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step298EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step298EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step298FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step298Front_sigma : s6Step298EntryGvAfter.checkBorrow 1 [887]=some s6Step298FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step298EntryGvAfter,s6Step298EntryGAfter,arenaWires]
  · rfl

private def s6Step298HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298HeadFBefore : Arena := s6Step298HeadGAfter

private def s6Step298HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377],795⟩

private def s6Step298HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩

private def s6Step298HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 828],777⟩

private def s6Step298HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848],775⟩

private theorem s6Step298HeadBank_incomingDistinct : ([s6Step298HeadGRow,s6Step298HeadFRow,s6Step298HeadGvRow,s6Step298HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298HeadF_Incoming : rowsOwned s6Step298HeadFBefore [s6Step298HeadFRow,s6Step298HeadGvRow,s6Step298HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298HeadGRow,s6Step298HeadFRow,s6Step298HeadGvRow,s6Step298HeadFvRow] 1 s6Step298HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298HeadBank_outgoingOwned : rowsOwned s6Step298HeadFvAfter [s6Step298HeadGOut,s6Step298HeadFOut,s6Step298HeadGvOut,s6Step298HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step298HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298HeadF_Outgoing : rowsOwned s6Step298HeadFvAfter [s6Step298HeadFOut,s6Step298HeadGvOut,s6Step298HeadFvOut] :=
  hmrRows_owned_drop s6Step298HeadFvAfter [s6Step298HeadGOut,s6Step298HeadFOut,s6Step298HeadGvOut,s6Step298HeadFvOut] 1 s6Step298HeadBank_outgoingOwned

private theorem s6Step298HeadF_distinct : (s6Step298HeadFRow.sign::s6Step298HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298HeadF_owned : (s6Step298HeadFRow.sign::s6Step298HeadFRow.payload).toFinset⊆s6Step298HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298HeadF_reserved : s6Step298HeadFBefore.reserve s6Step298HeadFFresh.toFinset=some s6Step298HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step298HeadFFresh,arenaWires]
  · norm_num [s6Step298HeadFBefore,s6Step298HeadGAfter,s6Step298HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step298HeadFAfter,s6Step298HeadFBefore,s6Step298HeadGAfter,s6Step298HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step298HeadF_checked : planRowResizeLog s6Step298HeadFBefore s6Step298HeadFRow 123 s6Step298HeadFFresh=
    some (s6Step298HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 922],795⟩,growRow 795 s6Step298HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step298HeadFBefore s6Step298HeadFAfter s6Step298HeadFRow 123 s6Step298HeadFFresh
    s6Step298HeadF_distinct s6Step298HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step298HeadF_reserved
  have rowEq : WindowRow.mk (s6Step298HeadFRow.payload++s6Step298HeadFFresh) s6Step298HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 922],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step298HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step298HeadFvBefore : Arena := s6Step298HeadGvAfter

private theorem s6Step298HeadFv_Incoming : rowsOwned s6Step298HeadFvBefore [s6Step298HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298HeadGRow,s6Step298HeadFRow,s6Step298HeadGvRow,s6Step298HeadFvRow] 3 s6Step298HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298HeadFv_Outgoing : rowsOwned s6Step298HeadFvAfter [s6Step298HeadFvOut] :=
  hmrRows_owned_drop s6Step298HeadFvAfter [s6Step298HeadGOut,s6Step298HeadFOut,s6Step298HeadGvOut,s6Step298HeadFvOut] 3 s6Step298HeadBank_outgoingOwned

private theorem s6Step298HeadFv_distinct : (s6Step298HeadFvRow.sign::s6Step298HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298HeadFv_owned : (s6Step298HeadFvRow.sign::s6Step298HeadFvRow.payload).toFinset⊆s6Step298HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298HeadFv_reserved : s6Step298HeadFvBefore.reserve s6Step298HeadFvFresh.toFinset=some s6Step298HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step298HeadFvFresh,arenaWires]
  · norm_num [s6Step298HeadFvBefore,s6Step298HeadGvAfter,s6Step298HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step298HeadFvAfter,s6Step298HeadFvBefore,s6Step298HeadGvAfter,s6Step298HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step298HeadFv_checked : planRowResizeLog s6Step298HeadFvBefore s6Step298HeadFvRow 165 s6Step298HeadFvFresh=
    some (s6Step298HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825],776⟩,growRow 776 s6Step298HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step298HeadFvBefore s6Step298HeadFvAfter s6Step298HeadFvRow 165 s6Step298HeadFvFresh
    s6Step298HeadFv_distinct s6Step298HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step298HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step298HeadFvRow.payload++s6Step298HeadFvFresh) s6Step298HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step298HeadG_Incoming : rowsOwned s6Step298HeadGBefore [s6Step298HeadGRow,s6Step298HeadFRow,s6Step298HeadGvRow,s6Step298HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298HeadGRow,s6Step298HeadFRow,s6Step298HeadGvRow,s6Step298HeadFvRow] 0 s6Step298HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298HeadG_Outgoing : rowsOwned s6Step298HeadFvAfter [s6Step298HeadGOut,s6Step298HeadFOut,s6Step298HeadGvOut,s6Step298HeadFvOut] :=
  hmrRows_owned_drop s6Step298HeadFvAfter [s6Step298HeadGOut,s6Step298HeadFOut,s6Step298HeadGvOut,s6Step298HeadFvOut] 0 s6Step298HeadBank_outgoingOwned

private theorem s6Step298HeadG_distinct : (s6Step298HeadGRow.sign::s6Step298HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298HeadG_owned : (s6Step298HeadGRow.sign::s6Step298HeadGRow.payload).toFinset⊆s6Step298HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298HeadG_reserved : s6Step298HeadGBefore.reserve s6Step298HeadGFresh.toFinset=some s6Step298HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step298HeadGFresh,arenaWires]
  · norm_num [s6Step298HeadGBefore,s6Step298HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step298HeadGAfter,s6Step298HeadGBefore,s6Step298HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step298HeadG_checked : planRowResizeLog s6Step298HeadGBefore s6Step298HeadGRow 123 s6Step298HeadGFresh=
    some (s6Step298HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 828, 807],777⟩,growRow 777 s6Step298HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step298HeadGBefore s6Step298HeadGAfter s6Step298HeadGRow 123 s6Step298HeadGFresh
    s6Step298HeadG_distinct s6Step298HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step298HeadG_reserved
  have rowEq : WindowRow.mk (s6Step298HeadGRow.payload++s6Step298HeadGFresh) s6Step298HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 828, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step298HeadGvBefore : Arena := s6Step298HeadFAfter

private theorem s6Step298HeadGv_Incoming : rowsOwned s6Step298HeadGvBefore [s6Step298HeadGvRow,s6Step298HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step298HeadGRow,s6Step298HeadFRow,s6Step298HeadGvRow,s6Step298HeadFvRow] 2 s6Step298HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step298HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step298HeadGv_Outgoing : rowsOwned s6Step298HeadFvAfter [s6Step298HeadGvOut,s6Step298HeadFvOut] :=
  hmrRows_owned_drop s6Step298HeadFvAfter [s6Step298HeadGOut,s6Step298HeadFOut,s6Step298HeadGvOut,s6Step298HeadFvOut] 2 s6Step298HeadBank_outgoingOwned

private theorem s6Step298HeadGv_distinct : (s6Step298HeadGvRow.sign::s6Step298HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step298HeadGv_owned : (s6Step298HeadGvRow.sign::s6Step298HeadGvRow.payload).toFinset⊆s6Step298HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step298HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step298HeadGv_reserved : s6Step298HeadGvBefore.reserve s6Step298HeadGvFresh.toFinset=some s6Step298HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step298HeadGvFresh,arenaWires]
  · norm_num [s6Step298HeadGvBefore,s6Step298HeadFAfter,s6Step298HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step298HeadGvAfter,s6Step298HeadGvBefore,s6Step298HeadFAfter,s6Step298HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step298HeadGv_checked : planRowResizeLog s6Step298HeadGvBefore s6Step298HeadGvRow 165 s6Step298HeadGvFresh=
    some (s6Step298HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 823],775⟩,growRow 775 s6Step298HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step298HeadGvBefore s6Step298HeadGvAfter s6Step298HeadGvRow 165 s6Step298HeadGvFresh
    s6Step298HeadGv_distinct s6Step298HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step298HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step298HeadGvRow.payload++s6Step298HeadGvFresh) s6Step298HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 823],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step298HeadBank_rows : planWindowRowsLog s6Step298HeadGBefore [(s6Step298HeadGRow,123),(s6Step298HeadFRow,123),(s6Step298HeadGvRow,165),(s6Step298HeadFvRow,165)] [s6Step298HeadGFresh,s6Step298HeadFFresh,s6Step298HeadGvFresh,s6Step298HeadFvFresh]=
    some (s6Step298HeadFvAfter,[s6Step298HeadGOut,s6Step298HeadFOut,s6Step298HeadGvOut,s6Step298HeadFvOut],(growRow 777 s6Step298HeadGFresh ++ (growRow 795 s6Step298HeadFFresh ++ (growRow 775 s6Step298HeadGvFresh ++ (growRow 776 s6Step298HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step298HeadFvAfter [] []=some (s6Step298HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step298HeadFvBefore s6Step298HeadFvAfter s6Step298HeadFvAfter
    s6Step298HeadFvRow s6Step298HeadFvOut 165 s6Step298HeadFvFresh [] [] []
    (growRow 776 s6Step298HeadFvFresh) ([]) s6Step298HeadFv_Incoming s6Step298HeadFv_checked h4 s6Step298HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step298HeadGvBefore s6Step298HeadGvAfter s6Step298HeadFvAfter
    s6Step298HeadGvRow s6Step298HeadGvOut 165 s6Step298HeadGvFresh [(s6Step298HeadFvRow,165)] [s6Step298HeadFvFresh] [s6Step298HeadFvOut]
    (growRow 775 s6Step298HeadGvFresh) ((growRow 776 s6Step298HeadFvFresh ++ [])) s6Step298HeadGv_Incoming s6Step298HeadGv_checked h3 s6Step298HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step298HeadFBefore s6Step298HeadFAfter s6Step298HeadFvAfter
    s6Step298HeadFRow s6Step298HeadFOut 123 s6Step298HeadFFresh [(s6Step298HeadGvRow,165),(s6Step298HeadFvRow,165)] [s6Step298HeadGvFresh,s6Step298HeadFvFresh] [s6Step298HeadGvOut,s6Step298HeadFvOut]
    (growRow 795 s6Step298HeadFFresh) ((growRow 775 s6Step298HeadGvFresh ++ (growRow 776 s6Step298HeadFvFresh ++ []))) s6Step298HeadF_Incoming s6Step298HeadF_checked h2 s6Step298HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step298HeadGBefore s6Step298HeadGAfter s6Step298HeadFvAfter
    s6Step298HeadGRow s6Step298HeadGOut 123 s6Step298HeadGFresh [(s6Step298HeadFRow,123),(s6Step298HeadGvRow,165),(s6Step298HeadFvRow,165)] [s6Step298HeadFFresh,s6Step298HeadGvFresh,s6Step298HeadFvFresh] [s6Step298HeadFOut,s6Step298HeadGvOut,s6Step298HeadFvOut]
    (growRow 777 s6Step298HeadGFresh) ((growRow 795 s6Step298HeadFFresh ++ (growRow 775 s6Step298HeadGvFresh ++ (growRow 776 s6Step298HeadFvFresh ++ [])))) s6Step298HeadG_Incoming s6Step298HeadG_checked h1 s6Step298HeadG_Outgoing
  exact h0

private theorem s6Step298HeadBank_checked : compileHmrBankResizeLog .headroom s6Step298HeadGBefore ⟨s6Step298HeadFRow,s6Step298HeadGRow,s6Step298HeadFvRow,s6Step298HeadGvRow⟩ ⟨123,123,165,165⟩ [s6Step298HeadGFresh,s6Step298HeadFFresh,s6Step298HeadGvFresh,s6Step298HeadFvFresh]=
    some (s6Step298HeadFvAfter,⟨s6Step298HeadFOut,s6Step298HeadGOut,s6Step298HeadFvOut,s6Step298HeadGvOut⟩,(growRow 777 s6Step298HeadGFresh ++ (growRow 795 s6Step298HeadFFresh ++ (growRow 775 s6Step298HeadGvFresh ++ (growRow 776 s6Step298HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step298HeadBank_rows]
  rfl

private theorem s6Step298Front_checked : compileHmrSourceFrontLog s6Step298EntryFBefore s6Step298FrontBank 122 164 ⟨122,121,165,164⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step298FrontLog=some s6Step298FrontPlan := by
  have pairEq : s6Step298FrontPair=⟨s6Step298HeadFRow,s6Step298HeadGRow,s6Step298HeadFvRow,s6Step298HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step298FrontHead=⟨s6Step298ExitFRow,s6Step298ExitGRow,s6Step298ExitFvRow,s6Step298ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step298Add0A=s6Step298FrontHead.f.wires := by decide +kernel
  have gEq : s6Step298Add0B=s6Step298FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step298Add1A=s6Step298FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step298Add1B=s6Step298FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step298EntryFBefore s6Step298FrontBank 122 164 ⟨122,121,165,164⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step298FrontLog s6Step298FrontPlan
  · exact s6Step298Front_entry
  · exact s6Step298EntryBank_checked
  · exact s6Step298Front_sigma
  · rfl
  · exact s6Step298Front_branch
  · rfl
  · simpa only [s6Step298FrontPlan,pairEq] using s6Step298HeadBank_checked
  · simpa only [s6Step298FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step298F4_checked
  · exact s6Step298Counter_checked
  · rfl
  · simpa only [s6Step298FrontPlan,headEq] using s6Step298ExitBank_checked

private theorem s6Step298Complete_explicit_checked : compileHmrEarlyStepLog s6Step298EntryFBefore s6Step298FrontBank 122 164 ⟨122,121,165,164⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step298CompleteLog=some s6Step298CompletePlan := by
  let Q := s6Step298EarlyControlPlan
  have hq := s6Step298EarlyControl_plan_checked
  have fv1 : s6Step298CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step298CompleteOut.fv.payload[2]?.getD s6Step298CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step298CompleteOut.fv.payload[3]?.getD s6Step298CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step298CompleteOut.fv.payload[4]?.getD s6Step298CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step298EntryFBefore s6Step298EarlyControlArena s6Step298FrontBank 122 164 ⟨122,121,165,164⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step298CompleteLog s6Step298FrontPlan Q
    s6Step298Front_checked s6Step298Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step298Complete_owned s6Step298Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step298EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 887 s6Step298CompleteOut.fv.second (s6Step298CompleteOut.fv.payload[2]?.getD s6Step298CompleteOut.fv.sign) (s6Step298CompleteOut.fv.payload[3]?.getD s6Step298CompleteOut.fv.sign) (s6Step298CompleteOut.fv.payload[4]?.getD s6Step298CompleteOut.fv.sign) 865 55 s6Step298EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep298Arena : Arena := s6Step298EntryFBefore
def s6PrivateStep298Bank : WindowBank := s6Step298FrontBank
def s6PrivateStep298Spec : HmrSourceWalkStepLog := ⟨122,164,⟨122,121,165,164⟩,55,.early s6Step298CompleteLog⟩
def s6PrivateStep298Plan : HmrSourceStepPlan := .early s6Step298CompletePlan
theorem s6PrivateStep298_source : s6PrivateStep298Spec=s6ObservedLogs288[10] := rfl
theorem s6PrivateStep298_checked : compileHmrSourceStepLog s6PrivateStep298Arena s6PrivateStep298Bank
    s6PrivateStep298Spec.fgWidth s6PrivateStep298Spec.vWidth s6PrivateStep298Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]
    6 498 298 s6PrivateStep298Spec.need none s6PrivateStep298Spec.log=some s6PrivateStep298Plan := by
  change compileHmrSourceStepLog s6Step298EntryFBefore s6Step298FrontBank 122 164 ⟨122,121,165,164⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 6 498 298 55 none (.early s6Step298CompleteLog)=some (.early s6Step298CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 298<498)]
  rw [s6Step298Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
