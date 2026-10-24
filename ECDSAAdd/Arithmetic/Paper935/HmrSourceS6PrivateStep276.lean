import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep274
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

private def s6Step276CompleteMoves : List (Wire × Wire) := [(768,388)]

private def s6Step276EarlyControlLog : HmrEarlyControlLog := ⟨[768, 867, 779, 881, 927],[813],[809],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step276FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [881], [], []],[[927], [779], [867], [802]],[[], [], [], []]⟩,[877],[882],[813],[809],[830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[813, 809, 830, 805]⟩

private def s6Step276CompleteLog : HmrEarlyStepLog := ⟨s6Step276FrontLog,s6Step276CompleteMoves,s6Step276EarlyControlLog⟩

private def s6Step276ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387],795⟩

private def s6Step276ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802],776⟩

private def s6Step276ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],777⟩

private def s6Step276ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784],775⟩

private def s6Step276FrontOut : WindowBank := ⟨s6Step276ExitFOut,s6Step276ExitGOut,s6Step276ExitFvOut,s6Step276ExitGvOut⟩

private def s6Step276CompleteOut : WindowBank := s6Step276FrontOut.repacked s6Step276CompleteMoves

private def s6Step276EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step276EarlyControlPositiveArena,[813],s6Step276EarlyControlEqualityArena,[809],⟨⟨877,false⟩,[⟨⟨813,false⟩,809⟩]⟩⟩

private def s6Step276EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,768⟩,⟨⟨772,false⟩,867⟩,⟨⟨771,false⟩,779⟩,⟨⟨770,false⟩,881⟩,⟨⟨769,false⟩,927⟩]⟩

private def s6Step276EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step276EarlyControlZeroArena,s6Step276EarlyControlZeroPlan,s6Step276EarlyControlClassPlan,s6Step276EarlyControlFlagArena,s6Step276EarlyControlFittedArena,s6Step276EarlyControlHistoryArena,s6Step276EarlyControlSigmaArena,s6Step276EarlyControlOutputArena,s6Step276EarlyControlLog⟩

private def s6Step276CounterWork : List Wire := [813, 809, 830, 805]

private theorem s6Step276Counter_bounded : s6Step276CounterWork.toFinset⊆arenaWires := by norm_num [s6Step276CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step276HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276CounterDuring : Arena := ⟨s6Step276HeadFvAfter.live∪s6Step276CounterWork.toFinset,Finset.union_subset s6Step276HeadFvAfter.bounded s6Step276Counter_bounded⟩

private def s6Step276EntryFFresh : List Wire := []

private def s6Step276EntryFvFresh : List Wire := []

private def s6Step276EntryGFresh : List Wire := [881]

private def s6Step276EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276EntryGvAfter : Arena := s6Step276EntryGAfter

private def s6Step276EntryGvFresh : List Wire := []

private def s6Step276ExitFExtra : List Wire := [388, 779]

private def s6Step276ExitGExtra : List Wire := [881, 927]

private def s6Step276ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<388) ∨ (389≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276ExitGvExtra : List Wire := [867]

private def s6Step276Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step276Add0_bounded : s6Step276Add0Work.toFinset⊆arenaWires := by
  have h : s6Step276Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step276Add0During : Arena := ⟨s6Step276Add0Arena.live∪s6Step276Add0Work.toFinset,Finset.union_subset s6Step276Add0Arena.bounded s6Step276Add0_bounded⟩

private def s6Step276Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step276Add1_bounded : s6Step276Add1Work.toFinset⊆arenaWires := by
  have h : s6Step276Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step276Add1During : Arena := ⟨s6Step276Add1Arena.live∪s6Step276Add1Work.toFinset,Finset.union_subset s6Step276Add1Arena.bounded s6Step276Add1_bounded⟩

private def s6Step276F4FlagArena : Arena := ⟨s6Step276HeadFvAfter.live∪{813},Finset.union_subset s6Step276HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step276F4Plan : HmrHybridF4Plan := ⟨s6Step276F4FlagArena,[813],s6Step276Add0Arena,[809],s6Step276Add0During,s6Step276Add0Work,s6Step276Add1During,s6Step276Add1Work⟩

private def s6Step276HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 779],795⟩

private def s6Step276HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802],776⟩

private def s6Step276HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 881, 927],777⟩

private def s6Step276HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 867],775⟩

private def s6Step276FrontHead : WindowBank := ⟨s6Step276HeadFOut,s6Step276HeadGOut,s6Step276HeadFvOut,s6Step276HeadGvOut⟩

private def s6Step276EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388],795⟩

private def s6Step276EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780],776⟩

private def s6Step276EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 881],777⟩

private def s6Step276EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784],775⟩

private def s6Step276FrontPair : WindowBank := ⟨s6Step276EntryFOut,s6Step276EntryGOut,s6Step276EntryFvOut,s6Step276EntryGvOut⟩

private def s6Step276FrontSigmaArena : Arena := ⟨s6Step276EntryGvAfter.live∪{877},Finset.union_subset s6Step276EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step276HeadFFresh : List Wire := [779]

private def s6Step276HeadFvFresh : List Wire := [802]

private def s6Step276HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276HeadGFresh : List Wire := [927]

private def s6Step276HeadGvFresh : List Wire := [867]

private def s6Step276FrontPlan : HmrSourceFront := ⟨s6Step276EntryGvAfter,s6Step276FrontPair,(growRow 795 s6Step276EntryFFresh ++ (growRow 777 s6Step276EntryGFresh ++ (growRow 776 s6Step276EntryFvFresh ++ (growRow 775 s6Step276EntryGvFresh ++ [])))),s6Step276FrontSigmaArena,[877],s6Step276HeadGBefore,[882],
  s6Step276HeadFvAfter,s6Step276FrontHead,(growRow 777 s6Step276HeadGFresh ++ (growRow 795 s6Step276HeadFFresh ++ (growRow 775 s6Step276HeadGvFresh ++ (growRow 776 s6Step276HeadFvFresh ++ [])))),s6Step276F4Plan,s6Step276CounterDuring,s6Step276CounterWork,s6Step276ExitGvAfter,s6Step276FrontOut,(shrinkRow 777 s6Step276ExitGExtra ++ (shrinkRow 795 s6Step276ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step276ExitGvExtra ++ []))))⟩

private def s6Step276CompletePlan : HmrEarlyStepPlan := ⟨s6Step276FrontPlan,s6Step276EarlyControlArena,s6Step276EarlyControlPlan,s6Step276CompleteMoves⟩

