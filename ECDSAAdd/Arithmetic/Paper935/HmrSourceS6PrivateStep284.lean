import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep282
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

private def s6Step284CompleteMoves : List (Wire × Wire) := [(875,128),(892,384)]

private def s6Step284EarlyControlLog : HmrEarlyControlLog := ⟨[892, 875, 807, 809, 858],[813],[779],[882, 830, 805, 817, 812, 915],[]⟩

private def s6Step284FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [855]],[[813], [858], [807], [809]],[[], [], [], []]⟩,[887],[873],[779],[882],[830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[779, 882, 830, 805]⟩

private def s6Step284CompleteLog : HmrEarlyStepLog := ⟨s6Step284FrontLog,s6Step284CompleteMoves,s6Step284EarlyControlLog⟩

private def s6Step284ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step284ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845],776⟩

private def s6Step284ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],777⟩

private def s6Step284ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩

private def s6Step284FrontOut : WindowBank := ⟨s6Step284ExitFOut,s6Step284ExitGOut,s6Step284ExitFvOut,s6Step284ExitGvOut⟩

private def s6Step284CompleteOut : WindowBank := s6Step284FrontOut.repacked s6Step284CompleteMoves

private def s6Step284EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step284EarlyControlPositiveArena,[813],s6Step284EarlyControlEqualityArena,[779],⟨⟨887,false⟩,[⟨⟨813,false⟩,779⟩]⟩⟩

private def s6Step284EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,892⟩,⟨⟨772,false⟩,875⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,809⟩,⟨⟨769,false⟩,858⟩]⟩

private def s6Step284EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step284EarlyControlZeroArena,s6Step284EarlyControlZeroPlan,s6Step284EarlyControlClassPlan,s6Step284EarlyControlFlagArena,s6Step284EarlyControlFittedArena,s6Step284EarlyControlHistoryArena,s6Step284EarlyControlSigmaArena,s6Step284EarlyControlOutputArena,s6Step284EarlyControlLog⟩

private def s6Step284CounterWork : List Wire := [779, 882, 830, 805]

private theorem s6Step284Counter_bounded : s6Step284CounterWork.toFinset⊆arenaWires := by norm_num [s6Step284CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step284HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284CounterDuring : Arena := ⟨s6Step284HeadFvAfter.live∪s6Step284CounterWork.toFinset,Finset.union_subset s6Step284HeadFvAfter.bounded s6Step284Counter_bounded⟩

private def s6Step284EntryFFresh : List Wire := []

private def s6Step284EntryFvFresh : List Wire := []

private def s6Step284EntryGFresh : List Wire := []

private def s6Step284EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284EntryGvFresh : List Wire := [855]

private def s6Step284ExitFExtra : List Wire := [384, 858]

private def s6Step284ExitFvExtra : List Wire := [809]

private def s6Step284ExitGExtra : List Wire := [128, 813]

private def s6Step284ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<384) ∨ (385≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284ExitGvExtra : List Wire := [807]

private def s6Step284Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step284Add0_bounded : s6Step284Add0Work.toFinset⊆arenaWires := by
  have h : s6Step284Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step284Add0During : Arena := ⟨s6Step284Add0Arena.live∪s6Step284Add0Work.toFinset,Finset.union_subset s6Step284Add0Arena.bounded s6Step284Add0_bounded⟩

private def s6Step284Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step284Add1_bounded : s6Step284Add1Work.toFinset⊆arenaWires := by
  have h : s6Step284Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step284Add1During : Arena := ⟨s6Step284Add1Arena.live∪s6Step284Add1Work.toFinset,Finset.union_subset s6Step284Add1Arena.bounded s6Step284Add1_bounded⟩

private def s6Step284F4FlagArena : Arena := ⟨s6Step284HeadFvAfter.live∪{779},Finset.union_subset s6Step284HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step284F4Plan : HmrHybridF4Plan := ⟨s6Step284F4FlagArena,[779],s6Step284Add0Arena,[882],s6Step284Add0During,s6Step284Add0Work,s6Step284Add1During,s6Step284Add1Work⟩

private def s6Step284HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 858],795⟩

private def s6Step284HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩

private def s6Step284HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 813],777⟩

private def s6Step284HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 807],775⟩

private def s6Step284FrontHead : WindowBank := ⟨s6Step284HeadFOut,s6Step284HeadGOut,s6Step284HeadFvOut,s6Step284HeadGvOut⟩

private def s6Step284EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384],795⟩

private def s6Step284EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845],776⟩

private def s6Step284EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128],777⟩

private def s6Step284EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩

private def s6Step284FrontPair : WindowBank := ⟨s6Step284EntryFOut,s6Step284EntryGOut,s6Step284EntryFvOut,s6Step284EntryGvOut⟩

private def s6Step284FrontSigmaArena : Arena := ⟨s6Step284EntryGvAfter.live∪{887},Finset.union_subset s6Step284EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step284HeadFFresh : List Wire := [858]

private def s6Step284HeadFvFresh : List Wire := [809]

private def s6Step284HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284HeadGFresh : List Wire := [813]

private def s6Step284HeadGvFresh : List Wire := [807]

private def s6Step284FrontPlan : HmrSourceFront := ⟨s6Step284EntryGvAfter,s6Step284FrontPair,(growRow 795 s6Step284EntryFFresh ++ (growRow 777 s6Step284EntryGFresh ++ (growRow 776 s6Step284EntryFvFresh ++ (growRow 775 s6Step284EntryGvFresh ++ [])))),s6Step284FrontSigmaArena,[887],s6Step284HeadGBefore,[873],
  s6Step284HeadFvAfter,s6Step284FrontHead,(growRow 777 s6Step284HeadGFresh ++ (growRow 795 s6Step284HeadFFresh ++ (growRow 775 s6Step284HeadGvFresh ++ (growRow 776 s6Step284HeadFvFresh ++ [])))),s6Step284F4Plan,s6Step284CounterDuring,s6Step284CounterWork,s6Step284ExitGvAfter,s6Step284FrontOut,(shrinkRow 777 s6Step284ExitGExtra ++ (shrinkRow 795 s6Step284ExitFExtra ++ (shrinkRow 776 s6Step284ExitFvExtra ++ (shrinkRow 775 s6Step284ExitGvExtra ++ []))))⟩

private def s6Step284CompletePlan : HmrEarlyStepPlan := ⟨s6Step284FrontPlan,s6Step284EarlyControlArena,s6Step284EarlyControlPlan,s6Step284CompleteMoves⟩

