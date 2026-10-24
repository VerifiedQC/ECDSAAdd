import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep294
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

private def s6Step296CompleteMoves : List (Wire × Wire) := [(848,121)]

private def s6Step296EarlyControlLog : HmrEarlyControlLog := ⟨[848, 887, 828, 886, 823],[807],[922],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step296FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [886], [], []],[[823], [828], [887], [876]],[[], [], [], []]⟩,[793],[825],[807],[922],[830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[807, 922, 830, 805]⟩

private def s6Step296CompleteLog : HmrEarlyStepLog := ⟨s6Step296FrontLog,s6Step296CompleteMoves,s6Step296EarlyControlLog⟩

private def s6Step296ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378],795⟩

private def s6Step296ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩

private def s6Step296ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],777⟩

private def s6Step296ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892],775⟩

private def s6Step296FrontOut : WindowBank := ⟨s6Step296ExitFOut,s6Step296ExitGOut,s6Step296ExitFvOut,s6Step296ExitGvOut⟩

private def s6Step296CompleteOut : WindowBank := s6Step296FrontOut.repacked s6Step296CompleteMoves

private def s6Step296EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step296EarlyControlPositiveArena,[807],s6Step296EarlyControlEqualityArena,[922],⟨⟨793,false⟩,[⟨⟨807,false⟩,922⟩]⟩⟩

private def s6Step296EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,848⟩,⟨⟨772,false⟩,887⟩,⟨⟨771,false⟩,828⟩,⟨⟨770,false⟩,886⟩,⟨⟨769,false⟩,823⟩]⟩

private def s6Step296EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step296EarlyControlZeroArena,s6Step296EarlyControlZeroPlan,s6Step296EarlyControlClassPlan,s6Step296EarlyControlFlagArena,s6Step296EarlyControlFittedArena,s6Step296EarlyControlHistoryArena,s6Step296EarlyControlSigmaArena,s6Step296EarlyControlOutputArena,s6Step296EarlyControlLog⟩

private def s6Step296CounterWork : List Wire := [807, 922, 830, 805]

private theorem s6Step296Counter_bounded : s6Step296CounterWork.toFinset⊆arenaWires := by norm_num [s6Step296CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step296HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296CounterDuring : Arena := ⟨s6Step296HeadFvAfter.live∪s6Step296CounterWork.toFinset,Finset.union_subset s6Step296HeadFvAfter.bounded s6Step296Counter_bounded⟩

private def s6Step296EntryFFresh : List Wire := []

private def s6Step296EntryFvFresh : List Wire := []

private def s6Step296EntryGFresh : List Wire := [886]

private def s6Step296EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296EntryGvAfter : Arena := s6Step296EntryGAfter

private def s6Step296EntryGvFresh : List Wire := []

private def s6Step296ExitFExtra : List Wire := [828]

private def s6Step296ExitGExtra : List Wire := [121, 886, 823]

private def s6Step296ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296ExitGvExtra : List Wire := [887]

private def s6Step296Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step296Add0_bounded : s6Step296Add0Work.toFinset⊆arenaWires := by
  have h : s6Step296Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step296Add0During : Arena := ⟨s6Step296Add0Arena.live∪s6Step296Add0Work.toFinset,Finset.union_subset s6Step296Add0Arena.bounded s6Step296Add0_bounded⟩

private def s6Step296Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step296Add1_bounded : s6Step296Add1Work.toFinset⊆arenaWires := by
  have h : s6Step296Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step296Add1During : Arena := ⟨s6Step296Add1Arena.live∪s6Step296Add1Work.toFinset,Finset.union_subset s6Step296Add1Arena.bounded s6Step296Add1_bounded⟩

private def s6Step296F4FlagArena : Arena := ⟨s6Step296HeadFvAfter.live∪{807},Finset.union_subset s6Step296HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step296F4Plan : HmrHybridF4Plan := ⟨s6Step296F4FlagArena,[807],s6Step296Add0Arena,[922],s6Step296Add0During,s6Step296Add0Work,s6Step296Add1During,s6Step296Add1Work⟩

private def s6Step296HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 828],795⟩

private def s6Step296HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩

private def s6Step296HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 886, 823],777⟩

private def s6Step296HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 887],775⟩

private def s6Step296FrontHead : WindowBank := ⟨s6Step296HeadFOut,s6Step296HeadGOut,s6Step296HeadFvOut,s6Step296HeadGvOut⟩

private def s6Step296EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378],795⟩

private def s6Step296EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778],776⟩

private def s6Step296EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 886],777⟩

private def s6Step296EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892],775⟩

private def s6Step296FrontPair : WindowBank := ⟨s6Step296EntryFOut,s6Step296EntryGOut,s6Step296EntryFvOut,s6Step296EntryGvOut⟩

private def s6Step296FrontSigmaArena : Arena := ⟨s6Step296EntryGvAfter.live∪{793},Finset.union_subset s6Step296EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step296HeadFFresh : List Wire := [828]

private def s6Step296HeadFvFresh : List Wire := [876]

private def s6Step296HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296HeadGFresh : List Wire := [823]

private def s6Step296HeadGvFresh : List Wire := [887]

private def s6Step296FrontPlan : HmrSourceFront := ⟨s6Step296EntryGvAfter,s6Step296FrontPair,(growRow 795 s6Step296EntryFFresh ++ (growRow 777 s6Step296EntryGFresh ++ (growRow 776 s6Step296EntryFvFresh ++ (growRow 775 s6Step296EntryGvFresh ++ [])))),s6Step296FrontSigmaArena,[793],s6Step296HeadGBefore,[825],
  s6Step296HeadFvAfter,s6Step296FrontHead,(growRow 777 s6Step296HeadGFresh ++ (growRow 795 s6Step296HeadFFresh ++ (growRow 775 s6Step296HeadGvFresh ++ (growRow 776 s6Step296HeadFvFresh ++ [])))),s6Step296F4Plan,s6Step296CounterDuring,s6Step296CounterWork,s6Step296ExitGvAfter,s6Step296FrontOut,(shrinkRow 777 s6Step296ExitGExtra ++ (shrinkRow 795 s6Step296ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step296ExitGvExtra ++ []))))⟩

private def s6Step296CompletePlan : HmrEarlyStepPlan := ⟨s6Step296FrontPlan,s6Step296EarlyControlArena,s6Step296EarlyControlPlan,s6Step296CompleteMoves⟩

