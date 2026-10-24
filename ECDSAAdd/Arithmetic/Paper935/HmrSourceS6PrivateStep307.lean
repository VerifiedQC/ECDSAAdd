import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep305
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

private def s6Step307CompleteMoves : List (Wire × Wire) := [(814,117)]

private def s6Step307EarlyControlLog : HmrEarlyControlLog := ⟨[814, 793, 857, 796, 865],[803],[830],[805, 817, 812, 915, 906, 792],[]⟩

private def s6Step307FrontLog : HmrFrontAllocationLog := ⟨⟨[[796], [], [], []],[[803], [865], [793], [857]],[[], [], [], []]⟩,[828],[890],[830],[805],[817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step307CompleteLog : HmrEarlyStepLog := ⟨s6Step307FrontLog,s6Step307CompleteMoves,s6Step307EarlyControlLog⟩

private def s6Step307ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372],795⟩

private def s6Step307ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩

private def s6Step307ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116],777⟩

private def s6Step307ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩

private def s6Step307FrontOut : WindowBank := ⟨s6Step307ExitFOut,s6Step307ExitGOut,s6Step307ExitFvOut,s6Step307ExitGvOut⟩

private def s6Step307CompleteOut : WindowBank := s6Step307FrontOut.repacked s6Step307CompleteMoves

private def s6Step307EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step307EarlyControlPositiveArena,[803],s6Step307EarlyControlEqualityArena,[830],⟨⟨828,false⟩,[⟨⟨803,false⟩,830⟩]⟩⟩

private def s6Step307EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,814⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,857⟩,⟨⟨770,false⟩,796⟩,⟨⟨769,false⟩,865⟩]⟩

private def s6Step307EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step307EarlyControlZeroArena,s6Step307EarlyControlZeroPlan,s6Step307EarlyControlClassPlan,s6Step307EarlyControlFlagArena,s6Step307EarlyControlFittedArena,s6Step307EarlyControlHistoryArena,s6Step307EarlyControlSigmaArena,s6Step307EarlyControlOutputArena,s6Step307EarlyControlLog⟩

private def s6Step307CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step307Counter_bounded : s6Step307CounterWork.toFinset⊆arenaWires := by norm_num [s6Step307CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step307HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307CounterDuring : Arena := ⟨s6Step307HeadFvAfter.live∪s6Step307CounterWork.toFinset,Finset.union_subset s6Step307HeadFvAfter.bounded s6Step307Counter_bounded⟩

private def s6Step307EntryFFresh : List Wire := [796]

private def s6Step307EntryFvFresh : List Wire := []

private def s6Step307EntryGFresh : List Wire := []

private def s6Step307EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307EntryGvAfter : Arena := s6Step307EntryFAfter

private def s6Step307EntryGvFresh : List Wire := []

private def s6Step307ExitFExtra : List Wire := [796, 865]

private def s6Step307ExitFvExtra : List Wire := [857]

private def s6Step307ExitGExtra : List Wire := [117, 803]

private def s6Step307ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307ExitGvExtra : List Wire := [793]

private def s6Step307Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307Add0Work : List Wire := [817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step307Add0_bounded : s6Step307Add0Work.toFinset⊆arenaWires := by
  have h : s6Step307Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step307Add0During : Arena := ⟨s6Step307Add0Arena.live∪s6Step307Add0Work.toFinset,Finset.union_subset s6Step307Add0Arena.bounded s6Step307Add0_bounded⟩

private def s6Step307Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307Add1Work : List Wire := [817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step307Add1_bounded : s6Step307Add1Work.toFinset⊆arenaWires := by
  have h : s6Step307Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step307Add1During : Arena := ⟨s6Step307Add1Arena.live∪s6Step307Add1Work.toFinset,Finset.union_subset s6Step307Add1Arena.bounded s6Step307Add1_bounded⟩

private def s6Step307F4FlagArena : Arena := ⟨s6Step307HeadFvAfter.live∪{830},Finset.union_subset s6Step307HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step307F4Plan : HmrHybridF4Plan := ⟨s6Step307F4FlagArena,[830],s6Step307Add0Arena,[805],s6Step307Add0During,s6Step307Add0Work,s6Step307Add1During,s6Step307Add1Work⟩

private def s6Step307HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 796, 865],795⟩

private def s6Step307HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 857],776⟩

private def s6Step307HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803],777⟩

private def s6Step307HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 793],775⟩

private def s6Step307FrontHead : WindowBank := ⟨s6Step307HeadFOut,s6Step307HeadGOut,s6Step307HeadFvOut,s6Step307HeadGvOut⟩

private def s6Step307EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 796],795⟩

private def s6Step307EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩

private def s6Step307EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩

private def s6Step307EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩

private def s6Step307FrontPair : WindowBank := ⟨s6Step307EntryFOut,s6Step307EntryGOut,s6Step307EntryFvOut,s6Step307EntryGvOut⟩

private def s6Step307FrontSigmaArena : Arena := ⟨s6Step307EntryGvAfter.live∪{828},Finset.union_subset s6Step307EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step307HeadFFresh : List Wire := [865]

private def s6Step307HeadFvFresh : List Wire := [857]

private def s6Step307HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307HeadGFresh : List Wire := [803]

private def s6Step307HeadGvFresh : List Wire := [793]

private def s6Step307FrontPlan : HmrSourceFront := ⟨s6Step307EntryGvAfter,s6Step307FrontPair,(growRow 795 s6Step307EntryFFresh ++ (growRow 777 s6Step307EntryGFresh ++ (growRow 776 s6Step307EntryFvFresh ++ (growRow 775 s6Step307EntryGvFresh ++ [])))),s6Step307FrontSigmaArena,[828],s6Step307HeadGBefore,[890],
  s6Step307HeadFvAfter,s6Step307FrontHead,(growRow 777 s6Step307HeadGFresh ++ (growRow 795 s6Step307HeadFFresh ++ (growRow 775 s6Step307HeadGvFresh ++ (growRow 776 s6Step307HeadFvFresh ++ [])))),s6Step307F4Plan,s6Step307CounterDuring,s6Step307CounterWork,s6Step307ExitGvAfter,s6Step307FrontOut,(shrinkRow 777 s6Step307ExitGExtra ++ (shrinkRow 795 s6Step307ExitFExtra ++ (shrinkRow 776 s6Step307ExitFvExtra ++ (shrinkRow 775 s6Step307ExitGvExtra ++ []))))⟩

private def s6Step307CompletePlan : HmrEarlyStepPlan := ⟨s6Step307FrontPlan,s6Step307EarlyControlArena,s6Step307EarlyControlPlan,s6Step307CompleteMoves⟩

