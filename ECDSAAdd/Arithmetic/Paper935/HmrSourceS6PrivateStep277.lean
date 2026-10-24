import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep275
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

private def s6Step277CompleteMoves : List (Wire × Wire) := []

private def s6Step277EarlyControlLog : HmrEarlyControlLog := ⟨[882, 881, 927, 779, 867],[813],[809],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step277FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [882]],[[867], [779], [881], [927]],[[], [], [], []]⟩,[877],[768],[813],[809],[830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 809, 830, 805]⟩

private def s6Step277CompleteLog : HmrEarlyStepLog := ⟨s6Step277FrontLog,s6Step277CompleteMoves,s6Step277EarlyControlLog⟩

private def s6Step277ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step277ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802],776⟩

private def s6Step277ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],777⟩

private def s6Step277ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784],775⟩

private def s6Step277FrontOut : WindowBank := ⟨s6Step277ExitFOut,s6Step277ExitGOut,s6Step277ExitFvOut,s6Step277ExitGvOut⟩

private def s6Step277CompleteOut : WindowBank := s6Step277FrontOut.repacked s6Step277CompleteMoves

private def s6Step277EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step277EarlyControlPositiveArena,[813],s6Step277EarlyControlEqualityArena,[809],⟨⟨877,false⟩,[⟨⟨813,false⟩,809⟩]⟩⟩

private def s6Step277EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,882⟩,⟨⟨772,false⟩,881⟩,⟨⟨771,false⟩,927⟩,⟨⟨770,false⟩,779⟩,⟨⟨769,false⟩,867⟩]⟩

private def s6Step277EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step277EarlyControlZeroArena,s6Step277EarlyControlZeroPlan,s6Step277EarlyControlClassPlan,s6Step277EarlyControlFlagArena,s6Step277EarlyControlFittedArena,s6Step277EarlyControlHistoryArena,s6Step277EarlyControlSigmaArena,s6Step277EarlyControlOutputArena,s6Step277EarlyControlLog⟩

private def s6Step277CounterWork : List Wire := [813, 809, 830, 805]

private theorem s6Step277Counter_bounded : s6Step277CounterWork.toFinset⊆arenaWires := by norm_num [s6Step277CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step277HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277CounterDuring : Arena := ⟨s6Step277HeadFvAfter.live∪s6Step277CounterWork.toFinset,Finset.union_subset s6Step277HeadFvAfter.bounded s6Step277Counter_bounded⟩

private def s6Step277EntryFFresh : List Wire := []

private def s6Step277EntryFvFresh : List Wire := []

private def s6Step277EntryGFresh : List Wire := []

private def s6Step277EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277EntryGvFresh : List Wire := [882]

private def s6Step277ExitFExtra : List Wire := [779]

private def s6Step277ExitFvExtra : List Wire := [927]

private def s6Step277ExitGExtra : List Wire := [867]

private def s6Step277ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277ExitGvExtra : List Wire := [882, 881]

private def s6Step277Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step277Add0_bounded : s6Step277Add0Work.toFinset⊆arenaWires := by
  have h : s6Step277Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step277Add0During : Arena := ⟨s6Step277Add0Arena.live∪s6Step277Add0Work.toFinset,Finset.union_subset s6Step277Add0Arena.bounded s6Step277Add0_bounded⟩

private def s6Step277Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step277Add1_bounded : s6Step277Add1Work.toFinset⊆arenaWires := by
  have h : s6Step277Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step277Add1During : Arena := ⟨s6Step277Add1Arena.live∪s6Step277Add1Work.toFinset,Finset.union_subset s6Step277Add1Arena.bounded s6Step277Add1_bounded⟩

private def s6Step277F4FlagArena : Arena := ⟨s6Step277HeadFvAfter.live∪{813},Finset.union_subset s6Step277HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step277F4Plan : HmrHybridF4Plan := ⟨s6Step277F4FlagArena,[813],s6Step277Add0Arena,[809],s6Step277Add0During,s6Step277Add0Work,s6Step277Add1During,s6Step277Add1Work⟩

private def s6Step277HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 779],795⟩

private def s6Step277HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 927],776⟩

private def s6Step277HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 867],777⟩

private def s6Step277HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 882, 881],775⟩

private def s6Step277FrontHead : WindowBank := ⟨s6Step277HeadFOut,s6Step277HeadGOut,s6Step277HeadFvOut,s6Step277HeadGvOut⟩

private def s6Step277EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step277EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802],776⟩

private def s6Step277EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],777⟩

private def s6Step277EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 882],775⟩

private def s6Step277FrontPair : WindowBank := ⟨s6Step277EntryFOut,s6Step277EntryGOut,s6Step277EntryFvOut,s6Step277EntryGvOut⟩

private def s6Step277FrontSigmaArena : Arena := ⟨s6Step277EntryGvAfter.live∪{877},Finset.union_subset s6Step277EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step277HeadFFresh : List Wire := [779]

private def s6Step277HeadFvFresh : List Wire := [927]

private def s6Step277HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277HeadGFresh : List Wire := [867]

private def s6Step277HeadGvFresh : List Wire := [881]

private def s6Step277FrontPlan : HmrSourceFront := ⟨s6Step277EntryGvAfter,s6Step277FrontPair,(growRow 795 s6Step277EntryFFresh ++ (growRow 777 s6Step277EntryGFresh ++ (growRow 776 s6Step277EntryFvFresh ++ (growRow 775 s6Step277EntryGvFresh ++ [])))),s6Step277FrontSigmaArena,[877],s6Step277HeadGBefore,[768],
  s6Step277HeadFvAfter,s6Step277FrontHead,(growRow 777 s6Step277HeadGFresh ++ (growRow 795 s6Step277HeadFFresh ++ (growRow 775 s6Step277HeadGvFresh ++ (growRow 776 s6Step277HeadFvFresh ++ [])))),s6Step277F4Plan,s6Step277CounterDuring,s6Step277CounterWork,s6Step277ExitGvAfter,s6Step277FrontOut,(shrinkRow 777 s6Step277ExitGExtra ++ (shrinkRow 795 s6Step277ExitFExtra ++ (shrinkRow 776 s6Step277ExitFvExtra ++ (shrinkRow 775 s6Step277ExitGvExtra ++ []))))⟩

private def s6Step277CompletePlan : HmrEarlyStepPlan := ⟨s6Step277FrontPlan,s6Step277EarlyControlArena,s6Step277EarlyControlPlan,s6Step277CompleteMoves⟩