private theorem s6Step296Complete_apart : List.Disjoint (s6Step296CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [793, 825, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] := by
  have nd : ((s6Step296CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[793, 825, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step296Complete_owned : (s6Step296CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step296EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step296CompleteMoveArena : Arena := ⟨s6Step296ExitGvAfter.live∪{121},Finset.union_subset s6Step296ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step296Complete_repack : s6Step296ExitGvAfter.checkRepack s6Step296CompleteMoves=some s6Step296EarlyControlArena := by
  have owned : 848∈s6Step296ExitGvAfter.live := by norm_num [s6Step296ExitGvAfter,arenaWires]
  have reserve : s6Step296ExitGvAfter.reserve {121}=some s6Step296CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step296ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step296CompleteMoveArena.retireSet {848}=s6Step296EarlyControlArena := by
    unfold Arena.retireSet s6Step296EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step296CompleteMoveArena,s6Step296ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step296CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step296CompleteMoveArena.retireSet {848}).checkRepack []=some s6Step296EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step296EarlyControl_branchOwned : ([825] : List Wire).toFinset⊆s6Step296EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EarlyControl_branch : compileHmrBranchRetirement s6Step296EarlyControlSigmaArena 825=some s6Step296EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step296EarlyControl_branchOwned
  · ext q
    simp [s6Step296EarlyControlOutputArena,s6Step296EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step296EarlyControl_classEqualityBorrow : s6Step296EarlyControlPositiveArena.checkBorrow (([793, 807] : List Wire).length-1) s6Step296EarlyControlLog.classWork=some s6Step296EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step296EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step296EarlyControlEqualityArena,s6Step296EarlyControlPositiveArena,s6Step296EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step296EarlyControl_classEqualityOwned : ([793, 807] : List Wire).toFinset⊆s6Step296EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EarlyControl_classEquality : compileHmrEqualityLog s6Step296EarlyControlPositiveArena [793, 807] 0 s6Step296EarlyControlLog.classWork=some (s6Step296EarlyControlEqualityArena,s6Step296EarlyControlLog.classWork,s6Step296EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step296EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step296EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step296EarlyControl_classOwned : ([769, 823, 793] : List Wire).toFinset⊆s6Step296EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EarlyControl_positiveBorrow : s6Step296EarlyControlZeroArena.checkBorrow (1) s6Step296EarlyControlLog.positiveWork=some s6Step296EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step296EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step296EarlyControlPositiveArena,s6Step296EarlyControlZeroArena,s6Step296EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step296EarlyControl_class : compileHmrSourceClassLog s6Step296EarlyControlZeroArena false 769 s6Step296EarlyControlZeroPlan.top 0 793 s6Step296EarlyControlLog.positiveWork s6Step296EarlyControlLog.classWork=some s6Step296EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step296EarlyControlClassPlan s6Step296EarlyControlZeroArena false 769 s6Step296EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s6Step296EarlyControl_classOwned
  · exact s6Step296EarlyControl_positiveBorrow
  · exact s6Step296EarlyControl_classEquality

private theorem s6Step296EarlyControl_entryRecordOwned : ([825, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step296EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s6Step296EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EarlyControl_fitBorrow : s6Step296EarlyControlFlagArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step296EarlyControlLog.recordFresh=some s6Step296EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step296EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step296EarlyControlFittedArena,s6Step296EarlyControlFlagArena,s6Step296EarlyControlLog,arenaWires]

private theorem s6Step296EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step296EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EarlyControl_fit : compileHmrRecordGrowLog s6Step296EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step296EarlyControlLog.recordFresh=some s6Step296EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step296EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step296EarlyControl_fitBorrow

private theorem s6Step296EarlyControl_flagsBorrow : s6Step296EarlyControlEqualityArena.checkBorrow (6) s6Step296EarlyControlLog.flagWork=some s6Step296EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step296EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step296EarlyControlFlagArena,s6Step296EarlyControlEqualityArena,s6Step296EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step296EarlyControl_flagsOwned : ([922, 253, 252, 251] : List Wire).toFinset⊆s6Step296EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EarlyControl_flags : compileHmrFlagsLog s6Step296EarlyControlClassPlan.equalityArena s6Step296EarlyControlClassPlan.equality.top 253 252 251 s6Step296EarlyControlLog.flagWork=some s6Step296EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step296EarlyControl_flagsOwned⟩
  · exact s6Step296EarlyControl_flagsBorrow

private theorem s6Step296EarlyControl_historyBorrow : s6Step296EarlyControlArena.checkBorrow ((55-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).length)) s6Step296EarlyControlLog.recordFresh=some s6Step296EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step296EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step296EarlyControlHistoryArena,s6Step296EarlyControlArena,s6Step296EarlyControlLog,arenaWires]

private theorem s6Step296EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] : List Wire).toFinset⊆s6Step296EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EarlyControl_history : compileHmrRecordGrowLog s6Step296EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step296EarlyControlLog.recordFresh=some s6Step296EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step296EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step296EarlyControl_historyBorrow

private theorem s6Step296EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s6Step296EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s6Step296EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EarlyControl_sigmaRelease : s6Step296EarlyControlHistoryArena.release {793} (fun _ => false)=some s6Step296EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step296EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step296EarlyControlSigmaArena,s6Step296EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step296EarlyControl_sigma : compileHmrSigmaDropLog s6Step296EarlyControlHistoryArena false 0 0 254 793 []=some s6Step296EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step296EarlyControl_sigmaOwned⟩
  · exact s6Step296EarlyControl_sigmaRelease

private theorem s6Step296EarlyControl_zeroBorrow : s6Step296EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step296EarlyControlLog.zeroWork=some s6Step296EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step296EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step296EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step296EarlyControlZeroArena,s6Step296EarlyControlArena,s6Step296EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step296EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step296EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step296EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EarlyControl_zero : compileHmrEqualityLog s6Step296EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step296EarlyControlLog.zeroWork=some (s6Step296EarlyControlZeroArena,s6Step296EarlyControlLog.zeroWork,s6Step296EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step296EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step296EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step296EarlyControl_logged : s6Step296EarlyControlPlan.Logged s6Step296EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 793 254 253 252 251 825 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step296EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step296EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step296EarlyControl_zero
  · exact s6Step296EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step296EarlyControl_flags
  · exact s6Step296EarlyControl_fit
  · exact s6Step296EarlyControl_history
  · exact s6Step296EarlyControl_sigma
  · exact s6Step296EarlyControl_branch

private theorem s6Step296EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step296EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 793 254 253 252 251 825 55 s6Step296EarlyControlLog=some s6Step296EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step296EarlyControlPlan s6Step296EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 793 254 253 252 251 825 55 s6Step296EarlyControl_logged

private def s6Step296EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378],795⟩

private def s6Step296EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778],776⟩

private def s6Step296EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121],777⟩

private def s6Step296EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892],775⟩

private def s6Step296FrontBank : WindowBank := ⟨s6Step296EntryFRow,s6Step296EntryGRow,s6Step296EntryFvRow,s6Step296EntryGvRow⟩

private def s6Step296Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 828, 795]

private def s6Step296Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 886, 823, 777]

private def s6Step296Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 776]

private def s6Step296Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 887, 775]

private theorem s6Step296Counter_apart : Disjoint s6Step296HeadFvAfter.live s6Step296CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step296HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296Counter_borrowed : s6Step296HeadFvAfter.checkBorrow 4 s6Step296CounterWork=some s6Step296CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step296HeadFvAfter s6Step296CounterDuring s6Step296CounterWork.toFinset s6Step296Counter_bounded s6Step296Counter_apart rfl

