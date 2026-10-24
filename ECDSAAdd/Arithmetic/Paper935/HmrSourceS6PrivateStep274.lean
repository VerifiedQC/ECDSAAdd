import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep272
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

private def s6Step274CompleteMoves : List (Wire × Wire) := [(802,133),(881,389)]

private def s6Step274EarlyControlLog : HmrEarlyControlLog := ⟨[881, 802, 867, 927, 779],[813],[809],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step274FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[779], [927], [867], [780]],[[], [], [], []]⟩,[877],[784],[813],[809],[830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 809, 830, 805]⟩

private def s6Step274CompleteLog : HmrEarlyStepLog := ⟨s6Step274FrontLog,s6Step274CompleteMoves,s6Step274EarlyControlLog⟩

private def s6Step274ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388],795⟩

private def s6Step274ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780],776⟩

private def s6Step274ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132],777⟩

private def s6Step274ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838],775⟩

private def s6Step274FrontOut : WindowBank := ⟨s6Step274ExitFOut,s6Step274ExitGOut,s6Step274ExitFvOut,s6Step274ExitGvOut⟩

private def s6Step274CompleteOut : WindowBank := s6Step274FrontOut.repacked s6Step274CompleteMoves

private def s6Step274EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step274EarlyControlPositiveArena,[813],s6Step274EarlyControlEqualityArena,[809],⟨⟨877,false⟩,[⟨⟨813,false⟩,809⟩]⟩⟩

private def s6Step274EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,881⟩,⟨⟨772,false⟩,802⟩,⟨⟨771,false⟩,867⟩,⟨⟨770,false⟩,927⟩,⟨⟨769,false⟩,779⟩]⟩

private def s6Step274EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step274EarlyControlZeroArena,s6Step274EarlyControlZeroPlan,s6Step274EarlyControlClassPlan,s6Step274EarlyControlFlagArena,s6Step274EarlyControlFittedArena,s6Step274EarlyControlHistoryArena,s6Step274EarlyControlSigmaArena,s6Step274EarlyControlOutputArena,s6Step274EarlyControlLog⟩

private def s6Step274CounterWork : List Wire := [813, 809, 830, 805]

private theorem s6Step274Counter_bounded : s6Step274CounterWork.toFinset⊆arenaWires := by norm_num [s6Step274CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step274HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274CounterDuring : Arena := ⟨s6Step274HeadFvAfter.live∪s6Step274CounterWork.toFinset,Finset.union_subset s6Step274HeadFvAfter.bounded s6Step274Counter_bounded⟩

private def s6Step274EntryFFresh : List Wire := []

private def s6Step274EntryFvFresh : List Wire := []

private def s6Step274EntryGFresh : List Wire := []

private def s6Step274EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274EntryGvAfter : Arena := s6Step274EntryFBefore

private def s6Step274EntryGvFresh : List Wire := []

private def s6Step274ExitFExtra : List Wire := [389, 927]

private def s6Step274ExitGExtra : List Wire := [133, 779]

private def s6Step274ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<389) ∨ (390≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274ExitGvExtra : List Wire := [867]

private def s6Step274Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step274Add0_bounded : s6Step274Add0Work.toFinset⊆arenaWires := by
  have h : s6Step274Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step274Add0During : Arena := ⟨s6Step274Add0Arena.live∪s6Step274Add0Work.toFinset,Finset.union_subset s6Step274Add0Arena.bounded s6Step274Add0_bounded⟩

private def s6Step274Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step274Add1_bounded : s6Step274Add1Work.toFinset⊆arenaWires := by
  have h : s6Step274Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step274Add1During : Arena := ⟨s6Step274Add1Arena.live∪s6Step274Add1Work.toFinset,Finset.union_subset s6Step274Add1Arena.bounded s6Step274Add1_bounded⟩

private def s6Step274F4FlagArena : Arena := ⟨s6Step274HeadFvAfter.live∪{813},Finset.union_subset s6Step274HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step274F4Plan : HmrHybridF4Plan := ⟨s6Step274F4FlagArena,[813],s6Step274Add0Arena,[809],s6Step274Add0During,s6Step274Add0Work,s6Step274Add1During,s6Step274Add1Work⟩

private def s6Step274HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 927],795⟩

private def s6Step274HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780],776⟩

private def s6Step274HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 779],777⟩

private def s6Step274HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 867],775⟩

private def s6Step274FrontHead : WindowBank := ⟨s6Step274HeadFOut,s6Step274HeadGOut,s6Step274HeadFvOut,s6Step274HeadGvOut⟩

private def s6Step274EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389],795⟩

private def s6Step274EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩

private def s6Step274EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],777⟩

private def s6Step274EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838],775⟩

private def s6Step274FrontPair : WindowBank := ⟨s6Step274EntryFOut,s6Step274EntryGOut,s6Step274EntryFvOut,s6Step274EntryGvOut⟩

private def s6Step274FrontSigmaArena : Arena := ⟨s6Step274EntryGvAfter.live∪{877},Finset.union_subset s6Step274EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step274HeadFFresh : List Wire := [927]

private def s6Step274HeadFvFresh : List Wire := [780]

private def s6Step274HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274HeadGFresh : List Wire := [779]

private def s6Step274HeadGvFresh : List Wire := [867]

private def s6Step274FrontPlan : HmrSourceFront := ⟨s6Step274EntryGvAfter,s6Step274FrontPair,(growRow 795 s6Step274EntryFFresh ++ (growRow 777 s6Step274EntryGFresh ++ (growRow 776 s6Step274EntryFvFresh ++ (growRow 775 s6Step274EntryGvFresh ++ [])))),s6Step274FrontSigmaArena,[877],s6Step274HeadGBefore,[784],
  s6Step274HeadFvAfter,s6Step274FrontHead,(growRow 777 s6Step274HeadGFresh ++ (growRow 795 s6Step274HeadFFresh ++ (growRow 775 s6Step274HeadGvFresh ++ (growRow 776 s6Step274HeadFvFresh ++ [])))),s6Step274F4Plan,s6Step274CounterDuring,s6Step274CounterWork,s6Step274ExitGvAfter,s6Step274FrontOut,(shrinkRow 777 s6Step274ExitGExtra ++ (shrinkRow 795 s6Step274ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step274ExitGvExtra ++ []))))⟩

private def s6Step274CompletePlan : HmrEarlyStepPlan := ⟨s6Step274FrontPlan,s6Step274EarlyControlArena,s6Step274EarlyControlPlan,s6Step274CompleteMoves⟩

