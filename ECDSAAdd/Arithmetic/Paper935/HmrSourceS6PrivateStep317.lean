import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep315
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

private def s6Step317CompleteMoves : List (Wire × Wire) := []

private def s6Step317EarlyControlLog : HmrEarlyControlLog := ⟨[843, 841, 793, 865, 803],[830],[805],[817, 812, 915, 906, 792, 849],[]⟩

private def s6Step317FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [786]],[[793], [841], [843], [850]],[[], [], [], []]⟩,[864],[860],[865],[803],[830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 803, 830, 805]⟩

private def s6Step317CompleteLog : HmrEarlyStepLog := ⟨s6Step317FrontLog,s6Step317CompleteMoves,s6Step317EarlyControlLog⟩

private def s6Step317ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step317ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850],776⟩

private def s6Step317ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩

private def s6Step317ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786],775⟩

private def s6Step317FrontOut : WindowBank := ⟨s6Step317ExitFOut,s6Step317ExitGOut,s6Step317ExitFvOut,s6Step317ExitGvOut⟩

private def s6Step317CompleteOut : WindowBank := s6Step317FrontOut.repacked s6Step317CompleteMoves

private def s6Step317EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step317EarlyControlPositiveArena,[830],s6Step317EarlyControlEqualityArena,[805],⟨⟨864,false⟩,[⟨⟨830,false⟩,805⟩]⟩⟩

private def s6Step317EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,843⟩,⟨⟨772,false⟩,841⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,865⟩,⟨⟨769,false⟩,803⟩]⟩

private def s6Step317EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step317EarlyControlZeroArena,s6Step317EarlyControlZeroPlan,s6Step317EarlyControlClassPlan,s6Step317EarlyControlFlagArena,s6Step317EarlyControlFittedArena,s6Step317EarlyControlHistoryArena,s6Step317EarlyControlSigmaArena,s6Step317EarlyControlOutputArena,s6Step317EarlyControlLog⟩

private def s6Step317CounterWork : List Wire := [865, 803, 830, 805]

private theorem s6Step317Counter_bounded : s6Step317CounterWork.toFinset⊆arenaWires := by norm_num [s6Step317CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step317HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317CounterDuring : Arena := ⟨s6Step317HeadFvAfter.live∪s6Step317CounterWork.toFinset,Finset.union_subset s6Step317HeadFvAfter.bounded s6Step317Counter_bounded⟩

private def s6Step317EntryFFresh : List Wire := []

private def s6Step317EntryFvFresh : List Wire := []

private def s6Step317EntryGFresh : List Wire := []

private def s6Step317EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317EntryGvFresh : List Wire := [786]

private def s6Step317ExitFExtra : List Wire := [841]

private def s6Step317ExitGExtra : List Wire := [793]

private def s6Step317ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317ExitGvExtra : List Wire := [843]

private def s6Step317Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step317Add0_bounded : s6Step317Add0Work.toFinset⊆arenaWires := by
  have h : s6Step317Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step317Add0During : Arena := ⟨s6Step317Add0Arena.live∪s6Step317Add0Work.toFinset,Finset.union_subset s6Step317Add0Arena.bounded s6Step317Add0_bounded⟩

private def s6Step317Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step317Add1_bounded : s6Step317Add1Work.toFinset⊆arenaWires := by
  have h : s6Step317Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step317Add1During : Arena := ⟨s6Step317Add1Arena.live∪s6Step317Add1Work.toFinset,Finset.union_subset s6Step317Add1Arena.bounded s6Step317Add1_bounded⟩

private def s6Step317F4FlagArena : Arena := ⟨s6Step317HeadFvAfter.live∪{865},Finset.union_subset s6Step317HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step317F4Plan : HmrHybridF4Plan := ⟨s6Step317F4FlagArena,[865],s6Step317Add0Arena,[803],s6Step317Add0During,s6Step317Add0Work,s6Step317Add1During,s6Step317Add1Work⟩

private def s6Step317HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩

private def s6Step317HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850],776⟩

private def s6Step317HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 793],777⟩

private def s6Step317HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 843],775⟩

private def s6Step317FrontHead : WindowBank := ⟨s6Step317HeadFOut,s6Step317HeadGOut,s6Step317HeadFvOut,s6Step317HeadGvOut⟩

private def s6Step317EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step317EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814],776⟩

private def s6Step317EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩

private def s6Step317EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786],775⟩

private def s6Step317FrontPair : WindowBank := ⟨s6Step317EntryFOut,s6Step317EntryGOut,s6Step317EntryFvOut,s6Step317EntryGvOut⟩

private def s6Step317FrontSigmaArena : Arena := ⟨s6Step317EntryGvAfter.live∪{864},Finset.union_subset s6Step317EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step317HeadFFresh : List Wire := [841]

private def s6Step317HeadFvFresh : List Wire := [850]

private def s6Step317HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317HeadGFresh : List Wire := [793]

private def s6Step317HeadGvFresh : List Wire := [843]

private def s6Step317FrontPlan : HmrSourceFront := ⟨s6Step317EntryGvAfter,s6Step317FrontPair,(growRow 795 s6Step317EntryFFresh ++ (growRow 777 s6Step317EntryGFresh ++ (growRow 776 s6Step317EntryFvFresh ++ (growRow 775 s6Step317EntryGvFresh ++ [])))),s6Step317FrontSigmaArena,[864],s6Step317HeadGBefore,[860],
  s6Step317HeadFvAfter,s6Step317FrontHead,(growRow 777 s6Step317HeadGFresh ++ (growRow 795 s6Step317HeadFFresh ++ (growRow 775 s6Step317HeadGvFresh ++ (growRow 776 s6Step317HeadFvFresh ++ [])))),s6Step317F4Plan,s6Step317CounterDuring,s6Step317CounterWork,s6Step317ExitGvAfter,s6Step317FrontOut,(shrinkRow 777 s6Step317ExitGExtra ++ (shrinkRow 795 s6Step317ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step317ExitGvExtra ++ []))))⟩

private def s6Step317CompletePlan : HmrEarlyStepPlan := ⟨s6Step317FrontPlan,s6Step317EarlyControlArena,s6Step317EarlyControlPlan,s6Step317CompleteMoves⟩