private theorem s6Step296Counter_owned : (793::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step296HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step296HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296Counter_checked : compileHmrCounterStepLog s6Step296HeadFvAfter true 793 [774, 773, 772, 771, 770, 769] s6Step296CounterWork=some s6Step296CounterDuring := by
  have owned : ∀q∈793::[774, 773, 772, 771, 770, 769],q∈s6Step296HeadFvAfter.live := fun q hq => s6Step296Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step296Counter_borrowed

private def s6Step296EntryFAfter : Arena := s6Step296EntryFBefore

private theorem s6Step296EntryBank_incomingDistinct : ([s6Step296EntryFRow,s6Step296EntryGRow,s6Step296EntryFvRow,s6Step296EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296EntryF_Incoming : rowsOwned s6Step296EntryFBefore [s6Step296EntryFRow,s6Step296EntryGRow,s6Step296EntryFvRow,s6Step296EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296EntryFRow,s6Step296EntryGRow,s6Step296EntryFvRow,s6Step296EntryGvRow] 0 s6Step296EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296EntryBank_outgoingOwned : rowsOwned s6Step296EntryGvAfter [s6Step296EntryFOut,s6Step296EntryGOut,s6Step296EntryFvOut,s6Step296EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step296EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296EntryF_Outgoing : rowsOwned s6Step296EntryGvAfter [s6Step296EntryFOut,s6Step296EntryGOut,s6Step296EntryFvOut,s6Step296EntryGvOut] :=
  hmrRows_owned_drop s6Step296EntryGvAfter [s6Step296EntryFOut,s6Step296EntryGOut,s6Step296EntryFvOut,s6Step296EntryGvOut] 0 s6Step296EntryBank_outgoingOwned

private theorem s6Step296EntryF_distinct : (s6Step296EntryFRow.sign::s6Step296EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296EntryF_owned : (s6Step296EntryFRow.sign::s6Step296EntryFRow.payload).toFinset⊆s6Step296EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EntryF_reserved : s6Step296EntryFBefore.reserve s6Step296EntryFFresh.toFinset=some s6Step296EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step296EntryFFresh,arenaWires]
  · norm_num [s6Step296EntryFBefore,s6Step296EntryFFresh,arenaWires]
  · simp only [s6Step296EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step296EntryF_checked : planRowResizeLog s6Step296EntryFBefore s6Step296EntryFRow 123 s6Step296EntryFFresh=
    some (s6Step296EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378],795⟩,growRow 795 s6Step296EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step296EntryFBefore s6Step296EntryFAfter s6Step296EntryFRow 123 s6Step296EntryFFresh
    s6Step296EntryF_distinct s6Step296EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step296EntryF_reserved
  have rowEq : WindowRow.mk (s6Step296EntryFRow.payload++s6Step296EntryFFresh) s6Step296EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step296EntryFvAfter : Arena := s6Step296EntryGAfter

private def s6Step296EntryFvBefore : Arena := s6Step296EntryGAfter

private theorem s6Step296EntryFv_Incoming : rowsOwned s6Step296EntryFvBefore [s6Step296EntryFvRow,s6Step296EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296EntryFRow,s6Step296EntryGRow,s6Step296EntryFvRow,s6Step296EntryGvRow] 2 s6Step296EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296EntryFv_Outgoing : rowsOwned s6Step296EntryGvAfter [s6Step296EntryFvOut,s6Step296EntryGvOut] :=
  hmrRows_owned_drop s6Step296EntryGvAfter [s6Step296EntryFOut,s6Step296EntryGOut,s6Step296EntryFvOut,s6Step296EntryGvOut] 2 s6Step296EntryBank_outgoingOwned

private theorem s6Step296EntryFv_distinct : (s6Step296EntryFvRow.sign::s6Step296EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296EntryFv_owned : (s6Step296EntryFvRow.sign::s6Step296EntryFvRow.payload).toFinset⊆s6Step296EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EntryFv_reserved : s6Step296EntryFvBefore.reserve s6Step296EntryFvFresh.toFinset=some s6Step296EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step296EntryFvFresh,arenaWires]
  · norm_num [s6Step296EntryFvBefore,s6Step296EntryGAfter,s6Step296EntryFvFresh,arenaWires]
  · simp only [s6Step296EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step296EntryFv_checked : planRowResizeLog s6Step296EntryFvBefore s6Step296EntryFvRow 163 s6Step296EntryFvFresh=
    some (s6Step296EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778],776⟩,growRow 776 s6Step296EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step296EntryFvBefore s6Step296EntryFvAfter s6Step296EntryFvRow 163 s6Step296EntryFvFresh
    s6Step296EntryFv_distinct s6Step296EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step296EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step296EntryFvRow.payload++s6Step296EntryFvFresh) s6Step296EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step296EntryGBefore : Arena := s6Step296EntryFBefore

private theorem s6Step296EntryG_Incoming : rowsOwned s6Step296EntryGBefore [s6Step296EntryGRow,s6Step296EntryFvRow,s6Step296EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296EntryFRow,s6Step296EntryGRow,s6Step296EntryFvRow,s6Step296EntryGvRow] 1 s6Step296EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296EntryG_Outgoing : rowsOwned s6Step296EntryGvAfter [s6Step296EntryGOut,s6Step296EntryFvOut,s6Step296EntryGvOut] :=
  hmrRows_owned_drop s6Step296EntryGvAfter [s6Step296EntryFOut,s6Step296EntryGOut,s6Step296EntryFvOut,s6Step296EntryGvOut] 1 s6Step296EntryBank_outgoingOwned

private theorem s6Step296EntryG_distinct : (s6Step296EntryGRow.sign::s6Step296EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296EntryG_owned : (s6Step296EntryGRow.sign::s6Step296EntryGRow.payload).toFinset⊆s6Step296EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EntryG_reserved : s6Step296EntryGBefore.reserve s6Step296EntryGFresh.toFinset=some s6Step296EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step296EntryGFresh,arenaWires]
  · norm_num [s6Step296EntryGBefore,s6Step296EntryFBefore,s6Step296EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step296EntryGAfter,s6Step296EntryGBefore,s6Step296EntryFBefore,s6Step296EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step296EntryG_checked : planRowResizeLog s6Step296EntryGBefore s6Step296EntryGRow 123 s6Step296EntryGFresh=
    some (s6Step296EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 886],777⟩,growRow 777 s6Step296EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step296EntryGBefore s6Step296EntryGAfter s6Step296EntryGRow 123 s6Step296EntryGFresh
    s6Step296EntryG_distinct s6Step296EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step296EntryG_reserved
  have rowEq : WindowRow.mk (s6Step296EntryGRow.payload++s6Step296EntryGFresh) s6Step296EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 886],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step296EntryGvBefore : Arena := s6Step296EntryGAfter

private theorem s6Step296EntryGv_Incoming : rowsOwned s6Step296EntryGvBefore [s6Step296EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296EntryFRow,s6Step296EntryGRow,s6Step296EntryFvRow,s6Step296EntryGvRow] 3 s6Step296EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296EntryGv_Outgoing : rowsOwned s6Step296EntryGvAfter [s6Step296EntryGvOut] :=
  hmrRows_owned_drop s6Step296EntryGvAfter [s6Step296EntryFOut,s6Step296EntryGOut,s6Step296EntryFvOut,s6Step296EntryGvOut] 3 s6Step296EntryBank_outgoingOwned

private theorem s6Step296EntryGv_distinct : (s6Step296EntryGvRow.sign::s6Step296EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296EntryGv_owned : (s6Step296EntryGvRow.sign::s6Step296EntryGvRow.payload).toFinset⊆s6Step296EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296EntryGv_reserved : s6Step296EntryGvBefore.reserve s6Step296EntryGvFresh.toFinset=some s6Step296EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step296EntryGvFresh,arenaWires]
  · norm_num [s6Step296EntryGvBefore,s6Step296EntryGAfter,s6Step296EntryGvFresh,arenaWires]
  · simp only [s6Step296EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step296EntryGv_checked : planRowResizeLog s6Step296EntryGvBefore s6Step296EntryGvRow 163 s6Step296EntryGvFresh=
    some (s6Step296EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892],775⟩,growRow 775 s6Step296EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step296EntryGvBefore s6Step296EntryGvAfter s6Step296EntryGvRow 163 s6Step296EntryGvFresh
    s6Step296EntryGv_distinct s6Step296EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step296EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step296EntryGvRow.payload++s6Step296EntryGvFresh) s6Step296EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step296EntryBank_rows : planWindowRowsLog s6Step296EntryFBefore [(s6Step296EntryFRow,123),(s6Step296EntryGRow,123),(s6Step296EntryFvRow,163),(s6Step296EntryGvRow,163)] [s6Step296EntryFFresh,s6Step296EntryGFresh,s6Step296EntryFvFresh,s6Step296EntryGvFresh]=
    some (s6Step296EntryGvAfter,[s6Step296EntryFOut,s6Step296EntryGOut,s6Step296EntryFvOut,s6Step296EntryGvOut],(growRow 795 s6Step296EntryFFresh ++ (growRow 777 s6Step296EntryGFresh ++ (growRow 776 s6Step296EntryFvFresh ++ (growRow 775 s6Step296EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step296EntryGvAfter [] []=some (s6Step296EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step296EntryGvBefore s6Step296EntryGvAfter s6Step296EntryGvAfter
    s6Step296EntryGvRow s6Step296EntryGvOut 163 s6Step296EntryGvFresh [] [] []
    (growRow 775 s6Step296EntryGvFresh) ([]) s6Step296EntryGv_Incoming s6Step296EntryGv_checked h4 s6Step296EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step296EntryFvBefore s6Step296EntryFvAfter s6Step296EntryGvAfter
    s6Step296EntryFvRow s6Step296EntryFvOut 163 s6Step296EntryFvFresh [(s6Step296EntryGvRow,163)] [s6Step296EntryGvFresh] [s6Step296EntryGvOut]
    (growRow 776 s6Step296EntryFvFresh) ((growRow 775 s6Step296EntryGvFresh ++ [])) s6Step296EntryFv_Incoming s6Step296EntryFv_checked h3 s6Step296EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step296EntryGBefore s6Step296EntryGAfter s6Step296EntryGvAfter
    s6Step296EntryGRow s6Step296EntryGOut 123 s6Step296EntryGFresh [(s6Step296EntryFvRow,163),(s6Step296EntryGvRow,163)] [s6Step296EntryFvFresh,s6Step296EntryGvFresh] [s6Step296EntryFvOut,s6Step296EntryGvOut]
    (growRow 777 s6Step296EntryGFresh) ((growRow 776 s6Step296EntryFvFresh ++ (growRow 775 s6Step296EntryGvFresh ++ []))) s6Step296EntryG_Incoming s6Step296EntryG_checked h2 s6Step296EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step296EntryFBefore s6Step296EntryFAfter s6Step296EntryGvAfter
    s6Step296EntryFRow s6Step296EntryFOut 123 s6Step296EntryFFresh [(s6Step296EntryGRow,123),(s6Step296EntryFvRow,163),(s6Step296EntryGvRow,163)] [s6Step296EntryGFresh,s6Step296EntryFvFresh,s6Step296EntryGvFresh] [s6Step296EntryGOut,s6Step296EntryFvOut,s6Step296EntryGvOut]
    (growRow 795 s6Step296EntryFFresh) ((growRow 777 s6Step296EntryGFresh ++ (growRow 776 s6Step296EntryFvFresh ++ (growRow 775 s6Step296EntryGvFresh ++ [])))) s6Step296EntryF_Incoming s6Step296EntryF_checked h1 s6Step296EntryF_Outgoing
  exact h0

private theorem s6Step296EntryBank_checked : compileHmrBankResizeLog .entry s6Step296EntryFBefore ⟨s6Step296EntryFRow,s6Step296EntryGRow,s6Step296EntryFvRow,s6Step296EntryGvRow⟩ ⟨123,123,163,163⟩ [s6Step296EntryFFresh,s6Step296EntryGFresh,s6Step296EntryFvFresh,s6Step296EntryGvFresh]=
    some (s6Step296EntryGvAfter,⟨s6Step296EntryFOut,s6Step296EntryGOut,s6Step296EntryFvOut,s6Step296EntryGvOut⟩,(growRow 795 s6Step296EntryFFresh ++ (growRow 777 s6Step296EntryGFresh ++ (growRow 776 s6Step296EntryFvFresh ++ (growRow 775 s6Step296EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step296EntryBank_rows]
  rfl

private def s6Step296ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296ExitFBefore : Arena := s6Step296ExitGAfter

private def s6Step296ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 828],795⟩

private def s6Step296ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩

private def s6Step296ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 886, 823],777⟩

private def s6Step296ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 887],775⟩

private theorem s6Step296ExitBank_incomingDistinct : ([s6Step296ExitGRow,s6Step296ExitFRow,s6Step296ExitFvRow,s6Step296ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296ExitF_Incoming : rowsOwned s6Step296ExitFBefore [s6Step296ExitFRow,s6Step296ExitFvRow,s6Step296ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296ExitGRow,s6Step296ExitFRow,s6Step296ExitFvRow,s6Step296ExitGvRow] 1 s6Step296ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296ExitFBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296ExitBank_outgoingOwned : rowsOwned s6Step296ExitGvAfter [s6Step296ExitGOut,s6Step296ExitFOut,s6Step296ExitFvOut,s6Step296ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step296ExitGvAfter (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296ExitF_Outgoing : rowsOwned s6Step296ExitGvAfter [s6Step296ExitFOut,s6Step296ExitFvOut,s6Step296ExitGvOut] :=
  hmrRows_owned_drop s6Step296ExitGvAfter [s6Step296ExitGOut,s6Step296ExitFOut,s6Step296ExitFvOut,s6Step296ExitGvOut] 1 s6Step296ExitBank_outgoingOwned

private theorem s6Step296ExitF_distinct : (s6Step296ExitFRow.sign::s6Step296ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296ExitF_owned : (s6Step296ExitFRow.sign::s6Step296ExitFRow.payload).toFinset⊆s6Step296ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296ExitFBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296ExitF_retired : s6Step296ExitFBefore.retireSet s6Step296ExitFExtra.toFinset=s6Step296ExitFAfter := by
  unfold Arena.retireSet s6Step296ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step296ExitFBefore,s6Step296ExitGAfter,s6Step296ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step296ExitF_checked : planRowResizeLog s6Step296ExitFBefore s6Step296ExitFRow 123 []=
    some (s6Step296ExitFAfter,s6Step296ExitFOut,shrinkRow 795 s6Step296ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step296ExitFBefore s6Step296ExitFRow 123 s6Step296ExitF_distinct s6Step296ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step296ExitFRow.payload.take 123) s6Step296ExitFRow.sign=s6Step296ExitFOut := by decide +kernel
  have hi : s6Step296ExitFRow.payload.drop 123=s6Step296ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step296ExitF_retired] at result
  exact result

private def s6Step296ExitFvAfter : Arena := s6Step296ExitFAfter

private def s6Step296ExitFvBefore : Arena := s6Step296ExitFAfter

private theorem s6Step296ExitFv_Incoming : rowsOwned s6Step296ExitFvBefore [s6Step296ExitFvRow,s6Step296ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296ExitGRow,s6Step296ExitFRow,s6Step296ExitFvRow,s6Step296ExitGvRow] 2 s6Step296ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296ExitFvBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296ExitFv_Outgoing : rowsOwned s6Step296ExitGvAfter [s6Step296ExitFvOut,s6Step296ExitGvOut] :=
  hmrRows_owned_drop s6Step296ExitGvAfter [s6Step296ExitGOut,s6Step296ExitFOut,s6Step296ExitFvOut,s6Step296ExitGvOut] 2 s6Step296ExitBank_outgoingOwned

private theorem s6Step296ExitFv_distinct : (s6Step296ExitFvRow.sign::s6Step296ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296ExitFv_owned : (s6Step296ExitFvRow.sign::s6Step296ExitFvRow.payload).toFinset⊆s6Step296ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296ExitFvBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296ExitFv_reserved : s6Step296ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step296ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step296ExitFv_checked : planRowResizeLog s6Step296ExitFvBefore s6Step296ExitFvRow 164 []=
    some (s6Step296ExitFvAfter,s6Step296ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step296ExitFvBefore s6Step296ExitFvAfter s6Step296ExitFvRow 164 []
    s6Step296ExitFv_distinct s6Step296ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step296ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step296ExitFvRow.payload++[]) s6Step296ExitFvRow.sign=s6Step296ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step296ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step296ExitG_Incoming : rowsOwned s6Step296ExitGBefore [s6Step296ExitGRow,s6Step296ExitFRow,s6Step296ExitFvRow,s6Step296ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296ExitGRow,s6Step296ExitFRow,s6Step296ExitFvRow,s6Step296ExitGvRow] 0 s6Step296ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296ExitG_Outgoing : rowsOwned s6Step296ExitGvAfter [s6Step296ExitGOut,s6Step296ExitFOut,s6Step296ExitFvOut,s6Step296ExitGvOut] :=
  hmrRows_owned_drop s6Step296ExitGvAfter [s6Step296ExitGOut,s6Step296ExitFOut,s6Step296ExitFvOut,s6Step296ExitGvOut] 0 s6Step296ExitBank_outgoingOwned

private theorem s6Step296ExitG_distinct : (s6Step296ExitGRow.sign::s6Step296ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296ExitG_owned : (s6Step296ExitGRow.sign::s6Step296ExitGRow.payload).toFinset⊆s6Step296ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296ExitG_retired : s6Step296ExitGBefore.retireSet s6Step296ExitGExtra.toFinset=s6Step296ExitGAfter := by
  unfold Arena.retireSet s6Step296ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step296ExitGBefore,s6Step296ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step296ExitG_checked : planRowResizeLog s6Step296ExitGBefore s6Step296ExitGRow 121 []=
    some (s6Step296ExitGAfter,s6Step296ExitGOut,shrinkRow 777 s6Step296ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step296ExitGBefore s6Step296ExitGRow 121 s6Step296ExitG_distinct s6Step296ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step296ExitGRow.payload.take 121) s6Step296ExitGRow.sign=s6Step296ExitGOut := by decide +kernel
  have hi : s6Step296ExitGRow.payload.drop 121=s6Step296ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step296ExitG_retired] at result
  exact result

private def s6Step296ExitGvBefore : Arena := s6Step296ExitFAfter

private theorem s6Step296ExitGv_Incoming : rowsOwned s6Step296ExitGvBefore [s6Step296ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296ExitGRow,s6Step296ExitFRow,s6Step296ExitFvRow,s6Step296ExitGvRow] 3 s6Step296ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296ExitGvBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296ExitGv_Outgoing : rowsOwned s6Step296ExitGvAfter [s6Step296ExitGvOut] :=
  hmrRows_owned_drop s6Step296ExitGvAfter [s6Step296ExitGOut,s6Step296ExitFOut,s6Step296ExitFvOut,s6Step296ExitGvOut] 3 s6Step296ExitBank_outgoingOwned

private theorem s6Step296ExitGv_distinct : (s6Step296ExitGvRow.sign::s6Step296ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296ExitGv_owned : (s6Step296ExitGvRow.sign::s6Step296ExitGvRow.payload).toFinset⊆s6Step296ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296ExitGvBefore (fun q => (0≤q ∧ q<121) ∨ (122≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<886) ∨ (887≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296ExitGv_retired : s6Step296ExitGvBefore.retireSet s6Step296ExitGvExtra.toFinset=s6Step296ExitGvAfter := by
  unfold Arena.retireSet s6Step296ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step296ExitGvBefore,s6Step296ExitFAfter,s6Step296ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step296ExitGv_checked : planRowResizeLog s6Step296ExitGvBefore s6Step296ExitGvRow 163 []=
    some (s6Step296ExitGvAfter,s6Step296ExitGvOut,shrinkRow 775 s6Step296ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step296ExitGvBefore s6Step296ExitGvRow 163 s6Step296ExitGv_distinct s6Step296ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step296ExitGvRow.payload.take 163) s6Step296ExitGvRow.sign=s6Step296ExitGvOut := by decide +kernel
  have hi : s6Step296ExitGvRow.payload.drop 163=s6Step296ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step296ExitGv_retired] at result
  exact result

private theorem s6Step296ExitBank_rows : planWindowRowsLog s6Step296ExitGBefore [(s6Step296ExitGRow,121),(s6Step296ExitFRow,123),(s6Step296ExitFvRow,164),(s6Step296ExitGvRow,163)] [[],[],[],[]]=
    some (s6Step296ExitGvAfter,[s6Step296ExitGOut,s6Step296ExitFOut,s6Step296ExitFvOut,s6Step296ExitGvOut],(shrinkRow 777 s6Step296ExitGExtra ++ (shrinkRow 795 s6Step296ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step296ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step296ExitGvAfter [] []=some (s6Step296ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step296ExitGvBefore s6Step296ExitGvAfter s6Step296ExitGvAfter
    s6Step296ExitGvRow s6Step296ExitGvOut 163 [] [] [] []
    (shrinkRow 775 s6Step296ExitGvExtra) ([]) s6Step296ExitGv_Incoming s6Step296ExitGv_checked h4 s6Step296ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step296ExitFvBefore s6Step296ExitFvAfter s6Step296ExitGvAfter
    s6Step296ExitFvRow s6Step296ExitFvOut 164 [] [(s6Step296ExitGvRow,163)] [[]] [s6Step296ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step296ExitGvExtra ++ [])) s6Step296ExitFv_Incoming s6Step296ExitFv_checked h3 s6Step296ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step296ExitFBefore s6Step296ExitFAfter s6Step296ExitGvAfter
    s6Step296ExitFRow s6Step296ExitFOut 123 [] [(s6Step296ExitFvRow,164),(s6Step296ExitGvRow,163)] [[],[]] [s6Step296ExitFvOut,s6Step296ExitGvOut]
    (shrinkRow 795 s6Step296ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step296ExitGvExtra ++ []))) s6Step296ExitF_Incoming s6Step296ExitF_checked h2 s6Step296ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step296ExitGBefore s6Step296ExitGAfter s6Step296ExitGvAfter
    s6Step296ExitGRow s6Step296ExitGOut 121 [] [(s6Step296ExitFRow,123),(s6Step296ExitFvRow,164),(s6Step296ExitGvRow,163)] [[],[],[]] [s6Step296ExitFOut,s6Step296ExitFvOut,s6Step296ExitGvOut]
    (shrinkRow 777 s6Step296ExitGExtra) ((shrinkRow 795 s6Step296ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step296ExitGvExtra ++ [])))) s6Step296ExitG_Incoming s6Step296ExitG_checked h1 s6Step296ExitG_Outgoing
  exact h0

private theorem s6Step296ExitBank_checked : compileHmrBankResizeLog .exit s6Step296ExitGBefore ⟨s6Step296ExitFRow,s6Step296ExitGRow,s6Step296ExitFvRow,s6Step296ExitGvRow⟩ ⟨123,121,164,163⟩ [[],[],[],[]]=
    some (s6Step296ExitGvAfter,⟨s6Step296ExitFOut,s6Step296ExitGOut,s6Step296ExitFvOut,s6Step296ExitGvOut⟩,(shrinkRow 777 s6Step296ExitGExtra ++ (shrinkRow 795 s6Step296ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step296ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step296ExitBank_rows]
  rfl

private theorem s6Step296Add0_apart : Disjoint s6Step296Add0Arena.live s6Step296Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step296Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296Add0_card : s6Step296Add0Arena.live.card=901 := by
  decide +kernel

private theorem s6Step296Add0_borrowed : s6Step296Add0Arena.checkBorrow (hmrHybridCount s6Step296Add0Arena s6Step296Add0B.length) s6Step296Add0Work=some s6Step296Add0During := by
  have len : s6Step296Add0Work.length=hmrHybridCount s6Step296Add0Arena s6Step296Add0B.length := by
    rw [hmrHybridCount,s6Step296Add0_card]
    decide +kernel
  have nd : s6Step296Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step296Add0Arena s6Step296Add0During s6Step296Add0Work.toFinset s6Step296Add0_bounded s6Step296Add0_apart rfl

private theorem s6Step296Add0_distinct : (807::825::922::(s6Step296Add0A++s6Step296Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296Add0_owned : (807::825::922::(s6Step296Add0A++s6Step296Add0B)).toFinset⊆s6Step296Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step296Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296Add0_checked : compileHmrHybridCinLog s6Step296Add0Arena 825 807 922 s6Step296Add0A s6Step296Add0B s6Step296Add0Work=some s6Step296Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step296Add0Arena s6Step296Add0During 825 807 922 s6Step296Add0A s6Step296Add0B s6Step296Add0Work
    (by decide +kernel) (by decide +kernel) s6Step296Add0_distinct
    (fun q hq => s6Step296Add0_owned (List.mem_toFinset.mpr hq)) s6Step296Add0_borrowed

private theorem s6Step296Add1_apart : Disjoint s6Step296Add1Arena.live s6Step296Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step296Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296Add1_card : s6Step296Add1Arena.live.card=901 := by
  decide +kernel

private theorem s6Step296Add1_borrowed : s6Step296Add1Arena.checkBorrow (hmrHybridCount s6Step296Add1Arena s6Step296Add1B.length) s6Step296Add1Work=some s6Step296Add1During := by
  have len : s6Step296Add1Work.length=hmrHybridCount s6Step296Add1Arena s6Step296Add1B.length := by
    rw [hmrHybridCount,s6Step296Add1_card]
    decide +kernel
  have nd : s6Step296Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step296Add1Arena s6Step296Add1During s6Step296Add1Work.toFinset s6Step296Add1_bounded s6Step296Add1_apart rfl

private theorem s6Step296Add1_distinct : (807::825::922::(s6Step296Add1A++s6Step296Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296Add1_owned : (807::825::922::(s6Step296Add1A++s6Step296Add1B)).toFinset⊆s6Step296Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step296Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296Add1_checked : compileHmrHybridCinLog s6Step296Add1Arena 825 807 922 s6Step296Add1A s6Step296Add1B s6Step296Add1Work=some s6Step296Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step296Add1Arena s6Step296Add1During 825 807 922 s6Step296Add1A s6Step296Add1B s6Step296Add1Work
    (by decide +kernel) (by decide +kernel) s6Step296Add1_distinct
    (fun q hq => s6Step296Add1_owned (List.mem_toFinset.mpr hq)) s6Step296Add1_borrowed

private theorem s6Step296F4_apart : Disjoint (s6Step296Add0A++s6Step296Add0B).toFinset (s6Step296Add1A++s6Step296Add1B).toFinset := by
  have nd : ((s6Step296Add0A++s6Step296Add0B)++(s6Step296Add1A++s6Step296Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step296F4_carry : s6Step296F4FlagArena.checkBorrow 1 [922]=some s6Step296Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step296F4FlagArena,s6Step296HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step296F4FlagArena,s6Step296HeadFvAfter,s6Step296Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step296F4_distinct : (793::825::807::922::((s6Step296Add0A++s6Step296Add1A)++(s6Step296Add0B++s6Step296Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296F4_flag : s6Step296HeadFvAfter.checkBorrow 1 [807]=some s6Step296F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step296HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step296F4_owned : (793::825::((s6Step296Add0A++s6Step296Add1A)++(s6Step296Add0B++s6Step296Add1B))).toFinset⊆s6Step296HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step296HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296F4_checked : compileHmrHybridF4Log s6Step296HeadFvAfter 793 825 s6Step296Add0A s6Step296Add0B s6Step296Add1A s6Step296Add1B [807] [922] s6Step296Add0Work s6Step296Add1Work=some s6Step296F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step296HeadFvAfter s6Step296F4FlagArena s6Step296Add0Arena s6Step296Add0During s6Step296Add1During 793 825
    s6Step296Add0A s6Step296Add0B s6Step296Add1A s6Step296Add1B [807] [922] s6Step296Add0Work s6Step296Add1Work
    (fun q hq => s6Step296F4_owned (List.mem_toFinset.mpr hq)) s6Step296F4_flag s6Step296F4_carry
    s6Step296F4_distinct s6Step296F4_apart s6Step296Add0_checked s6Step296Add1_checked

private theorem s6Step296Front_branch : s6Step296FrontSigmaArena.checkBorrow 1 [825]=some s6Step296HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step296FrontSigmaArena,s6Step296EntryGvAfter,s6Step296EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step296FrontSigmaArena,s6Step296EntryGvAfter,s6Step296EntryGAfter,s6Step296HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step296Front_entry : HmrFrontEntryValid s6Step296EntryFBefore s6Step296FrontBank 123 163 ⟨123,121,164,163⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step296FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step296EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step296EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<886) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step296FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step296Front_sigma : s6Step296EntryGvAfter.checkBorrow 1 [793]=some s6Step296FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step296EntryGvAfter,s6Step296EntryGAfter,arenaWires]
  · rfl

private def s6Step296HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296HeadFBefore : Arena := s6Step296HeadGAfter

private def s6Step296HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378],795⟩

private def s6Step296HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778],776⟩

private def s6Step296HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 886],777⟩

private def s6Step296HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892],775⟩

private theorem s6Step296HeadBank_incomingDistinct : ([s6Step296HeadGRow,s6Step296HeadFRow,s6Step296HeadGvRow,s6Step296HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296HeadF_Incoming : rowsOwned s6Step296HeadFBefore [s6Step296HeadFRow,s6Step296HeadGvRow,s6Step296HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296HeadGRow,s6Step296HeadFRow,s6Step296HeadGvRow,s6Step296HeadFvRow] 1 s6Step296HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296HeadBank_outgoingOwned : rowsOwned s6Step296HeadFvAfter [s6Step296HeadGOut,s6Step296HeadFOut,s6Step296HeadGvOut,s6Step296HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step296HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296HeadF_Outgoing : rowsOwned s6Step296HeadFvAfter [s6Step296HeadFOut,s6Step296HeadGvOut,s6Step296HeadFvOut] :=
  hmrRows_owned_drop s6Step296HeadFvAfter [s6Step296HeadGOut,s6Step296HeadFOut,s6Step296HeadGvOut,s6Step296HeadFvOut] 1 s6Step296HeadBank_outgoingOwned

private theorem s6Step296HeadF_distinct : (s6Step296HeadFRow.sign::s6Step296HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296HeadF_owned : (s6Step296HeadFRow.sign::s6Step296HeadFRow.payload).toFinset⊆s6Step296HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296HeadF_reserved : s6Step296HeadFBefore.reserve s6Step296HeadFFresh.toFinset=some s6Step296HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step296HeadFFresh,arenaWires]
  · norm_num [s6Step296HeadFBefore,s6Step296HeadGAfter,s6Step296HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step296HeadFAfter,s6Step296HeadFBefore,s6Step296HeadGAfter,s6Step296HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step296HeadF_checked : planRowResizeLog s6Step296HeadFBefore s6Step296HeadFRow 124 s6Step296HeadFFresh=
    some (s6Step296HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 828],795⟩,growRow 795 s6Step296HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step296HeadFBefore s6Step296HeadFAfter s6Step296HeadFRow 124 s6Step296HeadFFresh
    s6Step296HeadF_distinct s6Step296HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step296HeadF_reserved
  have rowEq : WindowRow.mk (s6Step296HeadFRow.payload++s6Step296HeadFFresh) s6Step296HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 828],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step296HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step296HeadFvBefore : Arena := s6Step296HeadGvAfter

private theorem s6Step296HeadFv_Incoming : rowsOwned s6Step296HeadFvBefore [s6Step296HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296HeadGRow,s6Step296HeadFRow,s6Step296HeadGvRow,s6Step296HeadFvRow] 3 s6Step296HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296HeadFv_Outgoing : rowsOwned s6Step296HeadFvAfter [s6Step296HeadFvOut] :=
  hmrRows_owned_drop s6Step296HeadFvAfter [s6Step296HeadGOut,s6Step296HeadFOut,s6Step296HeadGvOut,s6Step296HeadFvOut] 3 s6Step296HeadBank_outgoingOwned

private theorem s6Step296HeadFv_distinct : (s6Step296HeadFvRow.sign::s6Step296HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296HeadFv_owned : (s6Step296HeadFvRow.sign::s6Step296HeadFvRow.payload).toFinset⊆s6Step296HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296HeadFv_reserved : s6Step296HeadFvBefore.reserve s6Step296HeadFvFresh.toFinset=some s6Step296HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step296HeadFvFresh,arenaWires]
  · norm_num [s6Step296HeadFvBefore,s6Step296HeadGvAfter,s6Step296HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step296HeadFvAfter,s6Step296HeadFvBefore,s6Step296HeadGvAfter,s6Step296HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step296HeadFv_checked : planRowResizeLog s6Step296HeadFvBefore s6Step296HeadFvRow 164 s6Step296HeadFvFresh=
    some (s6Step296HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩,growRow 776 s6Step296HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step296HeadFvBefore s6Step296HeadFvAfter s6Step296HeadFvRow 164 s6Step296HeadFvFresh
    s6Step296HeadFv_distinct s6Step296HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step296HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step296HeadFvRow.payload++s6Step296HeadFvFresh) s6Step296HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step296HeadG_Incoming : rowsOwned s6Step296HeadGBefore [s6Step296HeadGRow,s6Step296HeadFRow,s6Step296HeadGvRow,s6Step296HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296HeadGRow,s6Step296HeadFRow,s6Step296HeadGvRow,s6Step296HeadFvRow] 0 s6Step296HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296HeadG_Outgoing : rowsOwned s6Step296HeadFvAfter [s6Step296HeadGOut,s6Step296HeadFOut,s6Step296HeadGvOut,s6Step296HeadFvOut] :=
  hmrRows_owned_drop s6Step296HeadFvAfter [s6Step296HeadGOut,s6Step296HeadFOut,s6Step296HeadGvOut,s6Step296HeadFvOut] 0 s6Step296HeadBank_outgoingOwned

private theorem s6Step296HeadG_distinct : (s6Step296HeadGRow.sign::s6Step296HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296HeadG_owned : (s6Step296HeadGRow.sign::s6Step296HeadGRow.payload).toFinset⊆s6Step296HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296HeadG_reserved : s6Step296HeadGBefore.reserve s6Step296HeadGFresh.toFinset=some s6Step296HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step296HeadGFresh,arenaWires]
  · norm_num [s6Step296HeadGBefore,s6Step296HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step296HeadGAfter,s6Step296HeadGBefore,s6Step296HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step296HeadG_checked : planRowResizeLog s6Step296HeadGBefore s6Step296HeadGRow 124 s6Step296HeadGFresh=
    some (s6Step296HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 886, 823],777⟩,growRow 777 s6Step296HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step296HeadGBefore s6Step296HeadGAfter s6Step296HeadGRow 124 s6Step296HeadGFresh
    s6Step296HeadG_distinct s6Step296HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step296HeadG_reserved
  have rowEq : WindowRow.mk (s6Step296HeadGRow.payload++s6Step296HeadGFresh) s6Step296HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 886, 823],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step296HeadGvBefore : Arena := s6Step296HeadFAfter

private theorem s6Step296HeadGv_Incoming : rowsOwned s6Step296HeadGvBefore [s6Step296HeadGvRow,s6Step296HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step296HeadGRow,s6Step296HeadFRow,s6Step296HeadGvRow,s6Step296HeadFvRow] 2 s6Step296HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step296HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step296HeadGv_Outgoing : rowsOwned s6Step296HeadFvAfter [s6Step296HeadGvOut,s6Step296HeadFvOut] :=
  hmrRows_owned_drop s6Step296HeadFvAfter [s6Step296HeadGOut,s6Step296HeadFOut,s6Step296HeadGvOut,s6Step296HeadFvOut] 2 s6Step296HeadBank_outgoingOwned

private theorem s6Step296HeadGv_distinct : (s6Step296HeadGvRow.sign::s6Step296HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step296HeadGv_owned : (s6Step296HeadGvRow.sign::s6Step296HeadGvRow.payload).toFinset⊆s6Step296HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step296HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step296HeadGv_reserved : s6Step296HeadGvBefore.reserve s6Step296HeadGvFresh.toFinset=some s6Step296HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step296HeadGvFresh,arenaWires]
  · norm_num [s6Step296HeadGvBefore,s6Step296HeadFAfter,s6Step296HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step296HeadGvAfter,s6Step296HeadGvBefore,s6Step296HeadFAfter,s6Step296HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step296HeadGv_checked : planRowResizeLog s6Step296HeadGvBefore s6Step296HeadGvRow 164 s6Step296HeadGvFresh=
    some (s6Step296HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 887],775⟩,growRow 775 s6Step296HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step296HeadGvBefore s6Step296HeadGvAfter s6Step296HeadGvRow 164 s6Step296HeadGvFresh
    s6Step296HeadGv_distinct s6Step296HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step296HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step296HeadGvRow.payload++s6Step296HeadGvFresh) s6Step296HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step296HeadBank_rows : planWindowRowsLog s6Step296HeadGBefore [(s6Step296HeadGRow,124),(s6Step296HeadFRow,124),(s6Step296HeadGvRow,164),(s6Step296HeadFvRow,164)] [s6Step296HeadGFresh,s6Step296HeadFFresh,s6Step296HeadGvFresh,s6Step296HeadFvFresh]=
    some (s6Step296HeadFvAfter,[s6Step296HeadGOut,s6Step296HeadFOut,s6Step296HeadGvOut,s6Step296HeadFvOut],(growRow 777 s6Step296HeadGFresh ++ (growRow 795 s6Step296HeadFFresh ++ (growRow 775 s6Step296HeadGvFresh ++ (growRow 776 s6Step296HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step296HeadFvAfter [] []=some (s6Step296HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step296HeadFvBefore s6Step296HeadFvAfter s6Step296HeadFvAfter
    s6Step296HeadFvRow s6Step296HeadFvOut 164 s6Step296HeadFvFresh [] [] []
    (growRow 776 s6Step296HeadFvFresh) ([]) s6Step296HeadFv_Incoming s6Step296HeadFv_checked h4 s6Step296HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step296HeadGvBefore s6Step296HeadGvAfter s6Step296HeadFvAfter
    s6Step296HeadGvRow s6Step296HeadGvOut 164 s6Step296HeadGvFresh [(s6Step296HeadFvRow,164)] [s6Step296HeadFvFresh] [s6Step296HeadFvOut]
    (growRow 775 s6Step296HeadGvFresh) ((growRow 776 s6Step296HeadFvFresh ++ [])) s6Step296HeadGv_Incoming s6Step296HeadGv_checked h3 s6Step296HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step296HeadFBefore s6Step296HeadFAfter s6Step296HeadFvAfter
    s6Step296HeadFRow s6Step296HeadFOut 124 s6Step296HeadFFresh [(s6Step296HeadGvRow,164),(s6Step296HeadFvRow,164)] [s6Step296HeadGvFresh,s6Step296HeadFvFresh] [s6Step296HeadGvOut,s6Step296HeadFvOut]
    (growRow 795 s6Step296HeadFFresh) ((growRow 775 s6Step296HeadGvFresh ++ (growRow 776 s6Step296HeadFvFresh ++ []))) s6Step296HeadF_Incoming s6Step296HeadF_checked h2 s6Step296HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step296HeadGBefore s6Step296HeadGAfter s6Step296HeadFvAfter
    s6Step296HeadGRow s6Step296HeadGOut 124 s6Step296HeadGFresh [(s6Step296HeadFRow,124),(s6Step296HeadGvRow,164),(s6Step296HeadFvRow,164)] [s6Step296HeadFFresh,s6Step296HeadGvFresh,s6Step296HeadFvFresh] [s6Step296HeadFOut,s6Step296HeadGvOut,s6Step296HeadFvOut]
    (growRow 777 s6Step296HeadGFresh) ((growRow 795 s6Step296HeadFFresh ++ (growRow 775 s6Step296HeadGvFresh ++ (growRow 776 s6Step296HeadFvFresh ++ [])))) s6Step296HeadG_Incoming s6Step296HeadG_checked h1 s6Step296HeadG_Outgoing
  exact h0

private theorem s6Step296HeadBank_checked : compileHmrBankResizeLog .headroom s6Step296HeadGBefore ⟨s6Step296HeadFRow,s6Step296HeadGRow,s6Step296HeadFvRow,s6Step296HeadGvRow⟩ ⟨124,124,164,164⟩ [s6Step296HeadGFresh,s6Step296HeadFFresh,s6Step296HeadGvFresh,s6Step296HeadFvFresh]=
    some (s6Step296HeadFvAfter,⟨s6Step296HeadFOut,s6Step296HeadGOut,s6Step296HeadFvOut,s6Step296HeadGvOut⟩,(growRow 777 s6Step296HeadGFresh ++ (growRow 795 s6Step296HeadFFresh ++ (growRow 775 s6Step296HeadGvFresh ++ (growRow 776 s6Step296HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step296HeadBank_rows]
  rfl

private theorem s6Step296Front_checked : compileHmrSourceFrontLog s6Step296EntryFBefore s6Step296FrontBank 123 163 ⟨123,121,164,163⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step296FrontLog=some s6Step296FrontPlan := by
  have pairEq : s6Step296FrontPair=⟨s6Step296HeadFRow,s6Step296HeadGRow,s6Step296HeadFvRow,s6Step296HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step296FrontHead=⟨s6Step296ExitFRow,s6Step296ExitGRow,s6Step296ExitFvRow,s6Step296ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step296Add0A=s6Step296FrontHead.f.wires := by decide +kernel
  have gEq : s6Step296Add0B=s6Step296FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step296Add1A=s6Step296FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step296Add1B=s6Step296FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step296EntryFBefore s6Step296FrontBank 123 163 ⟨123,121,164,163⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step296FrontLog s6Step296FrontPlan
  · exact s6Step296Front_entry
  · exact s6Step296EntryBank_checked
  · exact s6Step296Front_sigma
  · rfl
  · exact s6Step296Front_branch
  · rfl
  · simpa only [s6Step296FrontPlan,pairEq] using s6Step296HeadBank_checked
  · simpa only [s6Step296FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step296F4_checked
  · exact s6Step296Counter_checked
  · rfl
  · simpa only [s6Step296FrontPlan,headEq] using s6Step296ExitBank_checked

private theorem s6Step296Complete_explicit_checked : compileHmrEarlyStepLog s6Step296EntryFBefore s6Step296FrontBank 123 163 ⟨123,121,164,163⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step296CompleteLog=some s6Step296CompletePlan := by
  let Q := s6Step296EarlyControlPlan
  have hq := s6Step296EarlyControl_plan_checked
  have fv1 : s6Step296CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step296CompleteOut.fv.payload[2]?.getD s6Step296CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step296CompleteOut.fv.payload[3]?.getD s6Step296CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step296CompleteOut.fv.payload[4]?.getD s6Step296CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step296EntryFBefore s6Step296EarlyControlArena s6Step296FrontBank 123 163 ⟨123,121,164,163⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 55 s6Step296CompleteLog s6Step296FrontPlan Q
    s6Step296Front_checked s6Step296Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step296Complete_owned s6Step296Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step296EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 769 793 s6Step296CompleteOut.fv.second (s6Step296CompleteOut.fv.payload[2]?.getD s6Step296CompleteOut.fv.sign) (s6Step296CompleteOut.fv.payload[3]?.getD s6Step296CompleteOut.fv.sign) (s6Step296CompleteOut.fv.payload[4]?.getD s6Step296CompleteOut.fv.sign) 825 55 s6Step296EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep296Arena : Arena := s6Step296EntryFBefore
def s6PrivateStep296Bank : WindowBank := s6Step296FrontBank
def s6PrivateStep296Spec : HmrSourceWalkStepLog := ⟨123,163,⟨123,121,164,163⟩,55,.early s6Step296CompleteLog⟩
def s6PrivateStep296Plan : HmrSourceStepPlan := .early s6Step296CompletePlan
theorem s6PrivateStep296_source : s6PrivateStep296Spec=s6ObservedLogs288[8] := rfl
theorem s6PrivateStep296_checked : compileHmrSourceStepLog s6PrivateStep296Arena s6PrivateStep296Bank
    s6PrivateStep296Spec.fgWidth s6PrivateStep296Spec.vWidth s6PrivateStep296Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]
    6 498 296 s6PrivateStep296Spec.need none s6PrivateStep296Spec.log=some s6PrivateStep296Plan := by
  change compileHmrSourceStepLog s6Step296EntryFBefore s6Step296FrontBank 123 163 ⟨123,121,164,163⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] 6 498 296 55 none (.early s6Step296CompleteLog)=some (.early s6Step296CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 296<498)]
  rw [s6Step296Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