private theorem s6Step274Complete_apart : List.Disjoint (s6Step274CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [877, 784, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] := by
  have nd : ((s6Step274CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[877, 784, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step274Complete_owned : (s6Step274CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step274EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step274CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,389),(390,779),(780,782),(783,790),(791,792),(793,797),(799,800),(803,805),(806,808),(810,811),(814,815),(818,819),(821,830),(831,832),(833,842),(843,849),(850,867),(868,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step274CompleteRelocationMove0Borrowed : Arena := ⟨s6Step274ExitGvAfter.live∪{133},Finset.union_subset s6Step274ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step274CompleteRelocationMove1Borrowed : Arena := ⟨s6Step274CompleteRelocationMove0After.live∪{389},Finset.union_subset s6Step274CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step274CompleteRelocation_move0_owned : 802∈s6Step274ExitGvAfter.live := by norm_num [s6Step274ExitGvAfter,arenaWires]

private theorem s6Step274CompleteRelocation_move0_reserve : s6Step274ExitGvAfter.reserve {133}=some s6Step274CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step274ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step274CompleteRelocation_move0_retire : s6Step274CompleteRelocationMove0Borrowed.retireSet {802}=s6Step274CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step274CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step274CompleteRelocationMove0Borrowed,s6Step274ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step274CompleteRelocation_move1_owned : 881∈s6Step274CompleteRelocationMove0After.live := by norm_num [s6Step274CompleteRelocationMove0After,arenaWires]

private theorem s6Step274CompleteRelocation_move1_reserve : s6Step274CompleteRelocationMove0After.reserve {389}=some s6Step274CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step274CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step274CompleteRelocation_move1_retire : s6Step274CompleteRelocationMove1Borrowed.retireSet {881}=s6Step274EarlyControlArena := by
  unfold Arena.retireSet s6Step274EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step274CompleteRelocationMove1Borrowed,s6Step274CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step274CompleteRelocation_checked : s6Step274ExitGvAfter.checkRepack [(802,133),(881,389)]=some s6Step274EarlyControlArena := by
  have tail2 : s6Step274EarlyControlArena.checkRepack []=some s6Step274EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step274CompleteRelocationMove0After s6Step274CompleteRelocationMove1Borrowed s6Step274EarlyControlArena s6Step274EarlyControlArena 881 389 []
    s6Step274CompleteRelocation_move1_owned s6Step274CompleteRelocation_move1_reserve s6Step274CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step274ExitGvAfter s6Step274CompleteRelocationMove0Borrowed s6Step274CompleteRelocationMove0After s6Step274EarlyControlArena 802 133 [(881,389)]
    s6Step274CompleteRelocation_move0_owned s6Step274CompleteRelocation_move0_reserve s6Step274CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step274Complete_repack : s6Step274ExitGvAfter.checkRepack s6Step274CompleteMoves=some s6Step274EarlyControlArena := by
  simpa only [s6Step274CompleteMoves] using s6Step274CompleteRelocation_checked

private theorem s6Step274EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s6Step274EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EarlyControl_branch : compileHmrBranchRetirement s6Step274EarlyControlSigmaArena 784=some s6Step274EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step274EarlyControl_branchOwned
  · ext q
    simp [s6Step274EarlyControlOutputArena,s6Step274EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step274EarlyControl_classEqualityBorrow : s6Step274EarlyControlPositiveArena.checkBorrow (([877, 813] : List Wire).length-1) s6Step274EarlyControlLog.classWork=some s6Step274EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step274EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step274EarlyControlEqualityArena,s6Step274EarlyControlPositiveArena,s6Step274EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step274EarlyControl_classEqualityOwned : ([877, 813] : List Wire).toFinset⊆s6Step274EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EarlyControl_classEquality : compileHmrEqualityLog s6Step274EarlyControlPositiveArena [877, 813] 0 s6Step274EarlyControlLog.classWork=some (s6Step274EarlyControlEqualityArena,s6Step274EarlyControlLog.classWork,s6Step274EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step274EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step274EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step274EarlyControl_classOwned : ([769, 779, 877] : List Wire).toFinset⊆s6Step274EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EarlyControl_positiveBorrow : s6Step274EarlyControlZeroArena.checkBorrow (1) s6Step274EarlyControlLog.positiveWork=some s6Step274EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step274EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step274EarlyControlPositiveArena,s6Step274EarlyControlZeroArena,s6Step274EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step274EarlyControl_class : compileHmrSourceClassLog s6Step274EarlyControlZeroArena false 769 s6Step274EarlyControlZeroPlan.top 0 877 s6Step274EarlyControlLog.positiveWork s6Step274EarlyControlLog.classWork=some s6Step274EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step274EarlyControlClassPlan s6Step274EarlyControlZeroArena false 769 s6Step274EarlyControlZeroPlan.top 0 877
  constructor
  · decide +kernel
  · exact s6Step274EarlyControl_classOwned
  · exact s6Step274EarlyControl_positiveBorrow
  · exact s6Step274EarlyControl_classEquality

private theorem s6Step274EarlyControl_entryRecordOwned : ([784, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step274EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EarlyControl_entrySigmaOwned : ([877, 254] : List Wire).toFinset⊆s6Step274EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EarlyControl_fitBorrow : s6Step274EarlyControlFlagArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step274EarlyControlLog.recordFresh=some s6Step274EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step274EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step274EarlyControlFittedArena,s6Step274EarlyControlFlagArena,s6Step274EarlyControlLog,arenaWires]

private theorem s6Step274EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step274EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EarlyControl_fit : compileHmrRecordGrowLog s6Step274EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step274EarlyControlLog.recordFresh=some s6Step274EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step274EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step274EarlyControl_fitBorrow

private theorem s6Step274EarlyControl_flagsBorrow : s6Step274EarlyControlEqualityArena.checkBorrow (6) s6Step274EarlyControlLog.flagWork=some s6Step274EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step274EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step274EarlyControlFlagArena,s6Step274EarlyControlEqualityArena,s6Step274EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step274EarlyControl_flagsOwned : ([809, 253, 252, 251] : List Wire).toFinset⊆s6Step274EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EarlyControl_flags : compileHmrFlagsLog s6Step274EarlyControlClassPlan.equalityArena s6Step274EarlyControlClassPlan.equality.top 253 252 251 s6Step274EarlyControlLog.flagWork=some s6Step274EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step274EarlyControl_flagsOwned⟩
  · exact s6Step274EarlyControl_flagsBorrow

private theorem s6Step274EarlyControl_historyBorrow : s6Step274EarlyControlArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step274EarlyControlLog.recordFresh=some s6Step274EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step274EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step274EarlyControlHistoryArena,s6Step274EarlyControlArena,s6Step274EarlyControlLog,arenaWires]

private theorem s6Step274EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step274EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EarlyControl_history : compileHmrRecordGrowLog s6Step274EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step274EarlyControlLog.recordFresh=some s6Step274EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step274EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step274EarlyControl_historyBorrow

private theorem s6Step274EarlyControl_sigmaOwned : ([254, 877] : List Wire).toFinset⊆s6Step274EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EarlyControl_sigmaReleaseOwned : ([877] : List Wire).toFinset⊆s6Step274EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EarlyControl_sigmaRelease : s6Step274EarlyControlHistoryArena.release {877} (fun _ => false)=some s6Step274EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step274EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step274EarlyControlSigmaArena,s6Step274EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step274EarlyControl_sigma : compileHmrSigmaDropLog s6Step274EarlyControlHistoryArena false 0 0 254 877 []=some s6Step274EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step274EarlyControl_sigmaOwned⟩
  · exact s6Step274EarlyControl_sigmaRelease

private theorem s6Step274EarlyControl_zeroBorrow : s6Step274EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step274EarlyControlLog.zeroWork=some s6Step274EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step274EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step274EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step274EarlyControlZeroArena,s6Step274EarlyControlArena,s6Step274EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step274EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step274EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step274EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EarlyControl_zero : compileHmrEqualityLog s6Step274EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step274EarlyControlLog.zeroWork=some (s6Step274EarlyControlZeroArena,s6Step274EarlyControlLog.zeroWork,s6Step274EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step274EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step274EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step274EarlyControl_logged : s6Step274EarlyControlPlan.Logged s6Step274EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 254 253 252 251 784 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step274EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step274EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step274EarlyControl_zero
  · exact s6Step274EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step274EarlyControl_flags
  · exact s6Step274EarlyControl_fit
  · exact s6Step274EarlyControl_history
  · exact s6Step274EarlyControl_sigma
  · exact s6Step274EarlyControl_branch

private theorem s6Step274EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step274EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 254 253 252 251 784 53 s6Step274EarlyControlLog=some s6Step274EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step274EarlyControlPlan s6Step274EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 254 253 252 251 784 53 s6Step274EarlyControl_logged

private def s6Step274EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389],795⟩

private def s6Step274EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩

private def s6Step274EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],777⟩

private def s6Step274EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838],775⟩

private def s6Step274FrontBank : WindowBank := ⟨s6Step274EntryFRow,s6Step274EntryGRow,s6Step274EntryFvRow,s6Step274EntryGvRow⟩

private def s6Step274Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 927, 795]

private def s6Step274Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 779, 777]

private def s6Step274Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 776]

private def s6Step274Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 867, 775]

private theorem s6Step274Counter_apart : Disjoint s6Step274HeadFvAfter.live s6Step274CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step274HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274Counter_borrowed : s6Step274HeadFvAfter.checkBorrow 4 s6Step274CounterWork=some s6Step274CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step274HeadFvAfter s6Step274CounterDuring s6Step274CounterWork.toFinset s6Step274Counter_bounded s6Step274Counter_apart rfl

private theorem s6Step274Counter_owned : (877::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step274HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step274HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274Counter_checked : compileHmrCounterStepLog s6Step274HeadFvAfter true 877 [774, 773, 772, 771, 770, 769] s6Step274CounterWork=some s6Step274CounterDuring := by
  have owned : ∀q∈877::[774, 773, 772, 771, 770, 769],q∈s6Step274HeadFvAfter.live := fun q hq => s6Step274Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step274Counter_borrowed

private def s6Step274EntryFAfter : Arena := s6Step274EntryFBefore

private theorem s6Step274EntryBank_incomingDistinct : ([s6Step274EntryFRow,s6Step274EntryGRow,s6Step274EntryFvRow,s6Step274EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274EntryF_Incoming : rowsOwned s6Step274EntryFBefore [s6Step274EntryFRow,s6Step274EntryGRow,s6Step274EntryFvRow,s6Step274EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274EntryFRow,s6Step274EntryGRow,s6Step274EntryFvRow,s6Step274EntryGvRow] 0 s6Step274EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274EntryBank_outgoingOwned : rowsOwned s6Step274EntryGvAfter [s6Step274EntryFOut,s6Step274EntryGOut,s6Step274EntryFvOut,s6Step274EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step274EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274EntryF_Outgoing : rowsOwned s6Step274EntryGvAfter [s6Step274EntryFOut,s6Step274EntryGOut,s6Step274EntryFvOut,s6Step274EntryGvOut] :=
  hmrRows_owned_drop s6Step274EntryGvAfter [s6Step274EntryFOut,s6Step274EntryGOut,s6Step274EntryFvOut,s6Step274EntryGvOut] 0 s6Step274EntryBank_outgoingOwned

private theorem s6Step274EntryF_distinct : (s6Step274EntryFRow.sign::s6Step274EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274EntryF_owned : (s6Step274EntryFRow.sign::s6Step274EntryFRow.payload).toFinset⊆s6Step274EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EntryF_reserved : s6Step274EntryFBefore.reserve s6Step274EntryFFresh.toFinset=some s6Step274EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step274EntryFFresh,arenaWires]
  · norm_num [s6Step274EntryFBefore,s6Step274EntryFFresh,arenaWires]
  · simp only [s6Step274EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step274EntryF_checked : planRowResizeLog s6Step274EntryFBefore s6Step274EntryFRow 134 s6Step274EntryFFresh=
    some (s6Step274EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389],795⟩,growRow 795 s6Step274EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step274EntryFBefore s6Step274EntryFAfter s6Step274EntryFRow 134 s6Step274EntryFFresh
    s6Step274EntryF_distinct s6Step274EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step274EntryF_reserved
  have rowEq : WindowRow.mk (s6Step274EntryFRow.payload++s6Step274EntryFFresh) s6Step274EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step274EntryFvAfter : Arena := s6Step274EntryFBefore

private def s6Step274EntryFvBefore : Arena := s6Step274EntryFBefore

private theorem s6Step274EntryFv_Incoming : rowsOwned s6Step274EntryFvBefore [s6Step274EntryFvRow,s6Step274EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274EntryFRow,s6Step274EntryGRow,s6Step274EntryFvRow,s6Step274EntryGvRow] 2 s6Step274EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274EntryFv_Outgoing : rowsOwned s6Step274EntryGvAfter [s6Step274EntryFvOut,s6Step274EntryGvOut] :=
  hmrRows_owned_drop s6Step274EntryGvAfter [s6Step274EntryFOut,s6Step274EntryGOut,s6Step274EntryFvOut,s6Step274EntryGvOut] 2 s6Step274EntryBank_outgoingOwned

private theorem s6Step274EntryFv_distinct : (s6Step274EntryFvRow.sign::s6Step274EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274EntryFv_owned : (s6Step274EntryFvRow.sign::s6Step274EntryFvRow.payload).toFinset⊆s6Step274EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EntryFv_reserved : s6Step274EntryFvBefore.reserve s6Step274EntryFvFresh.toFinset=some s6Step274EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step274EntryFvFresh,arenaWires]
  · norm_num [s6Step274EntryFvBefore,s6Step274EntryFBefore,s6Step274EntryFvFresh,arenaWires]
  · simp only [s6Step274EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step274EntryFv_checked : planRowResizeLog s6Step274EntryFvBefore s6Step274EntryFvRow 152 s6Step274EntryFvFresh=
    some (s6Step274EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩,growRow 776 s6Step274EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step274EntryFvBefore s6Step274EntryFvAfter s6Step274EntryFvRow 152 s6Step274EntryFvFresh
    s6Step274EntryFv_distinct s6Step274EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step274EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step274EntryFvRow.payload++s6Step274EntryFvFresh) s6Step274EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step274EntryGAfter : Arena := s6Step274EntryFBefore

private def s6Step274EntryGBefore : Arena := s6Step274EntryFBefore

private theorem s6Step274EntryG_Incoming : rowsOwned s6Step274EntryGBefore [s6Step274EntryGRow,s6Step274EntryFvRow,s6Step274EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274EntryFRow,s6Step274EntryGRow,s6Step274EntryFvRow,s6Step274EntryGvRow] 1 s6Step274EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274EntryG_Outgoing : rowsOwned s6Step274EntryGvAfter [s6Step274EntryGOut,s6Step274EntryFvOut,s6Step274EntryGvOut] :=
  hmrRows_owned_drop s6Step274EntryGvAfter [s6Step274EntryFOut,s6Step274EntryGOut,s6Step274EntryFvOut,s6Step274EntryGvOut] 1 s6Step274EntryBank_outgoingOwned

private theorem s6Step274EntryG_distinct : (s6Step274EntryGRow.sign::s6Step274EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274EntryG_owned : (s6Step274EntryGRow.sign::s6Step274EntryGRow.payload).toFinset⊆s6Step274EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EntryG_reserved : s6Step274EntryGBefore.reserve s6Step274EntryGFresh.toFinset=some s6Step274EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step274EntryGFresh,arenaWires]
  · norm_num [s6Step274EntryGBefore,s6Step274EntryFBefore,s6Step274EntryGFresh,arenaWires]
  · simp only [s6Step274EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step274EntryG_checked : planRowResizeLog s6Step274EntryGBefore s6Step274EntryGRow 134 s6Step274EntryGFresh=
    some (s6Step274EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],777⟩,growRow 777 s6Step274EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step274EntryGBefore s6Step274EntryGAfter s6Step274EntryGRow 134 s6Step274EntryGFresh
    s6Step274EntryG_distinct s6Step274EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step274EntryG_reserved
  have rowEq : WindowRow.mk (s6Step274EntryGRow.payload++s6Step274EntryGFresh) s6Step274EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step274EntryGvBefore : Arena := s6Step274EntryFBefore

private theorem s6Step274EntryGv_Incoming : rowsOwned s6Step274EntryGvBefore [s6Step274EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274EntryFRow,s6Step274EntryGRow,s6Step274EntryFvRow,s6Step274EntryGvRow] 3 s6Step274EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274EntryGv_Outgoing : rowsOwned s6Step274EntryGvAfter [s6Step274EntryGvOut] :=
  hmrRows_owned_drop s6Step274EntryGvAfter [s6Step274EntryFOut,s6Step274EntryGOut,s6Step274EntryFvOut,s6Step274EntryGvOut] 3 s6Step274EntryBank_outgoingOwned

private theorem s6Step274EntryGv_distinct : (s6Step274EntryGvRow.sign::s6Step274EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274EntryGv_owned : (s6Step274EntryGvRow.sign::s6Step274EntryGvRow.payload).toFinset⊆s6Step274EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274EntryGv_reserved : s6Step274EntryGvBefore.reserve s6Step274EntryGvFresh.toFinset=some s6Step274EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step274EntryGvFresh,arenaWires]
  · norm_num [s6Step274EntryGvBefore,s6Step274EntryFBefore,s6Step274EntryGvFresh,arenaWires]
  · simp only [s6Step274EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step274EntryGv_checked : planRowResizeLog s6Step274EntryGvBefore s6Step274EntryGvRow 152 s6Step274EntryGvFresh=
    some (s6Step274EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838],775⟩,growRow 775 s6Step274EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step274EntryGvBefore s6Step274EntryGvAfter s6Step274EntryGvRow 152 s6Step274EntryGvFresh
    s6Step274EntryGv_distinct s6Step274EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step274EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step274EntryGvRow.payload++s6Step274EntryGvFresh) s6Step274EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step274EntryBank_rows : planWindowRowsLog s6Step274EntryFBefore [(s6Step274EntryFRow,134),(s6Step274EntryGRow,134),(s6Step274EntryFvRow,152),(s6Step274EntryGvRow,152)] [s6Step274EntryFFresh,s6Step274EntryGFresh,s6Step274EntryFvFresh,s6Step274EntryGvFresh]=
    some (s6Step274EntryGvAfter,[s6Step274EntryFOut,s6Step274EntryGOut,s6Step274EntryFvOut,s6Step274EntryGvOut],(growRow 795 s6Step274EntryFFresh ++ (growRow 777 s6Step274EntryGFresh ++ (growRow 776 s6Step274EntryFvFresh ++ (growRow 775 s6Step274EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step274EntryGvAfter [] []=some (s6Step274EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step274EntryGvBefore s6Step274EntryGvAfter s6Step274EntryGvAfter
    s6Step274EntryGvRow s6Step274EntryGvOut 152 s6Step274EntryGvFresh [] [] []
    (growRow 775 s6Step274EntryGvFresh) ([]) s6Step274EntryGv_Incoming s6Step274EntryGv_checked h4 s6Step274EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step274EntryFvBefore s6Step274EntryFvAfter s6Step274EntryGvAfter
    s6Step274EntryFvRow s6Step274EntryFvOut 152 s6Step274EntryFvFresh [(s6Step274EntryGvRow,152)] [s6Step274EntryGvFresh] [s6Step274EntryGvOut]
    (growRow 776 s6Step274EntryFvFresh) ((growRow 775 s6Step274EntryGvFresh ++ [])) s6Step274EntryFv_Incoming s6Step274EntryFv_checked h3 s6Step274EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step274EntryGBefore s6Step274EntryGAfter s6Step274EntryGvAfter
    s6Step274EntryGRow s6Step274EntryGOut 134 s6Step274EntryGFresh [(s6Step274EntryFvRow,152),(s6Step274EntryGvRow,152)] [s6Step274EntryFvFresh,s6Step274EntryGvFresh] [s6Step274EntryFvOut,s6Step274EntryGvOut]
    (growRow 777 s6Step274EntryGFresh) ((growRow 776 s6Step274EntryFvFresh ++ (growRow 775 s6Step274EntryGvFresh ++ []))) s6Step274EntryG_Incoming s6Step274EntryG_checked h2 s6Step274EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step274EntryFBefore s6Step274EntryFAfter s6Step274EntryGvAfter
    s6Step274EntryFRow s6Step274EntryFOut 134 s6Step274EntryFFresh [(s6Step274EntryGRow,134),(s6Step274EntryFvRow,152),(s6Step274EntryGvRow,152)] [s6Step274EntryGFresh,s6Step274EntryFvFresh,s6Step274EntryGvFresh] [s6Step274EntryGOut,s6Step274EntryFvOut,s6Step274EntryGvOut]
    (growRow 795 s6Step274EntryFFresh) ((growRow 777 s6Step274EntryGFresh ++ (growRow 776 s6Step274EntryFvFresh ++ (growRow 775 s6Step274EntryGvFresh ++ [])))) s6Step274EntryF_Incoming s6Step274EntryF_checked h1 s6Step274EntryF_Outgoing
  exact h0

private theorem s6Step274EntryBank_checked : compileHmrBankResizeLog .entry s6Step274EntryFBefore ⟨s6Step274EntryFRow,s6Step274EntryGRow,s6Step274EntryFvRow,s6Step274EntryGvRow⟩ ⟨134,134,152,152⟩ [s6Step274EntryFFresh,s6Step274EntryGFresh,s6Step274EntryFvFresh,s6Step274EntryGvFresh]=
    some (s6Step274EntryGvAfter,⟨s6Step274EntryFOut,s6Step274EntryGOut,s6Step274EntryFvOut,s6Step274EntryGvOut⟩,(growRow 795 s6Step274EntryFFresh ++ (growRow 777 s6Step274EntryGFresh ++ (growRow 776 s6Step274EntryFvFresh ++ (growRow 775 s6Step274EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step274EntryBank_rows]
  rfl

private def s6Step274ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<389) ∨ (390≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274ExitFBefore : Arena := s6Step274ExitGAfter

private def s6Step274ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 927],795⟩

private def s6Step274ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780],776⟩

private def s6Step274ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 779],777⟩

private def s6Step274ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 867],775⟩

private theorem s6Step274ExitBank_incomingDistinct : ([s6Step274ExitGRow,s6Step274ExitFRow,s6Step274ExitFvRow,s6Step274ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274ExitF_Incoming : rowsOwned s6Step274ExitFBefore [s6Step274ExitFRow,s6Step274ExitFvRow,s6Step274ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274ExitGRow,s6Step274ExitFRow,s6Step274ExitFvRow,s6Step274ExitGvRow] 1 s6Step274ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274ExitFBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274ExitBank_outgoingOwned : rowsOwned s6Step274ExitGvAfter [s6Step274ExitGOut,s6Step274ExitFOut,s6Step274ExitFvOut,s6Step274ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step274ExitGvAfter (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<389) ∨ (390≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274ExitF_Outgoing : rowsOwned s6Step274ExitGvAfter [s6Step274ExitFOut,s6Step274ExitFvOut,s6Step274ExitGvOut] :=
  hmrRows_owned_drop s6Step274ExitGvAfter [s6Step274ExitGOut,s6Step274ExitFOut,s6Step274ExitFvOut,s6Step274ExitGvOut] 1 s6Step274ExitBank_outgoingOwned

private theorem s6Step274ExitF_distinct : (s6Step274ExitFRow.sign::s6Step274ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274ExitF_owned : (s6Step274ExitFRow.sign::s6Step274ExitFRow.payload).toFinset⊆s6Step274ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274ExitFBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274ExitF_retired : s6Step274ExitFBefore.retireSet s6Step274ExitFExtra.toFinset=s6Step274ExitFAfter := by
  unfold Arena.retireSet s6Step274ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step274ExitFBefore,s6Step274ExitGAfter,s6Step274ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step274ExitF_checked : planRowResizeLog s6Step274ExitFBefore s6Step274ExitFRow 133 []=
    some (s6Step274ExitFAfter,s6Step274ExitFOut,shrinkRow 795 s6Step274ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step274ExitFBefore s6Step274ExitFRow 133 s6Step274ExitF_distinct s6Step274ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step274ExitFRow.payload.take 133) s6Step274ExitFRow.sign=s6Step274ExitFOut := by decide +kernel
  have hi : s6Step274ExitFRow.payload.drop 133=s6Step274ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step274ExitF_retired] at result
  exact result

private def s6Step274ExitFvAfter : Arena := s6Step274ExitFAfter

private def s6Step274ExitFvBefore : Arena := s6Step274ExitFAfter

private theorem s6Step274ExitFv_Incoming : rowsOwned s6Step274ExitFvBefore [s6Step274ExitFvRow,s6Step274ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274ExitGRow,s6Step274ExitFRow,s6Step274ExitFvRow,s6Step274ExitGvRow] 2 s6Step274ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274ExitFvBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<389) ∨ (390≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274ExitFv_Outgoing : rowsOwned s6Step274ExitGvAfter [s6Step274ExitFvOut,s6Step274ExitGvOut] :=
  hmrRows_owned_drop s6Step274ExitGvAfter [s6Step274ExitGOut,s6Step274ExitFOut,s6Step274ExitFvOut,s6Step274ExitGvOut] 2 s6Step274ExitBank_outgoingOwned

private theorem s6Step274ExitFv_distinct : (s6Step274ExitFvRow.sign::s6Step274ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274ExitFv_owned : (s6Step274ExitFvRow.sign::s6Step274ExitFvRow.payload).toFinset⊆s6Step274ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274ExitFvBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<389) ∨ (390≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274ExitFv_reserved : s6Step274ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step274ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step274ExitFv_checked : planRowResizeLog s6Step274ExitFvBefore s6Step274ExitFvRow 153 []=
    some (s6Step274ExitFvAfter,s6Step274ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step274ExitFvBefore s6Step274ExitFvAfter s6Step274ExitFvRow 153 []
    s6Step274ExitFv_distinct s6Step274ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step274ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step274ExitFvRow.payload++[]) s6Step274ExitFvRow.sign=s6Step274ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step274ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step274ExitG_Incoming : rowsOwned s6Step274ExitGBefore [s6Step274ExitGRow,s6Step274ExitFRow,s6Step274ExitFvRow,s6Step274ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274ExitGRow,s6Step274ExitFRow,s6Step274ExitFvRow,s6Step274ExitGvRow] 0 s6Step274ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274ExitG_Outgoing : rowsOwned s6Step274ExitGvAfter [s6Step274ExitGOut,s6Step274ExitFOut,s6Step274ExitFvOut,s6Step274ExitGvOut] :=
  hmrRows_owned_drop s6Step274ExitGvAfter [s6Step274ExitGOut,s6Step274ExitFOut,s6Step274ExitFvOut,s6Step274ExitGvOut] 0 s6Step274ExitBank_outgoingOwned

private theorem s6Step274ExitG_distinct : (s6Step274ExitGRow.sign::s6Step274ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274ExitG_owned : (s6Step274ExitGRow.sign::s6Step274ExitGRow.payload).toFinset⊆s6Step274ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274ExitG_retired : s6Step274ExitGBefore.retireSet s6Step274ExitGExtra.toFinset=s6Step274ExitGAfter := by
  unfold Arena.retireSet s6Step274ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step274ExitGBefore,s6Step274ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step274ExitG_checked : planRowResizeLog s6Step274ExitGBefore s6Step274ExitGRow 133 []=
    some (s6Step274ExitGAfter,s6Step274ExitGOut,shrinkRow 777 s6Step274ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step274ExitGBefore s6Step274ExitGRow 133 s6Step274ExitG_distinct s6Step274ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step274ExitGRow.payload.take 133) s6Step274ExitGRow.sign=s6Step274ExitGOut := by decide +kernel
  have hi : s6Step274ExitGRow.payload.drop 133=s6Step274ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step274ExitG_retired] at result
  exact result

private def s6Step274ExitGvBefore : Arena := s6Step274ExitFAfter

private theorem s6Step274ExitGv_Incoming : rowsOwned s6Step274ExitGvBefore [s6Step274ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274ExitGRow,s6Step274ExitFRow,s6Step274ExitFvRow,s6Step274ExitGvRow] 3 s6Step274ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274ExitGvBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<389) ∨ (390≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274ExitGv_Outgoing : rowsOwned s6Step274ExitGvAfter [s6Step274ExitGvOut] :=
  hmrRows_owned_drop s6Step274ExitGvAfter [s6Step274ExitGOut,s6Step274ExitFOut,s6Step274ExitFvOut,s6Step274ExitGvOut] 3 s6Step274ExitBank_outgoingOwned

private theorem s6Step274ExitGv_distinct : (s6Step274ExitGvRow.sign::s6Step274ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274ExitGv_owned : (s6Step274ExitGvRow.sign::s6Step274ExitGvRow.payload).toFinset⊆s6Step274ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274ExitGvBefore (fun q => (0≤q ∧ q<133) ∨ (134≤q ∧ q<389) ∨ (390≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274ExitGv_retired : s6Step274ExitGvBefore.retireSet s6Step274ExitGvExtra.toFinset=s6Step274ExitGvAfter := by
  unfold Arena.retireSet s6Step274ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step274ExitGvBefore,s6Step274ExitFAfter,s6Step274ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step274ExitGv_checked : planRowResizeLog s6Step274ExitGvBefore s6Step274ExitGvRow 152 []=
    some (s6Step274ExitGvAfter,s6Step274ExitGvOut,shrinkRow 775 s6Step274ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step274ExitGvBefore s6Step274ExitGvRow 152 s6Step274ExitGv_distinct s6Step274ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step274ExitGvRow.payload.take 152) s6Step274ExitGvRow.sign=s6Step274ExitGvOut := by decide +kernel
  have hi : s6Step274ExitGvRow.payload.drop 152=s6Step274ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step274ExitGv_retired] at result
  exact result

private theorem s6Step274ExitBank_rows : planWindowRowsLog s6Step274ExitGBefore [(s6Step274ExitGRow,133),(s6Step274ExitFRow,133),(s6Step274ExitFvRow,153),(s6Step274ExitGvRow,152)] [[],[],[],[]]=
    some (s6Step274ExitGvAfter,[s6Step274ExitGOut,s6Step274ExitFOut,s6Step274ExitFvOut,s6Step274ExitGvOut],(shrinkRow 777 s6Step274ExitGExtra ++ (shrinkRow 795 s6Step274ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step274ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step274ExitGvAfter [] []=some (s6Step274ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step274ExitGvBefore s6Step274ExitGvAfter s6Step274ExitGvAfter
    s6Step274ExitGvRow s6Step274ExitGvOut 152 [] [] [] []
    (shrinkRow 775 s6Step274ExitGvExtra) ([]) s6Step274ExitGv_Incoming s6Step274ExitGv_checked h4 s6Step274ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step274ExitFvBefore s6Step274ExitFvAfter s6Step274ExitGvAfter
    s6Step274ExitFvRow s6Step274ExitFvOut 153 [] [(s6Step274ExitGvRow,152)] [[]] [s6Step274ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step274ExitGvExtra ++ [])) s6Step274ExitFv_Incoming s6Step274ExitFv_checked h3 s6Step274ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step274ExitFBefore s6Step274ExitFAfter s6Step274ExitGvAfter
    s6Step274ExitFRow s6Step274ExitFOut 133 [] [(s6Step274ExitFvRow,153),(s6Step274ExitGvRow,152)] [[],[]] [s6Step274ExitFvOut,s6Step274ExitGvOut]
    (shrinkRow 795 s6Step274ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step274ExitGvExtra ++ []))) s6Step274ExitF_Incoming s6Step274ExitF_checked h2 s6Step274ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step274ExitGBefore s6Step274ExitGAfter s6Step274ExitGvAfter
    s6Step274ExitGRow s6Step274ExitGOut 133 [] [(s6Step274ExitFRow,133),(s6Step274ExitFvRow,153),(s6Step274ExitGvRow,152)] [[],[],[]] [s6Step274ExitFOut,s6Step274ExitFvOut,s6Step274ExitGvOut]
    (shrinkRow 777 s6Step274ExitGExtra) ((shrinkRow 795 s6Step274ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step274ExitGvExtra ++ [])))) s6Step274ExitG_Incoming s6Step274ExitG_checked h1 s6Step274ExitG_Outgoing
  exact h0

private theorem s6Step274ExitBank_checked : compileHmrBankResizeLog .exit s6Step274ExitGBefore ⟨s6Step274ExitFRow,s6Step274ExitGRow,s6Step274ExitFvRow,s6Step274ExitGvRow⟩ ⟨133,133,153,152⟩ [[],[],[],[]]=
    some (s6Step274ExitGvAfter,⟨s6Step274ExitFOut,s6Step274ExitGOut,s6Step274ExitFvOut,s6Step274ExitGvOut⟩,(shrinkRow 777 s6Step274ExitGExtra ++ (shrinkRow 795 s6Step274ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step274ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step274ExitBank_rows]
  rfl

private theorem s6Step274Add0_apart : Disjoint s6Step274Add0Arena.live s6Step274Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step274Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274Add0_card : s6Step274Add0Arena.live.card=899 := by
  decide +kernel

private theorem s6Step274Add0_borrowed : s6Step274Add0Arena.checkBorrow (hmrHybridCount s6Step274Add0Arena s6Step274Add0B.length) s6Step274Add0Work=some s6Step274Add0During := by
  have len : s6Step274Add0Work.length=hmrHybridCount s6Step274Add0Arena s6Step274Add0B.length := by
    rw [hmrHybridCount,s6Step274Add0_card]
    decide +kernel
  have nd : s6Step274Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step274Add0Arena s6Step274Add0During s6Step274Add0Work.toFinset s6Step274Add0_bounded s6Step274Add0_apart rfl

private theorem s6Step274Add0_distinct : (813::784::809::(s6Step274Add0A++s6Step274Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274Add0_owned : (813::784::809::(s6Step274Add0A++s6Step274Add0B)).toFinset⊆s6Step274Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step274Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274Add0_checked : compileHmrHybridCinLog s6Step274Add0Arena 784 813 809 s6Step274Add0A s6Step274Add0B s6Step274Add0Work=some s6Step274Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step274Add0Arena s6Step274Add0During 784 813 809 s6Step274Add0A s6Step274Add0B s6Step274Add0Work
    (by decide +kernel) (by decide +kernel) s6Step274Add0_distinct
    (fun q hq => s6Step274Add0_owned (List.mem_toFinset.mpr hq)) s6Step274Add0_borrowed

private theorem s6Step274Add1_apart : Disjoint s6Step274Add1Arena.live s6Step274Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step274Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274Add1_card : s6Step274Add1Arena.live.card=899 := by
  decide +kernel

private theorem s6Step274Add1_borrowed : s6Step274Add1Arena.checkBorrow (hmrHybridCount s6Step274Add1Arena s6Step274Add1B.length) s6Step274Add1Work=some s6Step274Add1During := by
  have len : s6Step274Add1Work.length=hmrHybridCount s6Step274Add1Arena s6Step274Add1B.length := by
    rw [hmrHybridCount,s6Step274Add1_card]
    decide +kernel
  have nd : s6Step274Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step274Add1Arena s6Step274Add1During s6Step274Add1Work.toFinset s6Step274Add1_bounded s6Step274Add1_apart rfl

private theorem s6Step274Add1_distinct : (813::784::809::(s6Step274Add1A++s6Step274Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274Add1_owned : (813::784::809::(s6Step274Add1A++s6Step274Add1B)).toFinset⊆s6Step274Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step274Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274Add1_checked : compileHmrHybridCinLog s6Step274Add1Arena 784 813 809 s6Step274Add1A s6Step274Add1B s6Step274Add1Work=some s6Step274Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step274Add1Arena s6Step274Add1During 784 813 809 s6Step274Add1A s6Step274Add1B s6Step274Add1Work
    (by decide +kernel) (by decide +kernel) s6Step274Add1_distinct
    (fun q hq => s6Step274Add1_owned (List.mem_toFinset.mpr hq)) s6Step274Add1_borrowed

private theorem s6Step274F4_apart : Disjoint (s6Step274Add0A++s6Step274Add0B).toFinset (s6Step274Add1A++s6Step274Add1B).toFinset := by
  have nd : ((s6Step274Add0A++s6Step274Add0B)++(s6Step274Add1A++s6Step274Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step274F4_carry : s6Step274F4FlagArena.checkBorrow 1 [809]=some s6Step274Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step274F4FlagArena,s6Step274HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step274F4FlagArena,s6Step274HeadFvAfter,s6Step274Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step274F4_distinct : (877::784::813::809::((s6Step274Add0A++s6Step274Add1A)++(s6Step274Add0B++s6Step274Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274F4_flag : s6Step274HeadFvAfter.checkBorrow 1 [813]=some s6Step274F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step274HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step274F4_owned : (877::784::((s6Step274Add0A++s6Step274Add1A)++(s6Step274Add0B++s6Step274Add1B))).toFinset⊆s6Step274HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step274HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274F4_checked : compileHmrHybridF4Log s6Step274HeadFvAfter 877 784 s6Step274Add0A s6Step274Add0B s6Step274Add1A s6Step274Add1B [813] [809] s6Step274Add0Work s6Step274Add1Work=some s6Step274F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step274HeadFvAfter s6Step274F4FlagArena s6Step274Add0Arena s6Step274Add0During s6Step274Add1During 877 784
    s6Step274Add0A s6Step274Add0B s6Step274Add1A s6Step274Add1B [813] [809] s6Step274Add0Work s6Step274Add1Work
    (fun q hq => s6Step274F4_owned (List.mem_toFinset.mpr hq)) s6Step274F4_flag s6Step274F4_carry
    s6Step274F4_distinct s6Step274F4_apart s6Step274Add0_checked s6Step274Add1_checked

private theorem s6Step274Front_branch : s6Step274FrontSigmaArena.checkBorrow 1 [784]=some s6Step274HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step274FrontSigmaArena,s6Step274EntryGvAfter,s6Step274EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step274FrontSigmaArena,s6Step274EntryGvAfter,s6Step274EntryFBefore,s6Step274HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step274Front_entry : HmrFrontEntryValid s6Step274EntryFBefore s6Step274FrontBank 134 152 ⟨133,133,153,152⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step274FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step274EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step274EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step274FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step274Front_sigma : s6Step274EntryGvAfter.checkBorrow 1 [877]=some s6Step274FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step274EntryGvAfter,s6Step274EntryFBefore,arenaWires]
  · rfl

private def s6Step274HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274HeadFBefore : Arena := s6Step274HeadGAfter

private def s6Step274HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389],795⟩

private def s6Step274HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874],776⟩

private def s6Step274HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],777⟩

private def s6Step274HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838],775⟩

private theorem s6Step274HeadBank_incomingDistinct : ([s6Step274HeadGRow,s6Step274HeadFRow,s6Step274HeadGvRow,s6Step274HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274HeadF_Incoming : rowsOwned s6Step274HeadFBefore [s6Step274HeadFRow,s6Step274HeadGvRow,s6Step274HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274HeadGRow,s6Step274HeadFRow,s6Step274HeadGvRow,s6Step274HeadFvRow] 1 s6Step274HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274HeadBank_outgoingOwned : rowsOwned s6Step274HeadFvAfter [s6Step274HeadGOut,s6Step274HeadFOut,s6Step274HeadGvOut,s6Step274HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step274HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274HeadF_Outgoing : rowsOwned s6Step274HeadFvAfter [s6Step274HeadFOut,s6Step274HeadGvOut,s6Step274HeadFvOut] :=
  hmrRows_owned_drop s6Step274HeadFvAfter [s6Step274HeadGOut,s6Step274HeadFOut,s6Step274HeadGvOut,s6Step274HeadFvOut] 1 s6Step274HeadBank_outgoingOwned

private theorem s6Step274HeadF_distinct : (s6Step274HeadFRow.sign::s6Step274HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274HeadF_owned : (s6Step274HeadFRow.sign::s6Step274HeadFRow.payload).toFinset⊆s6Step274HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274HeadF_reserved : s6Step274HeadFBefore.reserve s6Step274HeadFFresh.toFinset=some s6Step274HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step274HeadFFresh,arenaWires]
  · norm_num [s6Step274HeadFBefore,s6Step274HeadGAfter,s6Step274HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step274HeadFAfter,s6Step274HeadFBefore,s6Step274HeadGAfter,s6Step274HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step274HeadF_checked : planRowResizeLog s6Step274HeadFBefore s6Step274HeadFRow 135 s6Step274HeadFFresh=
    some (s6Step274HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 927],795⟩,growRow 795 s6Step274HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step274HeadFBefore s6Step274HeadFAfter s6Step274HeadFRow 135 s6Step274HeadFFresh
    s6Step274HeadF_distinct s6Step274HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step274HeadF_reserved
  have rowEq : WindowRow.mk (s6Step274HeadFRow.payload++s6Step274HeadFFresh) s6Step274HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 927],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step274HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step274HeadFvBefore : Arena := s6Step274HeadGvAfter

private theorem s6Step274HeadFv_Incoming : rowsOwned s6Step274HeadFvBefore [s6Step274HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274HeadGRow,s6Step274HeadFRow,s6Step274HeadGvRow,s6Step274HeadFvRow] 3 s6Step274HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274HeadFv_Outgoing : rowsOwned s6Step274HeadFvAfter [s6Step274HeadFvOut] :=
  hmrRows_owned_drop s6Step274HeadFvAfter [s6Step274HeadGOut,s6Step274HeadFOut,s6Step274HeadGvOut,s6Step274HeadFvOut] 3 s6Step274HeadBank_outgoingOwned

private theorem s6Step274HeadFv_distinct : (s6Step274HeadFvRow.sign::s6Step274HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274HeadFv_owned : (s6Step274HeadFvRow.sign::s6Step274HeadFvRow.payload).toFinset⊆s6Step274HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274HeadFv_reserved : s6Step274HeadFvBefore.reserve s6Step274HeadFvFresh.toFinset=some s6Step274HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step274HeadFvFresh,arenaWires]
  · norm_num [s6Step274HeadFvBefore,s6Step274HeadGvAfter,s6Step274HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step274HeadFvAfter,s6Step274HeadFvBefore,s6Step274HeadGvAfter,s6Step274HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step274HeadFv_checked : planRowResizeLog s6Step274HeadFvBefore s6Step274HeadFvRow 153 s6Step274HeadFvFresh=
    some (s6Step274HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780],776⟩,growRow 776 s6Step274HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step274HeadFvBefore s6Step274HeadFvAfter s6Step274HeadFvRow 153 s6Step274HeadFvFresh
    s6Step274HeadFv_distinct s6Step274HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step274HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step274HeadFvRow.payload++s6Step274HeadFvFresh) s6Step274HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step274HeadG_Incoming : rowsOwned s6Step274HeadGBefore [s6Step274HeadGRow,s6Step274HeadFRow,s6Step274HeadGvRow,s6Step274HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274HeadGRow,s6Step274HeadFRow,s6Step274HeadGvRow,s6Step274HeadFvRow] 0 s6Step274HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274HeadG_Outgoing : rowsOwned s6Step274HeadFvAfter [s6Step274HeadGOut,s6Step274HeadFOut,s6Step274HeadGvOut,s6Step274HeadFvOut] :=
  hmrRows_owned_drop s6Step274HeadFvAfter [s6Step274HeadGOut,s6Step274HeadFOut,s6Step274HeadGvOut,s6Step274HeadFvOut] 0 s6Step274HeadBank_outgoingOwned

private theorem s6Step274HeadG_distinct : (s6Step274HeadGRow.sign::s6Step274HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274HeadG_owned : (s6Step274HeadGRow.sign::s6Step274HeadGRow.payload).toFinset⊆s6Step274HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274HeadG_reserved : s6Step274HeadGBefore.reserve s6Step274HeadGFresh.toFinset=some s6Step274HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step274HeadGFresh,arenaWires]
  · norm_num [s6Step274HeadGBefore,s6Step274HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step274HeadGAfter,s6Step274HeadGBefore,s6Step274HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step274HeadG_checked : planRowResizeLog s6Step274HeadGBefore s6Step274HeadGRow 135 s6Step274HeadGFresh=
    some (s6Step274HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 779],777⟩,growRow 777 s6Step274HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step274HeadGBefore s6Step274HeadGAfter s6Step274HeadGRow 135 s6Step274HeadGFresh
    s6Step274HeadG_distinct s6Step274HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step274HeadG_reserved
  have rowEq : WindowRow.mk (s6Step274HeadGRow.payload++s6Step274HeadGFresh) s6Step274HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 779],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step274HeadGvBefore : Arena := s6Step274HeadFAfter

private theorem s6Step274HeadGv_Incoming : rowsOwned s6Step274HeadGvBefore [s6Step274HeadGvRow,s6Step274HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step274HeadGRow,s6Step274HeadFRow,s6Step274HeadGvRow,s6Step274HeadFvRow] 2 s6Step274HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step274HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step274HeadGv_Outgoing : rowsOwned s6Step274HeadFvAfter [s6Step274HeadGvOut,s6Step274HeadFvOut] :=
  hmrRows_owned_drop s6Step274HeadFvAfter [s6Step274HeadGOut,s6Step274HeadFOut,s6Step274HeadGvOut,s6Step274HeadFvOut] 2 s6Step274HeadBank_outgoingOwned

private theorem s6Step274HeadGv_distinct : (s6Step274HeadGvRow.sign::s6Step274HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step274HeadGv_owned : (s6Step274HeadGvRow.sign::s6Step274HeadGvRow.payload).toFinset⊆s6Step274HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step274HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step274HeadGv_reserved : s6Step274HeadGvBefore.reserve s6Step274HeadGvFresh.toFinset=some s6Step274HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step274HeadGvFresh,arenaWires]
  · norm_num [s6Step274HeadGvBefore,s6Step274HeadFAfter,s6Step274HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step274HeadGvAfter,s6Step274HeadGvBefore,s6Step274HeadFAfter,s6Step274HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step274HeadGv_checked : planRowResizeLog s6Step274HeadGvBefore s6Step274HeadGvRow 153 s6Step274HeadGvFresh=
    some (s6Step274HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 867],775⟩,growRow 775 s6Step274HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step274HeadGvBefore s6Step274HeadGvAfter s6Step274HeadGvRow 153 s6Step274HeadGvFresh
    s6Step274HeadGv_distinct s6Step274HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step274HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step274HeadGvRow.payload++s6Step274HeadGvFresh) s6Step274HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 867],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step274HeadBank_rows : planWindowRowsLog s6Step274HeadGBefore [(s6Step274HeadGRow,135),(s6Step274HeadFRow,135),(s6Step274HeadGvRow,153),(s6Step274HeadFvRow,153)] [s6Step274HeadGFresh,s6Step274HeadFFresh,s6Step274HeadGvFresh,s6Step274HeadFvFresh]=
    some (s6Step274HeadFvAfter,[s6Step274HeadGOut,s6Step274HeadFOut,s6Step274HeadGvOut,s6Step274HeadFvOut],(growRow 777 s6Step274HeadGFresh ++ (growRow 795 s6Step274HeadFFresh ++ (growRow 775 s6Step274HeadGvFresh ++ (growRow 776 s6Step274HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step274HeadFvAfter [] []=some (s6Step274HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step274HeadFvBefore s6Step274HeadFvAfter s6Step274HeadFvAfter
    s6Step274HeadFvRow s6Step274HeadFvOut 153 s6Step274HeadFvFresh [] [] []
    (growRow 776 s6Step274HeadFvFresh) ([]) s6Step274HeadFv_Incoming s6Step274HeadFv_checked h4 s6Step274HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step274HeadGvBefore s6Step274HeadGvAfter s6Step274HeadFvAfter
    s6Step274HeadGvRow s6Step274HeadGvOut 153 s6Step274HeadGvFresh [(s6Step274HeadFvRow,153)] [s6Step274HeadFvFresh] [s6Step274HeadFvOut]
    (growRow 775 s6Step274HeadGvFresh) ((growRow 776 s6Step274HeadFvFresh ++ [])) s6Step274HeadGv_Incoming s6Step274HeadGv_checked h3 s6Step274HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step274HeadFBefore s6Step274HeadFAfter s6Step274HeadFvAfter
    s6Step274HeadFRow s6Step274HeadFOut 135 s6Step274HeadFFresh [(s6Step274HeadGvRow,153),(s6Step274HeadFvRow,153)] [s6Step274HeadGvFresh,s6Step274HeadFvFresh] [s6Step274HeadGvOut,s6Step274HeadFvOut]
    (growRow 795 s6Step274HeadFFresh) ((growRow 775 s6Step274HeadGvFresh ++ (growRow 776 s6Step274HeadFvFresh ++ []))) s6Step274HeadF_Incoming s6Step274HeadF_checked h2 s6Step274HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step274HeadGBefore s6Step274HeadGAfter s6Step274HeadFvAfter
    s6Step274HeadGRow s6Step274HeadGOut 135 s6Step274HeadGFresh [(s6Step274HeadFRow,135),(s6Step274HeadGvRow,153),(s6Step274HeadFvRow,153)] [s6Step274HeadFFresh,s6Step274HeadGvFresh,s6Step274HeadFvFresh] [s6Step274HeadFOut,s6Step274HeadGvOut,s6Step274HeadFvOut]
    (growRow 777 s6Step274HeadGFresh) ((growRow 795 s6Step274HeadFFresh ++ (growRow 775 s6Step274HeadGvFresh ++ (growRow 776 s6Step274HeadFvFresh ++ [])))) s6Step274HeadG_Incoming s6Step274HeadG_checked h1 s6Step274HeadG_Outgoing
  exact h0

private theorem s6Step274HeadBank_checked : compileHmrBankResizeLog .headroom s6Step274HeadGBefore ⟨s6Step274HeadFRow,s6Step274HeadGRow,s6Step274HeadFvRow,s6Step274HeadGvRow⟩ ⟨135,135,153,153⟩ [s6Step274HeadGFresh,s6Step274HeadFFresh,s6Step274HeadGvFresh,s6Step274HeadFvFresh]=
    some (s6Step274HeadFvAfter,⟨s6Step274HeadFOut,s6Step274HeadGOut,s6Step274HeadFvOut,s6Step274HeadGvOut⟩,(growRow 777 s6Step274HeadGFresh ++ (growRow 795 s6Step274HeadFFresh ++ (growRow 775 s6Step274HeadGvFresh ++ (growRow 776 s6Step274HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step274HeadBank_rows]
  rfl

private theorem s6Step274Front_checked : compileHmrSourceFrontLog s6Step274EntryFBefore s6Step274FrontBank 134 152 ⟨133,133,153,152⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step274FrontLog=some s6Step274FrontPlan := by
  have pairEq : s6Step274FrontPair=⟨s6Step274HeadFRow,s6Step274HeadGRow,s6Step274HeadFvRow,s6Step274HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step274FrontHead=⟨s6Step274ExitFRow,s6Step274ExitGRow,s6Step274ExitFvRow,s6Step274ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step274Add0A=s6Step274FrontHead.f.wires := by decide +kernel
  have gEq : s6Step274Add0B=s6Step274FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step274Add1A=s6Step274FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step274Add1B=s6Step274FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step274EntryFBefore s6Step274FrontBank 134 152 ⟨133,133,153,152⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step274FrontLog s6Step274FrontPlan
  · exact s6Step274Front_entry
  · exact s6Step274EntryBank_checked
  · exact s6Step274Front_sigma
  · rfl
  · exact s6Step274Front_branch
  · rfl
  · simpa only [s6Step274FrontPlan,pairEq] using s6Step274HeadBank_checked
  · simpa only [s6Step274FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step274F4_checked
  · exact s6Step274Counter_checked
  · rfl
  · simpa only [s6Step274FrontPlan,headEq] using s6Step274ExitBank_checked

private theorem s6Step274Complete_explicit_checked : compileHmrEarlyStepLog s6Step274EntryFBefore s6Step274FrontBank 134 152 ⟨133,133,153,152⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step274CompleteLog=some s6Step274CompletePlan := by
  let Q := s6Step274EarlyControlPlan
  have hq := s6Step274EarlyControl_plan_checked
  have fv1 : s6Step274CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step274CompleteOut.fv.payload[2]?.getD s6Step274CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step274CompleteOut.fv.payload[3]?.getD s6Step274CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step274CompleteOut.fv.payload[4]?.getD s6Step274CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step274EntryFBefore s6Step274EarlyControlArena s6Step274FrontBank 134 152 ⟨133,133,153,152⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step274CompleteLog s6Step274FrontPlan Q
    s6Step274Front_checked s6Step274Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step274Complete_owned s6Step274Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step274EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 s6Step274CompleteOut.fv.second (s6Step274CompleteOut.fv.payload[2]?.getD s6Step274CompleteOut.fv.sign) (s6Step274CompleteOut.fv.payload[3]?.getD s6Step274CompleteOut.fv.sign) (s6Step274CompleteOut.fv.payload[4]?.getD s6Step274CompleteOut.fv.sign) 784 53 s6Step274EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep274Arena : Arena := s6Step274EntryFBefore
def s6PrivateStep274Bank : WindowBank := s6Step274FrontBank
def s6PrivateStep274Spec : HmrSourceWalkStepLog := ⟨134,152,⟨133,133,153,152⟩,53,.early s6Step274CompleteLog⟩
def s6PrivateStep274Plan : HmrSourceStepPlan := .early s6Step274CompletePlan
theorem s6PrivateStep274_source : s6PrivateStep274Spec=s6ObservedLogs272[2] := rfl
theorem s6PrivateStep274_checked : compileHmrSourceStepLog s6PrivateStep274Arena s6PrivateStep274Bank
    s6PrivateStep274Spec.fgWidth s6PrivateStep274Spec.vWidth s6PrivateStep274Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]
    6 498 274 s6PrivateStep274Spec.need none s6PrivateStep274Spec.log=some s6PrivateStep274Plan := by
  change compileHmrSourceStepLog s6Step274EntryFBefore s6Step274FrontBank 134 152 ⟨133,133,153,152⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 6 498 274 53 none (.early s6Step274CompleteLog)=some (.early s6Step274CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 274<498)]
  rw [s6Step274Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