private theorem s6Step276Complete_apart : List.Disjoint (s6Step276CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [877, 882, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] := by
  have nd : ((s6Step276CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[877, 882, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step276Complete_owned : (s6Step276CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step276EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step276CompleteMoveArena : Arena := ⟨s6Step276ExitGvAfter.live∪{388},Finset.union_subset s6Step276ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step276Complete_repack : s6Step276ExitGvAfter.checkRepack s6Step276CompleteMoves=some s6Step276EarlyControlArena := by
  have owned : 768∈s6Step276ExitGvAfter.live := by norm_num [s6Step276ExitGvAfter,arenaWires]
  have reserve : s6Step276ExitGvAfter.reserve {388}=some s6Step276CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step276ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step276CompleteMoveArena.retireSet {768}=s6Step276EarlyControlArena := by
    unfold Arena.retireSet s6Step276EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step276CompleteMoveArena,s6Step276ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step276CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step276CompleteMoveArena.retireSet {768}).checkRepack []=some s6Step276EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step276EarlyControl_branchOwned : ([882] : List Wire).toFinset⊆s6Step276EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlSigmaArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EarlyControl_branch : compileHmrBranchRetirement s6Step276EarlyControlSigmaArena 882=some s6Step276EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step276EarlyControl_branchOwned
  · ext q
    simp [s6Step276EarlyControlOutputArena,s6Step276EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step276EarlyControl_classEqualityBorrow : s6Step276EarlyControlPositiveArena.checkBorrow (([877, 813] : List Wire).length-1) s6Step276EarlyControlLog.classWork=some s6Step276EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step276EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step276EarlyControlEqualityArena,s6Step276EarlyControlPositiveArena,s6Step276EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step276EarlyControl_classEqualityOwned : ([877, 813] : List Wire).toFinset⊆s6Step276EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EarlyControl_classEquality : compileHmrEqualityLog s6Step276EarlyControlPositiveArena [877, 813] 0 s6Step276EarlyControlLog.classWork=some (s6Step276EarlyControlEqualityArena,s6Step276EarlyControlLog.classWork,s6Step276EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step276EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step276EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step276EarlyControl_classOwned : ([769, 927, 877] : List Wire).toFinset⊆s6Step276EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EarlyControl_positiveBorrow : s6Step276EarlyControlZeroArena.checkBorrow (1) s6Step276EarlyControlLog.positiveWork=some s6Step276EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step276EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step276EarlyControlPositiveArena,s6Step276EarlyControlZeroArena,s6Step276EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step276EarlyControl_class : compileHmrSourceClassLog s6Step276EarlyControlZeroArena false 769 s6Step276EarlyControlZeroPlan.top 0 877 s6Step276EarlyControlLog.positiveWork s6Step276EarlyControlLog.classWork=some s6Step276EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step276EarlyControlClassPlan s6Step276EarlyControlZeroArena false 769 s6Step276EarlyControlZeroPlan.top 0 877
  constructor
  · decide +kernel
  · exact s6Step276EarlyControl_classOwned
  · exact s6Step276EarlyControl_positiveBorrow
  · exact s6Step276EarlyControl_classEquality

private theorem s6Step276EarlyControl_entryRecordOwned : ([882, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step276EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EarlyControl_entrySigmaOwned : ([877, 254] : List Wire).toFinset⊆s6Step276EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EarlyControl_fitBorrow : s6Step276EarlyControlFlagArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step276EarlyControlLog.recordFresh=some s6Step276EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step276EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step276EarlyControlFittedArena,s6Step276EarlyControlFlagArena,s6Step276EarlyControlLog,arenaWires]

private theorem s6Step276EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step276EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EarlyControl_fit : compileHmrRecordGrowLog s6Step276EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step276EarlyControlLog.recordFresh=some s6Step276EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step276EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step276EarlyControl_fitBorrow

private theorem s6Step276EarlyControl_flagsBorrow : s6Step276EarlyControlEqualityArena.checkBorrow (6) s6Step276EarlyControlLog.flagWork=some s6Step276EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step276EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step276EarlyControlFlagArena,s6Step276EarlyControlEqualityArena,s6Step276EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step276EarlyControl_flagsOwned : ([809, 253, 252, 251] : List Wire).toFinset⊆s6Step276EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EarlyControl_flags : compileHmrFlagsLog s6Step276EarlyControlClassPlan.equalityArena s6Step276EarlyControlClassPlan.equality.top 253 252 251 s6Step276EarlyControlLog.flagWork=some s6Step276EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step276EarlyControl_flagsOwned⟩
  · exact s6Step276EarlyControl_flagsBorrow

private theorem s6Step276EarlyControl_historyBorrow : s6Step276EarlyControlArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step276EarlyControlLog.recordFresh=some s6Step276EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step276EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step276EarlyControlHistoryArena,s6Step276EarlyControlArena,s6Step276EarlyControlLog,arenaWires]

private theorem s6Step276EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step276EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EarlyControl_history : compileHmrRecordGrowLog s6Step276EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step276EarlyControlLog.recordFresh=some s6Step276EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step276EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step276EarlyControl_historyBorrow

private theorem s6Step276EarlyControl_sigmaOwned : ([254, 877] : List Wire).toFinset⊆s6Step276EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EarlyControl_sigmaReleaseOwned : ([877] : List Wire).toFinset⊆s6Step276EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EarlyControl_sigmaRelease : s6Step276EarlyControlHistoryArena.release {877} (fun _ => false)=some s6Step276EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step276EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step276EarlyControlSigmaArena,s6Step276EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step276EarlyControl_sigma : compileHmrSigmaDropLog s6Step276EarlyControlHistoryArena false 0 0 254 877 []=some s6Step276EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step276EarlyControl_sigmaOwned⟩
  · exact s6Step276EarlyControl_sigmaRelease

private theorem s6Step276EarlyControl_zeroBorrow : s6Step276EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step276EarlyControlLog.zeroWork=some s6Step276EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step276EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step276EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step276EarlyControlZeroArena,s6Step276EarlyControlArena,s6Step276EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step276EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step276EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step276EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EarlyControl_zero : compileHmrEqualityLog s6Step276EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step276EarlyControlLog.zeroWork=some (s6Step276EarlyControlZeroArena,s6Step276EarlyControlLog.zeroWork,s6Step276EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step276EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step276EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step276EarlyControl_logged : s6Step276EarlyControlPlan.Logged s6Step276EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 254 253 252 251 882 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step276EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step276EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step276EarlyControl_zero
  · exact s6Step276EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step276EarlyControl_flags
  · exact s6Step276EarlyControl_fit
  · exact s6Step276EarlyControl_history
  · exact s6Step276EarlyControl_sigma
  · exact s6Step276EarlyControl_branch

private theorem s6Step276EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step276EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 254 253 252 251 882 53 s6Step276EarlyControlLog=some s6Step276EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step276EarlyControlPlan s6Step276EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 254 253 252 251 882 53 s6Step276EarlyControl_logged

private def s6Step276EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388],795⟩

private def s6Step276EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780],776⟩

private def s6Step276EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],777⟩

private def s6Step276EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784],775⟩

private def s6Step276FrontBank : WindowBank := ⟨s6Step276EntryFRow,s6Step276EntryGRow,s6Step276EntryFvRow,s6Step276EntryGvRow⟩

private def s6Step276Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 779, 795]

private def s6Step276Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 881, 927, 777]

private def s6Step276Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 776]

private def s6Step276Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 867, 775]

private theorem s6Step276Counter_apart : Disjoint s6Step276HeadFvAfter.live s6Step276CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step276HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276Counter_borrowed : s6Step276HeadFvAfter.checkBorrow 4 s6Step276CounterWork=some s6Step276CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step276HeadFvAfter s6Step276CounterDuring s6Step276CounterWork.toFinset s6Step276Counter_bounded s6Step276Counter_apart rfl