private theorem s6Step307Complete_apart : List.Disjoint (s6Step307CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [828, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] := by
  have nd : ((s6Step307CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[828, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step307Complete_owned : (s6Step307CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step307EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step307CompleteMoveArena : Arena := ⟨s6Step307ExitGvAfter.live∪{117},Finset.union_subset s6Step307ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step307Complete_repack : s6Step307ExitGvAfter.checkRepack s6Step307CompleteMoves=some s6Step307EarlyControlArena := by
  have owned : 814∈s6Step307ExitGvAfter.live := by norm_num [s6Step307ExitGvAfter,arenaWires]
  have reserve : s6Step307ExitGvAfter.reserve {117}=some s6Step307CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step307ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step307CompleteMoveArena.retireSet {814}=s6Step307EarlyControlArena := by
    unfold Arena.retireSet s6Step307EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step307CompleteMoveArena,s6Step307ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step307CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step307CompleteMoveArena.retireSet {814}).checkRepack []=some s6Step307EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step307EarlyControl_branchOwned : ([890] : List Wire).toFinset⊆s6Step307EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EarlyControl_branch : compileHmrBranchRetirement s6Step307EarlyControlSigmaArena 890=some s6Step307EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step307EarlyControl_branchOwned
  · ext q
    simp [s6Step307EarlyControlOutputArena,s6Step307EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step307EarlyControl_classEqualityBorrow : s6Step307EarlyControlPositiveArena.checkBorrow (([828, 803] : List Wire).length-1) s6Step307EarlyControlLog.classWork=some s6Step307EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step307EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step307EarlyControlEqualityArena,s6Step307EarlyControlPositiveArena,s6Step307EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step307EarlyControl_classEqualityOwned : ([828, 803] : List Wire).toFinset⊆s6Step307EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EarlyControl_classEquality : compileHmrEqualityLog s6Step307EarlyControlPositiveArena [828, 803] 0 s6Step307EarlyControlLog.classWork=some (s6Step307EarlyControlEqualityArena,s6Step307EarlyControlLog.classWork,s6Step307EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step307EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step307EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step307EarlyControl_classOwned : ([769, 865, 828] : List Wire).toFinset⊆s6Step307EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EarlyControl_positiveBorrow : s6Step307EarlyControlZeroArena.checkBorrow (1) s6Step307EarlyControlLog.positiveWork=some s6Step307EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step307EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step307EarlyControlPositiveArena,s6Step307EarlyControlZeroArena,s6Step307EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step307EarlyControl_class : compileHmrSourceClassLog s6Step307EarlyControlZeroArena false 769 s6Step307EarlyControlZeroPlan.top 0 828 s6Step307EarlyControlLog.positiveWork s6Step307EarlyControlLog.classWork=some s6Step307EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step307EarlyControlClassPlan s6Step307EarlyControlZeroArena false 769 s6Step307EarlyControlZeroPlan.top 0 828
  constructor
  · decide +kernel
  · exact s6Step307EarlyControl_classOwned
  · exact s6Step307EarlyControl_positiveBorrow
  · exact s6Step307EarlyControl_classEquality

private theorem s6Step307EarlyControl_entryRecordOwned : ([890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step307EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EarlyControl_entrySigmaOwned : ([828, 254] : List Wire).toFinset⊆s6Step307EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EarlyControl_fitBorrow : s6Step307EarlyControlFlagArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step307EarlyControlLog.recordFresh=some s6Step307EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step307EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step307EarlyControlFittedArena,s6Step307EarlyControlFlagArena,s6Step307EarlyControlLog,arenaWires]

private theorem s6Step307EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step307EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EarlyControl_fit : compileHmrRecordGrowLog s6Step307EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step307EarlyControlLog.recordFresh=some s6Step307EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step307EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step307EarlyControl_fitBorrow

private theorem s6Step307EarlyControl_flagsBorrow : s6Step307EarlyControlEqualityArena.checkBorrow (6) s6Step307EarlyControlLog.flagWork=some s6Step307EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step307EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step307EarlyControlFlagArena,s6Step307EarlyControlEqualityArena,s6Step307EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step307EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s6Step307EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EarlyControl_flags : compileHmrFlagsLog s6Step307EarlyControlClassPlan.equalityArena s6Step307EarlyControlClassPlan.equality.top 253 252 251 s6Step307EarlyControlLog.flagWork=some s6Step307EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step307EarlyControl_flagsOwned⟩
  · exact s6Step307EarlyControl_flagsBorrow

private theorem s6Step307EarlyControl_historyBorrow : s6Step307EarlyControlArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step307EarlyControlLog.recordFresh=some s6Step307EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step307EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step307EarlyControlHistoryArena,s6Step307EarlyControlArena,s6Step307EarlyControlLog,arenaWires]

private theorem s6Step307EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step307EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EarlyControl_history : compileHmrRecordGrowLog s6Step307EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step307EarlyControlLog.recordFresh=some s6Step307EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step307EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step307EarlyControl_historyBorrow

private theorem s6Step307EarlyControl_sigmaOwned : ([254, 828] : List Wire).toFinset⊆s6Step307EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EarlyControl_sigmaReleaseOwned : ([828] : List Wire).toFinset⊆s6Step307EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EarlyControl_sigmaRelease : s6Step307EarlyControlHistoryArena.release {828} (fun _ => false)=some s6Step307EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step307EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step307EarlyControlSigmaArena,s6Step307EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step307EarlyControl_sigma : compileHmrSigmaDropLog s6Step307EarlyControlHistoryArena false 0 0 254 828 []=some s6Step307EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step307EarlyControl_sigmaOwned⟩
  · exact s6Step307EarlyControl_sigmaRelease

private theorem s6Step307EarlyControl_zeroBorrow : s6Step307EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step307EarlyControlLog.zeroWork=some s6Step307EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step307EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step307EarlyControlZeroArena,s6Step307EarlyControlArena,s6Step307EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step307EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step307EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step307EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EarlyControl_zero : compileHmrEqualityLog s6Step307EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step307EarlyControlLog.zeroWork=some (s6Step307EarlyControlZeroArena,s6Step307EarlyControlLog.zeroWork,s6Step307EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step307EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step307EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step307EarlyControl_logged : s6Step307EarlyControlPlan.Logged s6Step307EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 828 254 253 252 251 890 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step307EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step307EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step307EarlyControl_zero
  · exact s6Step307EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step307EarlyControl_flags
  · exact s6Step307EarlyControl_fit
  · exact s6Step307EarlyControl_history
  · exact s6Step307EarlyControl_sigma
  · exact s6Step307EarlyControl_branch

private theorem s6Step307EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step307EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 828 254 253 252 251 890 56 s6Step307EarlyControlLog=some s6Step307EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step307EarlyControlPlan s6Step307EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 828 254 253 252 251 890 56 s6Step307EarlyControl_logged

private def s6Step307EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372],795⟩

private def s6Step307EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩

private def s6Step307EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩

private def s6Step307EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩

private def s6Step307FrontBank : WindowBank := ⟨s6Step307EntryFRow,s6Step307EntryGRow,s6Step307EntryFvRow,s6Step307EntryGvRow⟩

private def s6Step307Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 796, 865, 795]

private def s6Step307Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803, 777]

private def s6Step307Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 857, 776]

private def s6Step307Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 793, 775]

private theorem s6Step307Counter_apart : Disjoint s6Step307HeadFvAfter.live s6Step307CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step307HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307Counter_borrowed : s6Step307HeadFvAfter.checkBorrow 4 s6Step307CounterWork=some s6Step307CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step307HeadFvAfter s6Step307CounterDuring s6Step307CounterWork.toFinset s6Step307Counter_bounded s6Step307Counter_apart rfl

private theorem s6Step307Counter_owned : (828::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step307HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step307HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307Counter_checked : compileHmrCounterStepLog s6Step307HeadFvAfter true 828 [774, 773, 772, 771, 770, 769] s6Step307CounterWork=some s6Step307CounterDuring := by
  have owned : ∀q∈828::[774, 773, 772, 771, 770, 769],q∈s6Step307HeadFvAfter.live := fun q hq => s6Step307Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step307Counter_borrowed

private theorem s6Step307EntryBank_incomingDistinct : ([s6Step307EntryFRow,s6Step307EntryGRow,s6Step307EntryFvRow,s6Step307EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307EntryF_Incoming : rowsOwned s6Step307EntryFBefore [s6Step307EntryFRow,s6Step307EntryGRow,s6Step307EntryFvRow,s6Step307EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307EntryFRow,s6Step307EntryGRow,s6Step307EntryFvRow,s6Step307EntryGvRow] 0 s6Step307EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307EntryBank_outgoingOwned : rowsOwned s6Step307EntryGvAfter [s6Step307EntryFOut,s6Step307EntryGOut,s6Step307EntryFvOut,s6Step307EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step307EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307EntryF_Outgoing : rowsOwned s6Step307EntryGvAfter [s6Step307EntryFOut,s6Step307EntryGOut,s6Step307EntryFvOut,s6Step307EntryGvOut] :=
  hmrRows_owned_drop s6Step307EntryGvAfter [s6Step307EntryFOut,s6Step307EntryGOut,s6Step307EntryFvOut,s6Step307EntryGvOut] 0 s6Step307EntryBank_outgoingOwned

private theorem s6Step307EntryF_distinct : (s6Step307EntryFRow.sign::s6Step307EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307EntryF_owned : (s6Step307EntryFRow.sign::s6Step307EntryFRow.payload).toFinset⊆s6Step307EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EntryF_reserved : s6Step307EntryFBefore.reserve s6Step307EntryFFresh.toFinset=some s6Step307EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step307EntryFFresh,arenaWires]
  · norm_num [s6Step307EntryFBefore,s6Step307EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step307EntryFAfter,s6Step307EntryFBefore,s6Step307EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step307EntryF_checked : planRowResizeLog s6Step307EntryFBefore s6Step307EntryFRow 118 s6Step307EntryFFresh=
    some (s6Step307EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 796],795⟩,growRow 795 s6Step307EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step307EntryFBefore s6Step307EntryFAfter s6Step307EntryFRow 118 s6Step307EntryFFresh
    s6Step307EntryF_distinct s6Step307EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step307EntryF_reserved
  have rowEq : WindowRow.mk (s6Step307EntryFRow.payload++s6Step307EntryFFresh) s6Step307EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 796],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step307EntryFvAfter : Arena := s6Step307EntryFAfter

private def s6Step307EntryFvBefore : Arena := s6Step307EntryFAfter

private theorem s6Step307EntryFv_Incoming : rowsOwned s6Step307EntryFvBefore [s6Step307EntryFvRow,s6Step307EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307EntryFRow,s6Step307EntryGRow,s6Step307EntryFvRow,s6Step307EntryGvRow] 2 s6Step307EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307EntryFv_Outgoing : rowsOwned s6Step307EntryGvAfter [s6Step307EntryFvOut,s6Step307EntryGvOut] :=
  hmrRows_owned_drop s6Step307EntryGvAfter [s6Step307EntryFOut,s6Step307EntryGOut,s6Step307EntryFvOut,s6Step307EntryGvOut] 2 s6Step307EntryBank_outgoingOwned

private theorem s6Step307EntryFv_distinct : (s6Step307EntryFvRow.sign::s6Step307EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307EntryFv_owned : (s6Step307EntryFvRow.sign::s6Step307EntryFvRow.payload).toFinset⊆s6Step307EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EntryFv_reserved : s6Step307EntryFvBefore.reserve s6Step307EntryFvFresh.toFinset=some s6Step307EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step307EntryFvFresh,arenaWires]
  · norm_num [s6Step307EntryFvBefore,s6Step307EntryFAfter,s6Step307EntryFvFresh,arenaWires]
  · simp only [s6Step307EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step307EntryFv_checked : planRowResizeLog s6Step307EntryFvBefore s6Step307EntryFvRow 169 s6Step307EntryFvFresh=
    some (s6Step307EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩,growRow 776 s6Step307EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step307EntryFvBefore s6Step307EntryFvAfter s6Step307EntryFvRow 169 s6Step307EntryFvFresh
    s6Step307EntryFv_distinct s6Step307EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step307EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step307EntryFvRow.payload++s6Step307EntryFvFresh) s6Step307EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step307EntryGAfter : Arena := s6Step307EntryFAfter

private def s6Step307EntryGBefore : Arena := s6Step307EntryFAfter

private theorem s6Step307EntryG_Incoming : rowsOwned s6Step307EntryGBefore [s6Step307EntryGRow,s6Step307EntryFvRow,s6Step307EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307EntryFRow,s6Step307EntryGRow,s6Step307EntryFvRow,s6Step307EntryGvRow] 1 s6Step307EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307EntryG_Outgoing : rowsOwned s6Step307EntryGvAfter [s6Step307EntryGOut,s6Step307EntryFvOut,s6Step307EntryGvOut] :=
  hmrRows_owned_drop s6Step307EntryGvAfter [s6Step307EntryFOut,s6Step307EntryGOut,s6Step307EntryFvOut,s6Step307EntryGvOut] 1 s6Step307EntryBank_outgoingOwned

private theorem s6Step307EntryG_distinct : (s6Step307EntryGRow.sign::s6Step307EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307EntryG_owned : (s6Step307EntryGRow.sign::s6Step307EntryGRow.payload).toFinset⊆s6Step307EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EntryG_reserved : s6Step307EntryGBefore.reserve s6Step307EntryGFresh.toFinset=some s6Step307EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step307EntryGFresh,arenaWires]
  · norm_num [s6Step307EntryGBefore,s6Step307EntryFAfter,s6Step307EntryGFresh,arenaWires]
  · simp only [s6Step307EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step307EntryG_checked : planRowResizeLog s6Step307EntryGBefore s6Step307EntryGRow 118 s6Step307EntryGFresh=
    some (s6Step307EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩,growRow 777 s6Step307EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step307EntryGBefore s6Step307EntryGAfter s6Step307EntryGRow 118 s6Step307EntryGFresh
    s6Step307EntryG_distinct s6Step307EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step307EntryG_reserved
  have rowEq : WindowRow.mk (s6Step307EntryGRow.payload++s6Step307EntryGFresh) s6Step307EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step307EntryGvBefore : Arena := s6Step307EntryFAfter

private theorem s6Step307EntryGv_Incoming : rowsOwned s6Step307EntryGvBefore [s6Step307EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307EntryFRow,s6Step307EntryGRow,s6Step307EntryFvRow,s6Step307EntryGvRow] 3 s6Step307EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307EntryGv_Outgoing : rowsOwned s6Step307EntryGvAfter [s6Step307EntryGvOut] :=
  hmrRows_owned_drop s6Step307EntryGvAfter [s6Step307EntryFOut,s6Step307EntryGOut,s6Step307EntryFvOut,s6Step307EntryGvOut] 3 s6Step307EntryBank_outgoingOwned

private theorem s6Step307EntryGv_distinct : (s6Step307EntryGvRow.sign::s6Step307EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307EntryGv_owned : (s6Step307EntryGvRow.sign::s6Step307EntryGvRow.payload).toFinset⊆s6Step307EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307EntryGv_reserved : s6Step307EntryGvBefore.reserve s6Step307EntryGvFresh.toFinset=some s6Step307EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step307EntryGvFresh,arenaWires]
  · norm_num [s6Step307EntryGvBefore,s6Step307EntryFAfter,s6Step307EntryGvFresh,arenaWires]
  · simp only [s6Step307EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step307EntryGv_checked : planRowResizeLog s6Step307EntryGvBefore s6Step307EntryGvRow 169 s6Step307EntryGvFresh=
    some (s6Step307EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩,growRow 775 s6Step307EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step307EntryGvBefore s6Step307EntryGvAfter s6Step307EntryGvRow 169 s6Step307EntryGvFresh
    s6Step307EntryGv_distinct s6Step307EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step307EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step307EntryGvRow.payload++s6Step307EntryGvFresh) s6Step307EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step307EntryBank_rows : planWindowRowsLog s6Step307EntryFBefore [(s6Step307EntryFRow,118),(s6Step307EntryGRow,118),(s6Step307EntryFvRow,169),(s6Step307EntryGvRow,169)] [s6Step307EntryFFresh,s6Step307EntryGFresh,s6Step307EntryFvFresh,s6Step307EntryGvFresh]=
    some (s6Step307EntryGvAfter,[s6Step307EntryFOut,s6Step307EntryGOut,s6Step307EntryFvOut,s6Step307EntryGvOut],(growRow 795 s6Step307EntryFFresh ++ (growRow 777 s6Step307EntryGFresh ++ (growRow 776 s6Step307EntryFvFresh ++ (growRow 775 s6Step307EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step307EntryGvAfter [] []=some (s6Step307EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step307EntryGvBefore s6Step307EntryGvAfter s6Step307EntryGvAfter
    s6Step307EntryGvRow s6Step307EntryGvOut 169 s6Step307EntryGvFresh [] [] []
    (growRow 775 s6Step307EntryGvFresh) ([]) s6Step307EntryGv_Incoming s6Step307EntryGv_checked h4 s6Step307EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step307EntryFvBefore s6Step307EntryFvAfter s6Step307EntryGvAfter
    s6Step307EntryFvRow s6Step307EntryFvOut 169 s6Step307EntryFvFresh [(s6Step307EntryGvRow,169)] [s6Step307EntryGvFresh] [s6Step307EntryGvOut]
    (growRow 776 s6Step307EntryFvFresh) ((growRow 775 s6Step307EntryGvFresh ++ [])) s6Step307EntryFv_Incoming s6Step307EntryFv_checked h3 s6Step307EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step307EntryGBefore s6Step307EntryGAfter s6Step307EntryGvAfter
    s6Step307EntryGRow s6Step307EntryGOut 118 s6Step307EntryGFresh [(s6Step307EntryFvRow,169),(s6Step307EntryGvRow,169)] [s6Step307EntryFvFresh,s6Step307EntryGvFresh] [s6Step307EntryFvOut,s6Step307EntryGvOut]
    (growRow 777 s6Step307EntryGFresh) ((growRow 776 s6Step307EntryFvFresh ++ (growRow 775 s6Step307EntryGvFresh ++ []))) s6Step307EntryG_Incoming s6Step307EntryG_checked h2 s6Step307EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step307EntryFBefore s6Step307EntryFAfter s6Step307EntryGvAfter
    s6Step307EntryFRow s6Step307EntryFOut 118 s6Step307EntryFFresh [(s6Step307EntryGRow,118),(s6Step307EntryFvRow,169),(s6Step307EntryGvRow,169)] [s6Step307EntryGFresh,s6Step307EntryFvFresh,s6Step307EntryGvFresh] [s6Step307EntryGOut,s6Step307EntryFvOut,s6Step307EntryGvOut]
    (growRow 795 s6Step307EntryFFresh) ((growRow 777 s6Step307EntryGFresh ++ (growRow 776 s6Step307EntryFvFresh ++ (growRow 775 s6Step307EntryGvFresh ++ [])))) s6Step307EntryF_Incoming s6Step307EntryF_checked h1 s6Step307EntryF_Outgoing
  exact h0

private theorem s6Step307EntryBank_checked : compileHmrBankResizeLog .entry s6Step307EntryFBefore ⟨s6Step307EntryFRow,s6Step307EntryGRow,s6Step307EntryFvRow,s6Step307EntryGvRow⟩ ⟨118,118,169,169⟩ [s6Step307EntryFFresh,s6Step307EntryGFresh,s6Step307EntryFvFresh,s6Step307EntryGvFresh]=
    some (s6Step307EntryGvAfter,⟨s6Step307EntryFOut,s6Step307EntryGOut,s6Step307EntryFvOut,s6Step307EntryGvOut⟩,(growRow 795 s6Step307EntryFFresh ++ (growRow 777 s6Step307EntryGFresh ++ (growRow 776 s6Step307EntryFvFresh ++ (growRow 775 s6Step307EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step307EntryBank_rows]
  rfl

private def s6Step307ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307ExitFBefore : Arena := s6Step307ExitGAfter

private def s6Step307ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 796, 865],795⟩

private def s6Step307ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 857],776⟩

private def s6Step307ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803],777⟩

private def s6Step307ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 793],775⟩

private theorem s6Step307ExitBank_incomingDistinct : ([s6Step307ExitGRow,s6Step307ExitFRow,s6Step307ExitFvRow,s6Step307ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307ExitF_Incoming : rowsOwned s6Step307ExitFBefore [s6Step307ExitFRow,s6Step307ExitFvRow,s6Step307ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307ExitGRow,s6Step307ExitFRow,s6Step307ExitFvRow,s6Step307ExitGvRow] 1 s6Step307ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307ExitFBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307ExitBank_outgoingOwned : rowsOwned s6Step307ExitGvAfter [s6Step307ExitGOut,s6Step307ExitFOut,s6Step307ExitFvOut,s6Step307ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step307ExitGvAfter (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307ExitF_Outgoing : rowsOwned s6Step307ExitGvAfter [s6Step307ExitFOut,s6Step307ExitFvOut,s6Step307ExitGvOut] :=
  hmrRows_owned_drop s6Step307ExitGvAfter [s6Step307ExitGOut,s6Step307ExitFOut,s6Step307ExitFvOut,s6Step307ExitGvOut] 1 s6Step307ExitBank_outgoingOwned

private theorem s6Step307ExitF_distinct : (s6Step307ExitFRow.sign::s6Step307ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307ExitF_owned : (s6Step307ExitFRow.sign::s6Step307ExitFRow.payload).toFinset⊆s6Step307ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307ExitFBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307ExitF_retired : s6Step307ExitFBefore.retireSet s6Step307ExitFExtra.toFinset=s6Step307ExitFAfter := by
  unfold Arena.retireSet s6Step307ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step307ExitFBefore,s6Step307ExitGAfter,s6Step307ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step307ExitF_checked : planRowResizeLog s6Step307ExitFBefore s6Step307ExitFRow 117 []=
    some (s6Step307ExitFAfter,s6Step307ExitFOut,shrinkRow 795 s6Step307ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step307ExitFBefore s6Step307ExitFRow 117 s6Step307ExitF_distinct s6Step307ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step307ExitFRow.payload.take 117) s6Step307ExitFRow.sign=s6Step307ExitFOut := by decide +kernel
  have hi : s6Step307ExitFRow.payload.drop 117=s6Step307ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step307ExitF_retired] at result
  exact result

private def s6Step307ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307ExitFvBefore : Arena := s6Step307ExitFAfter

private theorem s6Step307ExitFv_Incoming : rowsOwned s6Step307ExitFvBefore [s6Step307ExitFvRow,s6Step307ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307ExitGRow,s6Step307ExitFRow,s6Step307ExitFvRow,s6Step307ExitGvRow] 2 s6Step307ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307ExitFvBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307ExitFv_Outgoing : rowsOwned s6Step307ExitGvAfter [s6Step307ExitFvOut,s6Step307ExitGvOut] :=
  hmrRows_owned_drop s6Step307ExitGvAfter [s6Step307ExitGOut,s6Step307ExitFOut,s6Step307ExitFvOut,s6Step307ExitGvOut] 2 s6Step307ExitBank_outgoingOwned

private theorem s6Step307ExitFv_distinct : (s6Step307ExitFvRow.sign::s6Step307ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307ExitFv_owned : (s6Step307ExitFvRow.sign::s6Step307ExitFvRow.payload).toFinset⊆s6Step307ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307ExitFvBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307ExitFv_retired : s6Step307ExitFvBefore.retireSet s6Step307ExitFvExtra.toFinset=s6Step307ExitFvAfter := by
  unfold Arena.retireSet s6Step307ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step307ExitFvBefore,s6Step307ExitFAfter,s6Step307ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step307ExitFv_checked : planRowResizeLog s6Step307ExitFvBefore s6Step307ExitFvRow 169 []=
    some (s6Step307ExitFvAfter,s6Step307ExitFvOut,shrinkRow 776 s6Step307ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step307ExitFvBefore s6Step307ExitFvRow 169 s6Step307ExitFv_distinct s6Step307ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step307ExitFvRow.payload.take 169) s6Step307ExitFvRow.sign=s6Step307ExitFvOut := by decide +kernel
  have hi : s6Step307ExitFvRow.payload.drop 169=s6Step307ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step307ExitFv_retired] at result
  exact result

private def s6Step307ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step307ExitG_Incoming : rowsOwned s6Step307ExitGBefore [s6Step307ExitGRow,s6Step307ExitFRow,s6Step307ExitFvRow,s6Step307ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307ExitGRow,s6Step307ExitFRow,s6Step307ExitFvRow,s6Step307ExitGvRow] 0 s6Step307ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307ExitG_Outgoing : rowsOwned s6Step307ExitGvAfter [s6Step307ExitGOut,s6Step307ExitFOut,s6Step307ExitFvOut,s6Step307ExitGvOut] :=
  hmrRows_owned_drop s6Step307ExitGvAfter [s6Step307ExitGOut,s6Step307ExitFOut,s6Step307ExitFvOut,s6Step307ExitGvOut] 0 s6Step307ExitBank_outgoingOwned

private theorem s6Step307ExitG_distinct : (s6Step307ExitGRow.sign::s6Step307ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307ExitG_owned : (s6Step307ExitGRow.sign::s6Step307ExitGRow.payload).toFinset⊆s6Step307ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307ExitG_retired : s6Step307ExitGBefore.retireSet s6Step307ExitGExtra.toFinset=s6Step307ExitGAfter := by
  unfold Arena.retireSet s6Step307ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step307ExitGBefore,s6Step307ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step307ExitG_checked : planRowResizeLog s6Step307ExitGBefore s6Step307ExitGRow 117 []=
    some (s6Step307ExitGAfter,s6Step307ExitGOut,shrinkRow 777 s6Step307ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step307ExitGBefore s6Step307ExitGRow 117 s6Step307ExitG_distinct s6Step307ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step307ExitGRow.payload.take 117) s6Step307ExitGRow.sign=s6Step307ExitGOut := by decide +kernel
  have hi : s6Step307ExitGRow.payload.drop 117=s6Step307ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step307ExitG_retired] at result
  exact result

private def s6Step307ExitGvBefore : Arena := s6Step307ExitFvAfter

private theorem s6Step307ExitGv_Incoming : rowsOwned s6Step307ExitGvBefore [s6Step307ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307ExitGRow,s6Step307ExitFRow,s6Step307ExitFvRow,s6Step307ExitGvRow] 3 s6Step307ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307ExitGvBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307ExitGv_Outgoing : rowsOwned s6Step307ExitGvAfter [s6Step307ExitGvOut] :=
  hmrRows_owned_drop s6Step307ExitGvAfter [s6Step307ExitGOut,s6Step307ExitFOut,s6Step307ExitFvOut,s6Step307ExitGvOut] 3 s6Step307ExitBank_outgoingOwned

private theorem s6Step307ExitGv_distinct : (s6Step307ExitGvRow.sign::s6Step307ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307ExitGv_owned : (s6Step307ExitGvRow.sign::s6Step307ExitGvRow.payload).toFinset⊆s6Step307ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307ExitGvBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307ExitGv_retired : s6Step307ExitGvBefore.retireSet s6Step307ExitGvExtra.toFinset=s6Step307ExitGvAfter := by
  unfold Arena.retireSet s6Step307ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step307ExitGvBefore,s6Step307ExitFvAfter,s6Step307ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step307ExitGv_checked : planRowResizeLog s6Step307ExitGvBefore s6Step307ExitGvRow 169 []=
    some (s6Step307ExitGvAfter,s6Step307ExitGvOut,shrinkRow 775 s6Step307ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step307ExitGvBefore s6Step307ExitGvRow 169 s6Step307ExitGv_distinct s6Step307ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step307ExitGvRow.payload.take 169) s6Step307ExitGvRow.sign=s6Step307ExitGvOut := by decide +kernel
  have hi : s6Step307ExitGvRow.payload.drop 169=s6Step307ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step307ExitGv_retired] at result
  exact result

private theorem s6Step307ExitBank_rows : planWindowRowsLog s6Step307ExitGBefore [(s6Step307ExitGRow,117),(s6Step307ExitFRow,117),(s6Step307ExitFvRow,169),(s6Step307ExitGvRow,169)] [[],[],[],[]]=
    some (s6Step307ExitGvAfter,[s6Step307ExitGOut,s6Step307ExitFOut,s6Step307ExitFvOut,s6Step307ExitGvOut],(shrinkRow 777 s6Step307ExitGExtra ++ (shrinkRow 795 s6Step307ExitFExtra ++ (shrinkRow 776 s6Step307ExitFvExtra ++ (shrinkRow 775 s6Step307ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step307ExitGvAfter [] []=some (s6Step307ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step307ExitGvBefore s6Step307ExitGvAfter s6Step307ExitGvAfter
    s6Step307ExitGvRow s6Step307ExitGvOut 169 [] [] [] []
    (shrinkRow 775 s6Step307ExitGvExtra) ([]) s6Step307ExitGv_Incoming s6Step307ExitGv_checked h4 s6Step307ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step307ExitFvBefore s6Step307ExitFvAfter s6Step307ExitGvAfter
    s6Step307ExitFvRow s6Step307ExitFvOut 169 [] [(s6Step307ExitGvRow,169)] [[]] [s6Step307ExitGvOut]
    (shrinkRow 776 s6Step307ExitFvExtra) ((shrinkRow 775 s6Step307ExitGvExtra ++ [])) s6Step307ExitFv_Incoming s6Step307ExitFv_checked h3 s6Step307ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step307ExitFBefore s6Step307ExitFAfter s6Step307ExitGvAfter
    s6Step307ExitFRow s6Step307ExitFOut 117 [] [(s6Step307ExitFvRow,169),(s6Step307ExitGvRow,169)] [[],[]] [s6Step307ExitFvOut,s6Step307ExitGvOut]
    (shrinkRow 795 s6Step307ExitFExtra) ((shrinkRow 776 s6Step307ExitFvExtra ++ (shrinkRow 775 s6Step307ExitGvExtra ++ []))) s6Step307ExitF_Incoming s6Step307ExitF_checked h2 s6Step307ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step307ExitGBefore s6Step307ExitGAfter s6Step307ExitGvAfter
    s6Step307ExitGRow s6Step307ExitGOut 117 [] [(s6Step307ExitFRow,117),(s6Step307ExitFvRow,169),(s6Step307ExitGvRow,169)] [[],[],[]] [s6Step307ExitFOut,s6Step307ExitFvOut,s6Step307ExitGvOut]
    (shrinkRow 777 s6Step307ExitGExtra) ((shrinkRow 795 s6Step307ExitFExtra ++ (shrinkRow 776 s6Step307ExitFvExtra ++ (shrinkRow 775 s6Step307ExitGvExtra ++ [])))) s6Step307ExitG_Incoming s6Step307ExitG_checked h1 s6Step307ExitG_Outgoing
  exact h0

private theorem s6Step307ExitBank_checked : compileHmrBankResizeLog .exit s6Step307ExitGBefore ⟨s6Step307ExitFRow,s6Step307ExitGRow,s6Step307ExitFvRow,s6Step307ExitGvRow⟩ ⟨117,117,169,169⟩ [[],[],[],[]]=
    some (s6Step307ExitGvAfter,⟨s6Step307ExitFOut,s6Step307ExitGOut,s6Step307ExitFvOut,s6Step307ExitGvOut⟩,(shrinkRow 777 s6Step307ExitGExtra ++ (shrinkRow 795 s6Step307ExitFExtra ++ (shrinkRow 776 s6Step307ExitFvExtra ++ (shrinkRow 775 s6Step307ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step307ExitBank_rows]
  rfl

private theorem s6Step307Add0_apart : Disjoint s6Step307Add0Arena.live s6Step307Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step307Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307Add0_card : s6Step307Add0Arena.live.card=904 := by
  decide +kernel

private theorem s6Step307Add0_borrowed : s6Step307Add0Arena.checkBorrow (hmrHybridCount s6Step307Add0Arena s6Step307Add0B.length) s6Step307Add0Work=some s6Step307Add0During := by
  have len : s6Step307Add0Work.length=hmrHybridCount s6Step307Add0Arena s6Step307Add0B.length := by
    rw [hmrHybridCount,s6Step307Add0_card]
    decide +kernel
  have nd : s6Step307Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step307Add0Arena s6Step307Add0During s6Step307Add0Work.toFinset s6Step307Add0_bounded s6Step307Add0_apart rfl

private theorem s6Step307Add0_distinct : (830::890::805::(s6Step307Add0A++s6Step307Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307Add0_owned : (830::890::805::(s6Step307Add0A++s6Step307Add0B)).toFinset⊆s6Step307Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step307Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307Add0_checked : compileHmrHybridCinLog s6Step307Add0Arena 890 830 805 s6Step307Add0A s6Step307Add0B s6Step307Add0Work=some s6Step307Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step307Add0Arena s6Step307Add0During 890 830 805 s6Step307Add0A s6Step307Add0B s6Step307Add0Work
    (by decide +kernel) (by decide +kernel) s6Step307Add0_distinct
    (fun q hq => s6Step307Add0_owned (List.mem_toFinset.mpr hq)) s6Step307Add0_borrowed

private theorem s6Step307Add1_apart : Disjoint s6Step307Add1Arena.live s6Step307Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step307Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307Add1_card : s6Step307Add1Arena.live.card=904 := by
  decide +kernel

private theorem s6Step307Add1_borrowed : s6Step307Add1Arena.checkBorrow (hmrHybridCount s6Step307Add1Arena s6Step307Add1B.length) s6Step307Add1Work=some s6Step307Add1During := by
  have len : s6Step307Add1Work.length=hmrHybridCount s6Step307Add1Arena s6Step307Add1B.length := by
    rw [hmrHybridCount,s6Step307Add1_card]
    decide +kernel
  have nd : s6Step307Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step307Add1Arena s6Step307Add1During s6Step307Add1Work.toFinset s6Step307Add1_bounded s6Step307Add1_apart rfl

private theorem s6Step307Add1_distinct : (830::890::805::(s6Step307Add1A++s6Step307Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307Add1_owned : (830::890::805::(s6Step307Add1A++s6Step307Add1B)).toFinset⊆s6Step307Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step307Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307Add1_checked : compileHmrHybridCinLog s6Step307Add1Arena 890 830 805 s6Step307Add1A s6Step307Add1B s6Step307Add1Work=some s6Step307Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step307Add1Arena s6Step307Add1During 890 830 805 s6Step307Add1A s6Step307Add1B s6Step307Add1Work
    (by decide +kernel) (by decide +kernel) s6Step307Add1_distinct
    (fun q hq => s6Step307Add1_owned (List.mem_toFinset.mpr hq)) s6Step307Add1_borrowed

private theorem s6Step307F4_apart : Disjoint (s6Step307Add0A++s6Step307Add0B).toFinset (s6Step307Add1A++s6Step307Add1B).toFinset := by
  have nd : ((s6Step307Add0A++s6Step307Add0B)++(s6Step307Add1A++s6Step307Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step307F4_carry : s6Step307F4FlagArena.checkBorrow 1 [805]=some s6Step307Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step307F4FlagArena,s6Step307HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step307F4FlagArena,s6Step307HeadFvAfter,s6Step307Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step307F4_distinct : (828::890::830::805::((s6Step307Add0A++s6Step307Add1A)++(s6Step307Add0B++s6Step307Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307F4_flag : s6Step307HeadFvAfter.checkBorrow 1 [830]=some s6Step307F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step307HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step307F4_owned : (828::890::((s6Step307Add0A++s6Step307Add1A)++(s6Step307Add0B++s6Step307Add1B))).toFinset⊆s6Step307HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step307HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307F4_checked : compileHmrHybridF4Log s6Step307HeadFvAfter 828 890 s6Step307Add0A s6Step307Add0B s6Step307Add1A s6Step307Add1B [830] [805] s6Step307Add0Work s6Step307Add1Work=some s6Step307F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step307HeadFvAfter s6Step307F4FlagArena s6Step307Add0Arena s6Step307Add0During s6Step307Add1During 828 890
    s6Step307Add0A s6Step307Add0B s6Step307Add1A s6Step307Add1B [830] [805] s6Step307Add0Work s6Step307Add1Work
    (fun q hq => s6Step307F4_owned (List.mem_toFinset.mpr hq)) s6Step307F4_flag s6Step307F4_carry
    s6Step307F4_distinct s6Step307F4_apart s6Step307Add0_checked s6Step307Add1_checked

private theorem s6Step307Front_branch : s6Step307FrontSigmaArena.checkBorrow 1 [890]=some s6Step307HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step307FrontSigmaArena,s6Step307EntryGvAfter,s6Step307EntryFAfter,arenaWires]
  · ext q
    simp only [s6Step307FrontSigmaArena,s6Step307EntryGvAfter,s6Step307EntryFAfter,s6Step307HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step307Front_entry : HmrFrontEntryValid s6Step307EntryFBefore s6Step307FrontBank 118 169 ⟨117,117,169,169⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step307FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step307EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step307EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step307FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step307Front_sigma : s6Step307EntryGvAfter.checkBorrow 1 [828]=some s6Step307FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step307EntryGvAfter,s6Step307EntryFAfter,arenaWires]
  · rfl

private def s6Step307HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307HeadFBefore : Arena := s6Step307HeadGAfter

private def s6Step307HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 796],795⟩

private def s6Step307HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩

private def s6Step307HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],777⟩

private def s6Step307HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩

private theorem s6Step307HeadBank_incomingDistinct : ([s6Step307HeadGRow,s6Step307HeadFRow,s6Step307HeadGvRow,s6Step307HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307HeadF_Incoming : rowsOwned s6Step307HeadFBefore [s6Step307HeadFRow,s6Step307HeadGvRow,s6Step307HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307HeadGRow,s6Step307HeadFRow,s6Step307HeadGvRow,s6Step307HeadFvRow] 1 s6Step307HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307HeadBank_outgoingOwned : rowsOwned s6Step307HeadFvAfter [s6Step307HeadGOut,s6Step307HeadFOut,s6Step307HeadGvOut,s6Step307HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step307HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307HeadF_Outgoing : rowsOwned s6Step307HeadFvAfter [s6Step307HeadFOut,s6Step307HeadGvOut,s6Step307HeadFvOut] :=
  hmrRows_owned_drop s6Step307HeadFvAfter [s6Step307HeadGOut,s6Step307HeadFOut,s6Step307HeadGvOut,s6Step307HeadFvOut] 1 s6Step307HeadBank_outgoingOwned

private theorem s6Step307HeadF_distinct : (s6Step307HeadFRow.sign::s6Step307HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307HeadF_owned : (s6Step307HeadFRow.sign::s6Step307HeadFRow.payload).toFinset⊆s6Step307HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307HeadF_reserved : s6Step307HeadFBefore.reserve s6Step307HeadFFresh.toFinset=some s6Step307HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step307HeadFFresh,arenaWires]
  · norm_num [s6Step307HeadFBefore,s6Step307HeadGAfter,s6Step307HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step307HeadFAfter,s6Step307HeadFBefore,s6Step307HeadGAfter,s6Step307HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step307HeadF_checked : planRowResizeLog s6Step307HeadFBefore s6Step307HeadFRow 119 s6Step307HeadFFresh=
    some (s6Step307HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 796, 865],795⟩,growRow 795 s6Step307HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step307HeadFBefore s6Step307HeadFAfter s6Step307HeadFRow 119 s6Step307HeadFFresh
    s6Step307HeadF_distinct s6Step307HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step307HeadF_reserved
  have rowEq : WindowRow.mk (s6Step307HeadFRow.payload++s6Step307HeadFFresh) s6Step307HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 796, 865],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step307HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step307HeadFvBefore : Arena := s6Step307HeadGvAfter

private theorem s6Step307HeadFv_Incoming : rowsOwned s6Step307HeadFvBefore [s6Step307HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307HeadGRow,s6Step307HeadFRow,s6Step307HeadGvRow,s6Step307HeadFvRow] 3 s6Step307HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307HeadFv_Outgoing : rowsOwned s6Step307HeadFvAfter [s6Step307HeadFvOut] :=
  hmrRows_owned_drop s6Step307HeadFvAfter [s6Step307HeadGOut,s6Step307HeadFOut,s6Step307HeadGvOut,s6Step307HeadFvOut] 3 s6Step307HeadBank_outgoingOwned

private theorem s6Step307HeadFv_distinct : (s6Step307HeadFvRow.sign::s6Step307HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307HeadFv_owned : (s6Step307HeadFvRow.sign::s6Step307HeadFvRow.payload).toFinset⊆s6Step307HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307HeadFv_reserved : s6Step307HeadFvBefore.reserve s6Step307HeadFvFresh.toFinset=some s6Step307HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step307HeadFvFresh,arenaWires]
  · norm_num [s6Step307HeadFvBefore,s6Step307HeadGvAfter,s6Step307HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step307HeadFvAfter,s6Step307HeadFvBefore,s6Step307HeadGvAfter,s6Step307HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step307HeadFv_checked : planRowResizeLog s6Step307HeadFvBefore s6Step307HeadFvRow 170 s6Step307HeadFvFresh=
    some (s6Step307HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 857],776⟩,growRow 776 s6Step307HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step307HeadFvBefore s6Step307HeadFvAfter s6Step307HeadFvRow 170 s6Step307HeadFvFresh
    s6Step307HeadFv_distinct s6Step307HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step307HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step307HeadFvRow.payload++s6Step307HeadFvFresh) s6Step307HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step307HeadG_Incoming : rowsOwned s6Step307HeadGBefore [s6Step307HeadGRow,s6Step307HeadFRow,s6Step307HeadGvRow,s6Step307HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307HeadGRow,s6Step307HeadFRow,s6Step307HeadGvRow,s6Step307HeadFvRow] 0 s6Step307HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307HeadG_Outgoing : rowsOwned s6Step307HeadFvAfter [s6Step307HeadGOut,s6Step307HeadFOut,s6Step307HeadGvOut,s6Step307HeadFvOut] :=
  hmrRows_owned_drop s6Step307HeadFvAfter [s6Step307HeadGOut,s6Step307HeadFOut,s6Step307HeadGvOut,s6Step307HeadFvOut] 0 s6Step307HeadBank_outgoingOwned

private theorem s6Step307HeadG_distinct : (s6Step307HeadGRow.sign::s6Step307HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307HeadG_owned : (s6Step307HeadGRow.sign::s6Step307HeadGRow.payload).toFinset⊆s6Step307HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307HeadG_reserved : s6Step307HeadGBefore.reserve s6Step307HeadGFresh.toFinset=some s6Step307HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step307HeadGFresh,arenaWires]
  · norm_num [s6Step307HeadGBefore,s6Step307HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step307HeadGAfter,s6Step307HeadGBefore,s6Step307HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step307HeadG_checked : planRowResizeLog s6Step307HeadGBefore s6Step307HeadGRow 119 s6Step307HeadGFresh=
    some (s6Step307HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803],777⟩,growRow 777 s6Step307HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step307HeadGBefore s6Step307HeadGAfter s6Step307HeadGRow 119 s6Step307HeadGFresh
    s6Step307HeadG_distinct s6Step307HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step307HeadG_reserved
  have rowEq : WindowRow.mk (s6Step307HeadGRow.payload++s6Step307HeadGFresh) s6Step307HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 803],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step307HeadGvBefore : Arena := s6Step307HeadFAfter

private theorem s6Step307HeadGv_Incoming : rowsOwned s6Step307HeadGvBefore [s6Step307HeadGvRow,s6Step307HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step307HeadGRow,s6Step307HeadFRow,s6Step307HeadGvRow,s6Step307HeadFvRow] 2 s6Step307HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step307HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step307HeadGv_Outgoing : rowsOwned s6Step307HeadFvAfter [s6Step307HeadGvOut,s6Step307HeadFvOut] :=
  hmrRows_owned_drop s6Step307HeadFvAfter [s6Step307HeadGOut,s6Step307HeadFOut,s6Step307HeadGvOut,s6Step307HeadFvOut] 2 s6Step307HeadBank_outgoingOwned

private theorem s6Step307HeadGv_distinct : (s6Step307HeadGvRow.sign::s6Step307HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step307HeadGv_owned : (s6Step307HeadGvRow.sign::s6Step307HeadGvRow.payload).toFinset⊆s6Step307HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step307HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step307HeadGv_reserved : s6Step307HeadGvBefore.reserve s6Step307HeadGvFresh.toFinset=some s6Step307HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step307HeadGvFresh,arenaWires]
  · norm_num [s6Step307HeadGvBefore,s6Step307HeadFAfter,s6Step307HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step307HeadGvAfter,s6Step307HeadGvBefore,s6Step307HeadFAfter,s6Step307HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step307HeadGv_checked : planRowResizeLog s6Step307HeadGvBefore s6Step307HeadGvRow 170 s6Step307HeadGvFresh=
    some (s6Step307HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 793],775⟩,growRow 775 s6Step307HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step307HeadGvBefore s6Step307HeadGvAfter s6Step307HeadGvRow 170 s6Step307HeadGvFresh
    s6Step307HeadGv_distinct s6Step307HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step307HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step307HeadGvRow.payload++s6Step307HeadGvFresh) s6Step307HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 793],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step307HeadBank_rows : planWindowRowsLog s6Step307HeadGBefore [(s6Step307HeadGRow,119),(s6Step307HeadFRow,119),(s6Step307HeadGvRow,170),(s6Step307HeadFvRow,170)] [s6Step307HeadGFresh,s6Step307HeadFFresh,s6Step307HeadGvFresh,s6Step307HeadFvFresh]=
    some (s6Step307HeadFvAfter,[s6Step307HeadGOut,s6Step307HeadFOut,s6Step307HeadGvOut,s6Step307HeadFvOut],(growRow 777 s6Step307HeadGFresh ++ (growRow 795 s6Step307HeadFFresh ++ (growRow 775 s6Step307HeadGvFresh ++ (growRow 776 s6Step307HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step307HeadFvAfter [] []=some (s6Step307HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step307HeadFvBefore s6Step307HeadFvAfter s6Step307HeadFvAfter
    s6Step307HeadFvRow s6Step307HeadFvOut 170 s6Step307HeadFvFresh [] [] []
    (growRow 776 s6Step307HeadFvFresh) ([]) s6Step307HeadFv_Incoming s6Step307HeadFv_checked h4 s6Step307HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step307HeadGvBefore s6Step307HeadGvAfter s6Step307HeadFvAfter
    s6Step307HeadGvRow s6Step307HeadGvOut 170 s6Step307HeadGvFresh [(s6Step307HeadFvRow,170)] [s6Step307HeadFvFresh] [s6Step307HeadFvOut]
    (growRow 775 s6Step307HeadGvFresh) ((growRow 776 s6Step307HeadFvFresh ++ [])) s6Step307HeadGv_Incoming s6Step307HeadGv_checked h3 s6Step307HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step307HeadFBefore s6Step307HeadFAfter s6Step307HeadFvAfter
    s6Step307HeadFRow s6Step307HeadFOut 119 s6Step307HeadFFresh [(s6Step307HeadGvRow,170),(s6Step307HeadFvRow,170)] [s6Step307HeadGvFresh,s6Step307HeadFvFresh] [s6Step307HeadGvOut,s6Step307HeadFvOut]
    (growRow 795 s6Step307HeadFFresh) ((growRow 775 s6Step307HeadGvFresh ++ (growRow 776 s6Step307HeadFvFresh ++ []))) s6Step307HeadF_Incoming s6Step307HeadF_checked h2 s6Step307HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step307HeadGBefore s6Step307HeadGAfter s6Step307HeadFvAfter
    s6Step307HeadGRow s6Step307HeadGOut 119 s6Step307HeadGFresh [(s6Step307HeadFRow,119),(s6Step307HeadGvRow,170),(s6Step307HeadFvRow,170)] [s6Step307HeadFFresh,s6Step307HeadGvFresh,s6Step307HeadFvFresh] [s6Step307HeadFOut,s6Step307HeadGvOut,s6Step307HeadFvOut]
    (growRow 777 s6Step307HeadGFresh) ((growRow 795 s6Step307HeadFFresh ++ (growRow 775 s6Step307HeadGvFresh ++ (growRow 776 s6Step307HeadFvFresh ++ [])))) s6Step307HeadG_Incoming s6Step307HeadG_checked h1 s6Step307HeadG_Outgoing
  exact h0

private theorem s6Step307HeadBank_checked : compileHmrBankResizeLog .headroom s6Step307HeadGBefore ⟨s6Step307HeadFRow,s6Step307HeadGRow,s6Step307HeadFvRow,s6Step307HeadGvRow⟩ ⟨119,119,170,170⟩ [s6Step307HeadGFresh,s6Step307HeadFFresh,s6Step307HeadGvFresh,s6Step307HeadFvFresh]=
    some (s6Step307HeadFvAfter,⟨s6Step307HeadFOut,s6Step307HeadGOut,s6Step307HeadFvOut,s6Step307HeadGvOut⟩,(growRow 777 s6Step307HeadGFresh ++ (growRow 795 s6Step307HeadFFresh ++ (growRow 775 s6Step307HeadGvFresh ++ (growRow 776 s6Step307HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step307HeadBank_rows]
  rfl

private theorem s6Step307Front_checked : compileHmrSourceFrontLog s6Step307EntryFBefore s6Step307FrontBank 118 169 ⟨117,117,169,169⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step307FrontLog=some s6Step307FrontPlan := by
  have pairEq : s6Step307FrontPair=⟨s6Step307HeadFRow,s6Step307HeadGRow,s6Step307HeadFvRow,s6Step307HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step307FrontHead=⟨s6Step307ExitFRow,s6Step307ExitGRow,s6Step307ExitFvRow,s6Step307ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step307Add0A=s6Step307FrontHead.f.wires := by decide +kernel
  have gEq : s6Step307Add0B=s6Step307FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step307Add1A=s6Step307FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step307Add1B=s6Step307FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step307EntryFBefore s6Step307FrontBank 118 169 ⟨117,117,169,169⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step307FrontLog s6Step307FrontPlan
  · exact s6Step307Front_entry
  · exact s6Step307EntryBank_checked
  · exact s6Step307Front_sigma
  · rfl
  · exact s6Step307Front_branch
  · rfl
  · simpa only [s6Step307FrontPlan,pairEq] using s6Step307HeadBank_checked
  · simpa only [s6Step307FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step307F4_checked
  · exact s6Step307Counter_checked
  · rfl
  · simpa only [s6Step307FrontPlan,headEq] using s6Step307ExitBank_checked

private theorem s6Step307Complete_explicit_checked : compileHmrEarlyStepLog s6Step307EntryFBefore s6Step307FrontBank 118 169 ⟨117,117,169,169⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step307CompleteLog=some s6Step307CompletePlan := by
  let Q := s6Step307EarlyControlPlan
  have hq := s6Step307EarlyControl_plan_checked
  have fv1 : s6Step307CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step307CompleteOut.fv.payload[2]?.getD s6Step307CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step307CompleteOut.fv.payload[3]?.getD s6Step307CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step307CompleteOut.fv.payload[4]?.getD s6Step307CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step307EntryFBefore s6Step307EarlyControlArena s6Step307FrontBank 118 169 ⟨117,117,169,169⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step307CompleteLog s6Step307FrontPlan Q
    s6Step307Front_checked s6Step307Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step307Complete_owned s6Step307Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step307EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 828 s6Step307CompleteOut.fv.second (s6Step307CompleteOut.fv.payload[2]?.getD s6Step307CompleteOut.fv.sign) (s6Step307CompleteOut.fv.payload[3]?.getD s6Step307CompleteOut.fv.sign) (s6Step307CompleteOut.fv.payload[4]?.getD s6Step307CompleteOut.fv.sign) 890 56 s6Step307EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep307Arena : Arena := s6Step307EntryFBefore
def s6PrivateStep307Bank : WindowBank := s6Step307FrontBank
def s6PrivateStep307Spec : HmrSourceWalkStepLog := ⟨118,169,⟨117,117,169,169⟩,56,.early s6Step307CompleteLog⟩
def s6PrivateStep307Plan : HmrSourceStepPlan := .early s6Step307CompletePlan
theorem s6PrivateStep307_source : s6PrivateStep307Spec=s6ObservedLogs304[3] := rfl
theorem s6PrivateStep307_checked : compileHmrSourceStepLog s6PrivateStep307Arena s6PrivateStep307Bank
    s6PrivateStep307Spec.fgWidth s6PrivateStep307Spec.vWidth s6PrivateStep307Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]
    6 498 307 s6PrivateStep307Spec.need none s6PrivateStep307Spec.log=some s6PrivateStep307Plan := by
  change compileHmrSourceStepLog s6Step307EntryFBefore s6Step307FrontBank 118 169 ⟨117,117,169,169⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 6 498 307 56 none (.early s6Step307CompleteLog)=some (.early s6Step307CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 307<498)]
  rw [s6Step307Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