private theorem s6Step277Complete_apart : List.Disjoint (s6Step277CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [877, 768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] := by
  have nd : ((s6Step277CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[877, 768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step277Complete_owned : (s6Step277CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step277EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277Complete_repack : s6Step277ExitGvAfter.checkRepack s6Step277CompleteMoves=some s6Step277EarlyControlArena := by rfl

private theorem s6Step277EarlyControl_branchOwned : ([768] : List Wire).toFinset⊆s6Step277EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EarlyControl_branch : compileHmrBranchRetirement s6Step277EarlyControlSigmaArena 768=some s6Step277EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step277EarlyControl_branchOwned
  · ext q
    simp [s6Step277EarlyControlOutputArena,s6Step277EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step277EarlyControl_classEqualityBorrow : s6Step277EarlyControlPositiveArena.checkBorrow (([877, 813] : List Wire).length-1) s6Step277EarlyControlLog.classWork=some s6Step277EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step277EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step277EarlyControlEqualityArena,s6Step277EarlyControlPositiveArena,s6Step277EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step277EarlyControl_classEqualityOwned : ([877, 813] : List Wire).toFinset⊆s6Step277EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EarlyControl_classEquality : compileHmrEqualityLog s6Step277EarlyControlPositiveArena [877, 813] 0 s6Step277EarlyControlLog.classWork=some (s6Step277EarlyControlEqualityArena,s6Step277EarlyControlLog.classWork,s6Step277EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step277EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step277EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step277EarlyControl_classOwned : ([769, 867, 877] : List Wire).toFinset⊆s6Step277EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EarlyControl_positiveBorrow : s6Step277EarlyControlZeroArena.checkBorrow (1) s6Step277EarlyControlLog.positiveWork=some s6Step277EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step277EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step277EarlyControlPositiveArena,s6Step277EarlyControlZeroArena,s6Step277EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step277EarlyControl_class : compileHmrSourceClassLog s6Step277EarlyControlZeroArena false 769 s6Step277EarlyControlZeroPlan.top 0 877 s6Step277EarlyControlLog.positiveWork s6Step277EarlyControlLog.classWork=some s6Step277EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step277EarlyControlClassPlan s6Step277EarlyControlZeroArena false 769 s6Step277EarlyControlZeroPlan.top 0 877
  constructor
  · decide +kernel
  · exact s6Step277EarlyControl_classOwned
  · exact s6Step277EarlyControl_positiveBorrow
  · exact s6Step277EarlyControl_classEquality

private theorem s6Step277EarlyControl_entryRecordOwned : ([768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step277EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EarlyControl_entrySigmaOwned : ([877, 254] : List Wire).toFinset⊆s6Step277EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EarlyControl_fitBorrow : s6Step277EarlyControlFlagArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step277EarlyControlLog.recordFresh=some s6Step277EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step277EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step277EarlyControlFittedArena,s6Step277EarlyControlFlagArena,s6Step277EarlyControlLog,arenaWires]

private theorem s6Step277EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step277EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EarlyControl_fit : compileHmrRecordGrowLog s6Step277EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step277EarlyControlLog.recordFresh=some s6Step277EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step277EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step277EarlyControl_fitBorrow

private theorem s6Step277EarlyControl_flagsBorrow : s6Step277EarlyControlEqualityArena.checkBorrow (6) s6Step277EarlyControlLog.flagWork=some s6Step277EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step277EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step277EarlyControlFlagArena,s6Step277EarlyControlEqualityArena,s6Step277EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step277EarlyControl_flagsOwned : ([809, 253, 252, 251] : List Wire).toFinset⊆s6Step277EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EarlyControl_flags : compileHmrFlagsLog s6Step277EarlyControlClassPlan.equalityArena s6Step277EarlyControlClassPlan.equality.top 253 252 251 s6Step277EarlyControlLog.flagWork=some s6Step277EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step277EarlyControl_flagsOwned⟩
  · exact s6Step277EarlyControl_flagsBorrow

private theorem s6Step277EarlyControl_historyBorrow : s6Step277EarlyControlArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step277EarlyControlLog.recordFresh=some s6Step277EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step277EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step277EarlyControlHistoryArena,s6Step277EarlyControlArena,s6Step277EarlyControlLog,arenaWires]

private theorem s6Step277EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step277EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EarlyControl_history : compileHmrRecordGrowLog s6Step277EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step277EarlyControlLog.recordFresh=some s6Step277EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step277EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step277EarlyControl_historyBorrow

private theorem s6Step277EarlyControl_sigmaOwned : ([254, 877] : List Wire).toFinset⊆s6Step277EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EarlyControl_sigmaReleaseOwned : ([877] : List Wire).toFinset⊆s6Step277EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EarlyControl_sigmaRelease : s6Step277EarlyControlHistoryArena.release {877} (fun _ => false)=some s6Step277EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step277EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step277EarlyControlSigmaArena,s6Step277EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step277EarlyControl_sigma : compileHmrSigmaDropLog s6Step277EarlyControlHistoryArena false 0 0 254 877 []=some s6Step277EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step277EarlyControl_sigmaOwned⟩
  · exact s6Step277EarlyControl_sigmaRelease

private theorem s6Step277EarlyControl_zeroBorrow : s6Step277EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step277EarlyControlLog.zeroWork=some s6Step277EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step277EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step277EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step277EarlyControlZeroArena,s6Step277EarlyControlArena,s6Step277EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step277EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step277EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step277EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EarlyControl_zero : compileHmrEqualityLog s6Step277EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step277EarlyControlLog.zeroWork=some (s6Step277EarlyControlZeroArena,s6Step277EarlyControlLog.zeroWork,s6Step277EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step277EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step277EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step277EarlyControl_logged : s6Step277EarlyControlPlan.Logged s6Step277EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 254 253 252 251 768 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step277EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step277EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step277EarlyControl_zero
  · exact s6Step277EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step277EarlyControl_flags
  · exact s6Step277EarlyControl_fit
  · exact s6Step277EarlyControl_history
  · exact s6Step277EarlyControl_sigma
  · exact s6Step277EarlyControl_branch

private theorem s6Step277EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step277EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 254 253 252 251 768 53 s6Step277EarlyControlLog=some s6Step277EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step277EarlyControlPlan s6Step277EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 254 253 252 251 768 53 s6Step277EarlyControl_logged

private def s6Step277EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step277EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802],776⟩

private def s6Step277EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],777⟩

private def s6Step277EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784],775⟩

private def s6Step277FrontBank : WindowBank := ⟨s6Step277EntryFRow,s6Step277EntryGRow,s6Step277EntryFvRow,s6Step277EntryGvRow⟩

private def s6Step277Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 779, 795]

private def s6Step277Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 867, 777]

private def s6Step277Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 927, 776]

private def s6Step277Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 882, 881, 775]

private theorem s6Step277Counter_apart : Disjoint s6Step277HeadFvAfter.live s6Step277CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step277HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277Counter_borrowed : s6Step277HeadFvAfter.checkBorrow 4 s6Step277CounterWork=some s6Step277CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step277HeadFvAfter s6Step277CounterDuring s6Step277CounterWork.toFinset s6Step277Counter_bounded s6Step277Counter_apart rfl

private theorem s6Step277Counter_owned : (877::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step277HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step277HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277Counter_checked : compileHmrCounterStepLog s6Step277HeadFvAfter true 877 [774, 773, 772, 771, 770, 769] s6Step277CounterWork=some s6Step277CounterDuring := by
  have owned : ∀q∈877::[774, 773, 772, 771, 770, 769],q∈s6Step277HeadFvAfter.live := fun q hq => s6Step277Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step277Counter_borrowed

private def s6Step277EntryFAfter : Arena := s6Step277EntryFBefore

private theorem s6Step277EntryBank_incomingDistinct : ([s6Step277EntryFRow,s6Step277EntryGRow,s6Step277EntryFvRow,s6Step277EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277EntryF_Incoming : rowsOwned s6Step277EntryFBefore [s6Step277EntryFRow,s6Step277EntryGRow,s6Step277EntryFvRow,s6Step277EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277EntryFRow,s6Step277EntryGRow,s6Step277EntryFvRow,s6Step277EntryGvRow] 0 s6Step277EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277EntryBank_outgoingOwned : rowsOwned s6Step277EntryGvAfter [s6Step277EntryFOut,s6Step277EntryGOut,s6Step277EntryFvOut,s6Step277EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step277EntryGvAfter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277EntryF_Outgoing : rowsOwned s6Step277EntryGvAfter [s6Step277EntryFOut,s6Step277EntryGOut,s6Step277EntryFvOut,s6Step277EntryGvOut] :=
  hmrRows_owned_drop s6Step277EntryGvAfter [s6Step277EntryFOut,s6Step277EntryGOut,s6Step277EntryFvOut,s6Step277EntryGvOut] 0 s6Step277EntryBank_outgoingOwned

private theorem s6Step277EntryF_distinct : (s6Step277EntryFRow.sign::s6Step277EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277EntryF_owned : (s6Step277EntryFRow.sign::s6Step277EntryFRow.payload).toFinset⊆s6Step277EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EntryF_reserved : s6Step277EntryFBefore.reserve s6Step277EntryFFresh.toFinset=some s6Step277EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step277EntryFFresh,arenaWires]
  · norm_num [s6Step277EntryFBefore,s6Step277EntryFFresh,arenaWires]
  · simp only [s6Step277EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step277EntryF_checked : planRowResizeLog s6Step277EntryFBefore s6Step277EntryFRow 132 s6Step277EntryFFresh=
    some (s6Step277EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩,growRow 795 s6Step277EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step277EntryFBefore s6Step277EntryFAfter s6Step277EntryFRow 132 s6Step277EntryFFresh
    s6Step277EntryF_distinct s6Step277EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step277EntryF_reserved
  have rowEq : WindowRow.mk (s6Step277EntryFRow.payload++s6Step277EntryFFresh) s6Step277EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step277EntryFvAfter : Arena := s6Step277EntryFBefore

private def s6Step277EntryFvBefore : Arena := s6Step277EntryFBefore

private theorem s6Step277EntryFv_Incoming : rowsOwned s6Step277EntryFvBefore [s6Step277EntryFvRow,s6Step277EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277EntryFRow,s6Step277EntryGRow,s6Step277EntryFvRow,s6Step277EntryGvRow] 2 s6Step277EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277EntryFv_Outgoing : rowsOwned s6Step277EntryGvAfter [s6Step277EntryFvOut,s6Step277EntryGvOut] :=
  hmrRows_owned_drop s6Step277EntryGvAfter [s6Step277EntryFOut,s6Step277EntryGOut,s6Step277EntryFvOut,s6Step277EntryGvOut] 2 s6Step277EntryBank_outgoingOwned

private theorem s6Step277EntryFv_distinct : (s6Step277EntryFvRow.sign::s6Step277EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277EntryFv_owned : (s6Step277EntryFvRow.sign::s6Step277EntryFvRow.payload).toFinset⊆s6Step277EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EntryFv_reserved : s6Step277EntryFvBefore.reserve s6Step277EntryFvFresh.toFinset=some s6Step277EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step277EntryFvFresh,arenaWires]
  · norm_num [s6Step277EntryFvBefore,s6Step277EntryFBefore,s6Step277EntryFvFresh,arenaWires]
  · simp only [s6Step277EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step277EntryFv_checked : planRowResizeLog s6Step277EntryFvBefore s6Step277EntryFvRow 154 s6Step277EntryFvFresh=
    some (s6Step277EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802],776⟩,growRow 776 s6Step277EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step277EntryFvBefore s6Step277EntryFvAfter s6Step277EntryFvRow 154 s6Step277EntryFvFresh
    s6Step277EntryFv_distinct s6Step277EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step277EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step277EntryFvRow.payload++s6Step277EntryFvFresh) s6Step277EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step277EntryGAfter : Arena := s6Step277EntryFBefore

private def s6Step277EntryGBefore : Arena := s6Step277EntryFBefore

private theorem s6Step277EntryG_Incoming : rowsOwned s6Step277EntryGBefore [s6Step277EntryGRow,s6Step277EntryFvRow,s6Step277EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277EntryFRow,s6Step277EntryGRow,s6Step277EntryFvRow,s6Step277EntryGvRow] 1 s6Step277EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277EntryG_Outgoing : rowsOwned s6Step277EntryGvAfter [s6Step277EntryGOut,s6Step277EntryFvOut,s6Step277EntryGvOut] :=
  hmrRows_owned_drop s6Step277EntryGvAfter [s6Step277EntryFOut,s6Step277EntryGOut,s6Step277EntryFvOut,s6Step277EntryGvOut] 1 s6Step277EntryBank_outgoingOwned

private theorem s6Step277EntryG_distinct : (s6Step277EntryGRow.sign::s6Step277EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277EntryG_owned : (s6Step277EntryGRow.sign::s6Step277EntryGRow.payload).toFinset⊆s6Step277EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EntryG_reserved : s6Step277EntryGBefore.reserve s6Step277EntryGFresh.toFinset=some s6Step277EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step277EntryGFresh,arenaWires]
  · norm_num [s6Step277EntryGBefore,s6Step277EntryFBefore,s6Step277EntryGFresh,arenaWires]
  · simp only [s6Step277EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step277EntryG_checked : planRowResizeLog s6Step277EntryGBefore s6Step277EntryGRow 132 s6Step277EntryGFresh=
    some (s6Step277EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],777⟩,growRow 777 s6Step277EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step277EntryGBefore s6Step277EntryGAfter s6Step277EntryGRow 132 s6Step277EntryGFresh
    s6Step277EntryG_distinct s6Step277EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step277EntryG_reserved
  have rowEq : WindowRow.mk (s6Step277EntryGRow.payload++s6Step277EntryGFresh) s6Step277EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step277EntryGvBefore : Arena := s6Step277EntryFBefore

private theorem s6Step277EntryGv_Incoming : rowsOwned s6Step277EntryGvBefore [s6Step277EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277EntryFRow,s6Step277EntryGRow,s6Step277EntryFvRow,s6Step277EntryGvRow] 3 s6Step277EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277EntryGv_Outgoing : rowsOwned s6Step277EntryGvAfter [s6Step277EntryGvOut] :=
  hmrRows_owned_drop s6Step277EntryGvAfter [s6Step277EntryFOut,s6Step277EntryGOut,s6Step277EntryFvOut,s6Step277EntryGvOut] 3 s6Step277EntryBank_outgoingOwned

private theorem s6Step277EntryGv_distinct : (s6Step277EntryGvRow.sign::s6Step277EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277EntryGv_owned : (s6Step277EntryGvRow.sign::s6Step277EntryGvRow.payload).toFinset⊆s6Step277EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277EntryGv_reserved : s6Step277EntryGvBefore.reserve s6Step277EntryGvFresh.toFinset=some s6Step277EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step277EntryGvFresh,arenaWires]
  · norm_num [s6Step277EntryGvBefore,s6Step277EntryFBefore,s6Step277EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step277EntryGvAfter,s6Step277EntryGvBefore,s6Step277EntryFBefore,s6Step277EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step277EntryGv_checked : planRowResizeLog s6Step277EntryGvBefore s6Step277EntryGvRow 154 s6Step277EntryGvFresh=
    some (s6Step277EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 882],775⟩,growRow 775 s6Step277EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step277EntryGvBefore s6Step277EntryGvAfter s6Step277EntryGvRow 154 s6Step277EntryGvFresh
    s6Step277EntryGv_distinct s6Step277EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step277EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step277EntryGvRow.payload++s6Step277EntryGvFresh) s6Step277EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 882],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step277EntryBank_rows : planWindowRowsLog s6Step277EntryFBefore [(s6Step277EntryFRow,132),(s6Step277EntryGRow,132),(s6Step277EntryFvRow,154),(s6Step277EntryGvRow,154)] [s6Step277EntryFFresh,s6Step277EntryGFresh,s6Step277EntryFvFresh,s6Step277EntryGvFresh]=
    some (s6Step277EntryGvAfter,[s6Step277EntryFOut,s6Step277EntryGOut,s6Step277EntryFvOut,s6Step277EntryGvOut],(growRow 795 s6Step277EntryFFresh ++ (growRow 777 s6Step277EntryGFresh ++ (growRow 776 s6Step277EntryFvFresh ++ (growRow 775 s6Step277EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step277EntryGvAfter [] []=some (s6Step277EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step277EntryGvBefore s6Step277EntryGvAfter s6Step277EntryGvAfter
    s6Step277EntryGvRow s6Step277EntryGvOut 154 s6Step277EntryGvFresh [] [] []
    (growRow 775 s6Step277EntryGvFresh) ([]) s6Step277EntryGv_Incoming s6Step277EntryGv_checked h4 s6Step277EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step277EntryFvBefore s6Step277EntryFvAfter s6Step277EntryGvAfter
    s6Step277EntryFvRow s6Step277EntryFvOut 154 s6Step277EntryFvFresh [(s6Step277EntryGvRow,154)] [s6Step277EntryGvFresh] [s6Step277EntryGvOut]
    (growRow 776 s6Step277EntryFvFresh) ((growRow 775 s6Step277EntryGvFresh ++ [])) s6Step277EntryFv_Incoming s6Step277EntryFv_checked h3 s6Step277EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step277EntryGBefore s6Step277EntryGAfter s6Step277EntryGvAfter
    s6Step277EntryGRow s6Step277EntryGOut 132 s6Step277EntryGFresh [(s6Step277EntryFvRow,154),(s6Step277EntryGvRow,154)] [s6Step277EntryFvFresh,s6Step277EntryGvFresh] [s6Step277EntryFvOut,s6Step277EntryGvOut]
    (growRow 777 s6Step277EntryGFresh) ((growRow 776 s6Step277EntryFvFresh ++ (growRow 775 s6Step277EntryGvFresh ++ []))) s6Step277EntryG_Incoming s6Step277EntryG_checked h2 s6Step277EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step277EntryFBefore s6Step277EntryFAfter s6Step277EntryGvAfter
    s6Step277EntryFRow s6Step277EntryFOut 132 s6Step277EntryFFresh [(s6Step277EntryGRow,132),(s6Step277EntryFvRow,154),(s6Step277EntryGvRow,154)] [s6Step277EntryGFresh,s6Step277EntryFvFresh,s6Step277EntryGvFresh] [s6Step277EntryGOut,s6Step277EntryFvOut,s6Step277EntryGvOut]
    (growRow 795 s6Step277EntryFFresh) ((growRow 777 s6Step277EntryGFresh ++ (growRow 776 s6Step277EntryFvFresh ++ (growRow 775 s6Step277EntryGvFresh ++ [])))) s6Step277EntryF_Incoming s6Step277EntryF_checked h1 s6Step277EntryF_Outgoing
  exact h0

private theorem s6Step277EntryBank_checked : compileHmrBankResizeLog .entry s6Step277EntryFBefore ⟨s6Step277EntryFRow,s6Step277EntryGRow,s6Step277EntryFvRow,s6Step277EntryGvRow⟩ ⟨132,132,154,154⟩ [s6Step277EntryFFresh,s6Step277EntryGFresh,s6Step277EntryFvFresh,s6Step277EntryGvFresh]=
    some (s6Step277EntryGvAfter,⟨s6Step277EntryFOut,s6Step277EntryGOut,s6Step277EntryFvOut,s6Step277EntryGvOut⟩,(growRow 795 s6Step277EntryFFresh ++ (growRow 777 s6Step277EntryGFresh ++ (growRow 776 s6Step277EntryFvFresh ++ (growRow 775 s6Step277EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step277EntryBank_rows]
  rfl

private def s6Step277ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277ExitFBefore : Arena := s6Step277ExitGAfter

private def s6Step277ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 779],795⟩

private def s6Step277ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 927],776⟩

private def s6Step277ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 867],777⟩

private def s6Step277ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 882, 881],775⟩

private theorem s6Step277ExitBank_incomingDistinct : ([s6Step277ExitGRow,s6Step277ExitFRow,s6Step277ExitFvRow,s6Step277ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277ExitF_Incoming : rowsOwned s6Step277ExitFBefore [s6Step277ExitFRow,s6Step277ExitFvRow,s6Step277ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277ExitGRow,s6Step277ExitFRow,s6Step277ExitFvRow,s6Step277ExitGvRow] 1 s6Step277ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277ExitBank_outgoingOwned : rowsOwned s6Step277ExitGvAfter [s6Step277ExitGOut,s6Step277ExitFOut,s6Step277ExitFvOut,s6Step277ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step277ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277ExitF_Outgoing : rowsOwned s6Step277ExitGvAfter [s6Step277ExitFOut,s6Step277ExitFvOut,s6Step277ExitGvOut] :=
  hmrRows_owned_drop s6Step277ExitGvAfter [s6Step277ExitGOut,s6Step277ExitFOut,s6Step277ExitFvOut,s6Step277ExitGvOut] 1 s6Step277ExitBank_outgoingOwned

private theorem s6Step277ExitF_distinct : (s6Step277ExitFRow.sign::s6Step277ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277ExitF_owned : (s6Step277ExitFRow.sign::s6Step277ExitFRow.payload).toFinset⊆s6Step277ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277ExitF_retired : s6Step277ExitFBefore.retireSet s6Step277ExitFExtra.toFinset=s6Step277ExitFAfter := by
  unfold Arena.retireSet s6Step277ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step277ExitFBefore,s6Step277ExitGAfter,s6Step277ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step277ExitF_checked : planRowResizeLog s6Step277ExitFBefore s6Step277ExitFRow 132 []=
    some (s6Step277ExitFAfter,s6Step277ExitFOut,shrinkRow 795 s6Step277ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step277ExitFBefore s6Step277ExitFRow 132 s6Step277ExitF_distinct s6Step277ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step277ExitFRow.payload.take 132) s6Step277ExitFRow.sign=s6Step277ExitFOut := by decide +kernel
  have hi : s6Step277ExitFRow.payload.drop 132=s6Step277ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step277ExitF_retired] at result
  exact result

private def s6Step277ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277ExitFvBefore : Arena := s6Step277ExitFAfter

private theorem s6Step277ExitFv_Incoming : rowsOwned s6Step277ExitFvBefore [s6Step277ExitFvRow,s6Step277ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277ExitGRow,s6Step277ExitFRow,s6Step277ExitFvRow,s6Step277ExitGvRow] 2 s6Step277ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277ExitFv_Outgoing : rowsOwned s6Step277ExitGvAfter [s6Step277ExitFvOut,s6Step277ExitGvOut] :=
  hmrRows_owned_drop s6Step277ExitGvAfter [s6Step277ExitGOut,s6Step277ExitFOut,s6Step277ExitFvOut,s6Step277ExitGvOut] 2 s6Step277ExitBank_outgoingOwned

private theorem s6Step277ExitFv_distinct : (s6Step277ExitFvRow.sign::s6Step277ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277ExitFv_owned : (s6Step277ExitFvRow.sign::s6Step277ExitFvRow.payload).toFinset⊆s6Step277ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277ExitFv_retired : s6Step277ExitFvBefore.retireSet s6Step277ExitFvExtra.toFinset=s6Step277ExitFvAfter := by
  unfold Arena.retireSet s6Step277ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step277ExitFvBefore,s6Step277ExitFAfter,s6Step277ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step277ExitFv_checked : planRowResizeLog s6Step277ExitFvBefore s6Step277ExitFvRow 154 []=
    some (s6Step277ExitFvAfter,s6Step277ExitFvOut,shrinkRow 776 s6Step277ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step277ExitFvBefore s6Step277ExitFvRow 154 s6Step277ExitFv_distinct s6Step277ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step277ExitFvRow.payload.take 154) s6Step277ExitFvRow.sign=s6Step277ExitFvOut := by decide +kernel
  have hi : s6Step277ExitFvRow.payload.drop 154=s6Step277ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step277ExitFv_retired] at result
  exact result

private def s6Step277ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step277ExitG_Incoming : rowsOwned s6Step277ExitGBefore [s6Step277ExitGRow,s6Step277ExitFRow,s6Step277ExitFvRow,s6Step277ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277ExitGRow,s6Step277ExitFRow,s6Step277ExitFvRow,s6Step277ExitGvRow] 0 s6Step277ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277ExitG_Outgoing : rowsOwned s6Step277ExitGvAfter [s6Step277ExitGOut,s6Step277ExitFOut,s6Step277ExitFvOut,s6Step277ExitGvOut] :=
  hmrRows_owned_drop s6Step277ExitGvAfter [s6Step277ExitGOut,s6Step277ExitFOut,s6Step277ExitFvOut,s6Step277ExitGvOut] 0 s6Step277ExitBank_outgoingOwned

private theorem s6Step277ExitG_distinct : (s6Step277ExitGRow.sign::s6Step277ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277ExitG_owned : (s6Step277ExitGRow.sign::s6Step277ExitGRow.payload).toFinset⊆s6Step277ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277ExitG_retired : s6Step277ExitGBefore.retireSet s6Step277ExitGExtra.toFinset=s6Step277ExitGAfter := by
  unfold Arena.retireSet s6Step277ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step277ExitGBefore,s6Step277ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step277ExitG_checked : planRowResizeLog s6Step277ExitGBefore s6Step277ExitGRow 132 []=
    some (s6Step277ExitGAfter,s6Step277ExitGOut,shrinkRow 777 s6Step277ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step277ExitGBefore s6Step277ExitGRow 132 s6Step277ExitG_distinct s6Step277ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step277ExitGRow.payload.take 132) s6Step277ExitGRow.sign=s6Step277ExitGOut := by decide +kernel
  have hi : s6Step277ExitGRow.payload.drop 132=s6Step277ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step277ExitG_retired] at result
  exact result

private def s6Step277ExitGvBefore : Arena := s6Step277ExitFvAfter

private theorem s6Step277ExitGv_Incoming : rowsOwned s6Step277ExitGvBefore [s6Step277ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277ExitGRow,s6Step277ExitFRow,s6Step277ExitFvRow,s6Step277ExitGvRow] 3 s6Step277ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277ExitGv_Outgoing : rowsOwned s6Step277ExitGvAfter [s6Step277ExitGvOut] :=
  hmrRows_owned_drop s6Step277ExitGvAfter [s6Step277ExitGOut,s6Step277ExitFOut,s6Step277ExitFvOut,s6Step277ExitGvOut] 3 s6Step277ExitBank_outgoingOwned

private theorem s6Step277ExitGv_distinct : (s6Step277ExitGvRow.sign::s6Step277ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277ExitGv_owned : (s6Step277ExitGvRow.sign::s6Step277ExitGvRow.payload).toFinset⊆s6Step277ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277ExitGv_retired : s6Step277ExitGvBefore.retireSet s6Step277ExitGvExtra.toFinset=s6Step277ExitGvAfter := by
  unfold Arena.retireSet s6Step277ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step277ExitGvBefore,s6Step277ExitFvAfter,s6Step277ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step277ExitGv_checked : planRowResizeLog s6Step277ExitGvBefore s6Step277ExitGvRow 153 []=
    some (s6Step277ExitGvAfter,s6Step277ExitGvOut,shrinkRow 775 s6Step277ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step277ExitGvBefore s6Step277ExitGvRow 153 s6Step277ExitGv_distinct s6Step277ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step277ExitGvRow.payload.take 153) s6Step277ExitGvRow.sign=s6Step277ExitGvOut := by decide +kernel
  have hi : s6Step277ExitGvRow.payload.drop 153=s6Step277ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step277ExitGv_retired] at result
  exact result

private theorem s6Step277ExitBank_rows : planWindowRowsLog s6Step277ExitGBefore [(s6Step277ExitGRow,132),(s6Step277ExitFRow,132),(s6Step277ExitFvRow,154),(s6Step277ExitGvRow,153)] [[],[],[],[]]=
    some (s6Step277ExitGvAfter,[s6Step277ExitGOut,s6Step277ExitFOut,s6Step277ExitFvOut,s6Step277ExitGvOut],(shrinkRow 777 s6Step277ExitGExtra ++ (shrinkRow 795 s6Step277ExitFExtra ++ (shrinkRow 776 s6Step277ExitFvExtra ++ (shrinkRow 775 s6Step277ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step277ExitGvAfter [] []=some (s6Step277ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step277ExitGvBefore s6Step277ExitGvAfter s6Step277ExitGvAfter
    s6Step277ExitGvRow s6Step277ExitGvOut 153 [] [] [] []
    (shrinkRow 775 s6Step277ExitGvExtra) ([]) s6Step277ExitGv_Incoming s6Step277ExitGv_checked h4 s6Step277ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step277ExitFvBefore s6Step277ExitFvAfter s6Step277ExitGvAfter
    s6Step277ExitFvRow s6Step277ExitFvOut 154 [] [(s6Step277ExitGvRow,153)] [[]] [s6Step277ExitGvOut]
    (shrinkRow 776 s6Step277ExitFvExtra) ((shrinkRow 775 s6Step277ExitGvExtra ++ [])) s6Step277ExitFv_Incoming s6Step277ExitFv_checked h3 s6Step277ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step277ExitFBefore s6Step277ExitFAfter s6Step277ExitGvAfter
    s6Step277ExitFRow s6Step277ExitFOut 132 [] [(s6Step277ExitFvRow,154),(s6Step277ExitGvRow,153)] [[],[]] [s6Step277ExitFvOut,s6Step277ExitGvOut]
    (shrinkRow 795 s6Step277ExitFExtra) ((shrinkRow 776 s6Step277ExitFvExtra ++ (shrinkRow 775 s6Step277ExitGvExtra ++ []))) s6Step277ExitF_Incoming s6Step277ExitF_checked h2 s6Step277ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step277ExitGBefore s6Step277ExitGAfter s6Step277ExitGvAfter
    s6Step277ExitGRow s6Step277ExitGOut 132 [] [(s6Step277ExitFRow,132),(s6Step277ExitFvRow,154),(s6Step277ExitGvRow,153)] [[],[],[]] [s6Step277ExitFOut,s6Step277ExitFvOut,s6Step277ExitGvOut]
    (shrinkRow 777 s6Step277ExitGExtra) ((shrinkRow 795 s6Step277ExitFExtra ++ (shrinkRow 776 s6Step277ExitFvExtra ++ (shrinkRow 775 s6Step277ExitGvExtra ++ [])))) s6Step277ExitG_Incoming s6Step277ExitG_checked h1 s6Step277ExitG_Outgoing
  exact h0

private theorem s6Step277ExitBank_checked : compileHmrBankResizeLog .exit s6Step277ExitGBefore ⟨s6Step277ExitFRow,s6Step277ExitGRow,s6Step277ExitFvRow,s6Step277ExitGvRow⟩ ⟨132,132,154,153⟩ [[],[],[],[]]=
    some (s6Step277ExitGvAfter,⟨s6Step277ExitFOut,s6Step277ExitGOut,s6Step277ExitFvOut,s6Step277ExitGvOut⟩,(shrinkRow 777 s6Step277ExitGExtra ++ (shrinkRow 795 s6Step277ExitFExtra ++ (shrinkRow 776 s6Step277ExitFvExtra ++ (shrinkRow 775 s6Step277ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step277ExitBank_rows]
  rfl

private theorem s6Step277Add0_apart : Disjoint s6Step277Add0Arena.live s6Step277Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step277Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277Add0_card : s6Step277Add0Arena.live.card=899 := by
  decide +kernel

private theorem s6Step277Add0_borrowed : s6Step277Add0Arena.checkBorrow (hmrHybridCount s6Step277Add0Arena s6Step277Add0B.length) s6Step277Add0Work=some s6Step277Add0During := by
  have len : s6Step277Add0Work.length=hmrHybridCount s6Step277Add0Arena s6Step277Add0B.length := by
    rw [hmrHybridCount,s6Step277Add0_card]
    decide +kernel
  have nd : s6Step277Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step277Add0Arena s6Step277Add0During s6Step277Add0Work.toFinset s6Step277Add0_bounded s6Step277Add0_apart rfl

private theorem s6Step277Add0_distinct : (813::768::809::(s6Step277Add0A++s6Step277Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277Add0_owned : (813::768::809::(s6Step277Add0A++s6Step277Add0B)).toFinset⊆s6Step277Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step277Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277Add0_checked : compileHmrHybridCinLog s6Step277Add0Arena 768 813 809 s6Step277Add0A s6Step277Add0B s6Step277Add0Work=some s6Step277Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step277Add0Arena s6Step277Add0During 768 813 809 s6Step277Add0A s6Step277Add0B s6Step277Add0Work
    (by decide +kernel) (by decide +kernel) s6Step277Add0_distinct
    (fun q hq => s6Step277Add0_owned (List.mem_toFinset.mpr hq)) s6Step277Add0_borrowed

private theorem s6Step277Add1_apart : Disjoint s6Step277Add1Arena.live s6Step277Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step277Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277Add1_card : s6Step277Add1Arena.live.card=899 := by
  decide +kernel

private theorem s6Step277Add1_borrowed : s6Step277Add1Arena.checkBorrow (hmrHybridCount s6Step277Add1Arena s6Step277Add1B.length) s6Step277Add1Work=some s6Step277Add1During := by
  have len : s6Step277Add1Work.length=hmrHybridCount s6Step277Add1Arena s6Step277Add1B.length := by
    rw [hmrHybridCount,s6Step277Add1_card]
    decide +kernel
  have nd : s6Step277Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step277Add1Arena s6Step277Add1During s6Step277Add1Work.toFinset s6Step277Add1_bounded s6Step277Add1_apart rfl

private theorem s6Step277Add1_distinct : (813::768::809::(s6Step277Add1A++s6Step277Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277Add1_owned : (813::768::809::(s6Step277Add1A++s6Step277Add1B)).toFinset⊆s6Step277Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step277Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277Add1_checked : compileHmrHybridCinLog s6Step277Add1Arena 768 813 809 s6Step277Add1A s6Step277Add1B s6Step277Add1Work=some s6Step277Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step277Add1Arena s6Step277Add1During 768 813 809 s6Step277Add1A s6Step277Add1B s6Step277Add1Work
    (by decide +kernel) (by decide +kernel) s6Step277Add1_distinct
    (fun q hq => s6Step277Add1_owned (List.mem_toFinset.mpr hq)) s6Step277Add1_borrowed

private theorem s6Step277F4_apart : Disjoint (s6Step277Add0A++s6Step277Add0B).toFinset (s6Step277Add1A++s6Step277Add1B).toFinset := by
  have nd : ((s6Step277Add0A++s6Step277Add0B)++(s6Step277Add1A++s6Step277Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step277F4_carry : s6Step277F4FlagArena.checkBorrow 1 [809]=some s6Step277Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step277F4FlagArena,s6Step277HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step277F4FlagArena,s6Step277HeadFvAfter,s6Step277Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step277F4_distinct : (877::768::813::809::((s6Step277Add0A++s6Step277Add1A)++(s6Step277Add0B++s6Step277Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277F4_flag : s6Step277HeadFvAfter.checkBorrow 1 [813]=some s6Step277F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step277HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step277F4_owned : (877::768::((s6Step277Add0A++s6Step277Add1A)++(s6Step277Add0B++s6Step277Add1B))).toFinset⊆s6Step277HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step277HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277F4_checked : compileHmrHybridF4Log s6Step277HeadFvAfter 877 768 s6Step277Add0A s6Step277Add0B s6Step277Add1A s6Step277Add1B [813] [809] s6Step277Add0Work s6Step277Add1Work=some s6Step277F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step277HeadFvAfter s6Step277F4FlagArena s6Step277Add0Arena s6Step277Add0During s6Step277Add1During 877 768
    s6Step277Add0A s6Step277Add0B s6Step277Add1A s6Step277Add1B [813] [809] s6Step277Add0Work s6Step277Add1Work
    (fun q hq => s6Step277F4_owned (List.mem_toFinset.mpr hq)) s6Step277F4_flag s6Step277F4_carry
    s6Step277F4_distinct s6Step277F4_apart s6Step277Add0_checked s6Step277Add1_checked

private theorem s6Step277Front_branch : s6Step277FrontSigmaArena.checkBorrow 1 [768]=some s6Step277HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step277FrontSigmaArena,s6Step277EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step277FrontSigmaArena,s6Step277EntryGvAfter,s6Step277HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step277Front_entry : HmrFrontEntryValid s6Step277EntryFBefore s6Step277FrontBank 132 154 ⟨132,132,154,153⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step277FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step277EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step277EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step277FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step277Front_sigma : s6Step277EntryGvAfter.checkBorrow 1 [877]=some s6Step277FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step277EntryGvAfter,arenaWires]
  · rfl

private def s6Step277HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277HeadFBefore : Arena := s6Step277HeadGAfter

private def s6Step277HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step277HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802],776⟩

private def s6Step277HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],777⟩

private def s6Step277HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 882],775⟩

private theorem s6Step277HeadBank_incomingDistinct : ([s6Step277HeadGRow,s6Step277HeadFRow,s6Step277HeadGvRow,s6Step277HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277HeadF_Incoming : rowsOwned s6Step277HeadFBefore [s6Step277HeadFRow,s6Step277HeadGvRow,s6Step277HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277HeadGRow,s6Step277HeadFRow,s6Step277HeadGvRow,s6Step277HeadFvRow] 1 s6Step277HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277HeadBank_outgoingOwned : rowsOwned s6Step277HeadFvAfter [s6Step277HeadGOut,s6Step277HeadFOut,s6Step277HeadGvOut,s6Step277HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step277HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277HeadF_Outgoing : rowsOwned s6Step277HeadFvAfter [s6Step277HeadFOut,s6Step277HeadGvOut,s6Step277HeadFvOut] :=
  hmrRows_owned_drop s6Step277HeadFvAfter [s6Step277HeadGOut,s6Step277HeadFOut,s6Step277HeadGvOut,s6Step277HeadFvOut] 1 s6Step277HeadBank_outgoingOwned

private theorem s6Step277HeadF_distinct : (s6Step277HeadFRow.sign::s6Step277HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277HeadF_owned : (s6Step277HeadFRow.sign::s6Step277HeadFRow.payload).toFinset⊆s6Step277HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277HeadF_reserved : s6Step277HeadFBefore.reserve s6Step277HeadFFresh.toFinset=some s6Step277HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step277HeadFFresh,arenaWires]
  · norm_num [s6Step277HeadFBefore,s6Step277HeadGAfter,s6Step277HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step277HeadFAfter,s6Step277HeadFBefore,s6Step277HeadGAfter,s6Step277HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step277HeadF_checked : planRowResizeLog s6Step277HeadFBefore s6Step277HeadFRow 133 s6Step277HeadFFresh=
    some (s6Step277HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 779],795⟩,growRow 795 s6Step277HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step277HeadFBefore s6Step277HeadFAfter s6Step277HeadFRow 133 s6Step277HeadFFresh
    s6Step277HeadF_distinct s6Step277HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step277HeadF_reserved
  have rowEq : WindowRow.mk (s6Step277HeadFRow.payload++s6Step277HeadFFresh) s6Step277HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 779],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step277HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step277HeadFvBefore : Arena := s6Step277HeadGvAfter

private theorem s6Step277HeadFv_Incoming : rowsOwned s6Step277HeadFvBefore [s6Step277HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277HeadGRow,s6Step277HeadFRow,s6Step277HeadGvRow,s6Step277HeadFvRow] 3 s6Step277HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277HeadFv_Outgoing : rowsOwned s6Step277HeadFvAfter [s6Step277HeadFvOut] :=
  hmrRows_owned_drop s6Step277HeadFvAfter [s6Step277HeadGOut,s6Step277HeadFOut,s6Step277HeadGvOut,s6Step277HeadFvOut] 3 s6Step277HeadBank_outgoingOwned

private theorem s6Step277HeadFv_distinct : (s6Step277HeadFvRow.sign::s6Step277HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277HeadFv_owned : (s6Step277HeadFvRow.sign::s6Step277HeadFvRow.payload).toFinset⊆s6Step277HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277HeadFv_reserved : s6Step277HeadFvBefore.reserve s6Step277HeadFvFresh.toFinset=some s6Step277HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step277HeadFvFresh,arenaWires]
  · norm_num [s6Step277HeadFvBefore,s6Step277HeadGvAfter,s6Step277HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step277HeadFvAfter,s6Step277HeadFvBefore,s6Step277HeadGvAfter,s6Step277HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step277HeadFv_checked : planRowResizeLog s6Step277HeadFvBefore s6Step277HeadFvRow 155 s6Step277HeadFvFresh=
    some (s6Step277HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 927],776⟩,growRow 776 s6Step277HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step277HeadFvBefore s6Step277HeadFvAfter s6Step277HeadFvRow 155 s6Step277HeadFvFresh
    s6Step277HeadFv_distinct s6Step277HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step277HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step277HeadFvRow.payload++s6Step277HeadFvFresh) s6Step277HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 927],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step277HeadG_Incoming : rowsOwned s6Step277HeadGBefore [s6Step277HeadGRow,s6Step277HeadFRow,s6Step277HeadGvRow,s6Step277HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277HeadGRow,s6Step277HeadFRow,s6Step277HeadGvRow,s6Step277HeadFvRow] 0 s6Step277HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277HeadG_Outgoing : rowsOwned s6Step277HeadFvAfter [s6Step277HeadGOut,s6Step277HeadFOut,s6Step277HeadGvOut,s6Step277HeadFvOut] :=
  hmrRows_owned_drop s6Step277HeadFvAfter [s6Step277HeadGOut,s6Step277HeadFOut,s6Step277HeadGvOut,s6Step277HeadFvOut] 0 s6Step277HeadBank_outgoingOwned

private theorem s6Step277HeadG_distinct : (s6Step277HeadGRow.sign::s6Step277HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277HeadG_owned : (s6Step277HeadGRow.sign::s6Step277HeadGRow.payload).toFinset⊆s6Step277HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277HeadG_reserved : s6Step277HeadGBefore.reserve s6Step277HeadGFresh.toFinset=some s6Step277HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step277HeadGFresh,arenaWires]
  · norm_num [s6Step277HeadGBefore,s6Step277HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step277HeadGAfter,s6Step277HeadGBefore,s6Step277HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step277HeadG_checked : planRowResizeLog s6Step277HeadGBefore s6Step277HeadGRow 133 s6Step277HeadGFresh=
    some (s6Step277HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 867],777⟩,growRow 777 s6Step277HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step277HeadGBefore s6Step277HeadGAfter s6Step277HeadGRow 133 s6Step277HeadGFresh
    s6Step277HeadG_distinct s6Step277HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step277HeadG_reserved
  have rowEq : WindowRow.mk (s6Step277HeadGRow.payload++s6Step277HeadGFresh) s6Step277HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 867],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step277HeadGvBefore : Arena := s6Step277HeadFAfter

private theorem s6Step277HeadGv_Incoming : rowsOwned s6Step277HeadGvBefore [s6Step277HeadGvRow,s6Step277HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step277HeadGRow,s6Step277HeadFRow,s6Step277HeadGvRow,s6Step277HeadFvRow] 2 s6Step277HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step277HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step277HeadGv_Outgoing : rowsOwned s6Step277HeadFvAfter [s6Step277HeadGvOut,s6Step277HeadFvOut] :=
  hmrRows_owned_drop s6Step277HeadFvAfter [s6Step277HeadGOut,s6Step277HeadFOut,s6Step277HeadGvOut,s6Step277HeadFvOut] 2 s6Step277HeadBank_outgoingOwned

private theorem s6Step277HeadGv_distinct : (s6Step277HeadGvRow.sign::s6Step277HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step277HeadGv_owned : (s6Step277HeadGvRow.sign::s6Step277HeadGvRow.payload).toFinset⊆s6Step277HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step277HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step277HeadGv_reserved : s6Step277HeadGvBefore.reserve s6Step277HeadGvFresh.toFinset=some s6Step277HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step277HeadGvFresh,arenaWires]
  · norm_num [s6Step277HeadGvBefore,s6Step277HeadFAfter,s6Step277HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step277HeadGvAfter,s6Step277HeadGvBefore,s6Step277HeadFAfter,s6Step277HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step277HeadGv_checked : planRowResizeLog s6Step277HeadGvBefore s6Step277HeadGvRow 155 s6Step277HeadGvFresh=
    some (s6Step277HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 882, 881],775⟩,growRow 775 s6Step277HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step277HeadGvBefore s6Step277HeadGvAfter s6Step277HeadGvRow 155 s6Step277HeadGvFresh
    s6Step277HeadGv_distinct s6Step277HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step277HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step277HeadGvRow.payload++s6Step277HeadGvFresh) s6Step277HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 882, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step277HeadBank_rows : planWindowRowsLog s6Step277HeadGBefore [(s6Step277HeadGRow,133),(s6Step277HeadFRow,133),(s6Step277HeadGvRow,155),(s6Step277HeadFvRow,155)] [s6Step277HeadGFresh,s6Step277HeadFFresh,s6Step277HeadGvFresh,s6Step277HeadFvFresh]=
    some (s6Step277HeadFvAfter,[s6Step277HeadGOut,s6Step277HeadFOut,s6Step277HeadGvOut,s6Step277HeadFvOut],(growRow 777 s6Step277HeadGFresh ++ (growRow 795 s6Step277HeadFFresh ++ (growRow 775 s6Step277HeadGvFresh ++ (growRow 776 s6Step277HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step277HeadFvAfter [] []=some (s6Step277HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step277HeadFvBefore s6Step277HeadFvAfter s6Step277HeadFvAfter
    s6Step277HeadFvRow s6Step277HeadFvOut 155 s6Step277HeadFvFresh [] [] []
    (growRow 776 s6Step277HeadFvFresh) ([]) s6Step277HeadFv_Incoming s6Step277HeadFv_checked h4 s6Step277HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step277HeadGvBefore s6Step277HeadGvAfter s6Step277HeadFvAfter
    s6Step277HeadGvRow s6Step277HeadGvOut 155 s6Step277HeadGvFresh [(s6Step277HeadFvRow,155)] [s6Step277HeadFvFresh] [s6Step277HeadFvOut]
    (growRow 775 s6Step277HeadGvFresh) ((growRow 776 s6Step277HeadFvFresh ++ [])) s6Step277HeadGv_Incoming s6Step277HeadGv_checked h3 s6Step277HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step277HeadFBefore s6Step277HeadFAfter s6Step277HeadFvAfter
    s6Step277HeadFRow s6Step277HeadFOut 133 s6Step277HeadFFresh [(s6Step277HeadGvRow,155),(s6Step277HeadFvRow,155)] [s6Step277HeadGvFresh,s6Step277HeadFvFresh] [s6Step277HeadGvOut,s6Step277HeadFvOut]
    (growRow 795 s6Step277HeadFFresh) ((growRow 775 s6Step277HeadGvFresh ++ (growRow 776 s6Step277HeadFvFresh ++ []))) s6Step277HeadF_Incoming s6Step277HeadF_checked h2 s6Step277HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step277HeadGBefore s6Step277HeadGAfter s6Step277HeadFvAfter
    s6Step277HeadGRow s6Step277HeadGOut 133 s6Step277HeadGFresh [(s6Step277HeadFRow,133),(s6Step277HeadGvRow,155),(s6Step277HeadFvRow,155)] [s6Step277HeadFFresh,s6Step277HeadGvFresh,s6Step277HeadFvFresh] [s6Step277HeadFOut,s6Step277HeadGvOut,s6Step277HeadFvOut]
    (growRow 777 s6Step277HeadGFresh) ((growRow 795 s6Step277HeadFFresh ++ (growRow 775 s6Step277HeadGvFresh ++ (growRow 776 s6Step277HeadFvFresh ++ [])))) s6Step277HeadG_Incoming s6Step277HeadG_checked h1 s6Step277HeadG_Outgoing
  exact h0

private theorem s6Step277HeadBank_checked : compileHmrBankResizeLog .headroom s6Step277HeadGBefore ⟨s6Step277HeadFRow,s6Step277HeadGRow,s6Step277HeadFvRow,s6Step277HeadGvRow⟩ ⟨133,133,155,155⟩ [s6Step277HeadGFresh,s6Step277HeadFFresh,s6Step277HeadGvFresh,s6Step277HeadFvFresh]=
    some (s6Step277HeadFvAfter,⟨s6Step277HeadFOut,s6Step277HeadGOut,s6Step277HeadFvOut,s6Step277HeadGvOut⟩,(growRow 777 s6Step277HeadGFresh ++ (growRow 795 s6Step277HeadFFresh ++ (growRow 775 s6Step277HeadGvFresh ++ (growRow 776 s6Step277HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step277HeadBank_rows]
  rfl

private theorem s6Step277Front_checked : compileHmrSourceFrontLog s6Step277EntryFBefore s6Step277FrontBank 132 154 ⟨132,132,154,153⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step277FrontLog=some s6Step277FrontPlan := by
  have pairEq : s6Step277FrontPair=⟨s6Step277HeadFRow,s6Step277HeadGRow,s6Step277HeadFvRow,s6Step277HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step277FrontHead=⟨s6Step277ExitFRow,s6Step277ExitGRow,s6Step277ExitFvRow,s6Step277ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step277Add0A=s6Step277FrontHead.f.wires := by decide +kernel
  have gEq : s6Step277Add0B=s6Step277FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step277Add1A=s6Step277FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step277Add1B=s6Step277FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step277EntryFBefore s6Step277FrontBank 132 154 ⟨132,132,154,153⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step277FrontLog s6Step277FrontPlan
  · exact s6Step277Front_entry
  · exact s6Step277EntryBank_checked
  · exact s6Step277Front_sigma
  · rfl
  · exact s6Step277Front_branch
  · rfl
  · simpa only [s6Step277FrontPlan,pairEq] using s6Step277HeadBank_checked
  · simpa only [s6Step277FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step277F4_checked
  · exact s6Step277Counter_checked
  · rfl
  · simpa only [s6Step277FrontPlan,headEq] using s6Step277ExitBank_checked

private theorem s6Step277Complete_explicit_checked : compileHmrEarlyStepLog s6Step277EntryFBefore s6Step277FrontBank 132 154 ⟨132,132,154,153⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step277CompleteLog=some s6Step277CompletePlan := by
  let Q := s6Step277EarlyControlPlan
  have hq := s6Step277EarlyControl_plan_checked
  have fv1 : s6Step277CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step277CompleteOut.fv.payload[2]?.getD s6Step277CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step277CompleteOut.fv.payload[3]?.getD s6Step277CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step277CompleteOut.fv.payload[4]?.getD s6Step277CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step277EntryFBefore s6Step277EarlyControlArena s6Step277FrontBank 132 154 ⟨132,132,154,153⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step277CompleteLog s6Step277FrontPlan Q
    s6Step277Front_checked s6Step277Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step277Complete_owned s6Step277Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step277EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 s6Step277CompleteOut.fv.second (s6Step277CompleteOut.fv.payload[2]?.getD s6Step277CompleteOut.fv.sign) (s6Step277CompleteOut.fv.payload[3]?.getD s6Step277CompleteOut.fv.sign) (s6Step277CompleteOut.fv.payload[4]?.getD s6Step277CompleteOut.fv.sign) 768 53 s6Step277EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep277Arena : Arena := s6Step277EntryFBefore
def s6PrivateStep277Bank : WindowBank := s6Step277FrontBank
def s6PrivateStep277Spec : HmrSourceWalkStepLog := ⟨132,154,⟨132,132,154,153⟩,53,.early s6Step277CompleteLog⟩
def s6PrivateStep277Plan : HmrSourceStepPlan := .early s6Step277CompletePlan
theorem s6PrivateStep277_source : s6PrivateStep277Spec=s6ObservedLogs272[5] := rfl
theorem s6PrivateStep277_checked : compileHmrSourceStepLog s6PrivateStep277Arena s6PrivateStep277Bank
    s6PrivateStep277Spec.fgWidth s6PrivateStep277Spec.vWidth s6PrivateStep277Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]
    6 498 277 s6PrivateStep277Spec.need none s6PrivateStep277Spec.log=some s6PrivateStep277Plan := by
  change compileHmrSourceStepLog s6Step277EntryFBefore s6Step277FrontBank 132 154 ⟨132,132,154,153⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 6 498 277 53 none (.early s6Step277CompleteLog)=some (.early s6Step277CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 277<498)]
  rw [s6Step277Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
