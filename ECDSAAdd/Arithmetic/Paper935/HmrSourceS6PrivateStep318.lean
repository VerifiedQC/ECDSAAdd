import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep316
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

private def s6Step318CompleteMoves : List (Wire × Wire) := [(880,111)]

private def s6Step318EarlyControlLog : HmrEarlyControlLog := ⟨[880, 860, 865, 793, 841],[830],[805],[817, 812, 915, 906, 792, 849],[]⟩

private def s6Step318FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [860]],[[841], [793], [865], [803]],[[], [], [], []]⟩,[864],[843],[830],[805],[817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step318CompleteLog : HmrEarlyStepLog := ⟨s6Step318FrontLog,s6Step318CompleteMoves,s6Step318EarlyControlLog⟩

private def s6Step318ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step318ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step318ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110],777⟩

private def s6Step318ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786],775⟩

private def s6Step318FrontOut : WindowBank := ⟨s6Step318ExitFOut,s6Step318ExitGOut,s6Step318ExitFvOut,s6Step318ExitGvOut⟩

private def s6Step318CompleteOut : WindowBank := s6Step318FrontOut.repacked s6Step318CompleteMoves

private def s6Step318EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step318EarlyControlPositiveArena,[830],s6Step318EarlyControlEqualityArena,[805],⟨⟨864,false⟩,[⟨⟨830,false⟩,805⟩]⟩⟩

private def s6Step318EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,880⟩,⟨⟨772,false⟩,860⟩,⟨⟨771,false⟩,865⟩,⟨⟨770,false⟩,793⟩,⟨⟨769,false⟩,841⟩]⟩

private def s6Step318EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step318EarlyControlZeroArena,s6Step318EarlyControlZeroPlan,s6Step318EarlyControlClassPlan,s6Step318EarlyControlFlagArena,s6Step318EarlyControlFittedArena,s6Step318EarlyControlHistoryArena,s6Step318EarlyControlSigmaArena,s6Step318EarlyControlOutputArena,s6Step318EarlyControlLog⟩

private def s6Step318CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step318Counter_bounded : s6Step318CounterWork.toFinset⊆arenaWires := by norm_num [s6Step318CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step318HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318CounterDuring : Arena := ⟨s6Step318HeadFvAfter.live∪s6Step318CounterWork.toFinset,Finset.union_subset s6Step318HeadFvAfter.bounded s6Step318Counter_bounded⟩

private def s6Step318EntryFFresh : List Wire := []

private def s6Step318EntryFvFresh : List Wire := []

private def s6Step318EntryGFresh : List Wire := []

private def s6Step318EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318EntryGvFresh : List Wire := [860]

private def s6Step318ExitFExtra : List Wire := [793]

private def s6Step318ExitGExtra : List Wire := [111, 841]

private def s6Step318ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318ExitGvExtra : List Wire := [860, 865]

private def s6Step318Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318Add0Work : List Wire := [817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step318Add0_bounded : s6Step318Add0Work.toFinset⊆arenaWires := by
  have h : s6Step318Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step318Add0During : Arena := ⟨s6Step318Add0Arena.live∪s6Step318Add0Work.toFinset,Finset.union_subset s6Step318Add0Arena.bounded s6Step318Add0_bounded⟩

private def s6Step318Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318Add1Work : List Wire := [817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step318Add1_bounded : s6Step318Add1Work.toFinset⊆arenaWires := by
  have h : s6Step318Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step318Add1During : Arena := ⟨s6Step318Add1Arena.live∪s6Step318Add1Work.toFinset,Finset.union_subset s6Step318Add1Arena.bounded s6Step318Add1_bounded⟩

private def s6Step318F4FlagArena : Arena := ⟨s6Step318HeadFvAfter.live∪{830},Finset.union_subset s6Step318HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step318F4Plan : HmrHybridF4Plan := ⟨s6Step318F4FlagArena,[830],s6Step318Add0Arena,[805],s6Step318Add0During,s6Step318Add0Work,s6Step318Add1During,s6Step318Add1Work⟩

private def s6Step318HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 793],795⟩

private def s6Step318HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step318HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 841],777⟩

private def s6Step318HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 860, 865],775⟩

private def s6Step318FrontHead : WindowBank := ⟨s6Step318HeadFOut,s6Step318HeadGOut,s6Step318HeadFvOut,s6Step318HeadGvOut⟩

private def s6Step318EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step318EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850],776⟩

private def s6Step318EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩

private def s6Step318EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 860],775⟩

private def s6Step318FrontPair : WindowBank := ⟨s6Step318EntryFOut,s6Step318EntryGOut,s6Step318EntryFvOut,s6Step318EntryGvOut⟩

private def s6Step318FrontSigmaArena : Arena := ⟨s6Step318EntryGvAfter.live∪{864},Finset.union_subset s6Step318EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step318HeadFFresh : List Wire := [793]

private def s6Step318HeadFvFresh : List Wire := [803]

private def s6Step318HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318HeadGFresh : List Wire := [841]

private def s6Step318HeadGvFresh : List Wire := [865]

private def s6Step318FrontPlan : HmrSourceFront := ⟨s6Step318EntryGvAfter,s6Step318FrontPair,(growRow 795 s6Step318EntryFFresh ++ (growRow 777 s6Step318EntryGFresh ++ (growRow 776 s6Step318EntryFvFresh ++ (growRow 775 s6Step318EntryGvFresh ++ [])))),s6Step318FrontSigmaArena,[864],s6Step318HeadGBefore,[843],
  s6Step318HeadFvAfter,s6Step318FrontHead,(growRow 777 s6Step318HeadGFresh ++ (growRow 795 s6Step318HeadFFresh ++ (growRow 775 s6Step318HeadGvFresh ++ (growRow 776 s6Step318HeadFvFresh ++ [])))),s6Step318F4Plan,s6Step318CounterDuring,s6Step318CounterWork,s6Step318ExitGvAfter,s6Step318FrontOut,(shrinkRow 777 s6Step318ExitGExtra ++ (shrinkRow 795 s6Step318ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step318ExitGvExtra ++ []))))⟩

private def s6Step318CompletePlan : HmrEarlyStepPlan := ⟨s6Step318FrontPlan,s6Step318EarlyControlArena,s6Step318EarlyControlPlan,s6Step318CompleteMoves⟩