private theorem s6Step284Complete_apart : List.Disjoint (s6Step284CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [887, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := by
  have nd : ((s6Step284CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[887, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step284Complete_owned : (s6Step284CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step284EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step284CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,384),(385,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(810,811),(814,815),(818,819),(821,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,882),(883,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step284CompleteRelocationMove0Borrowed : Arena := ⟨s6Step284ExitGvAfter.live∪{128},Finset.union_subset s6Step284ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step284CompleteRelocationMove1Borrowed : Arena := ⟨s6Step284CompleteRelocationMove0After.live∪{384},Finset.union_subset s6Step284CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step284CompleteRelocation_move0_owned : 875∈s6Step284ExitGvAfter.live := by norm_num [s6Step284ExitGvAfter,arenaWires]

private theorem s6Step284CompleteRelocation_move0_reserve : s6Step284ExitGvAfter.reserve {128}=some s6Step284CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step284ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step284CompleteRelocation_move0_retire : s6Step284CompleteRelocationMove0Borrowed.retireSet {875}=s6Step284CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step284CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step284CompleteRelocationMove0Borrowed,s6Step284ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step284CompleteRelocation_move1_owned : 892∈s6Step284CompleteRelocationMove0After.live := by norm_num [s6Step284CompleteRelocationMove0After,arenaWires]

private theorem s6Step284CompleteRelocation_move1_reserve : s6Step284CompleteRelocationMove0After.reserve {384}=some s6Step284CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step284CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step284CompleteRelocation_move1_retire : s6Step284CompleteRelocationMove1Borrowed.retireSet {892}=s6Step284EarlyControlArena := by
  unfold Arena.retireSet s6Step284EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step284CompleteRelocationMove1Borrowed,s6Step284CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step284CompleteRelocation_checked : s6Step284ExitGvAfter.checkRepack [(875,128),(892,384)]=some s6Step284EarlyControlArena := by
  have tail2 : s6Step284EarlyControlArena.checkRepack []=some s6Step284EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step284CompleteRelocationMove0After s6Step284CompleteRelocationMove1Borrowed s6Step284EarlyControlArena s6Step284EarlyControlArena 892 384 []
    s6Step284CompleteRelocation_move1_owned s6Step284CompleteRelocation_move1_reserve s6Step284CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step284ExitGvAfter s6Step284CompleteRelocationMove0Borrowed s6Step284CompleteRelocationMove0After s6Step284EarlyControlArena 875 128 [(892,384)]
    s6Step284CompleteRelocation_move0_owned s6Step284CompleteRelocation_move0_reserve s6Step284CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step284Complete_repack : s6Step284ExitGvAfter.checkRepack s6Step284CompleteMoves=some s6Step284EarlyControlArena := by
  simpa only [s6Step284CompleteMoves] using s6Step284CompleteRelocation_checked

private theorem s6Step284EarlyControl_branchOwned : ([873] : List Wire).toFinset⊆s6Step284EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EarlyControl_branch : compileHmrBranchRetirement s6Step284EarlyControlSigmaArena 873=some s6Step284EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step284EarlyControl_branchOwned
  · ext q
    simp [s6Step284EarlyControlOutputArena,s6Step284EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step284EarlyControl_classEqualityBorrow : s6Step284EarlyControlPositiveArena.checkBorrow (([887, 813] : List Wire).length-1) s6Step284EarlyControlLog.classWork=some s6Step284EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step284EarlyControlPositiveArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step284EarlyControlEqualityArena,s6Step284EarlyControlPositiveArena,s6Step284EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step284EarlyControl_classEqualityOwned : ([887, 813] : List Wire).toFinset⊆s6Step284EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlPositiveArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EarlyControl_classEquality : compileHmrEqualityLog s6Step284EarlyControlPositiveArena [887, 813] 0 s6Step284EarlyControlLog.classWork=some (s6Step284EarlyControlEqualityArena,s6Step284EarlyControlLog.classWork,s6Step284EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step284EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step284EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step284EarlyControl_classOwned : ([769, 858, 887] : List Wire).toFinset⊆s6Step284EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EarlyControl_positiveBorrow : s6Step284EarlyControlZeroArena.checkBorrow (1) s6Step284EarlyControlLog.positiveWork=some s6Step284EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step284EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step284EarlyControlPositiveArena,s6Step284EarlyControlZeroArena,s6Step284EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step284EarlyControl_class : compileHmrSourceClassLog s6Step284EarlyControlZeroArena false 769 s6Step284EarlyControlZeroPlan.top 0 887 s6Step284EarlyControlLog.positiveWork s6Step284EarlyControlLog.classWork=some s6Step284EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step284EarlyControlClassPlan s6Step284EarlyControlZeroArena false 769 s6Step284EarlyControlZeroPlan.top 0 887
  constructor
  · decide +kernel
  · exact s6Step284EarlyControl_classOwned
  · exact s6Step284EarlyControl_positiveBorrow
  · exact s6Step284EarlyControl_classEquality

private theorem s6Step284EarlyControl_entryRecordOwned : ([873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step284EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EarlyControl_entrySigmaOwned : ([887, 254] : List Wire).toFinset⊆s6Step284EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EarlyControl_fitBorrow : s6Step284EarlyControlFlagArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step284EarlyControlLog.recordFresh=some s6Step284EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step284EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step284EarlyControlFittedArena,s6Step284EarlyControlFlagArena,s6Step284EarlyControlLog,arenaWires]

private theorem s6Step284EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step284EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EarlyControl_fit : compileHmrRecordGrowLog s6Step284EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step284EarlyControlLog.recordFresh=some s6Step284EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step284EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step284EarlyControl_fitBorrow

private theorem s6Step284EarlyControl_flagsBorrow : s6Step284EarlyControlEqualityArena.checkBorrow (6) s6Step284EarlyControlLog.flagWork=some s6Step284EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step284EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step284EarlyControlFlagArena,s6Step284EarlyControlEqualityArena,s6Step284EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step284EarlyControl_flagsOwned : ([779, 253, 252, 251] : List Wire).toFinset⊆s6Step284EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EarlyControl_flags : compileHmrFlagsLog s6Step284EarlyControlClassPlan.equalityArena s6Step284EarlyControlClassPlan.equality.top 253 252 251 s6Step284EarlyControlLog.flagWork=some s6Step284EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step284EarlyControl_flagsOwned⟩
  · exact s6Step284EarlyControl_flagsBorrow

private theorem s6Step284EarlyControl_historyBorrow : s6Step284EarlyControlArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step284EarlyControlLog.recordFresh=some s6Step284EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step284EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step284EarlyControlHistoryArena,s6Step284EarlyControlArena,s6Step284EarlyControlLog,arenaWires]

private theorem s6Step284EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step284EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EarlyControl_history : compileHmrRecordGrowLog s6Step284EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step284EarlyControlLog.recordFresh=some s6Step284EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step284EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step284EarlyControl_historyBorrow

private theorem s6Step284EarlyControl_sigmaOwned : ([254, 887] : List Wire).toFinset⊆s6Step284EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EarlyControl_sigmaReleaseOwned : ([887] : List Wire).toFinset⊆s6Step284EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EarlyControl_sigmaRelease : s6Step284EarlyControlHistoryArena.release {887} (fun _ => false)=some s6Step284EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step284EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step284EarlyControlSigmaArena,s6Step284EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step284EarlyControl_sigma : compileHmrSigmaDropLog s6Step284EarlyControlHistoryArena false 0 0 254 887 []=some s6Step284EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step284EarlyControl_sigmaOwned⟩
  · exact s6Step284EarlyControl_sigmaRelease

private theorem s6Step284EarlyControl_zeroBorrow : s6Step284EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step284EarlyControlLog.zeroWork=some s6Step284EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step284EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step284EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step284EarlyControlZeroArena,s6Step284EarlyControlArena,s6Step284EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step284EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step284EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step284EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EarlyControl_zero : compileHmrEqualityLog s6Step284EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step284EarlyControlLog.zeroWork=some (s6Step284EarlyControlZeroArena,s6Step284EarlyControlLog.zeroWork,s6Step284EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step284EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step284EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step284EarlyControl_logged : s6Step284EarlyControlPlan.Logged s6Step284EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 887 254 253 252 251 873 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step284EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step284EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step284EarlyControl_zero
  · exact s6Step284EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step284EarlyControl_flags
  · exact s6Step284EarlyControl_fit
  · exact s6Step284EarlyControl_history
  · exact s6Step284EarlyControl_sigma
  · exact s6Step284EarlyControl_branch

private theorem s6Step284EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step284EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 887 254 253 252 251 873 54 s6Step284EarlyControlLog=some s6Step284EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step284EarlyControlPlan s6Step284EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 887 254 253 252 251 873 54 s6Step284EarlyControl_logged

private def s6Step284EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384],795⟩

private def s6Step284EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845],776⟩

private def s6Step284EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128],777⟩

private def s6Step284EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927],775⟩

private def s6Step284FrontBank : WindowBank := ⟨s6Step284EntryFRow,s6Step284EntryGRow,s6Step284EntryFvRow,s6Step284EntryGvRow⟩

private def s6Step284Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 858, 795]

private def s6Step284Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 813, 777]

private def s6Step284Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 776]

private def s6Step284Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 807, 775]

private theorem s6Step284Counter_apart : Disjoint s6Step284HeadFvAfter.live s6Step284CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step284HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284Counter_borrowed : s6Step284HeadFvAfter.checkBorrow 4 s6Step284CounterWork=some s6Step284CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step284HeadFvAfter s6Step284CounterDuring s6Step284CounterWork.toFinset s6Step284Counter_bounded s6Step284Counter_apart rfl

private theorem s6Step284Counter_owned : (887::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step284HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step284HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284Counter_checked : compileHmrCounterStepLog s6Step284HeadFvAfter true 887 [774, 773, 772, 771, 770, 769] s6Step284CounterWork=some s6Step284CounterDuring := by
  have owned : ∀q∈887::[774, 773, 772, 771, 770, 769],q∈s6Step284HeadFvAfter.live := fun q hq => s6Step284Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step284Counter_borrowed

private def s6Step284EntryFAfter : Arena := s6Step284EntryFBefore

private theorem s6Step284EntryBank_incomingDistinct : ([s6Step284EntryFRow,s6Step284EntryGRow,s6Step284EntryFvRow,s6Step284EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284EntryF_Incoming : rowsOwned s6Step284EntryFBefore [s6Step284EntryFRow,s6Step284EntryGRow,s6Step284EntryFvRow,s6Step284EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284EntryFRow,s6Step284EntryGRow,s6Step284EntryFvRow,s6Step284EntryGvRow] 0 s6Step284EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284EntryBank_outgoingOwned : rowsOwned s6Step284EntryGvAfter [s6Step284EntryFOut,s6Step284EntryGOut,s6Step284EntryFvOut,s6Step284EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step284EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284EntryF_Outgoing : rowsOwned s6Step284EntryGvAfter [s6Step284EntryFOut,s6Step284EntryGOut,s6Step284EntryFvOut,s6Step284EntryGvOut] :=
  hmrRows_owned_drop s6Step284EntryGvAfter [s6Step284EntryFOut,s6Step284EntryGOut,s6Step284EntryFvOut,s6Step284EntryGvOut] 0 s6Step284EntryBank_outgoingOwned

private theorem s6Step284EntryF_distinct : (s6Step284EntryFRow.sign::s6Step284EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284EntryF_owned : (s6Step284EntryFRow.sign::s6Step284EntryFRow.payload).toFinset⊆s6Step284EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EntryF_reserved : s6Step284EntryFBefore.reserve s6Step284EntryFFresh.toFinset=some s6Step284EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step284EntryFFresh,arenaWires]
  · norm_num [s6Step284EntryFBefore,s6Step284EntryFFresh,arenaWires]
  · simp only [s6Step284EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step284EntryF_checked : planRowResizeLog s6Step284EntryFBefore s6Step284EntryFRow 129 s6Step284EntryFFresh=
    some (s6Step284EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384],795⟩,growRow 795 s6Step284EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step284EntryFBefore s6Step284EntryFAfter s6Step284EntryFRow 129 s6Step284EntryFFresh
    s6Step284EntryF_distinct s6Step284EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step284EntryF_reserved
  have rowEq : WindowRow.mk (s6Step284EntryFRow.payload++s6Step284EntryFFresh) s6Step284EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step284EntryFvAfter : Arena := s6Step284EntryFBefore

private def s6Step284EntryFvBefore : Arena := s6Step284EntryFBefore

private theorem s6Step284EntryFv_Incoming : rowsOwned s6Step284EntryFvBefore [s6Step284EntryFvRow,s6Step284EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284EntryFRow,s6Step284EntryGRow,s6Step284EntryFvRow,s6Step284EntryGvRow] 2 s6Step284EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284EntryFv_Outgoing : rowsOwned s6Step284EntryGvAfter [s6Step284EntryFvOut,s6Step284EntryGvOut] :=
  hmrRows_owned_drop s6Step284EntryGvAfter [s6Step284EntryFOut,s6Step284EntryGOut,s6Step284EntryFvOut,s6Step284EntryGvOut] 2 s6Step284EntryBank_outgoingOwned

private theorem s6Step284EntryFv_distinct : (s6Step284EntryFvRow.sign::s6Step284EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284EntryFv_owned : (s6Step284EntryFvRow.sign::s6Step284EntryFvRow.payload).toFinset⊆s6Step284EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EntryFv_reserved : s6Step284EntryFvBefore.reserve s6Step284EntryFvFresh.toFinset=some s6Step284EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step284EntryFvFresh,arenaWires]
  · norm_num [s6Step284EntryFvBefore,s6Step284EntryFBefore,s6Step284EntryFvFresh,arenaWires]
  · simp only [s6Step284EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step284EntryFv_checked : planRowResizeLog s6Step284EntryFvBefore s6Step284EntryFvRow 157 s6Step284EntryFvFresh=
    some (s6Step284EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845],776⟩,growRow 776 s6Step284EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step284EntryFvBefore s6Step284EntryFvAfter s6Step284EntryFvRow 157 s6Step284EntryFvFresh
    s6Step284EntryFv_distinct s6Step284EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step284EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step284EntryFvRow.payload++s6Step284EntryFvFresh) s6Step284EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step284EntryGAfter : Arena := s6Step284EntryFBefore

private def s6Step284EntryGBefore : Arena := s6Step284EntryFBefore

private theorem s6Step284EntryG_Incoming : rowsOwned s6Step284EntryGBefore [s6Step284EntryGRow,s6Step284EntryFvRow,s6Step284EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284EntryFRow,s6Step284EntryGRow,s6Step284EntryFvRow,s6Step284EntryGvRow] 1 s6Step284EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284EntryG_Outgoing : rowsOwned s6Step284EntryGvAfter [s6Step284EntryGOut,s6Step284EntryFvOut,s6Step284EntryGvOut] :=
  hmrRows_owned_drop s6Step284EntryGvAfter [s6Step284EntryFOut,s6Step284EntryGOut,s6Step284EntryFvOut,s6Step284EntryGvOut] 1 s6Step284EntryBank_outgoingOwned

private theorem s6Step284EntryG_distinct : (s6Step284EntryGRow.sign::s6Step284EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284EntryG_owned : (s6Step284EntryGRow.sign::s6Step284EntryGRow.payload).toFinset⊆s6Step284EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EntryG_reserved : s6Step284EntryGBefore.reserve s6Step284EntryGFresh.toFinset=some s6Step284EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step284EntryGFresh,arenaWires]
  · norm_num [s6Step284EntryGBefore,s6Step284EntryFBefore,s6Step284EntryGFresh,arenaWires]
  · simp only [s6Step284EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step284EntryG_checked : planRowResizeLog s6Step284EntryGBefore s6Step284EntryGRow 129 s6Step284EntryGFresh=
    some (s6Step284EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128],777⟩,growRow 777 s6Step284EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step284EntryGBefore s6Step284EntryGAfter s6Step284EntryGRow 129 s6Step284EntryGFresh
    s6Step284EntryG_distinct s6Step284EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step284EntryG_reserved
  have rowEq : WindowRow.mk (s6Step284EntryGRow.payload++s6Step284EntryGFresh) s6Step284EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step284EntryGvBefore : Arena := s6Step284EntryFBefore

private theorem s6Step284EntryGv_Incoming : rowsOwned s6Step284EntryGvBefore [s6Step284EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284EntryFRow,s6Step284EntryGRow,s6Step284EntryFvRow,s6Step284EntryGvRow] 3 s6Step284EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284EntryGv_Outgoing : rowsOwned s6Step284EntryGvAfter [s6Step284EntryGvOut] :=
  hmrRows_owned_drop s6Step284EntryGvAfter [s6Step284EntryFOut,s6Step284EntryGOut,s6Step284EntryFvOut,s6Step284EntryGvOut] 3 s6Step284EntryBank_outgoingOwned

private theorem s6Step284EntryGv_distinct : (s6Step284EntryGvRow.sign::s6Step284EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284EntryGv_owned : (s6Step284EntryGvRow.sign::s6Step284EntryGvRow.payload).toFinset⊆s6Step284EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284EntryGv_reserved : s6Step284EntryGvBefore.reserve s6Step284EntryGvFresh.toFinset=some s6Step284EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step284EntryGvFresh,arenaWires]
  · norm_num [s6Step284EntryGvBefore,s6Step284EntryFBefore,s6Step284EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step284EntryGvAfter,s6Step284EntryGvBefore,s6Step284EntryFBefore,s6Step284EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step284EntryGv_checked : planRowResizeLog s6Step284EntryGvBefore s6Step284EntryGvRow 157 s6Step284EntryGvFresh=
    some (s6Step284EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩,growRow 775 s6Step284EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step284EntryGvBefore s6Step284EntryGvAfter s6Step284EntryGvRow 157 s6Step284EntryGvFresh
    s6Step284EntryGv_distinct s6Step284EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step284EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step284EntryGvRow.payload++s6Step284EntryGvFresh) s6Step284EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step284EntryBank_rows : planWindowRowsLog s6Step284EntryFBefore [(s6Step284EntryFRow,129),(s6Step284EntryGRow,129),(s6Step284EntryFvRow,157),(s6Step284EntryGvRow,157)] [s6Step284EntryFFresh,s6Step284EntryGFresh,s6Step284EntryFvFresh,s6Step284EntryGvFresh]=
    some (s6Step284EntryGvAfter,[s6Step284EntryFOut,s6Step284EntryGOut,s6Step284EntryFvOut,s6Step284EntryGvOut],(growRow 795 s6Step284EntryFFresh ++ (growRow 777 s6Step284EntryGFresh ++ (growRow 776 s6Step284EntryFvFresh ++ (growRow 775 s6Step284EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step284EntryGvAfter [] []=some (s6Step284EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step284EntryGvBefore s6Step284EntryGvAfter s6Step284EntryGvAfter
    s6Step284EntryGvRow s6Step284EntryGvOut 157 s6Step284EntryGvFresh [] [] []
    (growRow 775 s6Step284EntryGvFresh) ([]) s6Step284EntryGv_Incoming s6Step284EntryGv_checked h4 s6Step284EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step284EntryFvBefore s6Step284EntryFvAfter s6Step284EntryGvAfter
    s6Step284EntryFvRow s6Step284EntryFvOut 157 s6Step284EntryFvFresh [(s6Step284EntryGvRow,157)] [s6Step284EntryGvFresh] [s6Step284EntryGvOut]
    (growRow 776 s6Step284EntryFvFresh) ((growRow 775 s6Step284EntryGvFresh ++ [])) s6Step284EntryFv_Incoming s6Step284EntryFv_checked h3 s6Step284EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step284EntryGBefore s6Step284EntryGAfter s6Step284EntryGvAfter
    s6Step284EntryGRow s6Step284EntryGOut 129 s6Step284EntryGFresh [(s6Step284EntryFvRow,157),(s6Step284EntryGvRow,157)] [s6Step284EntryFvFresh,s6Step284EntryGvFresh] [s6Step284EntryFvOut,s6Step284EntryGvOut]
    (growRow 777 s6Step284EntryGFresh) ((growRow 776 s6Step284EntryFvFresh ++ (growRow 775 s6Step284EntryGvFresh ++ []))) s6Step284EntryG_Incoming s6Step284EntryG_checked h2 s6Step284EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step284EntryFBefore s6Step284EntryFAfter s6Step284EntryGvAfter
    s6Step284EntryFRow s6Step284EntryFOut 129 s6Step284EntryFFresh [(s6Step284EntryGRow,129),(s6Step284EntryFvRow,157),(s6Step284EntryGvRow,157)] [s6Step284EntryGFresh,s6Step284EntryFvFresh,s6Step284EntryGvFresh] [s6Step284EntryGOut,s6Step284EntryFvOut,s6Step284EntryGvOut]
    (growRow 795 s6Step284EntryFFresh) ((growRow 777 s6Step284EntryGFresh ++ (growRow 776 s6Step284EntryFvFresh ++ (growRow 775 s6Step284EntryGvFresh ++ [])))) s6Step284EntryF_Incoming s6Step284EntryF_checked h1 s6Step284EntryF_Outgoing
  exact h0

private theorem s6Step284EntryBank_checked : compileHmrBankResizeLog .entry s6Step284EntryFBefore ⟨s6Step284EntryFRow,s6Step284EntryGRow,s6Step284EntryFvRow,s6Step284EntryGvRow⟩ ⟨129,129,157,157⟩ [s6Step284EntryFFresh,s6Step284EntryGFresh,s6Step284EntryFvFresh,s6Step284EntryGvFresh]=
    some (s6Step284EntryGvAfter,⟨s6Step284EntryFOut,s6Step284EntryGOut,s6Step284EntryFvOut,s6Step284EntryGvOut⟩,(growRow 795 s6Step284EntryFFresh ++ (growRow 777 s6Step284EntryGFresh ++ (growRow 776 s6Step284EntryFvFresh ++ (growRow 775 s6Step284EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step284EntryBank_rows]
  rfl

private def s6Step284ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<384) ∨ (385≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284ExitFBefore : Arena := s6Step284ExitGAfter

private def s6Step284ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 858],795⟩

private def s6Step284ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩

private def s6Step284ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 813],777⟩

private def s6Step284ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 807],775⟩

private theorem s6Step284ExitBank_incomingDistinct : ([s6Step284ExitGRow,s6Step284ExitFRow,s6Step284ExitFvRow,s6Step284ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284ExitF_Incoming : rowsOwned s6Step284ExitFBefore [s6Step284ExitFRow,s6Step284ExitFvRow,s6Step284ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284ExitGRow,s6Step284ExitFRow,s6Step284ExitFvRow,s6Step284ExitGvRow] 1 s6Step284ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284ExitFBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284ExitBank_outgoingOwned : rowsOwned s6Step284ExitGvAfter [s6Step284ExitGOut,s6Step284ExitFOut,s6Step284ExitFvOut,s6Step284ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step284ExitGvAfter (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<384) ∨ (385≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284ExitF_Outgoing : rowsOwned s6Step284ExitGvAfter [s6Step284ExitFOut,s6Step284ExitFvOut,s6Step284ExitGvOut] :=
  hmrRows_owned_drop s6Step284ExitGvAfter [s6Step284ExitGOut,s6Step284ExitFOut,s6Step284ExitFvOut,s6Step284ExitGvOut] 1 s6Step284ExitBank_outgoingOwned

private theorem s6Step284ExitF_distinct : (s6Step284ExitFRow.sign::s6Step284ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284ExitF_owned : (s6Step284ExitFRow.sign::s6Step284ExitFRow.payload).toFinset⊆s6Step284ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284ExitFBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284ExitF_retired : s6Step284ExitFBefore.retireSet s6Step284ExitFExtra.toFinset=s6Step284ExitFAfter := by
  unfold Arena.retireSet s6Step284ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step284ExitFBefore,s6Step284ExitGAfter,s6Step284ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step284ExitF_checked : planRowResizeLog s6Step284ExitFBefore s6Step284ExitFRow 128 []=
    some (s6Step284ExitFAfter,s6Step284ExitFOut,shrinkRow 795 s6Step284ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step284ExitFBefore s6Step284ExitFRow 128 s6Step284ExitF_distinct s6Step284ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step284ExitFRow.payload.take 128) s6Step284ExitFRow.sign=s6Step284ExitFOut := by decide +kernel
  have hi : s6Step284ExitFRow.payload.drop 128=s6Step284ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step284ExitF_retired] at result
  exact result

private def s6Step284ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<384) ∨ (385≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284ExitFvBefore : Arena := s6Step284ExitFAfter

private theorem s6Step284ExitFv_Incoming : rowsOwned s6Step284ExitFvBefore [s6Step284ExitFvRow,s6Step284ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284ExitGRow,s6Step284ExitFRow,s6Step284ExitFvRow,s6Step284ExitGvRow] 2 s6Step284ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284ExitFvBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<384) ∨ (385≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284ExitFv_Outgoing : rowsOwned s6Step284ExitGvAfter [s6Step284ExitFvOut,s6Step284ExitGvOut] :=
  hmrRows_owned_drop s6Step284ExitGvAfter [s6Step284ExitGOut,s6Step284ExitFOut,s6Step284ExitFvOut,s6Step284ExitGvOut] 2 s6Step284ExitBank_outgoingOwned

private theorem s6Step284ExitFv_distinct : (s6Step284ExitFvRow.sign::s6Step284ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284ExitFv_owned : (s6Step284ExitFvRow.sign::s6Step284ExitFvRow.payload).toFinset⊆s6Step284ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284ExitFvBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<384) ∨ (385≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284ExitFv_retired : s6Step284ExitFvBefore.retireSet s6Step284ExitFvExtra.toFinset=s6Step284ExitFvAfter := by
  unfold Arena.retireSet s6Step284ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step284ExitFvBefore,s6Step284ExitFAfter,s6Step284ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step284ExitFv_checked : planRowResizeLog s6Step284ExitFvBefore s6Step284ExitFvRow 157 []=
    some (s6Step284ExitFvAfter,s6Step284ExitFvOut,shrinkRow 776 s6Step284ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step284ExitFvBefore s6Step284ExitFvRow 157 s6Step284ExitFv_distinct s6Step284ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step284ExitFvRow.payload.take 157) s6Step284ExitFvRow.sign=s6Step284ExitFvOut := by decide +kernel
  have hi : s6Step284ExitFvRow.payload.drop 157=s6Step284ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step284ExitFv_retired] at result
  exact result

private def s6Step284ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step284ExitG_Incoming : rowsOwned s6Step284ExitGBefore [s6Step284ExitGRow,s6Step284ExitFRow,s6Step284ExitFvRow,s6Step284ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284ExitGRow,s6Step284ExitFRow,s6Step284ExitFvRow,s6Step284ExitGvRow] 0 s6Step284ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284ExitG_Outgoing : rowsOwned s6Step284ExitGvAfter [s6Step284ExitGOut,s6Step284ExitFOut,s6Step284ExitFvOut,s6Step284ExitGvOut] :=
  hmrRows_owned_drop s6Step284ExitGvAfter [s6Step284ExitGOut,s6Step284ExitFOut,s6Step284ExitFvOut,s6Step284ExitGvOut] 0 s6Step284ExitBank_outgoingOwned

private theorem s6Step284ExitG_distinct : (s6Step284ExitGRow.sign::s6Step284ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284ExitG_owned : (s6Step284ExitGRow.sign::s6Step284ExitGRow.payload).toFinset⊆s6Step284ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284ExitG_retired : s6Step284ExitGBefore.retireSet s6Step284ExitGExtra.toFinset=s6Step284ExitGAfter := by
  unfold Arena.retireSet s6Step284ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step284ExitGBefore,s6Step284ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step284ExitG_checked : planRowResizeLog s6Step284ExitGBefore s6Step284ExitGRow 128 []=
    some (s6Step284ExitGAfter,s6Step284ExitGOut,shrinkRow 777 s6Step284ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step284ExitGBefore s6Step284ExitGRow 128 s6Step284ExitG_distinct s6Step284ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step284ExitGRow.payload.take 128) s6Step284ExitGRow.sign=s6Step284ExitGOut := by decide +kernel
  have hi : s6Step284ExitGRow.payload.drop 128=s6Step284ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step284ExitG_retired] at result
  exact result

private def s6Step284ExitGvBefore : Arena := s6Step284ExitFvAfter

private theorem s6Step284ExitGv_Incoming : rowsOwned s6Step284ExitGvBefore [s6Step284ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284ExitGRow,s6Step284ExitFRow,s6Step284ExitFvRow,s6Step284ExitGvRow] 3 s6Step284ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284ExitGvBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<384) ∨ (385≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284ExitGv_Outgoing : rowsOwned s6Step284ExitGvAfter [s6Step284ExitGvOut] :=
  hmrRows_owned_drop s6Step284ExitGvAfter [s6Step284ExitGOut,s6Step284ExitFOut,s6Step284ExitFvOut,s6Step284ExitGvOut] 3 s6Step284ExitBank_outgoingOwned

private theorem s6Step284ExitGv_distinct : (s6Step284ExitGvRow.sign::s6Step284ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284ExitGv_owned : (s6Step284ExitGvRow.sign::s6Step284ExitGvRow.payload).toFinset⊆s6Step284ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284ExitGvBefore (fun q => (0≤q ∧ q<128) ∨ (129≤q ∧ q<384) ∨ (385≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284ExitGv_retired : s6Step284ExitGvBefore.retireSet s6Step284ExitGvExtra.toFinset=s6Step284ExitGvAfter := by
  unfold Arena.retireSet s6Step284ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step284ExitGvBefore,s6Step284ExitFvAfter,s6Step284ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step284ExitGv_checked : planRowResizeLog s6Step284ExitGvBefore s6Step284ExitGvRow 157 []=
    some (s6Step284ExitGvAfter,s6Step284ExitGvOut,shrinkRow 775 s6Step284ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step284ExitGvBefore s6Step284ExitGvRow 157 s6Step284ExitGv_distinct s6Step284ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step284ExitGvRow.payload.take 157) s6Step284ExitGvRow.sign=s6Step284ExitGvOut := by decide +kernel
  have hi : s6Step284ExitGvRow.payload.drop 157=s6Step284ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step284ExitGv_retired] at result
  exact result

private theorem s6Step284ExitBank_rows : planWindowRowsLog s6Step284ExitGBefore [(s6Step284ExitGRow,128),(s6Step284ExitFRow,128),(s6Step284ExitFvRow,157),(s6Step284ExitGvRow,157)] [[],[],[],[]]=
    some (s6Step284ExitGvAfter,[s6Step284ExitGOut,s6Step284ExitFOut,s6Step284ExitFvOut,s6Step284ExitGvOut],(shrinkRow 777 s6Step284ExitGExtra ++ (shrinkRow 795 s6Step284ExitFExtra ++ (shrinkRow 776 s6Step284ExitFvExtra ++ (shrinkRow 775 s6Step284ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step284ExitGvAfter [] []=some (s6Step284ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step284ExitGvBefore s6Step284ExitGvAfter s6Step284ExitGvAfter
    s6Step284ExitGvRow s6Step284ExitGvOut 157 [] [] [] []
    (shrinkRow 775 s6Step284ExitGvExtra) ([]) s6Step284ExitGv_Incoming s6Step284ExitGv_checked h4 s6Step284ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step284ExitFvBefore s6Step284ExitFvAfter s6Step284ExitGvAfter
    s6Step284ExitFvRow s6Step284ExitFvOut 157 [] [(s6Step284ExitGvRow,157)] [[]] [s6Step284ExitGvOut]
    (shrinkRow 776 s6Step284ExitFvExtra) ((shrinkRow 775 s6Step284ExitGvExtra ++ [])) s6Step284ExitFv_Incoming s6Step284ExitFv_checked h3 s6Step284ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step284ExitFBefore s6Step284ExitFAfter s6Step284ExitGvAfter
    s6Step284ExitFRow s6Step284ExitFOut 128 [] [(s6Step284ExitFvRow,157),(s6Step284ExitGvRow,157)] [[],[]] [s6Step284ExitFvOut,s6Step284ExitGvOut]
    (shrinkRow 795 s6Step284ExitFExtra) ((shrinkRow 776 s6Step284ExitFvExtra ++ (shrinkRow 775 s6Step284ExitGvExtra ++ []))) s6Step284ExitF_Incoming s6Step284ExitF_checked h2 s6Step284ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step284ExitGBefore s6Step284ExitGAfter s6Step284ExitGvAfter
    s6Step284ExitGRow s6Step284ExitGOut 128 [] [(s6Step284ExitFRow,128),(s6Step284ExitFvRow,157),(s6Step284ExitGvRow,157)] [[],[],[]] [s6Step284ExitFOut,s6Step284ExitFvOut,s6Step284ExitGvOut]
    (shrinkRow 777 s6Step284ExitGExtra) ((shrinkRow 795 s6Step284ExitFExtra ++ (shrinkRow 776 s6Step284ExitFvExtra ++ (shrinkRow 775 s6Step284ExitGvExtra ++ [])))) s6Step284ExitG_Incoming s6Step284ExitG_checked h1 s6Step284ExitG_Outgoing
  exact h0

private theorem s6Step284ExitBank_checked : compileHmrBankResizeLog .exit s6Step284ExitGBefore ⟨s6Step284ExitFRow,s6Step284ExitGRow,s6Step284ExitFvRow,s6Step284ExitGvRow⟩ ⟨128,128,157,157⟩ [[],[],[],[]]=
    some (s6Step284ExitGvAfter,⟨s6Step284ExitFOut,s6Step284ExitGOut,s6Step284ExitFvOut,s6Step284ExitGvOut⟩,(shrinkRow 777 s6Step284ExitGExtra ++ (shrinkRow 795 s6Step284ExitFExtra ++ (shrinkRow 776 s6Step284ExitFvExtra ++ (shrinkRow 775 s6Step284ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step284ExitBank_rows]
  rfl

private theorem s6Step284Add0_apart : Disjoint s6Step284Add0Arena.live s6Step284Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step284Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284Add0_card : s6Step284Add0Arena.live.card=900 := by
  decide +kernel

private theorem s6Step284Add0_borrowed : s6Step284Add0Arena.checkBorrow (hmrHybridCount s6Step284Add0Arena s6Step284Add0B.length) s6Step284Add0Work=some s6Step284Add0During := by
  have len : s6Step284Add0Work.length=hmrHybridCount s6Step284Add0Arena s6Step284Add0B.length := by
    rw [hmrHybridCount,s6Step284Add0_card]
    decide +kernel
  have nd : s6Step284Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step284Add0Arena s6Step284Add0During s6Step284Add0Work.toFinset s6Step284Add0_bounded s6Step284Add0_apart rfl

private theorem s6Step284Add0_distinct : (779::873::882::(s6Step284Add0A++s6Step284Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284Add0_owned : (779::873::882::(s6Step284Add0A++s6Step284Add0B)).toFinset⊆s6Step284Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step284Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284Add0_checked : compileHmrHybridCinLog s6Step284Add0Arena 873 779 882 s6Step284Add0A s6Step284Add0B s6Step284Add0Work=some s6Step284Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step284Add0Arena s6Step284Add0During 873 779 882 s6Step284Add0A s6Step284Add0B s6Step284Add0Work
    (by decide +kernel) (by decide +kernel) s6Step284Add0_distinct
    (fun q hq => s6Step284Add0_owned (List.mem_toFinset.mpr hq)) s6Step284Add0_borrowed

private theorem s6Step284Add1_apart : Disjoint s6Step284Add1Arena.live s6Step284Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step284Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284Add1_card : s6Step284Add1Arena.live.card=900 := by
  decide +kernel

private theorem s6Step284Add1_borrowed : s6Step284Add1Arena.checkBorrow (hmrHybridCount s6Step284Add1Arena s6Step284Add1B.length) s6Step284Add1Work=some s6Step284Add1During := by
  have len : s6Step284Add1Work.length=hmrHybridCount s6Step284Add1Arena s6Step284Add1B.length := by
    rw [hmrHybridCount,s6Step284Add1_card]
    decide +kernel
  have nd : s6Step284Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step284Add1Arena s6Step284Add1During s6Step284Add1Work.toFinset s6Step284Add1_bounded s6Step284Add1_apart rfl

private theorem s6Step284Add1_distinct : (779::873::882::(s6Step284Add1A++s6Step284Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284Add1_owned : (779::873::882::(s6Step284Add1A++s6Step284Add1B)).toFinset⊆s6Step284Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step284Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284Add1_checked : compileHmrHybridCinLog s6Step284Add1Arena 873 779 882 s6Step284Add1A s6Step284Add1B s6Step284Add1Work=some s6Step284Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step284Add1Arena s6Step284Add1During 873 779 882 s6Step284Add1A s6Step284Add1B s6Step284Add1Work
    (by decide +kernel) (by decide +kernel) s6Step284Add1_distinct
    (fun q hq => s6Step284Add1_owned (List.mem_toFinset.mpr hq)) s6Step284Add1_borrowed

private theorem s6Step284F4_apart : Disjoint (s6Step284Add0A++s6Step284Add0B).toFinset (s6Step284Add1A++s6Step284Add1B).toFinset := by
  have nd : ((s6Step284Add0A++s6Step284Add0B)++(s6Step284Add1A++s6Step284Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step284F4_carry : s6Step284F4FlagArena.checkBorrow 1 [882]=some s6Step284Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step284F4FlagArena,s6Step284HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step284F4FlagArena,s6Step284HeadFvAfter,s6Step284Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step284F4_distinct : (887::873::779::882::((s6Step284Add0A++s6Step284Add1A)++(s6Step284Add0B++s6Step284Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284F4_flag : s6Step284HeadFvAfter.checkBorrow 1 [779]=some s6Step284F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step284HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step284F4_owned : (887::873::((s6Step284Add0A++s6Step284Add1A)++(s6Step284Add0B++s6Step284Add1B))).toFinset⊆s6Step284HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step284HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284F4_checked : compileHmrHybridF4Log s6Step284HeadFvAfter 887 873 s6Step284Add0A s6Step284Add0B s6Step284Add1A s6Step284Add1B [779] [882] s6Step284Add0Work s6Step284Add1Work=some s6Step284F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step284HeadFvAfter s6Step284F4FlagArena s6Step284Add0Arena s6Step284Add0During s6Step284Add1During 887 873
    s6Step284Add0A s6Step284Add0B s6Step284Add1A s6Step284Add1B [779] [882] s6Step284Add0Work s6Step284Add1Work
    (fun q hq => s6Step284F4_owned (List.mem_toFinset.mpr hq)) s6Step284F4_flag s6Step284F4_carry
    s6Step284F4_distinct s6Step284F4_apart s6Step284Add0_checked s6Step284Add1_checked

private theorem s6Step284Front_branch : s6Step284FrontSigmaArena.checkBorrow 1 [873]=some s6Step284HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step284FrontSigmaArena,s6Step284EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step284FrontSigmaArena,s6Step284EntryGvAfter,s6Step284HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step284Front_entry : HmrFrontEntryValid s6Step284EntryFBefore s6Step284FrontBank 129 157 ⟨128,128,157,157⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step284FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step284EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step284EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step284FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step284Front_sigma : s6Step284EntryGvAfter.checkBorrow 1 [887]=some s6Step284FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step284EntryGvAfter,arenaWires]
  · rfl

private def s6Step284HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284HeadFBefore : Arena := s6Step284HeadGAfter

private def s6Step284HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384],795⟩

private def s6Step284HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845],776⟩

private def s6Step284HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128],777⟩

private def s6Step284HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩

private theorem s6Step284HeadBank_incomingDistinct : ([s6Step284HeadGRow,s6Step284HeadFRow,s6Step284HeadGvRow,s6Step284HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284HeadF_Incoming : rowsOwned s6Step284HeadFBefore [s6Step284HeadFRow,s6Step284HeadGvRow,s6Step284HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284HeadGRow,s6Step284HeadFRow,s6Step284HeadGvRow,s6Step284HeadFvRow] 1 s6Step284HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284HeadBank_outgoingOwned : rowsOwned s6Step284HeadFvAfter [s6Step284HeadGOut,s6Step284HeadFOut,s6Step284HeadGvOut,s6Step284HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step284HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284HeadF_Outgoing : rowsOwned s6Step284HeadFvAfter [s6Step284HeadFOut,s6Step284HeadGvOut,s6Step284HeadFvOut] :=
  hmrRows_owned_drop s6Step284HeadFvAfter [s6Step284HeadGOut,s6Step284HeadFOut,s6Step284HeadGvOut,s6Step284HeadFvOut] 1 s6Step284HeadBank_outgoingOwned

private theorem s6Step284HeadF_distinct : (s6Step284HeadFRow.sign::s6Step284HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284HeadF_owned : (s6Step284HeadFRow.sign::s6Step284HeadFRow.payload).toFinset⊆s6Step284HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284HeadF_reserved : s6Step284HeadFBefore.reserve s6Step284HeadFFresh.toFinset=some s6Step284HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step284HeadFFresh,arenaWires]
  · norm_num [s6Step284HeadFBefore,s6Step284HeadGAfter,s6Step284HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step284HeadFAfter,s6Step284HeadFBefore,s6Step284HeadGAfter,s6Step284HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step284HeadF_checked : planRowResizeLog s6Step284HeadFBefore s6Step284HeadFRow 130 s6Step284HeadFFresh=
    some (s6Step284HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 858],795⟩,growRow 795 s6Step284HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step284HeadFBefore s6Step284HeadFAfter s6Step284HeadFRow 130 s6Step284HeadFFresh
    s6Step284HeadF_distinct s6Step284HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step284HeadF_reserved
  have rowEq : WindowRow.mk (s6Step284HeadFRow.payload++s6Step284HeadFFresh) s6Step284HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 858],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step284HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step284HeadFvBefore : Arena := s6Step284HeadGvAfter

private theorem s6Step284HeadFv_Incoming : rowsOwned s6Step284HeadFvBefore [s6Step284HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284HeadGRow,s6Step284HeadFRow,s6Step284HeadGvRow,s6Step284HeadFvRow] 3 s6Step284HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284HeadFv_Outgoing : rowsOwned s6Step284HeadFvAfter [s6Step284HeadFvOut] :=
  hmrRows_owned_drop s6Step284HeadFvAfter [s6Step284HeadGOut,s6Step284HeadFOut,s6Step284HeadGvOut,s6Step284HeadFvOut] 3 s6Step284HeadBank_outgoingOwned

private theorem s6Step284HeadFv_distinct : (s6Step284HeadFvRow.sign::s6Step284HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284HeadFv_owned : (s6Step284HeadFvRow.sign::s6Step284HeadFvRow.payload).toFinset⊆s6Step284HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284HeadFv_reserved : s6Step284HeadFvBefore.reserve s6Step284HeadFvFresh.toFinset=some s6Step284HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step284HeadFvFresh,arenaWires]
  · norm_num [s6Step284HeadFvBefore,s6Step284HeadGvAfter,s6Step284HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step284HeadFvAfter,s6Step284HeadFvBefore,s6Step284HeadGvAfter,s6Step284HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step284HeadFv_checked : planRowResizeLog s6Step284HeadFvBefore s6Step284HeadFvRow 158 s6Step284HeadFvFresh=
    some (s6Step284HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩,growRow 776 s6Step284HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step284HeadFvBefore s6Step284HeadFvAfter s6Step284HeadFvRow 158 s6Step284HeadFvFresh
    s6Step284HeadFv_distinct s6Step284HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step284HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step284HeadFvRow.payload++s6Step284HeadFvFresh) s6Step284HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step284HeadG_Incoming : rowsOwned s6Step284HeadGBefore [s6Step284HeadGRow,s6Step284HeadFRow,s6Step284HeadGvRow,s6Step284HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284HeadGRow,s6Step284HeadFRow,s6Step284HeadGvRow,s6Step284HeadFvRow] 0 s6Step284HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284HeadG_Outgoing : rowsOwned s6Step284HeadFvAfter [s6Step284HeadGOut,s6Step284HeadFOut,s6Step284HeadGvOut,s6Step284HeadFvOut] :=
  hmrRows_owned_drop s6Step284HeadFvAfter [s6Step284HeadGOut,s6Step284HeadFOut,s6Step284HeadGvOut,s6Step284HeadFvOut] 0 s6Step284HeadBank_outgoingOwned

private theorem s6Step284HeadG_distinct : (s6Step284HeadGRow.sign::s6Step284HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284HeadG_owned : (s6Step284HeadGRow.sign::s6Step284HeadGRow.payload).toFinset⊆s6Step284HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284HeadG_reserved : s6Step284HeadGBefore.reserve s6Step284HeadGFresh.toFinset=some s6Step284HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step284HeadGFresh,arenaWires]
  · norm_num [s6Step284HeadGBefore,s6Step284HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step284HeadGAfter,s6Step284HeadGBefore,s6Step284HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step284HeadG_checked : planRowResizeLog s6Step284HeadGBefore s6Step284HeadGRow 130 s6Step284HeadGFresh=
    some (s6Step284HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 813],777⟩,growRow 777 s6Step284HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step284HeadGBefore s6Step284HeadGAfter s6Step284HeadGRow 130 s6Step284HeadGFresh
    s6Step284HeadG_distinct s6Step284HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step284HeadG_reserved
  have rowEq : WindowRow.mk (s6Step284HeadGRow.payload++s6Step284HeadGFresh) s6Step284HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step284HeadGvBefore : Arena := s6Step284HeadFAfter

private theorem s6Step284HeadGv_Incoming : rowsOwned s6Step284HeadGvBefore [s6Step284HeadGvRow,s6Step284HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step284HeadGRow,s6Step284HeadFRow,s6Step284HeadGvRow,s6Step284HeadFvRow] 2 s6Step284HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step284HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step284HeadGv_Outgoing : rowsOwned s6Step284HeadFvAfter [s6Step284HeadGvOut,s6Step284HeadFvOut] :=
  hmrRows_owned_drop s6Step284HeadFvAfter [s6Step284HeadGOut,s6Step284HeadFOut,s6Step284HeadGvOut,s6Step284HeadFvOut] 2 s6Step284HeadBank_outgoingOwned

private theorem s6Step284HeadGv_distinct : (s6Step284HeadGvRow.sign::s6Step284HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step284HeadGv_owned : (s6Step284HeadGvRow.sign::s6Step284HeadGvRow.payload).toFinset⊆s6Step284HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step284HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step284HeadGv_reserved : s6Step284HeadGvBefore.reserve s6Step284HeadGvFresh.toFinset=some s6Step284HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step284HeadGvFresh,arenaWires]
  · norm_num [s6Step284HeadGvBefore,s6Step284HeadFAfter,s6Step284HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step284HeadGvAfter,s6Step284HeadGvBefore,s6Step284HeadFAfter,s6Step284HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step284HeadGv_checked : planRowResizeLog s6Step284HeadGvBefore s6Step284HeadGvRow 158 s6Step284HeadGvFresh=
    some (s6Step284HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 807],775⟩,growRow 775 s6Step284HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step284HeadGvBefore s6Step284HeadGvAfter s6Step284HeadGvRow 158 s6Step284HeadGvFresh
    s6Step284HeadGv_distinct s6Step284HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step284HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step284HeadGvRow.payload++s6Step284HeadGvFresh) s6Step284HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 807],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step284HeadBank_rows : planWindowRowsLog s6Step284HeadGBefore [(s6Step284HeadGRow,130),(s6Step284HeadFRow,130),(s6Step284HeadGvRow,158),(s6Step284HeadFvRow,158)] [s6Step284HeadGFresh,s6Step284HeadFFresh,s6Step284HeadGvFresh,s6Step284HeadFvFresh]=
    some (s6Step284HeadFvAfter,[s6Step284HeadGOut,s6Step284HeadFOut,s6Step284HeadGvOut,s6Step284HeadFvOut],(growRow 777 s6Step284HeadGFresh ++ (growRow 795 s6Step284HeadFFresh ++ (growRow 775 s6Step284HeadGvFresh ++ (growRow 776 s6Step284HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step284HeadFvAfter [] []=some (s6Step284HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step284HeadFvBefore s6Step284HeadFvAfter s6Step284HeadFvAfter
    s6Step284HeadFvRow s6Step284HeadFvOut 158 s6Step284HeadFvFresh [] [] []
    (growRow 776 s6Step284HeadFvFresh) ([]) s6Step284HeadFv_Incoming s6Step284HeadFv_checked h4 s6Step284HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step284HeadGvBefore s6Step284HeadGvAfter s6Step284HeadFvAfter
    s6Step284HeadGvRow s6Step284HeadGvOut 158 s6Step284HeadGvFresh [(s6Step284HeadFvRow,158)] [s6Step284HeadFvFresh] [s6Step284HeadFvOut]
    (growRow 775 s6Step284HeadGvFresh) ((growRow 776 s6Step284HeadFvFresh ++ [])) s6Step284HeadGv_Incoming s6Step284HeadGv_checked h3 s6Step284HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step284HeadFBefore s6Step284HeadFAfter s6Step284HeadFvAfter
    s6Step284HeadFRow s6Step284HeadFOut 130 s6Step284HeadFFresh [(s6Step284HeadGvRow,158),(s6Step284HeadFvRow,158)] [s6Step284HeadGvFresh,s6Step284HeadFvFresh] [s6Step284HeadGvOut,s6Step284HeadFvOut]
    (growRow 795 s6Step284HeadFFresh) ((growRow 775 s6Step284HeadGvFresh ++ (growRow 776 s6Step284HeadFvFresh ++ []))) s6Step284HeadF_Incoming s6Step284HeadF_checked h2 s6Step284HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step284HeadGBefore s6Step284HeadGAfter s6Step284HeadFvAfter
    s6Step284HeadGRow s6Step284HeadGOut 130 s6Step284HeadGFresh [(s6Step284HeadFRow,130),(s6Step284HeadGvRow,158),(s6Step284HeadFvRow,158)] [s6Step284HeadFFresh,s6Step284HeadGvFresh,s6Step284HeadFvFresh] [s6Step284HeadFOut,s6Step284HeadGvOut,s6Step284HeadFvOut]
    (growRow 777 s6Step284HeadGFresh) ((growRow 795 s6Step284HeadFFresh ++ (growRow 775 s6Step284HeadGvFresh ++ (growRow 776 s6Step284HeadFvFresh ++ [])))) s6Step284HeadG_Incoming s6Step284HeadG_checked h1 s6Step284HeadG_Outgoing
  exact h0

private theorem s6Step284HeadBank_checked : compileHmrBankResizeLog .headroom s6Step284HeadGBefore ⟨s6Step284HeadFRow,s6Step284HeadGRow,s6Step284HeadFvRow,s6Step284HeadGvRow⟩ ⟨130,130,158,158⟩ [s6Step284HeadGFresh,s6Step284HeadFFresh,s6Step284HeadGvFresh,s6Step284HeadFvFresh]=
    some (s6Step284HeadFvAfter,⟨s6Step284HeadFOut,s6Step284HeadGOut,s6Step284HeadFvOut,s6Step284HeadGvOut⟩,(growRow 777 s6Step284HeadGFresh ++ (growRow 795 s6Step284HeadFFresh ++ (growRow 775 s6Step284HeadGvFresh ++ (growRow 776 s6Step284HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step284HeadBank_rows]
  rfl

private theorem s6Step284Front_checked : compileHmrSourceFrontLog s6Step284EntryFBefore s6Step284FrontBank 129 157 ⟨128,128,157,157⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step284FrontLog=some s6Step284FrontPlan := by
  have pairEq : s6Step284FrontPair=⟨s6Step284HeadFRow,s6Step284HeadGRow,s6Step284HeadFvRow,s6Step284HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step284FrontHead=⟨s6Step284ExitFRow,s6Step284ExitGRow,s6Step284ExitFvRow,s6Step284ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step284Add0A=s6Step284FrontHead.f.wires := by decide +kernel
  have gEq : s6Step284Add0B=s6Step284FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step284Add1A=s6Step284FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step284Add1B=s6Step284FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step284EntryFBefore s6Step284FrontBank 129 157 ⟨128,128,157,157⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step284FrontLog s6Step284FrontPlan
  · exact s6Step284Front_entry
  · exact s6Step284EntryBank_checked
  · exact s6Step284Front_sigma
  · rfl
  · exact s6Step284Front_branch
  · rfl
  · simpa only [s6Step284FrontPlan,pairEq] using s6Step284HeadBank_checked
  · simpa only [s6Step284FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step284F4_checked
  · exact s6Step284Counter_checked
  · rfl
  · simpa only [s6Step284FrontPlan,headEq] using s6Step284ExitBank_checked

private theorem s6Step284Complete_explicit_checked : compileHmrEarlyStepLog s6Step284EntryFBefore s6Step284FrontBank 129 157 ⟨128,128,157,157⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step284CompleteLog=some s6Step284CompletePlan := by
  let Q := s6Step284EarlyControlPlan
  have hq := s6Step284EarlyControl_plan_checked
  have fv1 : s6Step284CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step284CompleteOut.fv.payload[2]?.getD s6Step284CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step284CompleteOut.fv.payload[3]?.getD s6Step284CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step284CompleteOut.fv.payload[4]?.getD s6Step284CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step284EntryFBefore s6Step284EarlyControlArena s6Step284FrontBank 129 157 ⟨128,128,157,157⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step284CompleteLog s6Step284FrontPlan Q
    s6Step284Front_checked s6Step284Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step284Complete_owned s6Step284Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step284EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 887 s6Step284CompleteOut.fv.second (s6Step284CompleteOut.fv.payload[2]?.getD s6Step284CompleteOut.fv.sign) (s6Step284CompleteOut.fv.payload[3]?.getD s6Step284CompleteOut.fv.sign) (s6Step284CompleteOut.fv.payload[4]?.getD s6Step284CompleteOut.fv.sign) 873 54 s6Step284EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep284Arena : Arena := s6Step284EntryFBefore
def s6PrivateStep284Bank : WindowBank := s6Step284FrontBank
def s6PrivateStep284Spec : HmrSourceWalkStepLog := ⟨129,157,⟨128,128,157,157⟩,54,.early s6Step284CompleteLog⟩
def s6PrivateStep284Plan : HmrSourceStepPlan := .early s6Step284CompletePlan
theorem s6PrivateStep284_source : s6PrivateStep284Spec=s6ObservedLogs272[12] := rfl
theorem s6PrivateStep284_checked : compileHmrSourceStepLog s6PrivateStep284Arena s6PrivateStep284Bank
    s6PrivateStep284Spec.fgWidth s6PrivateStep284Spec.vWidth s6PrivateStep284Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]
    6 498 284 s6PrivateStep284Spec.need none s6PrivateStep284Spec.log=some s6PrivateStep284Plan := by
  change compileHmrSourceStepLog s6Step284EntryFBefore s6Step284FrontBank 129 157 ⟨128,128,157,157⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 6 498 284 54 none (.early s6Step284CompleteLog)=some (.early s6Step284CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 284<498)]
  rw [s6Step284Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