private theorem s6Step276Counter_owned : (877::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step276HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step276HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276Counter_checked : compileHmrCounterStepLog s6Step276HeadFvAfter true 877 [774, 773, 772, 771, 770, 769] s6Step276CounterWork=some s6Step276CounterDuring := by
  have owned : ∀q∈877::[774, 773, 772, 771, 770, 769],q∈s6Step276HeadFvAfter.live := fun q hq => s6Step276Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step276Counter_borrowed

private def s6Step276EntryFAfter : Arena := s6Step276EntryFBefore

private theorem s6Step276EntryBank_incomingDistinct : ([s6Step276EntryFRow,s6Step276EntryGRow,s6Step276EntryFvRow,s6Step276EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276EntryF_Incoming : rowsOwned s6Step276EntryFBefore [s6Step276EntryFRow,s6Step276EntryGRow,s6Step276EntryFvRow,s6Step276EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276EntryFRow,s6Step276EntryGRow,s6Step276EntryFvRow,s6Step276EntryGvRow] 0 s6Step276EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276EntryBank_outgoingOwned : rowsOwned s6Step276EntryGvAfter [s6Step276EntryFOut,s6Step276EntryGOut,s6Step276EntryFvOut,s6Step276EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step276EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276EntryF_Outgoing : rowsOwned s6Step276EntryGvAfter [s6Step276EntryFOut,s6Step276EntryGOut,s6Step276EntryFvOut,s6Step276EntryGvOut] :=
  hmrRows_owned_drop s6Step276EntryGvAfter [s6Step276EntryFOut,s6Step276EntryGOut,s6Step276EntryFvOut,s6Step276EntryGvOut] 0 s6Step276EntryBank_outgoingOwned

private theorem s6Step276EntryF_distinct : (s6Step276EntryFRow.sign::s6Step276EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276EntryF_owned : (s6Step276EntryFRow.sign::s6Step276EntryFRow.payload).toFinset⊆s6Step276EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EntryF_reserved : s6Step276EntryFBefore.reserve s6Step276EntryFFresh.toFinset=some s6Step276EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step276EntryFFresh,arenaWires]
  · norm_num [s6Step276EntryFBefore,s6Step276EntryFFresh,arenaWires]
  · simp only [s6Step276EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step276EntryF_checked : planRowResizeLog s6Step276EntryFBefore s6Step276EntryFRow 133 s6Step276EntryFFresh=
    some (s6Step276EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388],795⟩,growRow 795 s6Step276EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step276EntryFBefore s6Step276EntryFAfter s6Step276EntryFRow 133 s6Step276EntryFFresh
    s6Step276EntryF_distinct s6Step276EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step276EntryF_reserved
  have rowEq : WindowRow.mk (s6Step276EntryFRow.payload++s6Step276EntryFFresh) s6Step276EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step276EntryFvAfter : Arena := s6Step276EntryGAfter

private def s6Step276EntryFvBefore : Arena := s6Step276EntryGAfter

private theorem s6Step276EntryFv_Incoming : rowsOwned s6Step276EntryFvBefore [s6Step276EntryFvRow,s6Step276EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276EntryFRow,s6Step276EntryGRow,s6Step276EntryFvRow,s6Step276EntryGvRow] 2 s6Step276EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276EntryFv_Outgoing : rowsOwned s6Step276EntryGvAfter [s6Step276EntryFvOut,s6Step276EntryGvOut] :=
  hmrRows_owned_drop s6Step276EntryGvAfter [s6Step276EntryFOut,s6Step276EntryGOut,s6Step276EntryFvOut,s6Step276EntryGvOut] 2 s6Step276EntryBank_outgoingOwned

private theorem s6Step276EntryFv_distinct : (s6Step276EntryFvRow.sign::s6Step276EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276EntryFv_owned : (s6Step276EntryFvRow.sign::s6Step276EntryFvRow.payload).toFinset⊆s6Step276EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EntryFv_reserved : s6Step276EntryFvBefore.reserve s6Step276EntryFvFresh.toFinset=some s6Step276EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step276EntryFvFresh,arenaWires]
  · norm_num [s6Step276EntryFvBefore,s6Step276EntryGAfter,s6Step276EntryFvFresh,arenaWires]
  · simp only [s6Step276EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step276EntryFv_checked : planRowResizeLog s6Step276EntryFvBefore s6Step276EntryFvRow 153 s6Step276EntryFvFresh=
    some (s6Step276EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780],776⟩,growRow 776 s6Step276EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step276EntryFvBefore s6Step276EntryFvAfter s6Step276EntryFvRow 153 s6Step276EntryFvFresh
    s6Step276EntryFv_distinct s6Step276EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step276EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step276EntryFvRow.payload++s6Step276EntryFvFresh) s6Step276EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step276EntryGBefore : Arena := s6Step276EntryFBefore

private theorem s6Step276EntryG_Incoming : rowsOwned s6Step276EntryGBefore [s6Step276EntryGRow,s6Step276EntryFvRow,s6Step276EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276EntryFRow,s6Step276EntryGRow,s6Step276EntryFvRow,s6Step276EntryGvRow] 1 s6Step276EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276EntryG_Outgoing : rowsOwned s6Step276EntryGvAfter [s6Step276EntryGOut,s6Step276EntryFvOut,s6Step276EntryGvOut] :=
  hmrRows_owned_drop s6Step276EntryGvAfter [s6Step276EntryFOut,s6Step276EntryGOut,s6Step276EntryFvOut,s6Step276EntryGvOut] 1 s6Step276EntryBank_outgoingOwned

private theorem s6Step276EntryG_distinct : (s6Step276EntryGRow.sign::s6Step276EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276EntryG_owned : (s6Step276EntryGRow.sign::s6Step276EntryGRow.payload).toFinset⊆s6Step276EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EntryG_reserved : s6Step276EntryGBefore.reserve s6Step276EntryGFresh.toFinset=some s6Step276EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step276EntryGFresh,arenaWires]
  · norm_num [s6Step276EntryGBefore,s6Step276EntryFBefore,s6Step276EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step276EntryGAfter,s6Step276EntryGBefore,s6Step276EntryFBefore,s6Step276EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step276EntryG_checked : planRowResizeLog s6Step276EntryGBefore s6Step276EntryGRow 133 s6Step276EntryGFresh=
    some (s6Step276EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 881],777⟩,growRow 777 s6Step276EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step276EntryGBefore s6Step276EntryGAfter s6Step276EntryGRow 133 s6Step276EntryGFresh
    s6Step276EntryG_distinct s6Step276EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step276EntryG_reserved
  have rowEq : WindowRow.mk (s6Step276EntryGRow.payload++s6Step276EntryGFresh) s6Step276EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 881],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step276EntryGvBefore : Arena := s6Step276EntryGAfter

private theorem s6Step276EntryGv_Incoming : rowsOwned s6Step276EntryGvBefore [s6Step276EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276EntryFRow,s6Step276EntryGRow,s6Step276EntryFvRow,s6Step276EntryGvRow] 3 s6Step276EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276EntryGv_Outgoing : rowsOwned s6Step276EntryGvAfter [s6Step276EntryGvOut] :=
  hmrRows_owned_drop s6Step276EntryGvAfter [s6Step276EntryFOut,s6Step276EntryGOut,s6Step276EntryFvOut,s6Step276EntryGvOut] 3 s6Step276EntryBank_outgoingOwned

private theorem s6Step276EntryGv_distinct : (s6Step276EntryGvRow.sign::s6Step276EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276EntryGv_owned : (s6Step276EntryGvRow.sign::s6Step276EntryGvRow.payload).toFinset⊆s6Step276EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276EntryGv_reserved : s6Step276EntryGvBefore.reserve s6Step276EntryGvFresh.toFinset=some s6Step276EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step276EntryGvFresh,arenaWires]
  · norm_num [s6Step276EntryGvBefore,s6Step276EntryGAfter,s6Step276EntryGvFresh,arenaWires]
  · simp only [s6Step276EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step276EntryGv_checked : planRowResizeLog s6Step276EntryGvBefore s6Step276EntryGvRow 153 s6Step276EntryGvFresh=
    some (s6Step276EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784],775⟩,growRow 775 s6Step276EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step276EntryGvBefore s6Step276EntryGvAfter s6Step276EntryGvRow 153 s6Step276EntryGvFresh
    s6Step276EntryGv_distinct s6Step276EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step276EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step276EntryGvRow.payload++s6Step276EntryGvFresh) s6Step276EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step276EntryBank_rows : planWindowRowsLog s6Step276EntryFBefore [(s6Step276EntryFRow,133),(s6Step276EntryGRow,133),(s6Step276EntryFvRow,153),(s6Step276EntryGvRow,153)] [s6Step276EntryFFresh,s6Step276EntryGFresh,s6Step276EntryFvFresh,s6Step276EntryGvFresh]=
    some (s6Step276EntryGvAfter,[s6Step276EntryFOut,s6Step276EntryGOut,s6Step276EntryFvOut,s6Step276EntryGvOut],(growRow 795 s6Step276EntryFFresh ++ (growRow 777 s6Step276EntryGFresh ++ (growRow 776 s6Step276EntryFvFresh ++ (growRow 775 s6Step276EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step276EntryGvAfter [] []=some (s6Step276EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step276EntryGvBefore s6Step276EntryGvAfter s6Step276EntryGvAfter
    s6Step276EntryGvRow s6Step276EntryGvOut 153 s6Step276EntryGvFresh [] [] []
    (growRow 775 s6Step276EntryGvFresh) ([]) s6Step276EntryGv_Incoming s6Step276EntryGv_checked h4 s6Step276EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step276EntryFvBefore s6Step276EntryFvAfter s6Step276EntryGvAfter
    s6Step276EntryFvRow s6Step276EntryFvOut 153 s6Step276EntryFvFresh [(s6Step276EntryGvRow,153)] [s6Step276EntryGvFresh] [s6Step276EntryGvOut]
    (growRow 776 s6Step276EntryFvFresh) ((growRow 775 s6Step276EntryGvFresh ++ [])) s6Step276EntryFv_Incoming s6Step276EntryFv_checked h3 s6Step276EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step276EntryGBefore s6Step276EntryGAfter s6Step276EntryGvAfter
    s6Step276EntryGRow s6Step276EntryGOut 133 s6Step276EntryGFresh [(s6Step276EntryFvRow,153),(s6Step276EntryGvRow,153)] [s6Step276EntryFvFresh,s6Step276EntryGvFresh] [s6Step276EntryFvOut,s6Step276EntryGvOut]
    (growRow 777 s6Step276EntryGFresh) ((growRow 776 s6Step276EntryFvFresh ++ (growRow 775 s6Step276EntryGvFresh ++ []))) s6Step276EntryG_Incoming s6Step276EntryG_checked h2 s6Step276EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step276EntryFBefore s6Step276EntryFAfter s6Step276EntryGvAfter
    s6Step276EntryFRow s6Step276EntryFOut 133 s6Step276EntryFFresh [(s6Step276EntryGRow,133),(s6Step276EntryFvRow,153),(s6Step276EntryGvRow,153)] [s6Step276EntryGFresh,s6Step276EntryFvFresh,s6Step276EntryGvFresh] [s6Step276EntryGOut,s6Step276EntryFvOut,s6Step276EntryGvOut]
    (growRow 795 s6Step276EntryFFresh) ((growRow 777 s6Step276EntryGFresh ++ (growRow 776 s6Step276EntryFvFresh ++ (growRow 775 s6Step276EntryGvFresh ++ [])))) s6Step276EntryF_Incoming s6Step276EntryF_checked h1 s6Step276EntryF_Outgoing
  exact h0

private theorem s6Step276EntryBank_checked : compileHmrBankResizeLog .entry s6Step276EntryFBefore ⟨s6Step276EntryFRow,s6Step276EntryGRow,s6Step276EntryFvRow,s6Step276EntryGvRow⟩ ⟨133,133,153,153⟩ [s6Step276EntryFFresh,s6Step276EntryGFresh,s6Step276EntryFvFresh,s6Step276EntryGvFresh]=
    some (s6Step276EntryGvAfter,⟨s6Step276EntryFOut,s6Step276EntryGOut,s6Step276EntryFvOut,s6Step276EntryGvOut⟩,(growRow 795 s6Step276EntryFFresh ++ (growRow 777 s6Step276EntryGFresh ++ (growRow 776 s6Step276EntryFvFresh ++ (growRow 775 s6Step276EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step276EntryBank_rows]
  rfl

private def s6Step276ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<388) ∨ (389≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276ExitFBefore : Arena := s6Step276ExitGAfter

private def s6Step276ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 779],795⟩

private def s6Step276ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802],776⟩

private def s6Step276ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 881, 927],777⟩

private def s6Step276ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 867],775⟩

private theorem s6Step276ExitBank_incomingDistinct : ([s6Step276ExitGRow,s6Step276ExitFRow,s6Step276ExitFvRow,s6Step276ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276ExitF_Incoming : rowsOwned s6Step276ExitFBefore [s6Step276ExitFRow,s6Step276ExitFvRow,s6Step276ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276ExitGRow,s6Step276ExitFRow,s6Step276ExitFvRow,s6Step276ExitGvRow] 1 s6Step276ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276ExitBank_outgoingOwned : rowsOwned s6Step276ExitGvAfter [s6Step276ExitGOut,s6Step276ExitFOut,s6Step276ExitFvOut,s6Step276ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step276ExitGvAfter (fun q => (0≤q ∧ q<388) ∨ (389≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276ExitF_Outgoing : rowsOwned s6Step276ExitGvAfter [s6Step276ExitFOut,s6Step276ExitFvOut,s6Step276ExitGvOut] :=
  hmrRows_owned_drop s6Step276ExitGvAfter [s6Step276ExitGOut,s6Step276ExitFOut,s6Step276ExitFvOut,s6Step276ExitGvOut] 1 s6Step276ExitBank_outgoingOwned

private theorem s6Step276ExitF_distinct : (s6Step276ExitFRow.sign::s6Step276ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276ExitF_owned : (s6Step276ExitFRow.sign::s6Step276ExitFRow.payload).toFinset⊆s6Step276ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276ExitF_retired : s6Step276ExitFBefore.retireSet s6Step276ExitFExtra.toFinset=s6Step276ExitFAfter := by
  unfold Arena.retireSet s6Step276ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step276ExitFBefore,s6Step276ExitGAfter,s6Step276ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step276ExitF_checked : planRowResizeLog s6Step276ExitFBefore s6Step276ExitFRow 132 []=
    some (s6Step276ExitFAfter,s6Step276ExitFOut,shrinkRow 795 s6Step276ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step276ExitFBefore s6Step276ExitFRow 132 s6Step276ExitF_distinct s6Step276ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step276ExitFRow.payload.take 132) s6Step276ExitFRow.sign=s6Step276ExitFOut := by decide +kernel
  have hi : s6Step276ExitFRow.payload.drop 132=s6Step276ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step276ExitF_retired] at result
  exact result

private def s6Step276ExitFvAfter : Arena := s6Step276ExitFAfter

private def s6Step276ExitFvBefore : Arena := s6Step276ExitFAfter

private theorem s6Step276ExitFv_Incoming : rowsOwned s6Step276ExitFvBefore [s6Step276ExitFvRow,s6Step276ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276ExitGRow,s6Step276ExitFRow,s6Step276ExitFvRow,s6Step276ExitGvRow] 2 s6Step276ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276ExitFvBefore (fun q => (0≤q ∧ q<388) ∨ (389≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276ExitFv_Outgoing : rowsOwned s6Step276ExitGvAfter [s6Step276ExitFvOut,s6Step276ExitGvOut] :=
  hmrRows_owned_drop s6Step276ExitGvAfter [s6Step276ExitGOut,s6Step276ExitFOut,s6Step276ExitFvOut,s6Step276ExitGvOut] 2 s6Step276ExitBank_outgoingOwned

private theorem s6Step276ExitFv_distinct : (s6Step276ExitFvRow.sign::s6Step276ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276ExitFv_owned : (s6Step276ExitFvRow.sign::s6Step276ExitFvRow.payload).toFinset⊆s6Step276ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276ExitFvBefore (fun q => (0≤q ∧ q<388) ∨ (389≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276ExitFv_reserved : s6Step276ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step276ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step276ExitFv_checked : planRowResizeLog s6Step276ExitFvBefore s6Step276ExitFvRow 154 []=
    some (s6Step276ExitFvAfter,s6Step276ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step276ExitFvBefore s6Step276ExitFvAfter s6Step276ExitFvRow 154 []
    s6Step276ExitFv_distinct s6Step276ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step276ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step276ExitFvRow.payload++[]) s6Step276ExitFvRow.sign=s6Step276ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step276ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step276ExitG_Incoming : rowsOwned s6Step276ExitGBefore [s6Step276ExitGRow,s6Step276ExitFRow,s6Step276ExitFvRow,s6Step276ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276ExitGRow,s6Step276ExitFRow,s6Step276ExitFvRow,s6Step276ExitGvRow] 0 s6Step276ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276ExitG_Outgoing : rowsOwned s6Step276ExitGvAfter [s6Step276ExitGOut,s6Step276ExitFOut,s6Step276ExitFvOut,s6Step276ExitGvOut] :=
  hmrRows_owned_drop s6Step276ExitGvAfter [s6Step276ExitGOut,s6Step276ExitFOut,s6Step276ExitFvOut,s6Step276ExitGvOut] 0 s6Step276ExitBank_outgoingOwned

private theorem s6Step276ExitG_distinct : (s6Step276ExitGRow.sign::s6Step276ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276ExitG_owned : (s6Step276ExitGRow.sign::s6Step276ExitGRow.payload).toFinset⊆s6Step276ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276ExitG_retired : s6Step276ExitGBefore.retireSet s6Step276ExitGExtra.toFinset=s6Step276ExitGAfter := by
  unfold Arena.retireSet s6Step276ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step276ExitGBefore,s6Step276ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step276ExitG_checked : planRowResizeLog s6Step276ExitGBefore s6Step276ExitGRow 132 []=
    some (s6Step276ExitGAfter,s6Step276ExitGOut,shrinkRow 777 s6Step276ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step276ExitGBefore s6Step276ExitGRow 132 s6Step276ExitG_distinct s6Step276ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step276ExitGRow.payload.take 132) s6Step276ExitGRow.sign=s6Step276ExitGOut := by decide +kernel
  have hi : s6Step276ExitGRow.payload.drop 132=s6Step276ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step276ExitG_retired] at result
  exact result

private def s6Step276ExitGvBefore : Arena := s6Step276ExitFAfter

private theorem s6Step276ExitGv_Incoming : rowsOwned s6Step276ExitGvBefore [s6Step276ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276ExitGRow,s6Step276ExitFRow,s6Step276ExitFvRow,s6Step276ExitGvRow] 3 s6Step276ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276ExitGvBefore (fun q => (0≤q ∧ q<388) ∨ (389≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276ExitGv_Outgoing : rowsOwned s6Step276ExitGvAfter [s6Step276ExitGvOut] :=
  hmrRows_owned_drop s6Step276ExitGvAfter [s6Step276ExitGOut,s6Step276ExitFOut,s6Step276ExitFvOut,s6Step276ExitGvOut] 3 s6Step276ExitBank_outgoingOwned

private theorem s6Step276ExitGv_distinct : (s6Step276ExitGvRow.sign::s6Step276ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276ExitGv_owned : (s6Step276ExitGvRow.sign::s6Step276ExitGvRow.payload).toFinset⊆s6Step276ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276ExitGvBefore (fun q => (0≤q ∧ q<388) ∨ (389≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276ExitGv_retired : s6Step276ExitGvBefore.retireSet s6Step276ExitGvExtra.toFinset=s6Step276ExitGvAfter := by
  unfold Arena.retireSet s6Step276ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step276ExitGvBefore,s6Step276ExitFAfter,s6Step276ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step276ExitGv_checked : planRowResizeLog s6Step276ExitGvBefore s6Step276ExitGvRow 153 []=
    some (s6Step276ExitGvAfter,s6Step276ExitGvOut,shrinkRow 775 s6Step276ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step276ExitGvBefore s6Step276ExitGvRow 153 s6Step276ExitGv_distinct s6Step276ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step276ExitGvRow.payload.take 153) s6Step276ExitGvRow.sign=s6Step276ExitGvOut := by decide +kernel
  have hi : s6Step276ExitGvRow.payload.drop 153=s6Step276ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step276ExitGv_retired] at result
  exact result

private theorem s6Step276ExitBank_rows : planWindowRowsLog s6Step276ExitGBefore [(s6Step276ExitGRow,132),(s6Step276ExitFRow,132),(s6Step276ExitFvRow,154),(s6Step276ExitGvRow,153)] [[],[],[],[]]=
    some (s6Step276ExitGvAfter,[s6Step276ExitGOut,s6Step276ExitFOut,s6Step276ExitFvOut,s6Step276ExitGvOut],(shrinkRow 777 s6Step276ExitGExtra ++ (shrinkRow 795 s6Step276ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step276ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step276ExitGvAfter [] []=some (s6Step276ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step276ExitGvBefore s6Step276ExitGvAfter s6Step276ExitGvAfter
    s6Step276ExitGvRow s6Step276ExitGvOut 153 [] [] [] []
    (shrinkRow 775 s6Step276ExitGvExtra) ([]) s6Step276ExitGv_Incoming s6Step276ExitGv_checked h4 s6Step276ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step276ExitFvBefore s6Step276ExitFvAfter s6Step276ExitGvAfter
    s6Step276ExitFvRow s6Step276ExitFvOut 154 [] [(s6Step276ExitGvRow,153)] [[]] [s6Step276ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step276ExitGvExtra ++ [])) s6Step276ExitFv_Incoming s6Step276ExitFv_checked h3 s6Step276ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step276ExitFBefore s6Step276ExitFAfter s6Step276ExitGvAfter
    s6Step276ExitFRow s6Step276ExitFOut 132 [] [(s6Step276ExitFvRow,154),(s6Step276ExitGvRow,153)] [[],[]] [s6Step276ExitFvOut,s6Step276ExitGvOut]
    (shrinkRow 795 s6Step276ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step276ExitGvExtra ++ []))) s6Step276ExitF_Incoming s6Step276ExitF_checked h2 s6Step276ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step276ExitGBefore s6Step276ExitGAfter s6Step276ExitGvAfter
    s6Step276ExitGRow s6Step276ExitGOut 132 [] [(s6Step276ExitFRow,132),(s6Step276ExitFvRow,154),(s6Step276ExitGvRow,153)] [[],[],[]] [s6Step276ExitFOut,s6Step276ExitFvOut,s6Step276ExitGvOut]
    (shrinkRow 777 s6Step276ExitGExtra) ((shrinkRow 795 s6Step276ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step276ExitGvExtra ++ [])))) s6Step276ExitG_Incoming s6Step276ExitG_checked h1 s6Step276ExitG_Outgoing
  exact h0

private theorem s6Step276ExitBank_checked : compileHmrBankResizeLog .exit s6Step276ExitGBefore ⟨s6Step276ExitFRow,s6Step276ExitGRow,s6Step276ExitFvRow,s6Step276ExitGvRow⟩ ⟨132,132,154,153⟩ [[],[],[],[]]=
    some (s6Step276ExitGvAfter,⟨s6Step276ExitFOut,s6Step276ExitGOut,s6Step276ExitFvOut,s6Step276ExitGvOut⟩,(shrinkRow 777 s6Step276ExitGExtra ++ (shrinkRow 795 s6Step276ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step276ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step276ExitBank_rows]
  rfl

private theorem s6Step276Add0_apart : Disjoint s6Step276Add0Arena.live s6Step276Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step276Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276Add0_card : s6Step276Add0Arena.live.card=899 := by
  decide +kernel

private theorem s6Step276Add0_borrowed : s6Step276Add0Arena.checkBorrow (hmrHybridCount s6Step276Add0Arena s6Step276Add0B.length) s6Step276Add0Work=some s6Step276Add0During := by
  have len : s6Step276Add0Work.length=hmrHybridCount s6Step276Add0Arena s6Step276Add0B.length := by
    rw [hmrHybridCount,s6Step276Add0_card]
    decide +kernel
  have nd : s6Step276Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step276Add0Arena s6Step276Add0During s6Step276Add0Work.toFinset s6Step276Add0_bounded s6Step276Add0_apart rfl

private theorem s6Step276Add0_distinct : (813::882::809::(s6Step276Add0A++s6Step276Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276Add0_owned : (813::882::809::(s6Step276Add0A++s6Step276Add0B)).toFinset⊆s6Step276Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step276Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276Add0_checked : compileHmrHybridCinLog s6Step276Add0Arena 882 813 809 s6Step276Add0A s6Step276Add0B s6Step276Add0Work=some s6Step276Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step276Add0Arena s6Step276Add0During 882 813 809 s6Step276Add0A s6Step276Add0B s6Step276Add0Work
    (by decide +kernel) (by decide +kernel) s6Step276Add0_distinct
    (fun q hq => s6Step276Add0_owned (List.mem_toFinset.mpr hq)) s6Step276Add0_borrowed

private theorem s6Step276Add1_apart : Disjoint s6Step276Add1Arena.live s6Step276Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step276Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276Add1_card : s6Step276Add1Arena.live.card=899 := by
  decide +kernel

private theorem s6Step276Add1_borrowed : s6Step276Add1Arena.checkBorrow (hmrHybridCount s6Step276Add1Arena s6Step276Add1B.length) s6Step276Add1Work=some s6Step276Add1During := by
  have len : s6Step276Add1Work.length=hmrHybridCount s6Step276Add1Arena s6Step276Add1B.length := by
    rw [hmrHybridCount,s6Step276Add1_card]
    decide +kernel
  have nd : s6Step276Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step276Add1Arena s6Step276Add1During s6Step276Add1Work.toFinset s6Step276Add1_bounded s6Step276Add1_apart rfl

private theorem s6Step276Add1_distinct : (813::882::809::(s6Step276Add1A++s6Step276Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276Add1_owned : (813::882::809::(s6Step276Add1A++s6Step276Add1B)).toFinset⊆s6Step276Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step276Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276Add1_checked : compileHmrHybridCinLog s6Step276Add1Arena 882 813 809 s6Step276Add1A s6Step276Add1B s6Step276Add1Work=some s6Step276Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step276Add1Arena s6Step276Add1During 882 813 809 s6Step276Add1A s6Step276Add1B s6Step276Add1Work
    (by decide +kernel) (by decide +kernel) s6Step276Add1_distinct
    (fun q hq => s6Step276Add1_owned (List.mem_toFinset.mpr hq)) s6Step276Add1_borrowed

private theorem s6Step276F4_apart : Disjoint (s6Step276Add0A++s6Step276Add0B).toFinset (s6Step276Add1A++s6Step276Add1B).toFinset := by
  have nd : ((s6Step276Add0A++s6Step276Add0B)++(s6Step276Add1A++s6Step276Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step276F4_carry : s6Step276F4FlagArena.checkBorrow 1 [809]=some s6Step276Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step276F4FlagArena,s6Step276HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step276F4FlagArena,s6Step276HeadFvAfter,s6Step276Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step276F4_distinct : (877::882::813::809::((s6Step276Add0A++s6Step276Add1A)++(s6Step276Add0B++s6Step276Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276F4_flag : s6Step276HeadFvAfter.checkBorrow 1 [813]=some s6Step276F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step276HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step276F4_owned : (877::882::((s6Step276Add0A++s6Step276Add1A)++(s6Step276Add0B++s6Step276Add1B))).toFinset⊆s6Step276HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step276HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276F4_checked : compileHmrHybridF4Log s6Step276HeadFvAfter 877 882 s6Step276Add0A s6Step276Add0B s6Step276Add1A s6Step276Add1B [813] [809] s6Step276Add0Work s6Step276Add1Work=some s6Step276F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step276HeadFvAfter s6Step276F4FlagArena s6Step276Add0Arena s6Step276Add0During s6Step276Add1During 877 882
    s6Step276Add0A s6Step276Add0B s6Step276Add1A s6Step276Add1B [813] [809] s6Step276Add0Work s6Step276Add1Work
    (fun q hq => s6Step276F4_owned (List.mem_toFinset.mpr hq)) s6Step276F4_flag s6Step276F4_carry
    s6Step276F4_distinct s6Step276F4_apart s6Step276Add0_checked s6Step276Add1_checked

private theorem s6Step276Front_branch : s6Step276FrontSigmaArena.checkBorrow 1 [882]=some s6Step276HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step276FrontSigmaArena,s6Step276EntryGvAfter,s6Step276EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step276FrontSigmaArena,s6Step276EntryGvAfter,s6Step276EntryGAfter,s6Step276HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step276Front_entry : HmrFrontEntryValid s6Step276EntryFBefore s6Step276FrontBank 133 153 ⟨132,132,154,153⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step276FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step276EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step276EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step276FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step276Front_sigma : s6Step276EntryGvAfter.checkBorrow 1 [877]=some s6Step276FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step276EntryGvAfter,s6Step276EntryGAfter,arenaWires]
  · rfl

private def s6Step276HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276HeadFBefore : Arena := s6Step276HeadGAfter

private def s6Step276HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388],795⟩

private def s6Step276HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780],776⟩

private def s6Step276HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 881],777⟩

private def s6Step276HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784],775⟩

private theorem s6Step276HeadBank_incomingDistinct : ([s6Step276HeadGRow,s6Step276HeadFRow,s6Step276HeadGvRow,s6Step276HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276HeadF_Incoming : rowsOwned s6Step276HeadFBefore [s6Step276HeadFRow,s6Step276HeadGvRow,s6Step276HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276HeadGRow,s6Step276HeadFRow,s6Step276HeadGvRow,s6Step276HeadFvRow] 1 s6Step276HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276HeadBank_outgoingOwned : rowsOwned s6Step276HeadFvAfter [s6Step276HeadGOut,s6Step276HeadFOut,s6Step276HeadGvOut,s6Step276HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step276HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276HeadF_Outgoing : rowsOwned s6Step276HeadFvAfter [s6Step276HeadFOut,s6Step276HeadGvOut,s6Step276HeadFvOut] :=
  hmrRows_owned_drop s6Step276HeadFvAfter [s6Step276HeadGOut,s6Step276HeadFOut,s6Step276HeadGvOut,s6Step276HeadFvOut] 1 s6Step276HeadBank_outgoingOwned

private theorem s6Step276HeadF_distinct : (s6Step276HeadFRow.sign::s6Step276HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276HeadF_owned : (s6Step276HeadFRow.sign::s6Step276HeadFRow.payload).toFinset⊆s6Step276HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276HeadF_reserved : s6Step276HeadFBefore.reserve s6Step276HeadFFresh.toFinset=some s6Step276HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step276HeadFFresh,arenaWires]
  · norm_num [s6Step276HeadFBefore,s6Step276HeadGAfter,s6Step276HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step276HeadFAfter,s6Step276HeadFBefore,s6Step276HeadGAfter,s6Step276HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step276HeadF_checked : planRowResizeLog s6Step276HeadFBefore s6Step276HeadFRow 134 s6Step276HeadFFresh=
    some (s6Step276HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 779],795⟩,growRow 795 s6Step276HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step276HeadFBefore s6Step276HeadFAfter s6Step276HeadFRow 134 s6Step276HeadFFresh
    s6Step276HeadF_distinct s6Step276HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step276HeadF_reserved
  have rowEq : WindowRow.mk (s6Step276HeadFRow.payload++s6Step276HeadFFresh) s6Step276HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 779],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step276HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step276HeadFvBefore : Arena := s6Step276HeadGvAfter

private theorem s6Step276HeadFv_Incoming : rowsOwned s6Step276HeadFvBefore [s6Step276HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276HeadGRow,s6Step276HeadFRow,s6Step276HeadGvRow,s6Step276HeadFvRow] 3 s6Step276HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276HeadFv_Outgoing : rowsOwned s6Step276HeadFvAfter [s6Step276HeadFvOut] :=
  hmrRows_owned_drop s6Step276HeadFvAfter [s6Step276HeadGOut,s6Step276HeadFOut,s6Step276HeadGvOut,s6Step276HeadFvOut] 3 s6Step276HeadBank_outgoingOwned

private theorem s6Step276HeadFv_distinct : (s6Step276HeadFvRow.sign::s6Step276HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276HeadFv_owned : (s6Step276HeadFvRow.sign::s6Step276HeadFvRow.payload).toFinset⊆s6Step276HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276HeadFv_reserved : s6Step276HeadFvBefore.reserve s6Step276HeadFvFresh.toFinset=some s6Step276HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step276HeadFvFresh,arenaWires]
  · norm_num [s6Step276HeadFvBefore,s6Step276HeadGvAfter,s6Step276HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step276HeadFvAfter,s6Step276HeadFvBefore,s6Step276HeadGvAfter,s6Step276HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step276HeadFv_checked : planRowResizeLog s6Step276HeadFvBefore s6Step276HeadFvRow 154 s6Step276HeadFvFresh=
    some (s6Step276HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802],776⟩,growRow 776 s6Step276HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step276HeadFvBefore s6Step276HeadFvAfter s6Step276HeadFvRow 154 s6Step276HeadFvFresh
    s6Step276HeadFv_distinct s6Step276HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step276HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step276HeadFvRow.payload++s6Step276HeadFvFresh) s6Step276HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step276HeadG_Incoming : rowsOwned s6Step276HeadGBefore [s6Step276HeadGRow,s6Step276HeadFRow,s6Step276HeadGvRow,s6Step276HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276HeadGRow,s6Step276HeadFRow,s6Step276HeadGvRow,s6Step276HeadFvRow] 0 s6Step276HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276HeadG_Outgoing : rowsOwned s6Step276HeadFvAfter [s6Step276HeadGOut,s6Step276HeadFOut,s6Step276HeadGvOut,s6Step276HeadFvOut] :=
  hmrRows_owned_drop s6Step276HeadFvAfter [s6Step276HeadGOut,s6Step276HeadFOut,s6Step276HeadGvOut,s6Step276HeadFvOut] 0 s6Step276HeadBank_outgoingOwned

private theorem s6Step276HeadG_distinct : (s6Step276HeadGRow.sign::s6Step276HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276HeadG_owned : (s6Step276HeadGRow.sign::s6Step276HeadGRow.payload).toFinset⊆s6Step276HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276HeadG_reserved : s6Step276HeadGBefore.reserve s6Step276HeadGFresh.toFinset=some s6Step276HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step276HeadGFresh,arenaWires]
  · norm_num [s6Step276HeadGBefore,s6Step276HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step276HeadGAfter,s6Step276HeadGBefore,s6Step276HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step276HeadG_checked : planRowResizeLog s6Step276HeadGBefore s6Step276HeadGRow 134 s6Step276HeadGFresh=
    some (s6Step276HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 881, 927],777⟩,growRow 777 s6Step276HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step276HeadGBefore s6Step276HeadGAfter s6Step276HeadGRow 134 s6Step276HeadGFresh
    s6Step276HeadG_distinct s6Step276HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step276HeadG_reserved
  have rowEq : WindowRow.mk (s6Step276HeadGRow.payload++s6Step276HeadGFresh) s6Step276HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 881, 927],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step276HeadGvBefore : Arena := s6Step276HeadFAfter

private theorem s6Step276HeadGv_Incoming : rowsOwned s6Step276HeadGvBefore [s6Step276HeadGvRow,s6Step276HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step276HeadGRow,s6Step276HeadFRow,s6Step276HeadGvRow,s6Step276HeadFvRow] 2 s6Step276HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step276HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step276HeadGv_Outgoing : rowsOwned s6Step276HeadFvAfter [s6Step276HeadGvOut,s6Step276HeadFvOut] :=
  hmrRows_owned_drop s6Step276HeadFvAfter [s6Step276HeadGOut,s6Step276HeadFOut,s6Step276HeadGvOut,s6Step276HeadFvOut] 2 s6Step276HeadBank_outgoingOwned

private theorem s6Step276HeadGv_distinct : (s6Step276HeadGvRow.sign::s6Step276HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step276HeadGv_owned : (s6Step276HeadGvRow.sign::s6Step276HeadGvRow.payload).toFinset⊆s6Step276HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step276HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step276HeadGv_reserved : s6Step276HeadGvBefore.reserve s6Step276HeadGvFresh.toFinset=some s6Step276HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step276HeadGvFresh,arenaWires]
  · norm_num [s6Step276HeadGvBefore,s6Step276HeadFAfter,s6Step276HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step276HeadGvAfter,s6Step276HeadGvBefore,s6Step276HeadFAfter,s6Step276HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step276HeadGv_checked : planRowResizeLog s6Step276HeadGvBefore s6Step276HeadGvRow 154 s6Step276HeadGvFresh=
    some (s6Step276HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 867],775⟩,growRow 775 s6Step276HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step276HeadGvBefore s6Step276HeadGvAfter s6Step276HeadGvRow 154 s6Step276HeadGvFresh
    s6Step276HeadGv_distinct s6Step276HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step276HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step276HeadGvRow.payload++s6Step276HeadGvFresh) s6Step276HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 867],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step276HeadBank_rows : planWindowRowsLog s6Step276HeadGBefore [(s6Step276HeadGRow,134),(s6Step276HeadFRow,134),(s6Step276HeadGvRow,154),(s6Step276HeadFvRow,154)] [s6Step276HeadGFresh,s6Step276HeadFFresh,s6Step276HeadGvFresh,s6Step276HeadFvFresh]=
    some (s6Step276HeadFvAfter,[s6Step276HeadGOut,s6Step276HeadFOut,s6Step276HeadGvOut,s6Step276HeadFvOut],(growRow 777 s6Step276HeadGFresh ++ (growRow 795 s6Step276HeadFFresh ++ (growRow 775 s6Step276HeadGvFresh ++ (growRow 776 s6Step276HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step276HeadFvAfter [] []=some (s6Step276HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step276HeadFvBefore s6Step276HeadFvAfter s6Step276HeadFvAfter
    s6Step276HeadFvRow s6Step276HeadFvOut 154 s6Step276HeadFvFresh [] [] []
    (growRow 776 s6Step276HeadFvFresh) ([]) s6Step276HeadFv_Incoming s6Step276HeadFv_checked h4 s6Step276HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step276HeadGvBefore s6Step276HeadGvAfter s6Step276HeadFvAfter
    s6Step276HeadGvRow s6Step276HeadGvOut 154 s6Step276HeadGvFresh [(s6Step276HeadFvRow,154)] [s6Step276HeadFvFresh] [s6Step276HeadFvOut]
    (growRow 775 s6Step276HeadGvFresh) ((growRow 776 s6Step276HeadFvFresh ++ [])) s6Step276HeadGv_Incoming s6Step276HeadGv_checked h3 s6Step276HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step276HeadFBefore s6Step276HeadFAfter s6Step276HeadFvAfter
    s6Step276HeadFRow s6Step276HeadFOut 134 s6Step276HeadFFresh [(s6Step276HeadGvRow,154),(s6Step276HeadFvRow,154)] [s6Step276HeadGvFresh,s6Step276HeadFvFresh] [s6Step276HeadGvOut,s6Step276HeadFvOut]
    (growRow 795 s6Step276HeadFFresh) ((growRow 775 s6Step276HeadGvFresh ++ (growRow 776 s6Step276HeadFvFresh ++ []))) s6Step276HeadF_Incoming s6Step276HeadF_checked h2 s6Step276HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step276HeadGBefore s6Step276HeadGAfter s6Step276HeadFvAfter
    s6Step276HeadGRow s6Step276HeadGOut 134 s6Step276HeadGFresh [(s6Step276HeadFRow,134),(s6Step276HeadGvRow,154),(s6Step276HeadFvRow,154)] [s6Step276HeadFFresh,s6Step276HeadGvFresh,s6Step276HeadFvFresh] [s6Step276HeadFOut,s6Step276HeadGvOut,s6Step276HeadFvOut]
    (growRow 777 s6Step276HeadGFresh) ((growRow 795 s6Step276HeadFFresh ++ (growRow 775 s6Step276HeadGvFresh ++ (growRow 776 s6Step276HeadFvFresh ++ [])))) s6Step276HeadG_Incoming s6Step276HeadG_checked h1 s6Step276HeadG_Outgoing
  exact h0

private theorem s6Step276HeadBank_checked : compileHmrBankResizeLog .headroom s6Step276HeadGBefore ⟨s6Step276HeadFRow,s6Step276HeadGRow,s6Step276HeadFvRow,s6Step276HeadGvRow⟩ ⟨134,134,154,154⟩ [s6Step276HeadGFresh,s6Step276HeadFFresh,s6Step276HeadGvFresh,s6Step276HeadFvFresh]=
    some (s6Step276HeadFvAfter,⟨s6Step276HeadFOut,s6Step276HeadGOut,s6Step276HeadFvOut,s6Step276HeadGvOut⟩,(growRow 777 s6Step276HeadGFresh ++ (growRow 795 s6Step276HeadFFresh ++ (growRow 775 s6Step276HeadGvFresh ++ (growRow 776 s6Step276HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step276HeadBank_rows]
  rfl

private theorem s6Step276Front_checked : compileHmrSourceFrontLog s6Step276EntryFBefore s6Step276FrontBank 133 153 ⟨132,132,154,153⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step276FrontLog=some s6Step276FrontPlan := by
  have pairEq : s6Step276FrontPair=⟨s6Step276HeadFRow,s6Step276HeadGRow,s6Step276HeadFvRow,s6Step276HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step276FrontHead=⟨s6Step276ExitFRow,s6Step276ExitGRow,s6Step276ExitFvRow,s6Step276ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step276Add0A=s6Step276FrontHead.f.wires := by decide +kernel
  have gEq : s6Step276Add0B=s6Step276FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step276Add1A=s6Step276FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step276Add1B=s6Step276FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step276EntryFBefore s6Step276FrontBank 133 153 ⟨132,132,154,153⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step276FrontLog s6Step276FrontPlan
  · exact s6Step276Front_entry
  · exact s6Step276EntryBank_checked
  · exact s6Step276Front_sigma
  · rfl
  · exact s6Step276Front_branch
  · rfl
  · simpa only [s6Step276FrontPlan,pairEq] using s6Step276HeadBank_checked
  · simpa only [s6Step276FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step276F4_checked
  · exact s6Step276Counter_checked
  · rfl
  · simpa only [s6Step276FrontPlan,headEq] using s6Step276ExitBank_checked

private theorem s6Step276Complete_explicit_checked : compileHmrEarlyStepLog s6Step276EntryFBefore s6Step276FrontBank 133 153 ⟨132,132,154,153⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step276CompleteLog=some s6Step276CompletePlan := by
  let Q := s6Step276EarlyControlPlan
  have hq := s6Step276EarlyControl_plan_checked
  have fv1 : s6Step276CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step276CompleteOut.fv.payload[2]?.getD s6Step276CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step276CompleteOut.fv.payload[3]?.getD s6Step276CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step276CompleteOut.fv.payload[4]?.getD s6Step276CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step276EntryFBefore s6Step276EarlyControlArena s6Step276FrontBank 133 153 ⟨132,132,154,153⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step276CompleteLog s6Step276FrontPlan Q
    s6Step276Front_checked s6Step276Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step276Complete_owned s6Step276Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step276EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 877 s6Step276CompleteOut.fv.second (s6Step276CompleteOut.fv.payload[2]?.getD s6Step276CompleteOut.fv.sign) (s6Step276CompleteOut.fv.payload[3]?.getD s6Step276CompleteOut.fv.sign) (s6Step276CompleteOut.fv.payload[4]?.getD s6Step276CompleteOut.fv.sign) 882 53 s6Step276EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep276Arena : Arena := s6Step276EntryFBefore
def s6PrivateStep276Bank : WindowBank := s6Step276FrontBank
def s6PrivateStep276Spec : HmrSourceWalkStepLog := ⟨133,153,⟨132,132,154,153⟩,53,.early s6Step276CompleteLog⟩
def s6PrivateStep276Plan : HmrSourceStepPlan := .early s6Step276CompletePlan
theorem s6PrivateStep276_source : s6PrivateStep276Spec=s6ObservedLogs272[4] := rfl
theorem s6PrivateStep276_checked : compileHmrSourceStepLog s6PrivateStep276Arena s6PrivateStep276Bank
    s6PrivateStep276Spec.fgWidth s6PrivateStep276Spec.vWidth s6PrivateStep276Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]
    6 498 276 s6PrivateStep276Spec.need none s6PrivateStep276Spec.log=some s6PrivateStep276Plan := by
  change compileHmrSourceStepLog s6Step276EntryFBefore s6Step276FrontBank 133 153 ⟨132,132,154,153⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 6 498 276 53 none (.early s6Step276CompleteLog)=some (.early s6Step276CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 276<498)]
  rw [s6Step276Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