private theorem s6Step318Complete_apart : List.Disjoint (s6Step318CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [864, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] := by
  have nd : ((s6Step318CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[864, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step318Complete_owned : (s6Step318CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step318EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step318CompleteMoveArena : Arena := ⟨s6Step318ExitGvAfter.live∪{111},Finset.union_subset s6Step318ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step318Complete_repack : s6Step318ExitGvAfter.checkRepack s6Step318CompleteMoves=some s6Step318EarlyControlArena := by
  have owned : 880∈s6Step318ExitGvAfter.live := by norm_num [s6Step318ExitGvAfter,arenaWires]
  have reserve : s6Step318ExitGvAfter.reserve {111}=some s6Step318CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step318ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step318CompleteMoveArena.retireSet {880}=s6Step318EarlyControlArena := by
    unfold Arena.retireSet s6Step318EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step318CompleteMoveArena,s6Step318ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step318CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step318CompleteMoveArena.retireSet {880}).checkRepack []=some s6Step318EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step318EarlyControl_branchOwned : ([843] : List Wire).toFinset⊆s6Step318EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EarlyControl_branch : compileHmrBranchRetirement s6Step318EarlyControlSigmaArena 843=some s6Step318EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step318EarlyControl_branchOwned
  · ext q
    simp [s6Step318EarlyControlOutputArena,s6Step318EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step318EarlyControl_classEqualityBorrow : s6Step318EarlyControlPositiveArena.checkBorrow (([864, 830] : List Wire).length-1) s6Step318EarlyControlLog.classWork=some s6Step318EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step318EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step318EarlyControlEqualityArena,s6Step318EarlyControlPositiveArena,s6Step318EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step318EarlyControl_classEqualityOwned : ([864, 830] : List Wire).toFinset⊆s6Step318EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EarlyControl_classEquality : compileHmrEqualityLog s6Step318EarlyControlPositiveArena [864, 830] 0 s6Step318EarlyControlLog.classWork=some (s6Step318EarlyControlEqualityArena,s6Step318EarlyControlLog.classWork,s6Step318EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step318EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step318EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step318EarlyControl_classOwned : ([769, 841, 864] : List Wire).toFinset⊆s6Step318EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EarlyControl_positiveBorrow : s6Step318EarlyControlZeroArena.checkBorrow (1) s6Step318EarlyControlLog.positiveWork=some s6Step318EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step318EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step318EarlyControlPositiveArena,s6Step318EarlyControlZeroArena,s6Step318EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step318EarlyControl_class : compileHmrSourceClassLog s6Step318EarlyControlZeroArena false 769 s6Step318EarlyControlZeroPlan.top 0 864 s6Step318EarlyControlLog.positiveWork s6Step318EarlyControlLog.classWork=some s6Step318EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step318EarlyControlClassPlan s6Step318EarlyControlZeroArena false 769 s6Step318EarlyControlZeroPlan.top 0 864
  constructor
  · decide +kernel
  · exact s6Step318EarlyControl_classOwned
  · exact s6Step318EarlyControl_positiveBorrow
  · exact s6Step318EarlyControl_classEquality

private theorem s6Step318EarlyControl_entryRecordOwned : ([843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step318EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EarlyControl_entrySigmaOwned : ([864, 254] : List Wire).toFinset⊆s6Step318EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EarlyControl_fitBorrow : s6Step318EarlyControlFlagArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step318EarlyControlLog.recordFresh=some s6Step318EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step318EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step318EarlyControlFittedArena,s6Step318EarlyControlFlagArena,s6Step318EarlyControlLog,arenaWires]

private theorem s6Step318EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step318EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EarlyControl_fit : compileHmrRecordGrowLog s6Step318EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step318EarlyControlLog.recordFresh=some s6Step318EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step318EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step318EarlyControl_fitBorrow

private theorem s6Step318EarlyControl_flagsBorrow : s6Step318EarlyControlEqualityArena.checkBorrow (6) s6Step318EarlyControlLog.flagWork=some s6Step318EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step318EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step318EarlyControlFlagArena,s6Step318EarlyControlEqualityArena,s6Step318EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step318EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step318EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EarlyControl_flags : compileHmrFlagsLog s6Step318EarlyControlClassPlan.equalityArena s6Step318EarlyControlClassPlan.equality.top 253 252 251 s6Step318EarlyControlLog.flagWork=some s6Step318EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step318EarlyControl_flagsOwned⟩
  · exact s6Step318EarlyControl_flagsBorrow

private theorem s6Step318EarlyControl_historyBorrow : s6Step318EarlyControlArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step318EarlyControlLog.recordFresh=some s6Step318EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step318EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step318EarlyControlHistoryArena,s6Step318EarlyControlArena,s6Step318EarlyControlLog,arenaWires]

private theorem s6Step318EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step318EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EarlyControl_history : compileHmrRecordGrowLog s6Step318EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step318EarlyControlLog.recordFresh=some s6Step318EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step318EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step318EarlyControl_historyBorrow

private theorem s6Step318EarlyControl_sigmaOwned : ([254, 864] : List Wire).toFinset⊆s6Step318EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EarlyControl_sigmaReleaseOwned : ([864] : List Wire).toFinset⊆s6Step318EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EarlyControl_sigmaRelease : s6Step318EarlyControlHistoryArena.release {864} (fun _ => false)=some s6Step318EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step318EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step318EarlyControlSigmaArena,s6Step318EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step318EarlyControl_sigma : compileHmrSigmaDropLog s6Step318EarlyControlHistoryArena false 0 0 254 864 []=some s6Step318EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step318EarlyControl_sigmaOwned⟩
  · exact s6Step318EarlyControl_sigmaRelease

private theorem s6Step318EarlyControl_zeroBorrow : s6Step318EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step318EarlyControlLog.zeroWork=some s6Step318EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step318EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step318EarlyControlZeroArena,s6Step318EarlyControlArena,s6Step318EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step318EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step318EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step318EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EarlyControl_zero : compileHmrEqualityLog s6Step318EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step318EarlyControlLog.zeroWork=some (s6Step318EarlyControlZeroArena,s6Step318EarlyControlLog.zeroWork,s6Step318EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step318EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step318EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step318EarlyControl_logged : s6Step318EarlyControlPlan.Logged s6Step318EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 254 253 252 251 843 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step318EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step318EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step318EarlyControl_zero
  · exact s6Step318EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step318EarlyControl_flags
  · exact s6Step318EarlyControl_fit
  · exact s6Step318EarlyControl_history
  · exact s6Step318EarlyControl_sigma
  · exact s6Step318EarlyControl_branch

private theorem s6Step318EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step318EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 254 253 252 251 843 56 s6Step318EarlyControlLog=some s6Step318EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step318EarlyControlPlan s6Step318EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 254 253 252 251 843 56 s6Step318EarlyControl_logged

private def s6Step318EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step318EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850],776⟩

private def s6Step318EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩

private def s6Step318EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786],775⟩

private def s6Step318FrontBank : WindowBank := ⟨s6Step318EntryFRow,s6Step318EntryGRow,s6Step318EntryFvRow,s6Step318EntryGvRow⟩

private def s6Step318Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 793, 795]

private def s6Step318Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 841, 777]

private def s6Step318Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 776]

private def s6Step318Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 860, 865, 775]

private theorem s6Step318Counter_apart : Disjoint s6Step318HeadFvAfter.live s6Step318CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step318HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318Counter_borrowed : s6Step318HeadFvAfter.checkBorrow 4 s6Step318CounterWork=some s6Step318CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step318HeadFvAfter s6Step318CounterDuring s6Step318CounterWork.toFinset s6Step318Counter_bounded s6Step318Counter_apart rfl

private theorem s6Step318Counter_owned : (864::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step318HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step318HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318Counter_checked : compileHmrCounterStepLog s6Step318HeadFvAfter true 864 [774, 773, 772, 771, 770, 769] s6Step318CounterWork=some s6Step318CounterDuring := by
  have owned : ∀q∈864::[774, 773, 772, 771, 770, 769],q∈s6Step318HeadFvAfter.live := fun q hq => s6Step318Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step318Counter_borrowed

private def s6Step318EntryFAfter : Arena := s6Step318EntryFBefore

private theorem s6Step318EntryBank_incomingDistinct : ([s6Step318EntryFRow,s6Step318EntryGRow,s6Step318EntryFvRow,s6Step318EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318EntryF_Incoming : rowsOwned s6Step318EntryFBefore [s6Step318EntryFRow,s6Step318EntryGRow,s6Step318EntryFvRow,s6Step318EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318EntryFRow,s6Step318EntryGRow,s6Step318EntryFvRow,s6Step318EntryGvRow] 0 s6Step318EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318EntryBank_outgoingOwned : rowsOwned s6Step318EntryGvAfter [s6Step318EntryFOut,s6Step318EntryGOut,s6Step318EntryFvOut,s6Step318EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step318EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318EntryF_Outgoing : rowsOwned s6Step318EntryGvAfter [s6Step318EntryFOut,s6Step318EntryGOut,s6Step318EntryFvOut,s6Step318EntryGvOut] :=
  hmrRows_owned_drop s6Step318EntryGvAfter [s6Step318EntryFOut,s6Step318EntryGOut,s6Step318EntryFvOut,s6Step318EntryGvOut] 0 s6Step318EntryBank_outgoingOwned

private theorem s6Step318EntryF_distinct : (s6Step318EntryFRow.sign::s6Step318EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318EntryF_owned : (s6Step318EntryFRow.sign::s6Step318EntryFRow.payload).toFinset⊆s6Step318EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EntryF_reserved : s6Step318EntryFBefore.reserve s6Step318EntryFFresh.toFinset=some s6Step318EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step318EntryFFresh,arenaWires]
  · norm_num [s6Step318EntryFBefore,s6Step318EntryFFresh,arenaWires]
  · simp only [s6Step318EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step318EntryF_checked : planRowResizeLog s6Step318EntryFBefore s6Step318EntryFRow 112 s6Step318EntryFFresh=
    some (s6Step318EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩,growRow 795 s6Step318EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step318EntryFBefore s6Step318EntryFAfter s6Step318EntryFRow 112 s6Step318EntryFFresh
    s6Step318EntryF_distinct s6Step318EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step318EntryF_reserved
  have rowEq : WindowRow.mk (s6Step318EntryFRow.payload++s6Step318EntryFFresh) s6Step318EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step318EntryFvAfter : Arena := s6Step318EntryFBefore

private def s6Step318EntryFvBefore : Arena := s6Step318EntryFBefore

private theorem s6Step318EntryFv_Incoming : rowsOwned s6Step318EntryFvBefore [s6Step318EntryFvRow,s6Step318EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318EntryFRow,s6Step318EntryGRow,s6Step318EntryFvRow,s6Step318EntryGvRow] 2 s6Step318EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318EntryFv_Outgoing : rowsOwned s6Step318EntryGvAfter [s6Step318EntryFvOut,s6Step318EntryGvOut] :=
  hmrRows_owned_drop s6Step318EntryGvAfter [s6Step318EntryFOut,s6Step318EntryGOut,s6Step318EntryFvOut,s6Step318EntryGvOut] 2 s6Step318EntryBank_outgoingOwned

private theorem s6Step318EntryFv_distinct : (s6Step318EntryFvRow.sign::s6Step318EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318EntryFv_owned : (s6Step318EntryFvRow.sign::s6Step318EntryFvRow.payload).toFinset⊆s6Step318EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EntryFv_reserved : s6Step318EntryFvBefore.reserve s6Step318EntryFvFresh.toFinset=some s6Step318EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step318EntryFvFresh,arenaWires]
  · norm_num [s6Step318EntryFvBefore,s6Step318EntryFBefore,s6Step318EntryFvFresh,arenaWires]
  · simp only [s6Step318EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step318EntryFv_checked : planRowResizeLog s6Step318EntryFvBefore s6Step318EntryFvRow 175 s6Step318EntryFvFresh=
    some (s6Step318EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850],776⟩,growRow 776 s6Step318EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step318EntryFvBefore s6Step318EntryFvAfter s6Step318EntryFvRow 175 s6Step318EntryFvFresh
    s6Step318EntryFv_distinct s6Step318EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step318EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step318EntryFvRow.payload++s6Step318EntryFvFresh) s6Step318EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step318EntryGAfter : Arena := s6Step318EntryFBefore

private def s6Step318EntryGBefore : Arena := s6Step318EntryFBefore

private theorem s6Step318EntryG_Incoming : rowsOwned s6Step318EntryGBefore [s6Step318EntryGRow,s6Step318EntryFvRow,s6Step318EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318EntryFRow,s6Step318EntryGRow,s6Step318EntryFvRow,s6Step318EntryGvRow] 1 s6Step318EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318EntryG_Outgoing : rowsOwned s6Step318EntryGvAfter [s6Step318EntryGOut,s6Step318EntryFvOut,s6Step318EntryGvOut] :=
  hmrRows_owned_drop s6Step318EntryGvAfter [s6Step318EntryFOut,s6Step318EntryGOut,s6Step318EntryFvOut,s6Step318EntryGvOut] 1 s6Step318EntryBank_outgoingOwned

private theorem s6Step318EntryG_distinct : (s6Step318EntryGRow.sign::s6Step318EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318EntryG_owned : (s6Step318EntryGRow.sign::s6Step318EntryGRow.payload).toFinset⊆s6Step318EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EntryG_reserved : s6Step318EntryGBefore.reserve s6Step318EntryGFresh.toFinset=some s6Step318EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step318EntryGFresh,arenaWires]
  · norm_num [s6Step318EntryGBefore,s6Step318EntryFBefore,s6Step318EntryGFresh,arenaWires]
  · simp only [s6Step318EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step318EntryG_checked : planRowResizeLog s6Step318EntryGBefore s6Step318EntryGRow 112 s6Step318EntryGFresh=
    some (s6Step318EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩,growRow 777 s6Step318EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step318EntryGBefore s6Step318EntryGAfter s6Step318EntryGRow 112 s6Step318EntryGFresh
    s6Step318EntryG_distinct s6Step318EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step318EntryG_reserved
  have rowEq : WindowRow.mk (s6Step318EntryGRow.payload++s6Step318EntryGFresh) s6Step318EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step318EntryGvBefore : Arena := s6Step318EntryFBefore

private theorem s6Step318EntryGv_Incoming : rowsOwned s6Step318EntryGvBefore [s6Step318EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318EntryFRow,s6Step318EntryGRow,s6Step318EntryFvRow,s6Step318EntryGvRow] 3 s6Step318EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318EntryGv_Outgoing : rowsOwned s6Step318EntryGvAfter [s6Step318EntryGvOut] :=
  hmrRows_owned_drop s6Step318EntryGvAfter [s6Step318EntryFOut,s6Step318EntryGOut,s6Step318EntryFvOut,s6Step318EntryGvOut] 3 s6Step318EntryBank_outgoingOwned

private theorem s6Step318EntryGv_distinct : (s6Step318EntryGvRow.sign::s6Step318EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318EntryGv_owned : (s6Step318EntryGvRow.sign::s6Step318EntryGvRow.payload).toFinset⊆s6Step318EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318EntryGv_reserved : s6Step318EntryGvBefore.reserve s6Step318EntryGvFresh.toFinset=some s6Step318EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step318EntryGvFresh,arenaWires]
  · norm_num [s6Step318EntryGvBefore,s6Step318EntryFBefore,s6Step318EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step318EntryGvAfter,s6Step318EntryGvBefore,s6Step318EntryFBefore,s6Step318EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step318EntryGv_checked : planRowResizeLog s6Step318EntryGvBefore s6Step318EntryGvRow 175 s6Step318EntryGvFresh=
    some (s6Step318EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 860],775⟩,growRow 775 s6Step318EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step318EntryGvBefore s6Step318EntryGvAfter s6Step318EntryGvRow 175 s6Step318EntryGvFresh
    s6Step318EntryGv_distinct s6Step318EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step318EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step318EntryGvRow.payload++s6Step318EntryGvFresh) s6Step318EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 860],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step318EntryBank_rows : planWindowRowsLog s6Step318EntryFBefore [(s6Step318EntryFRow,112),(s6Step318EntryGRow,112),(s6Step318EntryFvRow,175),(s6Step318EntryGvRow,175)] [s6Step318EntryFFresh,s6Step318EntryGFresh,s6Step318EntryFvFresh,s6Step318EntryGvFresh]=
    some (s6Step318EntryGvAfter,[s6Step318EntryFOut,s6Step318EntryGOut,s6Step318EntryFvOut,s6Step318EntryGvOut],(growRow 795 s6Step318EntryFFresh ++ (growRow 777 s6Step318EntryGFresh ++ (growRow 776 s6Step318EntryFvFresh ++ (growRow 775 s6Step318EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step318EntryGvAfter [] []=some (s6Step318EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step318EntryGvBefore s6Step318EntryGvAfter s6Step318EntryGvAfter
    s6Step318EntryGvRow s6Step318EntryGvOut 175 s6Step318EntryGvFresh [] [] []
    (growRow 775 s6Step318EntryGvFresh) ([]) s6Step318EntryGv_Incoming s6Step318EntryGv_checked h4 s6Step318EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step318EntryFvBefore s6Step318EntryFvAfter s6Step318EntryGvAfter
    s6Step318EntryFvRow s6Step318EntryFvOut 175 s6Step318EntryFvFresh [(s6Step318EntryGvRow,175)] [s6Step318EntryGvFresh] [s6Step318EntryGvOut]
    (growRow 776 s6Step318EntryFvFresh) ((growRow 775 s6Step318EntryGvFresh ++ [])) s6Step318EntryFv_Incoming s6Step318EntryFv_checked h3 s6Step318EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step318EntryGBefore s6Step318EntryGAfter s6Step318EntryGvAfter
    s6Step318EntryGRow s6Step318EntryGOut 112 s6Step318EntryGFresh [(s6Step318EntryFvRow,175),(s6Step318EntryGvRow,175)] [s6Step318EntryFvFresh,s6Step318EntryGvFresh] [s6Step318EntryFvOut,s6Step318EntryGvOut]
    (growRow 777 s6Step318EntryGFresh) ((growRow 776 s6Step318EntryFvFresh ++ (growRow 775 s6Step318EntryGvFresh ++ []))) s6Step318EntryG_Incoming s6Step318EntryG_checked h2 s6Step318EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step318EntryFBefore s6Step318EntryFAfter s6Step318EntryGvAfter
    s6Step318EntryFRow s6Step318EntryFOut 112 s6Step318EntryFFresh [(s6Step318EntryGRow,112),(s6Step318EntryFvRow,175),(s6Step318EntryGvRow,175)] [s6Step318EntryGFresh,s6Step318EntryFvFresh,s6Step318EntryGvFresh] [s6Step318EntryGOut,s6Step318EntryFvOut,s6Step318EntryGvOut]
    (growRow 795 s6Step318EntryFFresh) ((growRow 777 s6Step318EntryGFresh ++ (growRow 776 s6Step318EntryFvFresh ++ (growRow 775 s6Step318EntryGvFresh ++ [])))) s6Step318EntryF_Incoming s6Step318EntryF_checked h1 s6Step318EntryF_Outgoing
  exact h0

private theorem s6Step318EntryBank_checked : compileHmrBankResizeLog .entry s6Step318EntryFBefore ⟨s6Step318EntryFRow,s6Step318EntryGRow,s6Step318EntryFvRow,s6Step318EntryGvRow⟩ ⟨112,112,175,175⟩ [s6Step318EntryFFresh,s6Step318EntryGFresh,s6Step318EntryFvFresh,s6Step318EntryGvFresh]=
    some (s6Step318EntryGvAfter,⟨s6Step318EntryFOut,s6Step318EntryGOut,s6Step318EntryFvOut,s6Step318EntryGvOut⟩,(growRow 795 s6Step318EntryFFresh ++ (growRow 777 s6Step318EntryGFresh ++ (growRow 776 s6Step318EntryFvFresh ++ (growRow 775 s6Step318EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step318EntryBank_rows]
  rfl

private def s6Step318ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318ExitFBefore : Arena := s6Step318ExitGAfter

private def s6Step318ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 793],795⟩

private def s6Step318ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step318ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 841],777⟩

private def s6Step318ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 860, 865],775⟩

private theorem s6Step318ExitBank_incomingDistinct : ([s6Step318ExitGRow,s6Step318ExitFRow,s6Step318ExitFvRow,s6Step318ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318ExitF_Incoming : rowsOwned s6Step318ExitFBefore [s6Step318ExitFRow,s6Step318ExitFvRow,s6Step318ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318ExitGRow,s6Step318ExitFRow,s6Step318ExitFvRow,s6Step318ExitGvRow] 1 s6Step318ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318ExitFBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318ExitBank_outgoingOwned : rowsOwned s6Step318ExitGvAfter [s6Step318ExitGOut,s6Step318ExitFOut,s6Step318ExitFvOut,s6Step318ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step318ExitGvAfter (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318ExitF_Outgoing : rowsOwned s6Step318ExitGvAfter [s6Step318ExitFOut,s6Step318ExitFvOut,s6Step318ExitGvOut] :=
  hmrRows_owned_drop s6Step318ExitGvAfter [s6Step318ExitGOut,s6Step318ExitFOut,s6Step318ExitFvOut,s6Step318ExitGvOut] 1 s6Step318ExitBank_outgoingOwned

private theorem s6Step318ExitF_distinct : (s6Step318ExitFRow.sign::s6Step318ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318ExitF_owned : (s6Step318ExitFRow.sign::s6Step318ExitFRow.payload).toFinset⊆s6Step318ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318ExitFBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318ExitF_retired : s6Step318ExitFBefore.retireSet s6Step318ExitFExtra.toFinset=s6Step318ExitFAfter := by
  unfold Arena.retireSet s6Step318ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step318ExitFBefore,s6Step318ExitGAfter,s6Step318ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step318ExitF_checked : planRowResizeLog s6Step318ExitFBefore s6Step318ExitFRow 112 []=
    some (s6Step318ExitFAfter,s6Step318ExitFOut,shrinkRow 795 s6Step318ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step318ExitFBefore s6Step318ExitFRow 112 s6Step318ExitF_distinct s6Step318ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step318ExitFRow.payload.take 112) s6Step318ExitFRow.sign=s6Step318ExitFOut := by decide +kernel
  have hi : s6Step318ExitFRow.payload.drop 112=s6Step318ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step318ExitF_retired] at result
  exact result

private def s6Step318ExitFvAfter : Arena := s6Step318ExitFAfter

private def s6Step318ExitFvBefore : Arena := s6Step318ExitFAfter

private theorem s6Step318ExitFv_Incoming : rowsOwned s6Step318ExitFvBefore [s6Step318ExitFvRow,s6Step318ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318ExitGRow,s6Step318ExitFRow,s6Step318ExitFvRow,s6Step318ExitGvRow] 2 s6Step318ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318ExitFvBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318ExitFv_Outgoing : rowsOwned s6Step318ExitGvAfter [s6Step318ExitFvOut,s6Step318ExitGvOut] :=
  hmrRows_owned_drop s6Step318ExitGvAfter [s6Step318ExitGOut,s6Step318ExitFOut,s6Step318ExitFvOut,s6Step318ExitGvOut] 2 s6Step318ExitBank_outgoingOwned

private theorem s6Step318ExitFv_distinct : (s6Step318ExitFvRow.sign::s6Step318ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318ExitFv_owned : (s6Step318ExitFvRow.sign::s6Step318ExitFvRow.payload).toFinset⊆s6Step318ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318ExitFvBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318ExitFv_reserved : s6Step318ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step318ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step318ExitFv_checked : planRowResizeLog s6Step318ExitFvBefore s6Step318ExitFvRow 176 []=
    some (s6Step318ExitFvAfter,s6Step318ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step318ExitFvBefore s6Step318ExitFvAfter s6Step318ExitFvRow 176 []
    s6Step318ExitFv_distinct s6Step318ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step318ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step318ExitFvRow.payload++[]) s6Step318ExitFvRow.sign=s6Step318ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step318ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step318ExitG_Incoming : rowsOwned s6Step318ExitGBefore [s6Step318ExitGRow,s6Step318ExitFRow,s6Step318ExitFvRow,s6Step318ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318ExitGRow,s6Step318ExitFRow,s6Step318ExitFvRow,s6Step318ExitGvRow] 0 s6Step318ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318ExitG_Outgoing : rowsOwned s6Step318ExitGvAfter [s6Step318ExitGOut,s6Step318ExitFOut,s6Step318ExitFvOut,s6Step318ExitGvOut] :=
  hmrRows_owned_drop s6Step318ExitGvAfter [s6Step318ExitGOut,s6Step318ExitFOut,s6Step318ExitFvOut,s6Step318ExitGvOut] 0 s6Step318ExitBank_outgoingOwned

private theorem s6Step318ExitG_distinct : (s6Step318ExitGRow.sign::s6Step318ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318ExitG_owned : (s6Step318ExitGRow.sign::s6Step318ExitGRow.payload).toFinset⊆s6Step318ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318ExitG_retired : s6Step318ExitGBefore.retireSet s6Step318ExitGExtra.toFinset=s6Step318ExitGAfter := by
  unfold Arena.retireSet s6Step318ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step318ExitGBefore,s6Step318ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step318ExitG_checked : planRowResizeLog s6Step318ExitGBefore s6Step318ExitGRow 111 []=
    some (s6Step318ExitGAfter,s6Step318ExitGOut,shrinkRow 777 s6Step318ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step318ExitGBefore s6Step318ExitGRow 111 s6Step318ExitG_distinct s6Step318ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step318ExitGRow.payload.take 111) s6Step318ExitGRow.sign=s6Step318ExitGOut := by decide +kernel
  have hi : s6Step318ExitGRow.payload.drop 111=s6Step318ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step318ExitG_retired] at result
  exact result

private def s6Step318ExitGvBefore : Arena := s6Step318ExitFAfter

private theorem s6Step318ExitGv_Incoming : rowsOwned s6Step318ExitGvBefore [s6Step318ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318ExitGRow,s6Step318ExitFRow,s6Step318ExitFvRow,s6Step318ExitGvRow] 3 s6Step318ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318ExitGvBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318ExitGv_Outgoing : rowsOwned s6Step318ExitGvAfter [s6Step318ExitGvOut] :=
  hmrRows_owned_drop s6Step318ExitGvAfter [s6Step318ExitGOut,s6Step318ExitFOut,s6Step318ExitFvOut,s6Step318ExitGvOut] 3 s6Step318ExitBank_outgoingOwned

private theorem s6Step318ExitGv_distinct : (s6Step318ExitGvRow.sign::s6Step318ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318ExitGv_owned : (s6Step318ExitGvRow.sign::s6Step318ExitGvRow.payload).toFinset⊆s6Step318ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318ExitGvBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318ExitGv_retired : s6Step318ExitGvBefore.retireSet s6Step318ExitGvExtra.toFinset=s6Step318ExitGvAfter := by
  unfold Arena.retireSet s6Step318ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step318ExitGvBefore,s6Step318ExitFAfter,s6Step318ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step318ExitGv_checked : planRowResizeLog s6Step318ExitGvBefore s6Step318ExitGvRow 174 []=
    some (s6Step318ExitGvAfter,s6Step318ExitGvOut,shrinkRow 775 s6Step318ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step318ExitGvBefore s6Step318ExitGvRow 174 s6Step318ExitGv_distinct s6Step318ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step318ExitGvRow.payload.take 174) s6Step318ExitGvRow.sign=s6Step318ExitGvOut := by decide +kernel
  have hi : s6Step318ExitGvRow.payload.drop 174=s6Step318ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step318ExitGv_retired] at result
  exact result

private theorem s6Step318ExitBank_rows : planWindowRowsLog s6Step318ExitGBefore [(s6Step318ExitGRow,111),(s6Step318ExitFRow,112),(s6Step318ExitFvRow,176),(s6Step318ExitGvRow,174)] [[],[],[],[]]=
    some (s6Step318ExitGvAfter,[s6Step318ExitGOut,s6Step318ExitFOut,s6Step318ExitFvOut,s6Step318ExitGvOut],(shrinkRow 777 s6Step318ExitGExtra ++ (shrinkRow 795 s6Step318ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step318ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step318ExitGvAfter [] []=some (s6Step318ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step318ExitGvBefore s6Step318ExitGvAfter s6Step318ExitGvAfter
    s6Step318ExitGvRow s6Step318ExitGvOut 174 [] [] [] []
    (shrinkRow 775 s6Step318ExitGvExtra) ([]) s6Step318ExitGv_Incoming s6Step318ExitGv_checked h4 s6Step318ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step318ExitFvBefore s6Step318ExitFvAfter s6Step318ExitGvAfter
    s6Step318ExitFvRow s6Step318ExitFvOut 176 [] [(s6Step318ExitGvRow,174)] [[]] [s6Step318ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step318ExitGvExtra ++ [])) s6Step318ExitFv_Incoming s6Step318ExitFv_checked h3 s6Step318ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step318ExitFBefore s6Step318ExitFAfter s6Step318ExitGvAfter
    s6Step318ExitFRow s6Step318ExitFOut 112 [] [(s6Step318ExitFvRow,176),(s6Step318ExitGvRow,174)] [[],[]] [s6Step318ExitFvOut,s6Step318ExitGvOut]
    (shrinkRow 795 s6Step318ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step318ExitGvExtra ++ []))) s6Step318ExitF_Incoming s6Step318ExitF_checked h2 s6Step318ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step318ExitGBefore s6Step318ExitGAfter s6Step318ExitGvAfter
    s6Step318ExitGRow s6Step318ExitGOut 111 [] [(s6Step318ExitFRow,112),(s6Step318ExitFvRow,176),(s6Step318ExitGvRow,174)] [[],[],[]] [s6Step318ExitFOut,s6Step318ExitFvOut,s6Step318ExitGvOut]
    (shrinkRow 777 s6Step318ExitGExtra) ((shrinkRow 795 s6Step318ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step318ExitGvExtra ++ [])))) s6Step318ExitG_Incoming s6Step318ExitG_checked h1 s6Step318ExitG_Outgoing
  exact h0

private theorem s6Step318ExitBank_checked : compileHmrBankResizeLog .exit s6Step318ExitGBefore ⟨s6Step318ExitFRow,s6Step318ExitGRow,s6Step318ExitFvRow,s6Step318ExitGvRow⟩ ⟨112,111,176,174⟩ [[],[],[],[]]=
    some (s6Step318ExitGvAfter,⟨s6Step318ExitFOut,s6Step318ExitGOut,s6Step318ExitFvOut,s6Step318ExitGvOut⟩,(shrinkRow 777 s6Step318ExitGExtra ++ (shrinkRow 795 s6Step318ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step318ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step318ExitBank_rows]
  rfl

private theorem s6Step318Add0_apart : Disjoint s6Step318Add0Arena.live s6Step318Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step318Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318Add0_card : s6Step318Add0Arena.live.card=904 := by
  decide +kernel

private theorem s6Step318Add0_borrowed : s6Step318Add0Arena.checkBorrow (hmrHybridCount s6Step318Add0Arena s6Step318Add0B.length) s6Step318Add0Work=some s6Step318Add0During := by
  have len : s6Step318Add0Work.length=hmrHybridCount s6Step318Add0Arena s6Step318Add0B.length := by
    rw [hmrHybridCount,s6Step318Add0_card]
    decide +kernel
  have nd : s6Step318Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step318Add0Arena s6Step318Add0During s6Step318Add0Work.toFinset s6Step318Add0_bounded s6Step318Add0_apart rfl

private theorem s6Step318Add0_distinct : (830::843::805::(s6Step318Add0A++s6Step318Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318Add0_owned : (830::843::805::(s6Step318Add0A++s6Step318Add0B)).toFinset⊆s6Step318Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step318Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318Add0_checked : compileHmrHybridCinLog s6Step318Add0Arena 843 830 805 s6Step318Add0A s6Step318Add0B s6Step318Add0Work=some s6Step318Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step318Add0Arena s6Step318Add0During 843 830 805 s6Step318Add0A s6Step318Add0B s6Step318Add0Work
    (by decide +kernel) (by decide +kernel) s6Step318Add0_distinct
    (fun q hq => s6Step318Add0_owned (List.mem_toFinset.mpr hq)) s6Step318Add0_borrowed

private theorem s6Step318Add1_apart : Disjoint s6Step318Add1Arena.live s6Step318Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step318Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318Add1_card : s6Step318Add1Arena.live.card=904 := by
  decide +kernel

private theorem s6Step318Add1_borrowed : s6Step318Add1Arena.checkBorrow (hmrHybridCount s6Step318Add1Arena s6Step318Add1B.length) s6Step318Add1Work=some s6Step318Add1During := by
  have len : s6Step318Add1Work.length=hmrHybridCount s6Step318Add1Arena s6Step318Add1B.length := by
    rw [hmrHybridCount,s6Step318Add1_card]
    decide +kernel
  have nd : s6Step318Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step318Add1Arena s6Step318Add1During s6Step318Add1Work.toFinset s6Step318Add1_bounded s6Step318Add1_apart rfl

private theorem s6Step318Add1_distinct : (830::843::805::(s6Step318Add1A++s6Step318Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318Add1_owned : (830::843::805::(s6Step318Add1A++s6Step318Add1B)).toFinset⊆s6Step318Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step318Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318Add1_checked : compileHmrHybridCinLog s6Step318Add1Arena 843 830 805 s6Step318Add1A s6Step318Add1B s6Step318Add1Work=some s6Step318Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step318Add1Arena s6Step318Add1During 843 830 805 s6Step318Add1A s6Step318Add1B s6Step318Add1Work
    (by decide +kernel) (by decide +kernel) s6Step318Add1_distinct
    (fun q hq => s6Step318Add1_owned (List.mem_toFinset.mpr hq)) s6Step318Add1_borrowed

private theorem s6Step318F4_apart : Disjoint (s6Step318Add0A++s6Step318Add0B).toFinset (s6Step318Add1A++s6Step318Add1B).toFinset := by
  have nd : ((s6Step318Add0A++s6Step318Add0B)++(s6Step318Add1A++s6Step318Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step318F4_carry : s6Step318F4FlagArena.checkBorrow 1 [805]=some s6Step318Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step318F4FlagArena,s6Step318HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step318F4FlagArena,s6Step318HeadFvAfter,s6Step318Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step318F4_distinct : (864::843::830::805::((s6Step318Add0A++s6Step318Add1A)++(s6Step318Add0B++s6Step318Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318F4_flag : s6Step318HeadFvAfter.checkBorrow 1 [830]=some s6Step318F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step318HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step318F4_owned : (864::843::((s6Step318Add0A++s6Step318Add1A)++(s6Step318Add0B++s6Step318Add1B))).toFinset⊆s6Step318HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step318HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318F4_checked : compileHmrHybridF4Log s6Step318HeadFvAfter 864 843 s6Step318Add0A s6Step318Add0B s6Step318Add1A s6Step318Add1B [830] [805] s6Step318Add0Work s6Step318Add1Work=some s6Step318F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step318HeadFvAfter s6Step318F4FlagArena s6Step318Add0Arena s6Step318Add0During s6Step318Add1During 864 843
    s6Step318Add0A s6Step318Add0B s6Step318Add1A s6Step318Add1B [830] [805] s6Step318Add0Work s6Step318Add1Work
    (fun q hq => s6Step318F4_owned (List.mem_toFinset.mpr hq)) s6Step318F4_flag s6Step318F4_carry
    s6Step318F4_distinct s6Step318F4_apart s6Step318Add0_checked s6Step318Add1_checked

private theorem s6Step318Front_branch : s6Step318FrontSigmaArena.checkBorrow 1 [843]=some s6Step318HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step318FrontSigmaArena,s6Step318EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step318FrontSigmaArena,s6Step318EntryGvAfter,s6Step318HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step318Front_entry : HmrFrontEntryValid s6Step318EntryFBefore s6Step318FrontBank 112 175 ⟨112,111,176,174⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step318FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step318EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step318EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step318FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step318Front_sigma : s6Step318EntryGvAfter.checkBorrow 1 [864]=some s6Step318FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step318EntryGvAfter,arenaWires]
  · rfl

private def s6Step318HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318HeadFBefore : Arena := s6Step318HeadGAfter

private def s6Step318HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step318HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850],776⟩

private def s6Step318HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩

private def s6Step318HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 860],775⟩

private theorem s6Step318HeadBank_incomingDistinct : ([s6Step318HeadGRow,s6Step318HeadFRow,s6Step318HeadGvRow,s6Step318HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318HeadF_Incoming : rowsOwned s6Step318HeadFBefore [s6Step318HeadFRow,s6Step318HeadGvRow,s6Step318HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318HeadGRow,s6Step318HeadFRow,s6Step318HeadGvRow,s6Step318HeadFvRow] 1 s6Step318HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318HeadBank_outgoingOwned : rowsOwned s6Step318HeadFvAfter [s6Step318HeadGOut,s6Step318HeadFOut,s6Step318HeadGvOut,s6Step318HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step318HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318HeadF_Outgoing : rowsOwned s6Step318HeadFvAfter [s6Step318HeadFOut,s6Step318HeadGvOut,s6Step318HeadFvOut] :=
  hmrRows_owned_drop s6Step318HeadFvAfter [s6Step318HeadGOut,s6Step318HeadFOut,s6Step318HeadGvOut,s6Step318HeadFvOut] 1 s6Step318HeadBank_outgoingOwned

private theorem s6Step318HeadF_distinct : (s6Step318HeadFRow.sign::s6Step318HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318HeadF_owned : (s6Step318HeadFRow.sign::s6Step318HeadFRow.payload).toFinset⊆s6Step318HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318HeadF_reserved : s6Step318HeadFBefore.reserve s6Step318HeadFFresh.toFinset=some s6Step318HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step318HeadFFresh,arenaWires]
  · norm_num [s6Step318HeadFBefore,s6Step318HeadGAfter,s6Step318HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step318HeadFAfter,s6Step318HeadFBefore,s6Step318HeadGAfter,s6Step318HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step318HeadF_checked : planRowResizeLog s6Step318HeadFBefore s6Step318HeadFRow 113 s6Step318HeadFFresh=
    some (s6Step318HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 793],795⟩,growRow 795 s6Step318HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step318HeadFBefore s6Step318HeadFAfter s6Step318HeadFRow 113 s6Step318HeadFFresh
    s6Step318HeadF_distinct s6Step318HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step318HeadF_reserved
  have rowEq : WindowRow.mk (s6Step318HeadFRow.payload++s6Step318HeadFFresh) s6Step318HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 793],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step318HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step318HeadFvBefore : Arena := s6Step318HeadGvAfter

private theorem s6Step318HeadFv_Incoming : rowsOwned s6Step318HeadFvBefore [s6Step318HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318HeadGRow,s6Step318HeadFRow,s6Step318HeadGvRow,s6Step318HeadFvRow] 3 s6Step318HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318HeadFv_Outgoing : rowsOwned s6Step318HeadFvAfter [s6Step318HeadFvOut] :=
  hmrRows_owned_drop s6Step318HeadFvAfter [s6Step318HeadGOut,s6Step318HeadFOut,s6Step318HeadGvOut,s6Step318HeadFvOut] 3 s6Step318HeadBank_outgoingOwned

private theorem s6Step318HeadFv_distinct : (s6Step318HeadFvRow.sign::s6Step318HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318HeadFv_owned : (s6Step318HeadFvRow.sign::s6Step318HeadFvRow.payload).toFinset⊆s6Step318HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318HeadFv_reserved : s6Step318HeadFvBefore.reserve s6Step318HeadFvFresh.toFinset=some s6Step318HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step318HeadFvFresh,arenaWires]
  · norm_num [s6Step318HeadFvBefore,s6Step318HeadGvAfter,s6Step318HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step318HeadFvAfter,s6Step318HeadFvBefore,s6Step318HeadGvAfter,s6Step318HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step318HeadFv_checked : planRowResizeLog s6Step318HeadFvBefore s6Step318HeadFvRow 176 s6Step318HeadFvFresh=
    some (s6Step318HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩,growRow 776 s6Step318HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step318HeadFvBefore s6Step318HeadFvAfter s6Step318HeadFvRow 176 s6Step318HeadFvFresh
    s6Step318HeadFv_distinct s6Step318HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step318HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step318HeadFvRow.payload++s6Step318HeadFvFresh) s6Step318HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step318HeadG_Incoming : rowsOwned s6Step318HeadGBefore [s6Step318HeadGRow,s6Step318HeadFRow,s6Step318HeadGvRow,s6Step318HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318HeadGRow,s6Step318HeadFRow,s6Step318HeadGvRow,s6Step318HeadFvRow] 0 s6Step318HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318HeadG_Outgoing : rowsOwned s6Step318HeadFvAfter [s6Step318HeadGOut,s6Step318HeadFOut,s6Step318HeadGvOut,s6Step318HeadFvOut] :=
  hmrRows_owned_drop s6Step318HeadFvAfter [s6Step318HeadGOut,s6Step318HeadFOut,s6Step318HeadGvOut,s6Step318HeadFvOut] 0 s6Step318HeadBank_outgoingOwned

private theorem s6Step318HeadG_distinct : (s6Step318HeadGRow.sign::s6Step318HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318HeadG_owned : (s6Step318HeadGRow.sign::s6Step318HeadGRow.payload).toFinset⊆s6Step318HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318HeadG_reserved : s6Step318HeadGBefore.reserve s6Step318HeadGFresh.toFinset=some s6Step318HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step318HeadGFresh,arenaWires]
  · norm_num [s6Step318HeadGBefore,s6Step318HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step318HeadGAfter,s6Step318HeadGBefore,s6Step318HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step318HeadG_checked : planRowResizeLog s6Step318HeadGBefore s6Step318HeadGRow 113 s6Step318HeadGFresh=
    some (s6Step318HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 841],777⟩,growRow 777 s6Step318HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step318HeadGBefore s6Step318HeadGAfter s6Step318HeadGRow 113 s6Step318HeadGFresh
    s6Step318HeadG_distinct s6Step318HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step318HeadG_reserved
  have rowEq : WindowRow.mk (s6Step318HeadGRow.payload++s6Step318HeadGFresh) s6Step318HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 841],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step318HeadGvBefore : Arena := s6Step318HeadFAfter

private theorem s6Step318HeadGv_Incoming : rowsOwned s6Step318HeadGvBefore [s6Step318HeadGvRow,s6Step318HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step318HeadGRow,s6Step318HeadFRow,s6Step318HeadGvRow,s6Step318HeadFvRow] 2 s6Step318HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step318HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step318HeadGv_Outgoing : rowsOwned s6Step318HeadFvAfter [s6Step318HeadGvOut,s6Step318HeadFvOut] :=
  hmrRows_owned_drop s6Step318HeadFvAfter [s6Step318HeadGOut,s6Step318HeadFOut,s6Step318HeadGvOut,s6Step318HeadFvOut] 2 s6Step318HeadBank_outgoingOwned

private theorem s6Step318HeadGv_distinct : (s6Step318HeadGvRow.sign::s6Step318HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step318HeadGv_owned : (s6Step318HeadGvRow.sign::s6Step318HeadGvRow.payload).toFinset⊆s6Step318HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step318HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step318HeadGv_reserved : s6Step318HeadGvBefore.reserve s6Step318HeadGvFresh.toFinset=some s6Step318HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step318HeadGvFresh,arenaWires]
  · norm_num [s6Step318HeadGvBefore,s6Step318HeadFAfter,s6Step318HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step318HeadGvAfter,s6Step318HeadGvBefore,s6Step318HeadFAfter,s6Step318HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step318HeadGv_checked : planRowResizeLog s6Step318HeadGvBefore s6Step318HeadGvRow 176 s6Step318HeadGvFresh=
    some (s6Step318HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 860, 865],775⟩,growRow 775 s6Step318HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step318HeadGvBefore s6Step318HeadGvAfter s6Step318HeadGvRow 176 s6Step318HeadGvFresh
    s6Step318HeadGv_distinct s6Step318HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step318HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step318HeadGvRow.payload++s6Step318HeadGvFresh) s6Step318HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 860, 865],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step318HeadBank_rows : planWindowRowsLog s6Step318HeadGBefore [(s6Step318HeadGRow,113),(s6Step318HeadFRow,113),(s6Step318HeadGvRow,176),(s6Step318HeadFvRow,176)] [s6Step318HeadGFresh,s6Step318HeadFFresh,s6Step318HeadGvFresh,s6Step318HeadFvFresh]=
    some (s6Step318HeadFvAfter,[s6Step318HeadGOut,s6Step318HeadFOut,s6Step318HeadGvOut,s6Step318HeadFvOut],(growRow 777 s6Step318HeadGFresh ++ (growRow 795 s6Step318HeadFFresh ++ (growRow 775 s6Step318HeadGvFresh ++ (growRow 776 s6Step318HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step318HeadFvAfter [] []=some (s6Step318HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step318HeadFvBefore s6Step318HeadFvAfter s6Step318HeadFvAfter
    s6Step318HeadFvRow s6Step318HeadFvOut 176 s6Step318HeadFvFresh [] [] []
    (growRow 776 s6Step318HeadFvFresh) ([]) s6Step318HeadFv_Incoming s6Step318HeadFv_checked h4 s6Step318HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step318HeadGvBefore s6Step318HeadGvAfter s6Step318HeadFvAfter
    s6Step318HeadGvRow s6Step318HeadGvOut 176 s6Step318HeadGvFresh [(s6Step318HeadFvRow,176)] [s6Step318HeadFvFresh] [s6Step318HeadFvOut]
    (growRow 775 s6Step318HeadGvFresh) ((growRow 776 s6Step318HeadFvFresh ++ [])) s6Step318HeadGv_Incoming s6Step318HeadGv_checked h3 s6Step318HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step318HeadFBefore s6Step318HeadFAfter s6Step318HeadFvAfter
    s6Step318HeadFRow s6Step318HeadFOut 113 s6Step318HeadFFresh [(s6Step318HeadGvRow,176),(s6Step318HeadFvRow,176)] [s6Step318HeadGvFresh,s6Step318HeadFvFresh] [s6Step318HeadGvOut,s6Step318HeadFvOut]
    (growRow 795 s6Step318HeadFFresh) ((growRow 775 s6Step318HeadGvFresh ++ (growRow 776 s6Step318HeadFvFresh ++ []))) s6Step318HeadF_Incoming s6Step318HeadF_checked h2 s6Step318HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step318HeadGBefore s6Step318HeadGAfter s6Step318HeadFvAfter
    s6Step318HeadGRow s6Step318HeadGOut 113 s6Step318HeadGFresh [(s6Step318HeadFRow,113),(s6Step318HeadGvRow,176),(s6Step318HeadFvRow,176)] [s6Step318HeadFFresh,s6Step318HeadGvFresh,s6Step318HeadFvFresh] [s6Step318HeadFOut,s6Step318HeadGvOut,s6Step318HeadFvOut]
    (growRow 777 s6Step318HeadGFresh) ((growRow 795 s6Step318HeadFFresh ++ (growRow 775 s6Step318HeadGvFresh ++ (growRow 776 s6Step318HeadFvFresh ++ [])))) s6Step318HeadG_Incoming s6Step318HeadG_checked h1 s6Step318HeadG_Outgoing
  exact h0

private theorem s6Step318HeadBank_checked : compileHmrBankResizeLog .headroom s6Step318HeadGBefore ⟨s6Step318HeadFRow,s6Step318HeadGRow,s6Step318HeadFvRow,s6Step318HeadGvRow⟩ ⟨113,113,176,176⟩ [s6Step318HeadGFresh,s6Step318HeadFFresh,s6Step318HeadGvFresh,s6Step318HeadFvFresh]=
    some (s6Step318HeadFvAfter,⟨s6Step318HeadFOut,s6Step318HeadGOut,s6Step318HeadFvOut,s6Step318HeadGvOut⟩,(growRow 777 s6Step318HeadGFresh ++ (growRow 795 s6Step318HeadFFresh ++ (growRow 775 s6Step318HeadGvFresh ++ (growRow 776 s6Step318HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step318HeadBank_rows]
  rfl

private theorem s6Step318Front_checked : compileHmrSourceFrontLog s6Step318EntryFBefore s6Step318FrontBank 112 175 ⟨112,111,176,174⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step318FrontLog=some s6Step318FrontPlan := by
  have pairEq : s6Step318FrontPair=⟨s6Step318HeadFRow,s6Step318HeadGRow,s6Step318HeadFvRow,s6Step318HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step318FrontHead=⟨s6Step318ExitFRow,s6Step318ExitGRow,s6Step318ExitFvRow,s6Step318ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step318Add0A=s6Step318FrontHead.f.wires := by decide +kernel
  have gEq : s6Step318Add0B=s6Step318FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step318Add1A=s6Step318FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step318Add1B=s6Step318FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step318EntryFBefore s6Step318FrontBank 112 175 ⟨112,111,176,174⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step318FrontLog s6Step318FrontPlan
  · exact s6Step318Front_entry
  · exact s6Step318EntryBank_checked
  · exact s6Step318Front_sigma
  · rfl
  · exact s6Step318Front_branch
  · rfl
  · simpa only [s6Step318FrontPlan,pairEq] using s6Step318HeadBank_checked
  · simpa only [s6Step318FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step318F4_checked
  · exact s6Step318Counter_checked
  · rfl
  · simpa only [s6Step318FrontPlan,headEq] using s6Step318ExitBank_checked

private theorem s6Step318Complete_explicit_checked : compileHmrEarlyStepLog s6Step318EntryFBefore s6Step318FrontBank 112 175 ⟨112,111,176,174⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step318CompleteLog=some s6Step318CompletePlan := by
  let Q := s6Step318EarlyControlPlan
  have hq := s6Step318EarlyControl_plan_checked
  have fv1 : s6Step318CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step318CompleteOut.fv.payload[2]?.getD s6Step318CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step318CompleteOut.fv.payload[3]?.getD s6Step318CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step318CompleteOut.fv.payload[4]?.getD s6Step318CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step318EntryFBefore s6Step318EarlyControlArena s6Step318FrontBank 112 175 ⟨112,111,176,174⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step318CompleteLog s6Step318FrontPlan Q
    s6Step318Front_checked s6Step318Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step318Complete_owned s6Step318Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step318EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 s6Step318CompleteOut.fv.second (s6Step318CompleteOut.fv.payload[2]?.getD s6Step318CompleteOut.fv.sign) (s6Step318CompleteOut.fv.payload[3]?.getD s6Step318CompleteOut.fv.sign) (s6Step318CompleteOut.fv.payload[4]?.getD s6Step318CompleteOut.fv.sign) 843 56 s6Step318EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep318Arena : Arena := s6Step318EntryFBefore
def s6PrivateStep318Bank : WindowBank := s6Step318FrontBank
def s6PrivateStep318Spec : HmrSourceWalkStepLog := ⟨112,175,⟨112,111,176,174⟩,56,.early s6Step318CompleteLog⟩
def s6PrivateStep318Plan : HmrSourceStepPlan := .early s6Step318CompletePlan
theorem s6PrivateStep318_source : s6PrivateStep318Spec=s6ObservedLogs304[14] := rfl
theorem s6PrivateStep318_checked : compileHmrSourceStepLog s6PrivateStep318Arena s6PrivateStep318Bank
    s6PrivateStep318Spec.fgWidth s6PrivateStep318Spec.vWidth s6PrivateStep318Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]
    6 498 318 s6PrivateStep318Spec.need none s6PrivateStep318Spec.log=some s6PrivateStep318Plan := by
  change compileHmrSourceStepLog s6Step318EntryFBefore s6Step318FrontBank 112 175 ⟨112,111,176,174⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 6 498 318 56 none (.early s6Step318CompleteLog)=some (.early s6Step318CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 318<498)]
  rw [s6Step318Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