private theorem s6Step317Complete_apart : List.Disjoint (s6Step317CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [864, 860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] := by
  have nd : ((s6Step317CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[864, 860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step317Complete_owned : (s6Step317CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step317EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317Complete_repack : s6Step317ExitGvAfter.checkRepack s6Step317CompleteMoves=some s6Step317EarlyControlArena := by rfl

private theorem s6Step317EarlyControl_branchOwned : ([860] : List Wire).toFinset⊆s6Step317EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EarlyControl_branch : compileHmrBranchRetirement s6Step317EarlyControlSigmaArena 860=some s6Step317EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step317EarlyControl_branchOwned
  · ext q
    simp [s6Step317EarlyControlOutputArena,s6Step317EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step317EarlyControl_classEqualityBorrow : s6Step317EarlyControlPositiveArena.checkBorrow (([864, 830] : List Wire).length-1) s6Step317EarlyControlLog.classWork=some s6Step317EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step317EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step317EarlyControlEqualityArena,s6Step317EarlyControlPositiveArena,s6Step317EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step317EarlyControl_classEqualityOwned : ([864, 830] : List Wire).toFinset⊆s6Step317EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EarlyControl_classEquality : compileHmrEqualityLog s6Step317EarlyControlPositiveArena [864, 830] 0 s6Step317EarlyControlLog.classWork=some (s6Step317EarlyControlEqualityArena,s6Step317EarlyControlLog.classWork,s6Step317EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step317EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step317EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step317EarlyControl_classOwned : ([769, 803, 864] : List Wire).toFinset⊆s6Step317EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EarlyControl_positiveBorrow : s6Step317EarlyControlZeroArena.checkBorrow (1) s6Step317EarlyControlLog.positiveWork=some s6Step317EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step317EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step317EarlyControlPositiveArena,s6Step317EarlyControlZeroArena,s6Step317EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step317EarlyControl_class : compileHmrSourceClassLog s6Step317EarlyControlZeroArena false 769 s6Step317EarlyControlZeroPlan.top 0 864 s6Step317EarlyControlLog.positiveWork s6Step317EarlyControlLog.classWork=some s6Step317EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step317EarlyControlClassPlan s6Step317EarlyControlZeroArena false 769 s6Step317EarlyControlZeroPlan.top 0 864
  constructor
  · decide +kernel
  · exact s6Step317EarlyControl_classOwned
  · exact s6Step317EarlyControl_positiveBorrow
  · exact s6Step317EarlyControl_classEquality

private theorem s6Step317EarlyControl_entryRecordOwned : ([860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step317EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EarlyControl_entrySigmaOwned : ([864, 254] : List Wire).toFinset⊆s6Step317EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EarlyControl_fitBorrow : s6Step317EarlyControlFlagArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step317EarlyControlLog.recordFresh=some s6Step317EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step317EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step317EarlyControlFittedArena,s6Step317EarlyControlFlagArena,s6Step317EarlyControlLog,arenaWires]

private theorem s6Step317EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step317EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EarlyControl_fit : compileHmrRecordGrowLog s6Step317EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step317EarlyControlLog.recordFresh=some s6Step317EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step317EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step317EarlyControl_fitBorrow

private theorem s6Step317EarlyControl_flagsBorrow : s6Step317EarlyControlEqualityArena.checkBorrow (6) s6Step317EarlyControlLog.flagWork=some s6Step317EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step317EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step317EarlyControlFlagArena,s6Step317EarlyControlEqualityArena,s6Step317EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step317EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step317EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EarlyControl_flags : compileHmrFlagsLog s6Step317EarlyControlClassPlan.equalityArena s6Step317EarlyControlClassPlan.equality.top 253 252 251 s6Step317EarlyControlLog.flagWork=some s6Step317EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step317EarlyControl_flagsOwned⟩
  · exact s6Step317EarlyControl_flagsBorrow

private theorem s6Step317EarlyControl_historyBorrow : s6Step317EarlyControlArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step317EarlyControlLog.recordFresh=some s6Step317EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step317EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step317EarlyControlHistoryArena,s6Step317EarlyControlArena,s6Step317EarlyControlLog,arenaWires]

private theorem s6Step317EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step317EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EarlyControl_history : compileHmrRecordGrowLog s6Step317EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step317EarlyControlLog.recordFresh=some s6Step317EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step317EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step317EarlyControl_historyBorrow

private theorem s6Step317EarlyControl_sigmaOwned : ([254, 864] : List Wire).toFinset⊆s6Step317EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EarlyControl_sigmaReleaseOwned : ([864] : List Wire).toFinset⊆s6Step317EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EarlyControl_sigmaRelease : s6Step317EarlyControlHistoryArena.release {864} (fun _ => false)=some s6Step317EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step317EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step317EarlyControlSigmaArena,s6Step317EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step317EarlyControl_sigma : compileHmrSigmaDropLog s6Step317EarlyControlHistoryArena false 0 0 254 864 []=some s6Step317EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step317EarlyControl_sigmaOwned⟩
  · exact s6Step317EarlyControl_sigmaRelease

private theorem s6Step317EarlyControl_zeroBorrow : s6Step317EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step317EarlyControlLog.zeroWork=some s6Step317EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step317EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step317EarlyControlZeroArena,s6Step317EarlyControlArena,s6Step317EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step317EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step317EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step317EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EarlyControl_zero : compileHmrEqualityLog s6Step317EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step317EarlyControlLog.zeroWork=some (s6Step317EarlyControlZeroArena,s6Step317EarlyControlLog.zeroWork,s6Step317EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step317EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step317EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step317EarlyControl_logged : s6Step317EarlyControlPlan.Logged s6Step317EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 254 253 252 251 860 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step317EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step317EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step317EarlyControl_zero
  · exact s6Step317EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step317EarlyControl_flags
  · exact s6Step317EarlyControl_fit
  · exact s6Step317EarlyControl_history
  · exact s6Step317EarlyControl_sigma
  · exact s6Step317EarlyControl_branch

private theorem s6Step317EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step317EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 254 253 252 251 860 56 s6Step317EarlyControlLog=some s6Step317EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step317EarlyControlPlan s6Step317EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 254 253 252 251 860 56 s6Step317EarlyControl_logged

private def s6Step317EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step317EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814],776⟩

private def s6Step317EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩

private def s6Step317EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839],775⟩

private def s6Step317FrontBank : WindowBank := ⟨s6Step317EntryFRow,s6Step317EntryGRow,s6Step317EntryFvRow,s6Step317EntryGvRow⟩

private def s6Step317Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841, 795]

private def s6Step317Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 793, 777]

private def s6Step317Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 776]

private def s6Step317Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 843, 775]

private theorem s6Step317Counter_apart : Disjoint s6Step317HeadFvAfter.live s6Step317CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step317HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317Counter_borrowed : s6Step317HeadFvAfter.checkBorrow 4 s6Step317CounterWork=some s6Step317CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step317HeadFvAfter s6Step317CounterDuring s6Step317CounterWork.toFinset s6Step317Counter_bounded s6Step317Counter_apart rfl

private theorem s6Step317Counter_owned : (864::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step317HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step317HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317Counter_checked : compileHmrCounterStepLog s6Step317HeadFvAfter true 864 [774, 773, 772, 771, 770, 769] s6Step317CounterWork=some s6Step317CounterDuring := by
  have owned : ∀q∈864::[774, 773, 772, 771, 770, 769],q∈s6Step317HeadFvAfter.live := fun q hq => s6Step317Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step317Counter_borrowed

private def s6Step317EntryFAfter : Arena := s6Step317EntryFBefore

private theorem s6Step317EntryBank_incomingDistinct : ([s6Step317EntryFRow,s6Step317EntryGRow,s6Step317EntryFvRow,s6Step317EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317EntryF_Incoming : rowsOwned s6Step317EntryFBefore [s6Step317EntryFRow,s6Step317EntryGRow,s6Step317EntryFvRow,s6Step317EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317EntryFRow,s6Step317EntryGRow,s6Step317EntryFvRow,s6Step317EntryGvRow] 0 s6Step317EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317EntryBank_outgoingOwned : rowsOwned s6Step317EntryGvAfter [s6Step317EntryFOut,s6Step317EntryGOut,s6Step317EntryFvOut,s6Step317EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step317EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317EntryF_Outgoing : rowsOwned s6Step317EntryGvAfter [s6Step317EntryFOut,s6Step317EntryGOut,s6Step317EntryFvOut,s6Step317EntryGvOut] :=
  hmrRows_owned_drop s6Step317EntryGvAfter [s6Step317EntryFOut,s6Step317EntryGOut,s6Step317EntryFvOut,s6Step317EntryGvOut] 0 s6Step317EntryBank_outgoingOwned

private theorem s6Step317EntryF_distinct : (s6Step317EntryFRow.sign::s6Step317EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317EntryF_owned : (s6Step317EntryFRow.sign::s6Step317EntryFRow.payload).toFinset⊆s6Step317EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EntryF_reserved : s6Step317EntryFBefore.reserve s6Step317EntryFFresh.toFinset=some s6Step317EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step317EntryFFresh,arenaWires]
  · norm_num [s6Step317EntryFBefore,s6Step317EntryFFresh,arenaWires]
  · simp only [s6Step317EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step317EntryF_checked : planRowResizeLog s6Step317EntryFBefore s6Step317EntryFRow 112 s6Step317EntryFFresh=
    some (s6Step317EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩,growRow 795 s6Step317EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step317EntryFBefore s6Step317EntryFAfter s6Step317EntryFRow 112 s6Step317EntryFFresh
    s6Step317EntryF_distinct s6Step317EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step317EntryF_reserved
  have rowEq : WindowRow.mk (s6Step317EntryFRow.payload++s6Step317EntryFFresh) s6Step317EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step317EntryFvAfter : Arena := s6Step317EntryFBefore

private def s6Step317EntryFvBefore : Arena := s6Step317EntryFBefore

private theorem s6Step317EntryFv_Incoming : rowsOwned s6Step317EntryFvBefore [s6Step317EntryFvRow,s6Step317EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317EntryFRow,s6Step317EntryGRow,s6Step317EntryFvRow,s6Step317EntryGvRow] 2 s6Step317EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317EntryFv_Outgoing : rowsOwned s6Step317EntryGvAfter [s6Step317EntryFvOut,s6Step317EntryGvOut] :=
  hmrRows_owned_drop s6Step317EntryGvAfter [s6Step317EntryFOut,s6Step317EntryGOut,s6Step317EntryFvOut,s6Step317EntryGvOut] 2 s6Step317EntryBank_outgoingOwned

private theorem s6Step317EntryFv_distinct : (s6Step317EntryFvRow.sign::s6Step317EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317EntryFv_owned : (s6Step317EntryFvRow.sign::s6Step317EntryFvRow.payload).toFinset⊆s6Step317EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EntryFv_reserved : s6Step317EntryFvBefore.reserve s6Step317EntryFvFresh.toFinset=some s6Step317EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step317EntryFvFresh,arenaWires]
  · norm_num [s6Step317EntryFvBefore,s6Step317EntryFBefore,s6Step317EntryFvFresh,arenaWires]
  · simp only [s6Step317EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step317EntryFv_checked : planRowResizeLog s6Step317EntryFvBefore s6Step317EntryFvRow 174 s6Step317EntryFvFresh=
    some (s6Step317EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814],776⟩,growRow 776 s6Step317EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step317EntryFvBefore s6Step317EntryFvAfter s6Step317EntryFvRow 174 s6Step317EntryFvFresh
    s6Step317EntryFv_distinct s6Step317EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step317EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step317EntryFvRow.payload++s6Step317EntryFvFresh) s6Step317EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step317EntryGAfter : Arena := s6Step317EntryFBefore

private def s6Step317EntryGBefore : Arena := s6Step317EntryFBefore

private theorem s6Step317EntryG_Incoming : rowsOwned s6Step317EntryGBefore [s6Step317EntryGRow,s6Step317EntryFvRow,s6Step317EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317EntryFRow,s6Step317EntryGRow,s6Step317EntryFvRow,s6Step317EntryGvRow] 1 s6Step317EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317EntryG_Outgoing : rowsOwned s6Step317EntryGvAfter [s6Step317EntryGOut,s6Step317EntryFvOut,s6Step317EntryGvOut] :=
  hmrRows_owned_drop s6Step317EntryGvAfter [s6Step317EntryFOut,s6Step317EntryGOut,s6Step317EntryFvOut,s6Step317EntryGvOut] 1 s6Step317EntryBank_outgoingOwned

private theorem s6Step317EntryG_distinct : (s6Step317EntryGRow.sign::s6Step317EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317EntryG_owned : (s6Step317EntryGRow.sign::s6Step317EntryGRow.payload).toFinset⊆s6Step317EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EntryG_reserved : s6Step317EntryGBefore.reserve s6Step317EntryGFresh.toFinset=some s6Step317EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step317EntryGFresh,arenaWires]
  · norm_num [s6Step317EntryGBefore,s6Step317EntryFBefore,s6Step317EntryGFresh,arenaWires]
  · simp only [s6Step317EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step317EntryG_checked : planRowResizeLog s6Step317EntryGBefore s6Step317EntryGRow 112 s6Step317EntryGFresh=
    some (s6Step317EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩,growRow 777 s6Step317EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step317EntryGBefore s6Step317EntryGAfter s6Step317EntryGRow 112 s6Step317EntryGFresh
    s6Step317EntryG_distinct s6Step317EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step317EntryG_reserved
  have rowEq : WindowRow.mk (s6Step317EntryGRow.payload++s6Step317EntryGFresh) s6Step317EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step317EntryGvBefore : Arena := s6Step317EntryFBefore

private theorem s6Step317EntryGv_Incoming : rowsOwned s6Step317EntryGvBefore [s6Step317EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317EntryFRow,s6Step317EntryGRow,s6Step317EntryFvRow,s6Step317EntryGvRow] 3 s6Step317EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317EntryGv_Outgoing : rowsOwned s6Step317EntryGvAfter [s6Step317EntryGvOut] :=
  hmrRows_owned_drop s6Step317EntryGvAfter [s6Step317EntryFOut,s6Step317EntryGOut,s6Step317EntryFvOut,s6Step317EntryGvOut] 3 s6Step317EntryBank_outgoingOwned

private theorem s6Step317EntryGv_distinct : (s6Step317EntryGvRow.sign::s6Step317EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317EntryGv_owned : (s6Step317EntryGvRow.sign::s6Step317EntryGvRow.payload).toFinset⊆s6Step317EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317EntryGv_reserved : s6Step317EntryGvBefore.reserve s6Step317EntryGvFresh.toFinset=some s6Step317EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step317EntryGvFresh,arenaWires]
  · norm_num [s6Step317EntryGvBefore,s6Step317EntryFBefore,s6Step317EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step317EntryGvAfter,s6Step317EntryGvBefore,s6Step317EntryFBefore,s6Step317EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step317EntryGv_checked : planRowResizeLog s6Step317EntryGvBefore s6Step317EntryGvRow 174 s6Step317EntryGvFresh=
    some (s6Step317EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786],775⟩,growRow 775 s6Step317EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step317EntryGvBefore s6Step317EntryGvAfter s6Step317EntryGvRow 174 s6Step317EntryGvFresh
    s6Step317EntryGv_distinct s6Step317EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step317EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step317EntryGvRow.payload++s6Step317EntryGvFresh) s6Step317EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step317EntryBank_rows : planWindowRowsLog s6Step317EntryFBefore [(s6Step317EntryFRow,112),(s6Step317EntryGRow,112),(s6Step317EntryFvRow,174),(s6Step317EntryGvRow,174)] [s6Step317EntryFFresh,s6Step317EntryGFresh,s6Step317EntryFvFresh,s6Step317EntryGvFresh]=
    some (s6Step317EntryGvAfter,[s6Step317EntryFOut,s6Step317EntryGOut,s6Step317EntryFvOut,s6Step317EntryGvOut],(growRow 795 s6Step317EntryFFresh ++ (growRow 777 s6Step317EntryGFresh ++ (growRow 776 s6Step317EntryFvFresh ++ (growRow 775 s6Step317EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step317EntryGvAfter [] []=some (s6Step317EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step317EntryGvBefore s6Step317EntryGvAfter s6Step317EntryGvAfter
    s6Step317EntryGvRow s6Step317EntryGvOut 174 s6Step317EntryGvFresh [] [] []
    (growRow 775 s6Step317EntryGvFresh) ([]) s6Step317EntryGv_Incoming s6Step317EntryGv_checked h4 s6Step317EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step317EntryFvBefore s6Step317EntryFvAfter s6Step317EntryGvAfter
    s6Step317EntryFvRow s6Step317EntryFvOut 174 s6Step317EntryFvFresh [(s6Step317EntryGvRow,174)] [s6Step317EntryGvFresh] [s6Step317EntryGvOut]
    (growRow 776 s6Step317EntryFvFresh) ((growRow 775 s6Step317EntryGvFresh ++ [])) s6Step317EntryFv_Incoming s6Step317EntryFv_checked h3 s6Step317EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step317EntryGBefore s6Step317EntryGAfter s6Step317EntryGvAfter
    s6Step317EntryGRow s6Step317EntryGOut 112 s6Step317EntryGFresh [(s6Step317EntryFvRow,174),(s6Step317EntryGvRow,174)] [s6Step317EntryFvFresh,s6Step317EntryGvFresh] [s6Step317EntryFvOut,s6Step317EntryGvOut]
    (growRow 777 s6Step317EntryGFresh) ((growRow 776 s6Step317EntryFvFresh ++ (growRow 775 s6Step317EntryGvFresh ++ []))) s6Step317EntryG_Incoming s6Step317EntryG_checked h2 s6Step317EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step317EntryFBefore s6Step317EntryFAfter s6Step317EntryGvAfter
    s6Step317EntryFRow s6Step317EntryFOut 112 s6Step317EntryFFresh [(s6Step317EntryGRow,112),(s6Step317EntryFvRow,174),(s6Step317EntryGvRow,174)] [s6Step317EntryGFresh,s6Step317EntryFvFresh,s6Step317EntryGvFresh] [s6Step317EntryGOut,s6Step317EntryFvOut,s6Step317EntryGvOut]
    (growRow 795 s6Step317EntryFFresh) ((growRow 777 s6Step317EntryGFresh ++ (growRow 776 s6Step317EntryFvFresh ++ (growRow 775 s6Step317EntryGvFresh ++ [])))) s6Step317EntryF_Incoming s6Step317EntryF_checked h1 s6Step317EntryF_Outgoing
  exact h0

private theorem s6Step317EntryBank_checked : compileHmrBankResizeLog .entry s6Step317EntryFBefore ⟨s6Step317EntryFRow,s6Step317EntryGRow,s6Step317EntryFvRow,s6Step317EntryGvRow⟩ ⟨112,112,174,174⟩ [s6Step317EntryFFresh,s6Step317EntryGFresh,s6Step317EntryFvFresh,s6Step317EntryGvFresh]=
    some (s6Step317EntryGvAfter,⟨s6Step317EntryFOut,s6Step317EntryGOut,s6Step317EntryFvOut,s6Step317EntryGvOut⟩,(growRow 795 s6Step317EntryFFresh ++ (growRow 777 s6Step317EntryGFresh ++ (growRow 776 s6Step317EntryFvFresh ++ (growRow 775 s6Step317EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step317EntryBank_rows]
  rfl

private def s6Step317ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317ExitFBefore : Arena := s6Step317ExitGAfter

private def s6Step317ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩

private def s6Step317ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850],776⟩

private def s6Step317ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 793],777⟩

private def s6Step317ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 843],775⟩

private theorem s6Step317ExitBank_incomingDistinct : ([s6Step317ExitGRow,s6Step317ExitFRow,s6Step317ExitFvRow,s6Step317ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317ExitF_Incoming : rowsOwned s6Step317ExitFBefore [s6Step317ExitFRow,s6Step317ExitFvRow,s6Step317ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317ExitGRow,s6Step317ExitFRow,s6Step317ExitFvRow,s6Step317ExitGvRow] 1 s6Step317ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317ExitBank_outgoingOwned : rowsOwned s6Step317ExitGvAfter [s6Step317ExitGOut,s6Step317ExitFOut,s6Step317ExitFvOut,s6Step317ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step317ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317ExitF_Outgoing : rowsOwned s6Step317ExitGvAfter [s6Step317ExitFOut,s6Step317ExitFvOut,s6Step317ExitGvOut] :=
  hmrRows_owned_drop s6Step317ExitGvAfter [s6Step317ExitGOut,s6Step317ExitFOut,s6Step317ExitFvOut,s6Step317ExitGvOut] 1 s6Step317ExitBank_outgoingOwned

private theorem s6Step317ExitF_distinct : (s6Step317ExitFRow.sign::s6Step317ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317ExitF_owned : (s6Step317ExitFRow.sign::s6Step317ExitFRow.payload).toFinset⊆s6Step317ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317ExitF_retired : s6Step317ExitFBefore.retireSet s6Step317ExitFExtra.toFinset=s6Step317ExitFAfter := by
  unfold Arena.retireSet s6Step317ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step317ExitFBefore,s6Step317ExitGAfter,s6Step317ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step317ExitF_checked : planRowResizeLog s6Step317ExitFBefore s6Step317ExitFRow 112 []=
    some (s6Step317ExitFAfter,s6Step317ExitFOut,shrinkRow 795 s6Step317ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step317ExitFBefore s6Step317ExitFRow 112 s6Step317ExitF_distinct s6Step317ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step317ExitFRow.payload.take 112) s6Step317ExitFRow.sign=s6Step317ExitFOut := by decide +kernel
  have hi : s6Step317ExitFRow.payload.drop 112=s6Step317ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step317ExitF_retired] at result
  exact result

private def s6Step317ExitFvAfter : Arena := s6Step317ExitFAfter

private def s6Step317ExitFvBefore : Arena := s6Step317ExitFAfter

private theorem s6Step317ExitFv_Incoming : rowsOwned s6Step317ExitFvBefore [s6Step317ExitFvRow,s6Step317ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317ExitGRow,s6Step317ExitFRow,s6Step317ExitFvRow,s6Step317ExitGvRow] 2 s6Step317ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317ExitFv_Outgoing : rowsOwned s6Step317ExitGvAfter [s6Step317ExitFvOut,s6Step317ExitGvOut] :=
  hmrRows_owned_drop s6Step317ExitGvAfter [s6Step317ExitGOut,s6Step317ExitFOut,s6Step317ExitFvOut,s6Step317ExitGvOut] 2 s6Step317ExitBank_outgoingOwned

private theorem s6Step317ExitFv_distinct : (s6Step317ExitFvRow.sign::s6Step317ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317ExitFv_owned : (s6Step317ExitFvRow.sign::s6Step317ExitFvRow.payload).toFinset⊆s6Step317ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317ExitFv_reserved : s6Step317ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step317ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step317ExitFv_checked : planRowResizeLog s6Step317ExitFvBefore s6Step317ExitFvRow 175 []=
    some (s6Step317ExitFvAfter,s6Step317ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step317ExitFvBefore s6Step317ExitFvAfter s6Step317ExitFvRow 175 []
    s6Step317ExitFv_distinct s6Step317ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step317ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step317ExitFvRow.payload++[]) s6Step317ExitFvRow.sign=s6Step317ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step317ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step317ExitG_Incoming : rowsOwned s6Step317ExitGBefore [s6Step317ExitGRow,s6Step317ExitFRow,s6Step317ExitFvRow,s6Step317ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317ExitGRow,s6Step317ExitFRow,s6Step317ExitFvRow,s6Step317ExitGvRow] 0 s6Step317ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317ExitG_Outgoing : rowsOwned s6Step317ExitGvAfter [s6Step317ExitGOut,s6Step317ExitFOut,s6Step317ExitFvOut,s6Step317ExitGvOut] :=
  hmrRows_owned_drop s6Step317ExitGvAfter [s6Step317ExitGOut,s6Step317ExitFOut,s6Step317ExitFvOut,s6Step317ExitGvOut] 0 s6Step317ExitBank_outgoingOwned

private theorem s6Step317ExitG_distinct : (s6Step317ExitGRow.sign::s6Step317ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317ExitG_owned : (s6Step317ExitGRow.sign::s6Step317ExitGRow.payload).toFinset⊆s6Step317ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317ExitG_retired : s6Step317ExitGBefore.retireSet s6Step317ExitGExtra.toFinset=s6Step317ExitGAfter := by
  unfold Arena.retireSet s6Step317ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step317ExitGBefore,s6Step317ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step317ExitG_checked : planRowResizeLog s6Step317ExitGBefore s6Step317ExitGRow 112 []=
    some (s6Step317ExitGAfter,s6Step317ExitGOut,shrinkRow 777 s6Step317ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step317ExitGBefore s6Step317ExitGRow 112 s6Step317ExitG_distinct s6Step317ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step317ExitGRow.payload.take 112) s6Step317ExitGRow.sign=s6Step317ExitGOut := by decide +kernel
  have hi : s6Step317ExitGRow.payload.drop 112=s6Step317ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step317ExitG_retired] at result
  exact result

private def s6Step317ExitGvBefore : Arena := s6Step317ExitFAfter

private theorem s6Step317ExitGv_Incoming : rowsOwned s6Step317ExitGvBefore [s6Step317ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317ExitGRow,s6Step317ExitFRow,s6Step317ExitFvRow,s6Step317ExitGvRow] 3 s6Step317ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317ExitGv_Outgoing : rowsOwned s6Step317ExitGvAfter [s6Step317ExitGvOut] :=
  hmrRows_owned_drop s6Step317ExitGvAfter [s6Step317ExitGOut,s6Step317ExitFOut,s6Step317ExitFvOut,s6Step317ExitGvOut] 3 s6Step317ExitBank_outgoingOwned

private theorem s6Step317ExitGv_distinct : (s6Step317ExitGvRow.sign::s6Step317ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317ExitGv_owned : (s6Step317ExitGvRow.sign::s6Step317ExitGvRow.payload).toFinset⊆s6Step317ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317ExitGv_retired : s6Step317ExitGvBefore.retireSet s6Step317ExitGvExtra.toFinset=s6Step317ExitGvAfter := by
  unfold Arena.retireSet s6Step317ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step317ExitGvBefore,s6Step317ExitFAfter,s6Step317ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step317ExitGv_checked : planRowResizeLog s6Step317ExitGvBefore s6Step317ExitGvRow 174 []=
    some (s6Step317ExitGvAfter,s6Step317ExitGvOut,shrinkRow 775 s6Step317ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step317ExitGvBefore s6Step317ExitGvRow 174 s6Step317ExitGv_distinct s6Step317ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step317ExitGvRow.payload.take 174) s6Step317ExitGvRow.sign=s6Step317ExitGvOut := by decide +kernel
  have hi : s6Step317ExitGvRow.payload.drop 174=s6Step317ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step317ExitGv_retired] at result
  exact result

private theorem s6Step317ExitBank_rows : planWindowRowsLog s6Step317ExitGBefore [(s6Step317ExitGRow,112),(s6Step317ExitFRow,112),(s6Step317ExitFvRow,175),(s6Step317ExitGvRow,174)] [[],[],[],[]]=
    some (s6Step317ExitGvAfter,[s6Step317ExitGOut,s6Step317ExitFOut,s6Step317ExitFvOut,s6Step317ExitGvOut],(shrinkRow 777 s6Step317ExitGExtra ++ (shrinkRow 795 s6Step317ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step317ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step317ExitGvAfter [] []=some (s6Step317ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step317ExitGvBefore s6Step317ExitGvAfter s6Step317ExitGvAfter
    s6Step317ExitGvRow s6Step317ExitGvOut 174 [] [] [] []
    (shrinkRow 775 s6Step317ExitGvExtra) ([]) s6Step317ExitGv_Incoming s6Step317ExitGv_checked h4 s6Step317ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step317ExitFvBefore s6Step317ExitFvAfter s6Step317ExitGvAfter
    s6Step317ExitFvRow s6Step317ExitFvOut 175 [] [(s6Step317ExitGvRow,174)] [[]] [s6Step317ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step317ExitGvExtra ++ [])) s6Step317ExitFv_Incoming s6Step317ExitFv_checked h3 s6Step317ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step317ExitFBefore s6Step317ExitFAfter s6Step317ExitGvAfter
    s6Step317ExitFRow s6Step317ExitFOut 112 [] [(s6Step317ExitFvRow,175),(s6Step317ExitGvRow,174)] [[],[]] [s6Step317ExitFvOut,s6Step317ExitGvOut]
    (shrinkRow 795 s6Step317ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step317ExitGvExtra ++ []))) s6Step317ExitF_Incoming s6Step317ExitF_checked h2 s6Step317ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step317ExitGBefore s6Step317ExitGAfter s6Step317ExitGvAfter
    s6Step317ExitGRow s6Step317ExitGOut 112 [] [(s6Step317ExitFRow,112),(s6Step317ExitFvRow,175),(s6Step317ExitGvRow,174)] [[],[],[]] [s6Step317ExitFOut,s6Step317ExitFvOut,s6Step317ExitGvOut]
    (shrinkRow 777 s6Step317ExitGExtra) ((shrinkRow 795 s6Step317ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step317ExitGvExtra ++ [])))) s6Step317ExitG_Incoming s6Step317ExitG_checked h1 s6Step317ExitG_Outgoing
  exact h0

private theorem s6Step317ExitBank_checked : compileHmrBankResizeLog .exit s6Step317ExitGBefore ⟨s6Step317ExitFRow,s6Step317ExitGRow,s6Step317ExitFvRow,s6Step317ExitGvRow⟩ ⟨112,112,175,174⟩ [[],[],[],[]]=
    some (s6Step317ExitGvAfter,⟨s6Step317ExitFOut,s6Step317ExitGOut,s6Step317ExitFvOut,s6Step317ExitGvOut⟩,(shrinkRow 777 s6Step317ExitGExtra ++ (shrinkRow 795 s6Step317ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step317ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step317ExitBank_rows]
  rfl

private theorem s6Step317Add0_apart : Disjoint s6Step317Add0Arena.live s6Step317Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step317Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317Add0_card : s6Step317Add0Arena.live.card=902 := by
  decide +kernel

private theorem s6Step317Add0_borrowed : s6Step317Add0Arena.checkBorrow (hmrHybridCount s6Step317Add0Arena s6Step317Add0B.length) s6Step317Add0Work=some s6Step317Add0During := by
  have len : s6Step317Add0Work.length=hmrHybridCount s6Step317Add0Arena s6Step317Add0B.length := by
    rw [hmrHybridCount,s6Step317Add0_card]
    decide +kernel
  have nd : s6Step317Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step317Add0Arena s6Step317Add0During s6Step317Add0Work.toFinset s6Step317Add0_bounded s6Step317Add0_apart rfl

private theorem s6Step317Add0_distinct : (865::860::803::(s6Step317Add0A++s6Step317Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317Add0_owned : (865::860::803::(s6Step317Add0A++s6Step317Add0B)).toFinset⊆s6Step317Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step317Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317Add0_checked : compileHmrHybridCinLog s6Step317Add0Arena 860 865 803 s6Step317Add0A s6Step317Add0B s6Step317Add0Work=some s6Step317Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step317Add0Arena s6Step317Add0During 860 865 803 s6Step317Add0A s6Step317Add0B s6Step317Add0Work
    (by decide +kernel) (by decide +kernel) s6Step317Add0_distinct
    (fun q hq => s6Step317Add0_owned (List.mem_toFinset.mpr hq)) s6Step317Add0_borrowed

private theorem s6Step317Add1_apart : Disjoint s6Step317Add1Arena.live s6Step317Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step317Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317Add1_card : s6Step317Add1Arena.live.card=902 := by
  decide +kernel

private theorem s6Step317Add1_borrowed : s6Step317Add1Arena.checkBorrow (hmrHybridCount s6Step317Add1Arena s6Step317Add1B.length) s6Step317Add1Work=some s6Step317Add1During := by
  have len : s6Step317Add1Work.length=hmrHybridCount s6Step317Add1Arena s6Step317Add1B.length := by
    rw [hmrHybridCount,s6Step317Add1_card]
    decide +kernel
  have nd : s6Step317Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step317Add1Arena s6Step317Add1During s6Step317Add1Work.toFinset s6Step317Add1_bounded s6Step317Add1_apart rfl

private theorem s6Step317Add1_distinct : (865::860::803::(s6Step317Add1A++s6Step317Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317Add1_owned : (865::860::803::(s6Step317Add1A++s6Step317Add1B)).toFinset⊆s6Step317Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step317Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317Add1_checked : compileHmrHybridCinLog s6Step317Add1Arena 860 865 803 s6Step317Add1A s6Step317Add1B s6Step317Add1Work=some s6Step317Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step317Add1Arena s6Step317Add1During 860 865 803 s6Step317Add1A s6Step317Add1B s6Step317Add1Work
    (by decide +kernel) (by decide +kernel) s6Step317Add1_distinct
    (fun q hq => s6Step317Add1_owned (List.mem_toFinset.mpr hq)) s6Step317Add1_borrowed

private theorem s6Step317F4_apart : Disjoint (s6Step317Add0A++s6Step317Add0B).toFinset (s6Step317Add1A++s6Step317Add1B).toFinset := by
  have nd : ((s6Step317Add0A++s6Step317Add0B)++(s6Step317Add1A++s6Step317Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step317F4_carry : s6Step317F4FlagArena.checkBorrow 1 [803]=some s6Step317Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step317F4FlagArena,s6Step317HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step317F4FlagArena,s6Step317HeadFvAfter,s6Step317Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step317F4_distinct : (864::860::865::803::((s6Step317Add0A++s6Step317Add1A)++(s6Step317Add0B++s6Step317Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317F4_flag : s6Step317HeadFvAfter.checkBorrow 1 [865]=some s6Step317F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step317HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step317F4_owned : (864::860::((s6Step317Add0A++s6Step317Add1A)++(s6Step317Add0B++s6Step317Add1B))).toFinset⊆s6Step317HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step317HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317F4_checked : compileHmrHybridF4Log s6Step317HeadFvAfter 864 860 s6Step317Add0A s6Step317Add0B s6Step317Add1A s6Step317Add1B [865] [803] s6Step317Add0Work s6Step317Add1Work=some s6Step317F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step317HeadFvAfter s6Step317F4FlagArena s6Step317Add0Arena s6Step317Add0During s6Step317Add1During 864 860
    s6Step317Add0A s6Step317Add0B s6Step317Add1A s6Step317Add1B [865] [803] s6Step317Add0Work s6Step317Add1Work
    (fun q hq => s6Step317F4_owned (List.mem_toFinset.mpr hq)) s6Step317F4_flag s6Step317F4_carry
    s6Step317F4_distinct s6Step317F4_apart s6Step317Add0_checked s6Step317Add1_checked

private theorem s6Step317Front_branch : s6Step317FrontSigmaArena.checkBorrow 1 [860]=some s6Step317HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step317FrontSigmaArena,s6Step317EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step317FrontSigmaArena,s6Step317EntryGvAfter,s6Step317HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step317Front_entry : HmrFrontEntryValid s6Step317EntryFBefore s6Step317FrontBank 112 174 ⟨112,112,175,174⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step317FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step317EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step317EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step317FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step317Front_sigma : s6Step317EntryGvAfter.checkBorrow 1 [864]=some s6Step317FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step317EntryGvAfter,arenaWires]
  · rfl

private def s6Step317HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317HeadFBefore : Arena := s6Step317HeadGAfter

private def s6Step317HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step317HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814],776⟩

private def s6Step317HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩

private def s6Step317HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786],775⟩

private theorem s6Step317HeadBank_incomingDistinct : ([s6Step317HeadGRow,s6Step317HeadFRow,s6Step317HeadGvRow,s6Step317HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317HeadF_Incoming : rowsOwned s6Step317HeadFBefore [s6Step317HeadFRow,s6Step317HeadGvRow,s6Step317HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317HeadGRow,s6Step317HeadFRow,s6Step317HeadGvRow,s6Step317HeadFvRow] 1 s6Step317HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317HeadBank_outgoingOwned : rowsOwned s6Step317HeadFvAfter [s6Step317HeadGOut,s6Step317HeadFOut,s6Step317HeadGvOut,s6Step317HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step317HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317HeadF_Outgoing : rowsOwned s6Step317HeadFvAfter [s6Step317HeadFOut,s6Step317HeadGvOut,s6Step317HeadFvOut] :=
  hmrRows_owned_drop s6Step317HeadFvAfter [s6Step317HeadGOut,s6Step317HeadFOut,s6Step317HeadGvOut,s6Step317HeadFvOut] 1 s6Step317HeadBank_outgoingOwned

private theorem s6Step317HeadF_distinct : (s6Step317HeadFRow.sign::s6Step317HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317HeadF_owned : (s6Step317HeadFRow.sign::s6Step317HeadFRow.payload).toFinset⊆s6Step317HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317HeadF_reserved : s6Step317HeadFBefore.reserve s6Step317HeadFFresh.toFinset=some s6Step317HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step317HeadFFresh,arenaWires]
  · norm_num [s6Step317HeadFBefore,s6Step317HeadGAfter,s6Step317HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step317HeadFAfter,s6Step317HeadFBefore,s6Step317HeadGAfter,s6Step317HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step317HeadF_checked : planRowResizeLog s6Step317HeadFBefore s6Step317HeadFRow 113 s6Step317HeadFFresh=
    some (s6Step317HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩,growRow 795 s6Step317HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step317HeadFBefore s6Step317HeadFAfter s6Step317HeadFRow 113 s6Step317HeadFFresh
    s6Step317HeadF_distinct s6Step317HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step317HeadF_reserved
  have rowEq : WindowRow.mk (s6Step317HeadFRow.payload++s6Step317HeadFFresh) s6Step317HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 841],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step317HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step317HeadFvBefore : Arena := s6Step317HeadGvAfter

private theorem s6Step317HeadFv_Incoming : rowsOwned s6Step317HeadFvBefore [s6Step317HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317HeadGRow,s6Step317HeadFRow,s6Step317HeadGvRow,s6Step317HeadFvRow] 3 s6Step317HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317HeadFv_Outgoing : rowsOwned s6Step317HeadFvAfter [s6Step317HeadFvOut] :=
  hmrRows_owned_drop s6Step317HeadFvAfter [s6Step317HeadGOut,s6Step317HeadFOut,s6Step317HeadGvOut,s6Step317HeadFvOut] 3 s6Step317HeadBank_outgoingOwned

private theorem s6Step317HeadFv_distinct : (s6Step317HeadFvRow.sign::s6Step317HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317HeadFv_owned : (s6Step317HeadFvRow.sign::s6Step317HeadFvRow.payload).toFinset⊆s6Step317HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317HeadFv_reserved : s6Step317HeadFvBefore.reserve s6Step317HeadFvFresh.toFinset=some s6Step317HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step317HeadFvFresh,arenaWires]
  · norm_num [s6Step317HeadFvBefore,s6Step317HeadGvAfter,s6Step317HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step317HeadFvAfter,s6Step317HeadFvBefore,s6Step317HeadGvAfter,s6Step317HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step317HeadFv_checked : planRowResizeLog s6Step317HeadFvBefore s6Step317HeadFvRow 175 s6Step317HeadFvFresh=
    some (s6Step317HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850],776⟩,growRow 776 s6Step317HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step317HeadFvBefore s6Step317HeadFvAfter s6Step317HeadFvRow 175 s6Step317HeadFvFresh
    s6Step317HeadFv_distinct s6Step317HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step317HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step317HeadFvRow.payload++s6Step317HeadFvFresh) s6Step317HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step317HeadG_Incoming : rowsOwned s6Step317HeadGBefore [s6Step317HeadGRow,s6Step317HeadFRow,s6Step317HeadGvRow,s6Step317HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317HeadGRow,s6Step317HeadFRow,s6Step317HeadGvRow,s6Step317HeadFvRow] 0 s6Step317HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317HeadG_Outgoing : rowsOwned s6Step317HeadFvAfter [s6Step317HeadGOut,s6Step317HeadFOut,s6Step317HeadGvOut,s6Step317HeadFvOut] :=
  hmrRows_owned_drop s6Step317HeadFvAfter [s6Step317HeadGOut,s6Step317HeadFOut,s6Step317HeadGvOut,s6Step317HeadFvOut] 0 s6Step317HeadBank_outgoingOwned

private theorem s6Step317HeadG_distinct : (s6Step317HeadGRow.sign::s6Step317HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317HeadG_owned : (s6Step317HeadGRow.sign::s6Step317HeadGRow.payload).toFinset⊆s6Step317HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317HeadG_reserved : s6Step317HeadGBefore.reserve s6Step317HeadGFresh.toFinset=some s6Step317HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step317HeadGFresh,arenaWires]
  · norm_num [s6Step317HeadGBefore,s6Step317HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step317HeadGAfter,s6Step317HeadGBefore,s6Step317HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step317HeadG_checked : planRowResizeLog s6Step317HeadGBefore s6Step317HeadGRow 113 s6Step317HeadGFresh=
    some (s6Step317HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 793],777⟩,growRow 777 s6Step317HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step317HeadGBefore s6Step317HeadGAfter s6Step317HeadGRow 113 s6Step317HeadGFresh
    s6Step317HeadG_distinct s6Step317HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step317HeadG_reserved
  have rowEq : WindowRow.mk (s6Step317HeadGRow.payload++s6Step317HeadGFresh) s6Step317HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 793],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step317HeadGvBefore : Arena := s6Step317HeadFAfter

private theorem s6Step317HeadGv_Incoming : rowsOwned s6Step317HeadGvBefore [s6Step317HeadGvRow,s6Step317HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step317HeadGRow,s6Step317HeadFRow,s6Step317HeadGvRow,s6Step317HeadFvRow] 2 s6Step317HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step317HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step317HeadGv_Outgoing : rowsOwned s6Step317HeadFvAfter [s6Step317HeadGvOut,s6Step317HeadFvOut] :=
  hmrRows_owned_drop s6Step317HeadFvAfter [s6Step317HeadGOut,s6Step317HeadFOut,s6Step317HeadGvOut,s6Step317HeadFvOut] 2 s6Step317HeadBank_outgoingOwned

private theorem s6Step317HeadGv_distinct : (s6Step317HeadGvRow.sign::s6Step317HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step317HeadGv_owned : (s6Step317HeadGvRow.sign::s6Step317HeadGvRow.payload).toFinset⊆s6Step317HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step317HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step317HeadGv_reserved : s6Step317HeadGvBefore.reserve s6Step317HeadGvFresh.toFinset=some s6Step317HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step317HeadGvFresh,arenaWires]
  · norm_num [s6Step317HeadGvBefore,s6Step317HeadFAfter,s6Step317HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step317HeadGvAfter,s6Step317HeadGvBefore,s6Step317HeadFAfter,s6Step317HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step317HeadGv_checked : planRowResizeLog s6Step317HeadGvBefore s6Step317HeadGvRow 175 s6Step317HeadGvFresh=
    some (s6Step317HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 843],775⟩,growRow 775 s6Step317HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step317HeadGvBefore s6Step317HeadGvAfter s6Step317HeadGvRow 175 s6Step317HeadGvFresh
    s6Step317HeadGv_distinct s6Step317HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step317HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step317HeadGvRow.payload++s6Step317HeadGvFresh) s6Step317HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 843],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step317HeadBank_rows : planWindowRowsLog s6Step317HeadGBefore [(s6Step317HeadGRow,113),(s6Step317HeadFRow,113),(s6Step317HeadGvRow,175),(s6Step317HeadFvRow,175)] [s6Step317HeadGFresh,s6Step317HeadFFresh,s6Step317HeadGvFresh,s6Step317HeadFvFresh]=
    some (s6Step317HeadFvAfter,[s6Step317HeadGOut,s6Step317HeadFOut,s6Step317HeadGvOut,s6Step317HeadFvOut],(growRow 777 s6Step317HeadGFresh ++ (growRow 795 s6Step317HeadFFresh ++ (growRow 775 s6Step317HeadGvFresh ++ (growRow 776 s6Step317HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step317HeadFvAfter [] []=some (s6Step317HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step317HeadFvBefore s6Step317HeadFvAfter s6Step317HeadFvAfter
    s6Step317HeadFvRow s6Step317HeadFvOut 175 s6Step317HeadFvFresh [] [] []
    (growRow 776 s6Step317HeadFvFresh) ([]) s6Step317HeadFv_Incoming s6Step317HeadFv_checked h4 s6Step317HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step317HeadGvBefore s6Step317HeadGvAfter s6Step317HeadFvAfter
    s6Step317HeadGvRow s6Step317HeadGvOut 175 s6Step317HeadGvFresh [(s6Step317HeadFvRow,175)] [s6Step317HeadFvFresh] [s6Step317HeadFvOut]
    (growRow 775 s6Step317HeadGvFresh) ((growRow 776 s6Step317HeadFvFresh ++ [])) s6Step317HeadGv_Incoming s6Step317HeadGv_checked h3 s6Step317HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step317HeadFBefore s6Step317HeadFAfter s6Step317HeadFvAfter
    s6Step317HeadFRow s6Step317HeadFOut 113 s6Step317HeadFFresh [(s6Step317HeadGvRow,175),(s6Step317HeadFvRow,175)] [s6Step317HeadGvFresh,s6Step317HeadFvFresh] [s6Step317HeadGvOut,s6Step317HeadFvOut]
    (growRow 795 s6Step317HeadFFresh) ((growRow 775 s6Step317HeadGvFresh ++ (growRow 776 s6Step317HeadFvFresh ++ []))) s6Step317HeadF_Incoming s6Step317HeadF_checked h2 s6Step317HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step317HeadGBefore s6Step317HeadGAfter s6Step317HeadFvAfter
    s6Step317HeadGRow s6Step317HeadGOut 113 s6Step317HeadGFresh [(s6Step317HeadFRow,113),(s6Step317HeadGvRow,175),(s6Step317HeadFvRow,175)] [s6Step317HeadFFresh,s6Step317HeadGvFresh,s6Step317HeadFvFresh] [s6Step317HeadFOut,s6Step317HeadGvOut,s6Step317HeadFvOut]
    (growRow 777 s6Step317HeadGFresh) ((growRow 795 s6Step317HeadFFresh ++ (growRow 775 s6Step317HeadGvFresh ++ (growRow 776 s6Step317HeadFvFresh ++ [])))) s6Step317HeadG_Incoming s6Step317HeadG_checked h1 s6Step317HeadG_Outgoing
  exact h0

private theorem s6Step317HeadBank_checked : compileHmrBankResizeLog .headroom s6Step317HeadGBefore ⟨s6Step317HeadFRow,s6Step317HeadGRow,s6Step317HeadFvRow,s6Step317HeadGvRow⟩ ⟨113,113,175,175⟩ [s6Step317HeadGFresh,s6Step317HeadFFresh,s6Step317HeadGvFresh,s6Step317HeadFvFresh]=
    some (s6Step317HeadFvAfter,⟨s6Step317HeadFOut,s6Step317HeadGOut,s6Step317HeadFvOut,s6Step317HeadGvOut⟩,(growRow 777 s6Step317HeadGFresh ++ (growRow 795 s6Step317HeadFFresh ++ (growRow 775 s6Step317HeadGvFresh ++ (growRow 776 s6Step317HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step317HeadBank_rows]
  rfl

private theorem s6Step317Front_checked : compileHmrSourceFrontLog s6Step317EntryFBefore s6Step317FrontBank 112 174 ⟨112,112,175,174⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step317FrontLog=some s6Step317FrontPlan := by
  have pairEq : s6Step317FrontPair=⟨s6Step317HeadFRow,s6Step317HeadGRow,s6Step317HeadFvRow,s6Step317HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step317FrontHead=⟨s6Step317ExitFRow,s6Step317ExitGRow,s6Step317ExitFvRow,s6Step317ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step317Add0A=s6Step317FrontHead.f.wires := by decide +kernel
  have gEq : s6Step317Add0B=s6Step317FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step317Add1A=s6Step317FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step317Add1B=s6Step317FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step317EntryFBefore s6Step317FrontBank 112 174 ⟨112,112,175,174⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step317FrontLog s6Step317FrontPlan
  · exact s6Step317Front_entry
  · exact s6Step317EntryBank_checked
  · exact s6Step317Front_sigma
  · rfl
  · exact s6Step317Front_branch
  · rfl
  · simpa only [s6Step317FrontPlan,pairEq] using s6Step317HeadBank_checked
  · simpa only [s6Step317FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step317F4_checked
  · exact s6Step317Counter_checked
  · rfl
  · simpa only [s6Step317FrontPlan,headEq] using s6Step317ExitBank_checked

private theorem s6Step317Complete_explicit_checked : compileHmrEarlyStepLog s6Step317EntryFBefore s6Step317FrontBank 112 174 ⟨112,112,175,174⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step317CompleteLog=some s6Step317CompletePlan := by
  let Q := s6Step317EarlyControlPlan
  have hq := s6Step317EarlyControl_plan_checked
  have fv1 : s6Step317CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step317CompleteOut.fv.payload[2]?.getD s6Step317CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step317CompleteOut.fv.payload[3]?.getD s6Step317CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step317CompleteOut.fv.payload[4]?.getD s6Step317CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step317EntryFBefore s6Step317EarlyControlArena s6Step317FrontBank 112 174 ⟨112,112,175,174⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step317CompleteLog s6Step317FrontPlan Q
    s6Step317Front_checked s6Step317Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step317Complete_owned s6Step317Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step317EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 s6Step317CompleteOut.fv.second (s6Step317CompleteOut.fv.payload[2]?.getD s6Step317CompleteOut.fv.sign) (s6Step317CompleteOut.fv.payload[3]?.getD s6Step317CompleteOut.fv.sign) (s6Step317CompleteOut.fv.payload[4]?.getD s6Step317CompleteOut.fv.sign) 860 56 s6Step317EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep317Arena : Arena := s6Step317EntryFBefore
def s6PrivateStep317Bank : WindowBank := s6Step317FrontBank
def s6PrivateStep317Spec : HmrSourceWalkStepLog := ⟨112,174,⟨112,112,175,174⟩,56,.early s6Step317CompleteLog⟩
def s6PrivateStep317Plan : HmrSourceStepPlan := .early s6Step317CompletePlan
theorem s6PrivateStep317_source : s6PrivateStep317Spec=s6ObservedLogs304[13] := rfl
theorem s6PrivateStep317_checked : compileHmrSourceStepLog s6PrivateStep317Arena s6PrivateStep317Bank
    s6PrivateStep317Spec.fgWidth s6PrivateStep317Spec.vWidth s6PrivateStep317Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]
    6 498 317 s6PrivateStep317Spec.need none s6PrivateStep317Spec.log=some s6PrivateStep317Plan := by
  change compileHmrSourceStepLog s6Step317EntryFBefore s6Step317FrontBank 112 174 ⟨112,112,175,174⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 6 498 317 56 none (.early s6Step317CompleteLog)=some (.early s6Step317CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 317<498)]
  rw [s6Step317Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
