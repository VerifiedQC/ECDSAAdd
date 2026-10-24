import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep269
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

private def s6Step271CompleteMoves : List (Wire × Wire) := [(813,135)]

private def s6Step271EarlyControlLog : HmrEarlyControlLog := ⟨[813, 809, 877, 874, 927],[867],[830],[805, 817, 812, 915, 906, 899],[]⟩

private def s6Step271FrontLog : HmrFrontAllocationLog := ⟨⟨[[874], [], [], []],[[867], [927], [809], [877]],[[], [], [], []]⟩,[780],[838],[830],[805],[817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step271CompleteLog : HmrEarlyStepLog := ⟨s6Step271FrontLog,s6Step271CompleteMoves,s6Step271EarlyControlLog⟩

private def s6Step271ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390],795⟩

private def s6Step271ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩

private def s6Step271ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],777⟩

private def s6Step271ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private def s6Step271FrontOut : WindowBank := ⟨s6Step271ExitFOut,s6Step271ExitGOut,s6Step271ExitFvOut,s6Step271ExitGvOut⟩

private def s6Step271CompleteOut : WindowBank := s6Step271FrontOut.repacked s6Step271CompleteMoves

private def s6Step271EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step271EarlyControlPositiveArena,[867],s6Step271EarlyControlEqualityArena,[830],⟨⟨780,false⟩,[⟨⟨867,false⟩,830⟩]⟩⟩

private def s6Step271EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,813⟩,⟨⟨772,false⟩,809⟩,⟨⟨771,false⟩,877⟩,⟨⟨770,false⟩,874⟩,⟨⟨769,false⟩,927⟩]⟩

private def s6Step271EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step271EarlyControlZeroArena,s6Step271EarlyControlZeroPlan,s6Step271EarlyControlClassPlan,s6Step271EarlyControlFlagArena,s6Step271EarlyControlFittedArena,s6Step271EarlyControlHistoryArena,s6Step271EarlyControlSigmaArena,s6Step271EarlyControlOutputArena,s6Step271EarlyControlLog⟩

private def s6Step271CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step271Counter_bounded : s6Step271CounterWork.toFinset⊆arenaWires := by norm_num [s6Step271CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step271HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271CounterDuring : Arena := ⟨s6Step271HeadFvAfter.live∪s6Step271CounterWork.toFinset,Finset.union_subset s6Step271HeadFvAfter.bounded s6Step271Counter_bounded⟩

private def s6Step271EntryFFresh : List Wire := [874]

private def s6Step271EntryFvFresh : List Wire := []

private def s6Step271EntryGFresh : List Wire := []

private def s6Step271EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271EntryGvAfter : Arena := s6Step271EntryFAfter

private def s6Step271EntryGvFresh : List Wire := []

private def s6Step271ExitFExtra : List Wire := [874, 927]

private def s6Step271ExitFvExtra : List Wire := [877]

private def s6Step271ExitGExtra : List Wire := [135, 867]

private def s6Step271ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271ExitGvExtra : List Wire := [809]

private def s6Step271Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271Add0Work : List Wire := [817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step271Add0_bounded : s6Step271Add0Work.toFinset⊆arenaWires := by
  have h : s6Step271Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step271Add0During : Arena := ⟨s6Step271Add0Arena.live∪s6Step271Add0Work.toFinset,Finset.union_subset s6Step271Add0Arena.bounded s6Step271Add0_bounded⟩

private def s6Step271Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271Add1Work : List Wire := [817, 812, 915, 906, 899, 926, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step271Add1_bounded : s6Step271Add1Work.toFinset⊆arenaWires := by
  have h : s6Step271Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step271Add1During : Arena := ⟨s6Step271Add1Arena.live∪s6Step271Add1Work.toFinset,Finset.union_subset s6Step271Add1Arena.bounded s6Step271Add1_bounded⟩

private def s6Step271F4FlagArena : Arena := ⟨s6Step271HeadFvAfter.live∪{830},Finset.union_subset s6Step271HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step271F4Plan : HmrHybridF4Plan := ⟨s6Step271F4FlagArena,[830],s6Step271Add0Arena,[805],s6Step271Add0During,s6Step271Add0Work,s6Step271Add1During,s6Step271Add1Work⟩

private def s6Step271HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 874, 927],795⟩

private def s6Step271HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 877],776⟩

private def s6Step271HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 867],777⟩

private def s6Step271HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 809],775⟩

private def s6Step271FrontHead : WindowBank := ⟨s6Step271HeadFOut,s6Step271HeadGOut,s6Step271HeadFvOut,s6Step271HeadGvOut⟩

private def s6Step271EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 874],795⟩

private def s6Step271EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩

private def s6Step271EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],777⟩

private def s6Step271EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private def s6Step271FrontPair : WindowBank := ⟨s6Step271EntryFOut,s6Step271EntryGOut,s6Step271EntryFvOut,s6Step271EntryGvOut⟩

private def s6Step271FrontSigmaArena : Arena := ⟨s6Step271EntryGvAfter.live∪{780},Finset.union_subset s6Step271EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step271HeadFFresh : List Wire := [927]

private def s6Step271HeadFvFresh : List Wire := [877]

private def s6Step271HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271HeadGFresh : List Wire := [867]

private def s6Step271HeadGvFresh : List Wire := [809]

private def s6Step271FrontPlan : HmrSourceFront := ⟨s6Step271EntryGvAfter,s6Step271FrontPair,(growRow 795 s6Step271EntryFFresh ++ (growRow 777 s6Step271EntryGFresh ++ (growRow 776 s6Step271EntryFvFresh ++ (growRow 775 s6Step271EntryGvFresh ++ [])))),s6Step271FrontSigmaArena,[780],s6Step271HeadGBefore,[838],
  s6Step271HeadFvAfter,s6Step271FrontHead,(growRow 777 s6Step271HeadGFresh ++ (growRow 795 s6Step271HeadFFresh ++ (growRow 775 s6Step271HeadGvFresh ++ (growRow 776 s6Step271HeadFvFresh ++ [])))),s6Step271F4Plan,s6Step271CounterDuring,s6Step271CounterWork,s6Step271ExitGvAfter,s6Step271FrontOut,(shrinkRow 777 s6Step271ExitGExtra ++ (shrinkRow 795 s6Step271ExitFExtra ++ (shrinkRow 776 s6Step271ExitFvExtra ++ (shrinkRow 775 s6Step271ExitGvExtra ++ []))))⟩

private def s6Step271CompletePlan : HmrEarlyStepPlan := ⟨s6Step271FrontPlan,s6Step271EarlyControlArena,s6Step271EarlyControlPlan,s6Step271CompleteMoves⟩

private theorem s6Step271Complete_apart : List.Disjoint (s6Step271CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [780, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] := by
  have nd : ((s6Step271CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[780, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step271Complete_owned : (s6Step271CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step271EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step271CompleteMoveArena : Arena := ⟨s6Step271ExitGvAfter.live∪{135},Finset.union_subset s6Step271ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step271Complete_repack : s6Step271ExitGvAfter.checkRepack s6Step271CompleteMoves=some s6Step271EarlyControlArena := by
  have owned : 813∈s6Step271ExitGvAfter.live := by norm_num [s6Step271ExitGvAfter,arenaWires]
  have reserve : s6Step271ExitGvAfter.reserve {135}=some s6Step271CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step271ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step271CompleteMoveArena.retireSet {813}=s6Step271EarlyControlArena := by
    unfold Arena.retireSet s6Step271EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step271CompleteMoveArena,s6Step271ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step271CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step271CompleteMoveArena.retireSet {813}).checkRepack []=some s6Step271EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step271EarlyControl_branchOwned : ([838] : List Wire).toFinset⊆s6Step271EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EarlyControl_branch : compileHmrBranchRetirement s6Step271EarlyControlSigmaArena 838=some s6Step271EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step271EarlyControl_branchOwned
  · ext q
    simp [s6Step271EarlyControlOutputArena,s6Step271EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step271EarlyControl_classEqualityBorrow : s6Step271EarlyControlPositiveArena.checkBorrow (([780, 867] : List Wire).length-1) s6Step271EarlyControlLog.classWork=some s6Step271EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step271EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step271EarlyControlEqualityArena,s6Step271EarlyControlPositiveArena,s6Step271EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step271EarlyControl_classEqualityOwned : ([780, 867] : List Wire).toFinset⊆s6Step271EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EarlyControl_classEquality : compileHmrEqualityLog s6Step271EarlyControlPositiveArena [780, 867] 0 s6Step271EarlyControlLog.classWork=some (s6Step271EarlyControlEqualityArena,s6Step271EarlyControlLog.classWork,s6Step271EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step271EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step271EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step271EarlyControl_classOwned : ([769, 927, 780] : List Wire).toFinset⊆s6Step271EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EarlyControl_positiveBorrow : s6Step271EarlyControlZeroArena.checkBorrow (1) s6Step271EarlyControlLog.positiveWork=some s6Step271EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step271EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step271EarlyControlPositiveArena,s6Step271EarlyControlZeroArena,s6Step271EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step271EarlyControl_class : compileHmrSourceClassLog s6Step271EarlyControlZeroArena false 769 s6Step271EarlyControlZeroPlan.top 0 780 s6Step271EarlyControlLog.positiveWork s6Step271EarlyControlLog.classWork=some s6Step271EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step271EarlyControlClassPlan s6Step271EarlyControlZeroArena false 769 s6Step271EarlyControlZeroPlan.top 0 780
  constructor
  · decide +kernel
  · exact s6Step271EarlyControl_classOwned
  · exact s6Step271EarlyControl_positiveBorrow
  · exact s6Step271EarlyControl_classEquality

private theorem s6Step271EarlyControl_entryRecordOwned : ([838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step271EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EarlyControl_entrySigmaOwned : ([780, 254] : List Wire).toFinset⊆s6Step271EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EarlyControl_fitBorrow : s6Step271EarlyControlFlagArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step271EarlyControlLog.recordFresh=some s6Step271EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step271EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step271EarlyControlFittedArena,s6Step271EarlyControlFlagArena,s6Step271EarlyControlLog,arenaWires]

private theorem s6Step271EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step271EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EarlyControl_fit : compileHmrRecordGrowLog s6Step271EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step271EarlyControlLog.recordFresh=some s6Step271EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step271EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step271EarlyControl_fitBorrow

private theorem s6Step271EarlyControl_flagsBorrow : s6Step271EarlyControlEqualityArena.checkBorrow (6) s6Step271EarlyControlLog.flagWork=some s6Step271EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step271EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step271EarlyControlFlagArena,s6Step271EarlyControlEqualityArena,s6Step271EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step271EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s6Step271EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EarlyControl_flags : compileHmrFlagsLog s6Step271EarlyControlClassPlan.equalityArena s6Step271EarlyControlClassPlan.equality.top 253 252 251 s6Step271EarlyControlLog.flagWork=some s6Step271EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step271EarlyControl_flagsOwned⟩
  · exact s6Step271EarlyControl_flagsBorrow

private theorem s6Step271EarlyControl_historyBorrow : s6Step271EarlyControlArena.checkBorrow ((53-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).length)) s6Step271EarlyControlLog.recordFresh=some s6Step271EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step271EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step271EarlyControlHistoryArena,s6Step271EarlyControlArena,s6Step271EarlyControlLog,arenaWires]

private theorem s6Step271EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] : List Wire).toFinset⊆s6Step271EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EarlyControl_history : compileHmrRecordGrowLog s6Step271EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step271EarlyControlLog.recordFresh=some s6Step271EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step271EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step271EarlyControl_historyBorrow

private theorem s6Step271EarlyControl_sigmaOwned : ([254, 780] : List Wire).toFinset⊆s6Step271EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EarlyControl_sigmaReleaseOwned : ([780] : List Wire).toFinset⊆s6Step271EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EarlyControl_sigmaRelease : s6Step271EarlyControlHistoryArena.release {780} (fun _ => false)=some s6Step271EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step271EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step271EarlyControlSigmaArena,s6Step271EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step271EarlyControl_sigma : compileHmrSigmaDropLog s6Step271EarlyControlHistoryArena false 0 0 254 780 []=some s6Step271EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step271EarlyControl_sigmaOwned⟩
  · exact s6Step271EarlyControl_sigmaRelease

private theorem s6Step271EarlyControl_zeroBorrow : s6Step271EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step271EarlyControlLog.zeroWork=some s6Step271EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step271EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step271EarlyControlZeroArena,s6Step271EarlyControlArena,s6Step271EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step271EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step271EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step271EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EarlyControl_zero : compileHmrEqualityLog s6Step271EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step271EarlyControlLog.zeroWork=some (s6Step271EarlyControlZeroArena,s6Step271EarlyControlLog.zeroWork,s6Step271EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step271EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step271EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step271EarlyControl_logged : s6Step271EarlyControlPlan.Logged s6Step271EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 780 254 253 252 251 838 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step271EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step271EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step271EarlyControl_zero
  · exact s6Step271EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step271EarlyControl_flags
  · exact s6Step271EarlyControl_fit
  · exact s6Step271EarlyControl_history
  · exact s6Step271EarlyControl_sigma
  · exact s6Step271EarlyControl_branch

private theorem s6Step271EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step271EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 780 254 253 252 251 838 53 s6Step271EarlyControlLog=some s6Step271EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step271EarlyControlPlan s6Step271EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 780 254 253 252 251 838 53 s6Step271EarlyControl_logged

private def s6Step271EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390],795⟩

private def s6Step271EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩

private def s6Step271EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],777⟩

private def s6Step271EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private def s6Step271FrontBank : WindowBank := ⟨s6Step271EntryFRow,s6Step271EntryGRow,s6Step271EntryFvRow,s6Step271EntryGvRow⟩

private def s6Step271Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 874, 927, 795]

private def s6Step271Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 867, 777]

private def s6Step271Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 877, 776]

private def s6Step271Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 809, 775]

private theorem s6Step271Counter_apart : Disjoint s6Step271HeadFvAfter.live s6Step271CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step271HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271Counter_borrowed : s6Step271HeadFvAfter.checkBorrow 4 s6Step271CounterWork=some s6Step271CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step271HeadFvAfter s6Step271CounterDuring s6Step271CounterWork.toFinset s6Step271Counter_bounded s6Step271Counter_apart rfl

private theorem s6Step271Counter_owned : (780::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step271HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step271HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271Counter_checked : compileHmrCounterStepLog s6Step271HeadFvAfter true 780 [774, 773, 772, 771, 770, 769] s6Step271CounterWork=some s6Step271CounterDuring := by
  have owned : ∀q∈780::[774, 773, 772, 771, 770, 769],q∈s6Step271HeadFvAfter.live := fun q hq => s6Step271Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step271Counter_borrowed

private theorem s6Step271EntryBank_incomingDistinct : ([s6Step271EntryFRow,s6Step271EntryGRow,s6Step271EntryFvRow,s6Step271EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271EntryF_Incoming : rowsOwned s6Step271EntryFBefore [s6Step271EntryFRow,s6Step271EntryGRow,s6Step271EntryFvRow,s6Step271EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271EntryFRow,s6Step271EntryGRow,s6Step271EntryFvRow,s6Step271EntryGvRow] 0 s6Step271EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271EntryBank_outgoingOwned : rowsOwned s6Step271EntryGvAfter [s6Step271EntryFOut,s6Step271EntryGOut,s6Step271EntryFvOut,s6Step271EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step271EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271EntryF_Outgoing : rowsOwned s6Step271EntryGvAfter [s6Step271EntryFOut,s6Step271EntryGOut,s6Step271EntryFvOut,s6Step271EntryGvOut] :=
  hmrRows_owned_drop s6Step271EntryGvAfter [s6Step271EntryFOut,s6Step271EntryGOut,s6Step271EntryFvOut,s6Step271EntryGvOut] 0 s6Step271EntryBank_outgoingOwned

private theorem s6Step271EntryF_distinct : (s6Step271EntryFRow.sign::s6Step271EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271EntryF_owned : (s6Step271EntryFRow.sign::s6Step271EntryFRow.payload).toFinset⊆s6Step271EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EntryF_reserved : s6Step271EntryFBefore.reserve s6Step271EntryFFresh.toFinset=some s6Step271EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step271EntryFFresh,arenaWires]
  · norm_num [s6Step271EntryFBefore,s6Step271EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step271EntryFAfter,s6Step271EntryFBefore,s6Step271EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step271EntryF_checked : planRowResizeLog s6Step271EntryFBefore s6Step271EntryFRow 136 s6Step271EntryFFresh=
    some (s6Step271EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 874],795⟩,growRow 795 s6Step271EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step271EntryFBefore s6Step271EntryFAfter s6Step271EntryFRow 136 s6Step271EntryFFresh
    s6Step271EntryF_distinct s6Step271EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step271EntryF_reserved
  have rowEq : WindowRow.mk (s6Step271EntryFRow.payload++s6Step271EntryFFresh) s6Step271EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 874],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step271EntryFvAfter : Arena := s6Step271EntryFAfter

private def s6Step271EntryFvBefore : Arena := s6Step271EntryFAfter

private theorem s6Step271EntryFv_Incoming : rowsOwned s6Step271EntryFvBefore [s6Step271EntryFvRow,s6Step271EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271EntryFRow,s6Step271EntryGRow,s6Step271EntryFvRow,s6Step271EntryGvRow] 2 s6Step271EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271EntryFv_Outgoing : rowsOwned s6Step271EntryGvAfter [s6Step271EntryFvOut,s6Step271EntryGvOut] :=
  hmrRows_owned_drop s6Step271EntryGvAfter [s6Step271EntryFOut,s6Step271EntryGOut,s6Step271EntryFvOut,s6Step271EntryGvOut] 2 s6Step271EntryBank_outgoingOwned

private theorem s6Step271EntryFv_distinct : (s6Step271EntryFvRow.sign::s6Step271EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271EntryFv_owned : (s6Step271EntryFvRow.sign::s6Step271EntryFvRow.payload).toFinset⊆s6Step271EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EntryFv_reserved : s6Step271EntryFvBefore.reserve s6Step271EntryFvFresh.toFinset=some s6Step271EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step271EntryFvFresh,arenaWires]
  · norm_num [s6Step271EntryFvBefore,s6Step271EntryFAfter,s6Step271EntryFvFresh,arenaWires]
  · simp only [s6Step271EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step271EntryFv_checked : planRowResizeLog s6Step271EntryFvBefore s6Step271EntryFvRow 151 s6Step271EntryFvFresh=
    some (s6Step271EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩,growRow 776 s6Step271EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step271EntryFvBefore s6Step271EntryFvAfter s6Step271EntryFvRow 151 s6Step271EntryFvFresh
    s6Step271EntryFv_distinct s6Step271EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step271EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step271EntryFvRow.payload++s6Step271EntryFvFresh) s6Step271EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step271EntryGAfter : Arena := s6Step271EntryFAfter

private def s6Step271EntryGBefore : Arena := s6Step271EntryFAfter

private theorem s6Step271EntryG_Incoming : rowsOwned s6Step271EntryGBefore [s6Step271EntryGRow,s6Step271EntryFvRow,s6Step271EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271EntryFRow,s6Step271EntryGRow,s6Step271EntryFvRow,s6Step271EntryGvRow] 1 s6Step271EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271EntryG_Outgoing : rowsOwned s6Step271EntryGvAfter [s6Step271EntryGOut,s6Step271EntryFvOut,s6Step271EntryGvOut] :=
  hmrRows_owned_drop s6Step271EntryGvAfter [s6Step271EntryFOut,s6Step271EntryGOut,s6Step271EntryFvOut,s6Step271EntryGvOut] 1 s6Step271EntryBank_outgoingOwned

private theorem s6Step271EntryG_distinct : (s6Step271EntryGRow.sign::s6Step271EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271EntryG_owned : (s6Step271EntryGRow.sign::s6Step271EntryGRow.payload).toFinset⊆s6Step271EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EntryG_reserved : s6Step271EntryGBefore.reserve s6Step271EntryGFresh.toFinset=some s6Step271EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step271EntryGFresh,arenaWires]
  · norm_num [s6Step271EntryGBefore,s6Step271EntryFAfter,s6Step271EntryGFresh,arenaWires]
  · simp only [s6Step271EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step271EntryG_checked : planRowResizeLog s6Step271EntryGBefore s6Step271EntryGRow 136 s6Step271EntryGFresh=
    some (s6Step271EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],777⟩,growRow 777 s6Step271EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step271EntryGBefore s6Step271EntryGAfter s6Step271EntryGRow 136 s6Step271EntryGFresh
    s6Step271EntryG_distinct s6Step271EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step271EntryG_reserved
  have rowEq : WindowRow.mk (s6Step271EntryGRow.payload++s6Step271EntryGFresh) s6Step271EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step271EntryGvBefore : Arena := s6Step271EntryFAfter

private theorem s6Step271EntryGv_Incoming : rowsOwned s6Step271EntryGvBefore [s6Step271EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271EntryFRow,s6Step271EntryGRow,s6Step271EntryFvRow,s6Step271EntryGvRow] 3 s6Step271EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271EntryGv_Outgoing : rowsOwned s6Step271EntryGvAfter [s6Step271EntryGvOut] :=
  hmrRows_owned_drop s6Step271EntryGvAfter [s6Step271EntryFOut,s6Step271EntryGOut,s6Step271EntryFvOut,s6Step271EntryGvOut] 3 s6Step271EntryBank_outgoingOwned

private theorem s6Step271EntryGv_distinct : (s6Step271EntryGvRow.sign::s6Step271EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271EntryGv_owned : (s6Step271EntryGvRow.sign::s6Step271EntryGvRow.payload).toFinset⊆s6Step271EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271EntryGv_reserved : s6Step271EntryGvBefore.reserve s6Step271EntryGvFresh.toFinset=some s6Step271EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step271EntryGvFresh,arenaWires]
  · norm_num [s6Step271EntryGvBefore,s6Step271EntryFAfter,s6Step271EntryGvFresh,arenaWires]
  · simp only [s6Step271EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step271EntryGv_checked : planRowResizeLog s6Step271EntryGvBefore s6Step271EntryGvRow 151 s6Step271EntryGvFresh=
    some (s6Step271EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩,growRow 775 s6Step271EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step271EntryGvBefore s6Step271EntryGvAfter s6Step271EntryGvRow 151 s6Step271EntryGvFresh
    s6Step271EntryGv_distinct s6Step271EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step271EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step271EntryGvRow.payload++s6Step271EntryGvFresh) s6Step271EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step271EntryBank_rows : planWindowRowsLog s6Step271EntryFBefore [(s6Step271EntryFRow,136),(s6Step271EntryGRow,136),(s6Step271EntryFvRow,151),(s6Step271EntryGvRow,151)] [s6Step271EntryFFresh,s6Step271EntryGFresh,s6Step271EntryFvFresh,s6Step271EntryGvFresh]=
    some (s6Step271EntryGvAfter,[s6Step271EntryFOut,s6Step271EntryGOut,s6Step271EntryFvOut,s6Step271EntryGvOut],(growRow 795 s6Step271EntryFFresh ++ (growRow 777 s6Step271EntryGFresh ++ (growRow 776 s6Step271EntryFvFresh ++ (growRow 775 s6Step271EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step271EntryGvAfter [] []=some (s6Step271EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step271EntryGvBefore s6Step271EntryGvAfter s6Step271EntryGvAfter
    s6Step271EntryGvRow s6Step271EntryGvOut 151 s6Step271EntryGvFresh [] [] []
    (growRow 775 s6Step271EntryGvFresh) ([]) s6Step271EntryGv_Incoming s6Step271EntryGv_checked h4 s6Step271EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step271EntryFvBefore s6Step271EntryFvAfter s6Step271EntryGvAfter
    s6Step271EntryFvRow s6Step271EntryFvOut 151 s6Step271EntryFvFresh [(s6Step271EntryGvRow,151)] [s6Step271EntryGvFresh] [s6Step271EntryGvOut]
    (growRow 776 s6Step271EntryFvFresh) ((growRow 775 s6Step271EntryGvFresh ++ [])) s6Step271EntryFv_Incoming s6Step271EntryFv_checked h3 s6Step271EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step271EntryGBefore s6Step271EntryGAfter s6Step271EntryGvAfter
    s6Step271EntryGRow s6Step271EntryGOut 136 s6Step271EntryGFresh [(s6Step271EntryFvRow,151),(s6Step271EntryGvRow,151)] [s6Step271EntryFvFresh,s6Step271EntryGvFresh] [s6Step271EntryFvOut,s6Step271EntryGvOut]
    (growRow 777 s6Step271EntryGFresh) ((growRow 776 s6Step271EntryFvFresh ++ (growRow 775 s6Step271EntryGvFresh ++ []))) s6Step271EntryG_Incoming s6Step271EntryG_checked h2 s6Step271EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step271EntryFBefore s6Step271EntryFAfter s6Step271EntryGvAfter
    s6Step271EntryFRow s6Step271EntryFOut 136 s6Step271EntryFFresh [(s6Step271EntryGRow,136),(s6Step271EntryFvRow,151),(s6Step271EntryGvRow,151)] [s6Step271EntryGFresh,s6Step271EntryFvFresh,s6Step271EntryGvFresh] [s6Step271EntryGOut,s6Step271EntryFvOut,s6Step271EntryGvOut]
    (growRow 795 s6Step271EntryFFresh) ((growRow 777 s6Step271EntryGFresh ++ (growRow 776 s6Step271EntryFvFresh ++ (growRow 775 s6Step271EntryGvFresh ++ [])))) s6Step271EntryF_Incoming s6Step271EntryF_checked h1 s6Step271EntryF_Outgoing
  exact h0

private theorem s6Step271EntryBank_checked : compileHmrBankResizeLog .entry s6Step271EntryFBefore ⟨s6Step271EntryFRow,s6Step271EntryGRow,s6Step271EntryFvRow,s6Step271EntryGvRow⟩ ⟨136,136,151,151⟩ [s6Step271EntryFFresh,s6Step271EntryGFresh,s6Step271EntryFvFresh,s6Step271EntryGvFresh]=
    some (s6Step271EntryGvAfter,⟨s6Step271EntryFOut,s6Step271EntryGOut,s6Step271EntryFvOut,s6Step271EntryGvOut⟩,(growRow 795 s6Step271EntryFFresh ++ (growRow 777 s6Step271EntryGFresh ++ (growRow 776 s6Step271EntryFvFresh ++ (growRow 775 s6Step271EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step271EntryBank_rows]
  rfl

private def s6Step271ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271ExitFBefore : Arena := s6Step271ExitGAfter

private def s6Step271ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 874, 927],795⟩

private def s6Step271ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 877],776⟩

private def s6Step271ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 867],777⟩

private def s6Step271ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 809],775⟩

private theorem s6Step271ExitBank_incomingDistinct : ([s6Step271ExitGRow,s6Step271ExitFRow,s6Step271ExitFvRow,s6Step271ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271ExitF_Incoming : rowsOwned s6Step271ExitFBefore [s6Step271ExitFRow,s6Step271ExitFvRow,s6Step271ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271ExitGRow,s6Step271ExitFRow,s6Step271ExitFvRow,s6Step271ExitGvRow] 1 s6Step271ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271ExitFBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271ExitBank_outgoingOwned : rowsOwned s6Step271ExitGvAfter [s6Step271ExitGOut,s6Step271ExitFOut,s6Step271ExitFvOut,s6Step271ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step271ExitGvAfter (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271ExitF_Outgoing : rowsOwned s6Step271ExitGvAfter [s6Step271ExitFOut,s6Step271ExitFvOut,s6Step271ExitGvOut] :=
  hmrRows_owned_drop s6Step271ExitGvAfter [s6Step271ExitGOut,s6Step271ExitFOut,s6Step271ExitFvOut,s6Step271ExitGvOut] 1 s6Step271ExitBank_outgoingOwned

private theorem s6Step271ExitF_distinct : (s6Step271ExitFRow.sign::s6Step271ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271ExitF_owned : (s6Step271ExitFRow.sign::s6Step271ExitFRow.payload).toFinset⊆s6Step271ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271ExitFBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271ExitF_retired : s6Step271ExitFBefore.retireSet s6Step271ExitFExtra.toFinset=s6Step271ExitFAfter := by
  unfold Arena.retireSet s6Step271ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step271ExitFBefore,s6Step271ExitGAfter,s6Step271ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step271ExitF_checked : planRowResizeLog s6Step271ExitFBefore s6Step271ExitFRow 135 []=
    some (s6Step271ExitFAfter,s6Step271ExitFOut,shrinkRow 795 s6Step271ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step271ExitFBefore s6Step271ExitFRow 135 s6Step271ExitF_distinct s6Step271ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step271ExitFRow.payload.take 135) s6Step271ExitFRow.sign=s6Step271ExitFOut := by decide +kernel
  have hi : s6Step271ExitFRow.payload.drop 135=s6Step271ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step271ExitF_retired] at result
  exact result

private def s6Step271ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271ExitFvBefore : Arena := s6Step271ExitFAfter

private theorem s6Step271ExitFv_Incoming : rowsOwned s6Step271ExitFvBefore [s6Step271ExitFvRow,s6Step271ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271ExitGRow,s6Step271ExitFRow,s6Step271ExitFvRow,s6Step271ExitGvRow] 2 s6Step271ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271ExitFvBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271ExitFv_Outgoing : rowsOwned s6Step271ExitGvAfter [s6Step271ExitFvOut,s6Step271ExitGvOut] :=
  hmrRows_owned_drop s6Step271ExitGvAfter [s6Step271ExitGOut,s6Step271ExitFOut,s6Step271ExitFvOut,s6Step271ExitGvOut] 2 s6Step271ExitBank_outgoingOwned

private theorem s6Step271ExitFv_distinct : (s6Step271ExitFvRow.sign::s6Step271ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271ExitFv_owned : (s6Step271ExitFvRow.sign::s6Step271ExitFvRow.payload).toFinset⊆s6Step271ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271ExitFvBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271ExitFv_retired : s6Step271ExitFvBefore.retireSet s6Step271ExitFvExtra.toFinset=s6Step271ExitFvAfter := by
  unfold Arena.retireSet s6Step271ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step271ExitFvBefore,s6Step271ExitFAfter,s6Step271ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step271ExitFv_checked : planRowResizeLog s6Step271ExitFvBefore s6Step271ExitFvRow 151 []=
    some (s6Step271ExitFvAfter,s6Step271ExitFvOut,shrinkRow 776 s6Step271ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step271ExitFvBefore s6Step271ExitFvRow 151 s6Step271ExitFv_distinct s6Step271ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step271ExitFvRow.payload.take 151) s6Step271ExitFvRow.sign=s6Step271ExitFvOut := by decide +kernel
  have hi : s6Step271ExitFvRow.payload.drop 151=s6Step271ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step271ExitFv_retired] at result
  exact result

private def s6Step271ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step271ExitG_Incoming : rowsOwned s6Step271ExitGBefore [s6Step271ExitGRow,s6Step271ExitFRow,s6Step271ExitFvRow,s6Step271ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271ExitGRow,s6Step271ExitFRow,s6Step271ExitFvRow,s6Step271ExitGvRow] 0 s6Step271ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271ExitG_Outgoing : rowsOwned s6Step271ExitGvAfter [s6Step271ExitGOut,s6Step271ExitFOut,s6Step271ExitFvOut,s6Step271ExitGvOut] :=
  hmrRows_owned_drop s6Step271ExitGvAfter [s6Step271ExitGOut,s6Step271ExitFOut,s6Step271ExitFvOut,s6Step271ExitGvOut] 0 s6Step271ExitBank_outgoingOwned

private theorem s6Step271ExitG_distinct : (s6Step271ExitGRow.sign::s6Step271ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271ExitG_owned : (s6Step271ExitGRow.sign::s6Step271ExitGRow.payload).toFinset⊆s6Step271ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271ExitG_retired : s6Step271ExitGBefore.retireSet s6Step271ExitGExtra.toFinset=s6Step271ExitGAfter := by
  unfold Arena.retireSet s6Step271ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step271ExitGBefore,s6Step271ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step271ExitG_checked : planRowResizeLog s6Step271ExitGBefore s6Step271ExitGRow 135 []=
    some (s6Step271ExitGAfter,s6Step271ExitGOut,shrinkRow 777 s6Step271ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step271ExitGBefore s6Step271ExitGRow 135 s6Step271ExitG_distinct s6Step271ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step271ExitGRow.payload.take 135) s6Step271ExitGRow.sign=s6Step271ExitGOut := by decide +kernel
  have hi : s6Step271ExitGRow.payload.drop 135=s6Step271ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step271ExitG_retired] at result
  exact result

private def s6Step271ExitGvBefore : Arena := s6Step271ExitFvAfter

private theorem s6Step271ExitGv_Incoming : rowsOwned s6Step271ExitGvBefore [s6Step271ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271ExitGRow,s6Step271ExitFRow,s6Step271ExitFvRow,s6Step271ExitGvRow] 3 s6Step271ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271ExitGvBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271ExitGv_Outgoing : rowsOwned s6Step271ExitGvAfter [s6Step271ExitGvOut] :=
  hmrRows_owned_drop s6Step271ExitGvAfter [s6Step271ExitGOut,s6Step271ExitFOut,s6Step271ExitFvOut,s6Step271ExitGvOut] 3 s6Step271ExitBank_outgoingOwned

private theorem s6Step271ExitGv_distinct : (s6Step271ExitGvRow.sign::s6Step271ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271ExitGv_owned : (s6Step271ExitGvRow.sign::s6Step271ExitGvRow.payload).toFinset⊆s6Step271ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271ExitGvBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271ExitGv_retired : s6Step271ExitGvBefore.retireSet s6Step271ExitGvExtra.toFinset=s6Step271ExitGvAfter := by
  unfold Arena.retireSet s6Step271ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step271ExitGvBefore,s6Step271ExitFvAfter,s6Step271ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step271ExitGv_checked : planRowResizeLog s6Step271ExitGvBefore s6Step271ExitGvRow 151 []=
    some (s6Step271ExitGvAfter,s6Step271ExitGvOut,shrinkRow 775 s6Step271ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step271ExitGvBefore s6Step271ExitGvRow 151 s6Step271ExitGv_distinct s6Step271ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step271ExitGvRow.payload.take 151) s6Step271ExitGvRow.sign=s6Step271ExitGvOut := by decide +kernel
  have hi : s6Step271ExitGvRow.payload.drop 151=s6Step271ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step271ExitGv_retired] at result
  exact result

private theorem s6Step271ExitBank_rows : planWindowRowsLog s6Step271ExitGBefore [(s6Step271ExitGRow,135),(s6Step271ExitFRow,135),(s6Step271ExitFvRow,151),(s6Step271ExitGvRow,151)] [[],[],[],[]]=
    some (s6Step271ExitGvAfter,[s6Step271ExitGOut,s6Step271ExitFOut,s6Step271ExitFvOut,s6Step271ExitGvOut],(shrinkRow 777 s6Step271ExitGExtra ++ (shrinkRow 795 s6Step271ExitFExtra ++ (shrinkRow 776 s6Step271ExitFvExtra ++ (shrinkRow 775 s6Step271ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step271ExitGvAfter [] []=some (s6Step271ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step271ExitGvBefore s6Step271ExitGvAfter s6Step271ExitGvAfter
    s6Step271ExitGvRow s6Step271ExitGvOut 151 [] [] [] []
    (shrinkRow 775 s6Step271ExitGvExtra) ([]) s6Step271ExitGv_Incoming s6Step271ExitGv_checked h4 s6Step271ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step271ExitFvBefore s6Step271ExitFvAfter s6Step271ExitGvAfter
    s6Step271ExitFvRow s6Step271ExitFvOut 151 [] [(s6Step271ExitGvRow,151)] [[]] [s6Step271ExitGvOut]
    (shrinkRow 776 s6Step271ExitFvExtra) ((shrinkRow 775 s6Step271ExitGvExtra ++ [])) s6Step271ExitFv_Incoming s6Step271ExitFv_checked h3 s6Step271ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step271ExitFBefore s6Step271ExitFAfter s6Step271ExitGvAfter
    s6Step271ExitFRow s6Step271ExitFOut 135 [] [(s6Step271ExitFvRow,151),(s6Step271ExitGvRow,151)] [[],[]] [s6Step271ExitFvOut,s6Step271ExitGvOut]
    (shrinkRow 795 s6Step271ExitFExtra) ((shrinkRow 776 s6Step271ExitFvExtra ++ (shrinkRow 775 s6Step271ExitGvExtra ++ []))) s6Step271ExitF_Incoming s6Step271ExitF_checked h2 s6Step271ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step271ExitGBefore s6Step271ExitGAfter s6Step271ExitGvAfter
    s6Step271ExitGRow s6Step271ExitGOut 135 [] [(s6Step271ExitFRow,135),(s6Step271ExitFvRow,151),(s6Step271ExitGvRow,151)] [[],[],[]] [s6Step271ExitFOut,s6Step271ExitFvOut,s6Step271ExitGvOut]
    (shrinkRow 777 s6Step271ExitGExtra) ((shrinkRow 795 s6Step271ExitFExtra ++ (shrinkRow 776 s6Step271ExitFvExtra ++ (shrinkRow 775 s6Step271ExitGvExtra ++ [])))) s6Step271ExitG_Incoming s6Step271ExitG_checked h1 s6Step271ExitG_Outgoing
  exact h0

private theorem s6Step271ExitBank_checked : compileHmrBankResizeLog .exit s6Step271ExitGBefore ⟨s6Step271ExitFRow,s6Step271ExitGRow,s6Step271ExitFvRow,s6Step271ExitGvRow⟩ ⟨135,135,151,151⟩ [[],[],[],[]]=
    some (s6Step271ExitGvAfter,⟨s6Step271ExitFOut,s6Step271ExitGOut,s6Step271ExitFvOut,s6Step271ExitGvOut⟩,(shrinkRow 777 s6Step271ExitGExtra ++ (shrinkRow 795 s6Step271ExitFExtra ++ (shrinkRow 776 s6Step271ExitFvExtra ++ (shrinkRow 775 s6Step271ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step271ExitBank_rows]
  rfl

private theorem s6Step271Add0_apart : Disjoint s6Step271Add0Arena.live s6Step271Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step271Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271Add0_card : s6Step271Add0Arena.live.card=901 := by
  decide +kernel

private theorem s6Step271Add0_borrowed : s6Step271Add0Arena.checkBorrow (hmrHybridCount s6Step271Add0Arena s6Step271Add0B.length) s6Step271Add0Work=some s6Step271Add0During := by
  have len : s6Step271Add0Work.length=hmrHybridCount s6Step271Add0Arena s6Step271Add0B.length := by
    rw [hmrHybridCount,s6Step271Add0_card]
    decide +kernel
  have nd : s6Step271Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step271Add0Arena s6Step271Add0During s6Step271Add0Work.toFinset s6Step271Add0_bounded s6Step271Add0_apart rfl

private theorem s6Step271Add0_distinct : (830::838::805::(s6Step271Add0A++s6Step271Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271Add0_owned : (830::838::805::(s6Step271Add0A++s6Step271Add0B)).toFinset⊆s6Step271Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step271Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271Add0_checked : compileHmrHybridCinLog s6Step271Add0Arena 838 830 805 s6Step271Add0A s6Step271Add0B s6Step271Add0Work=some s6Step271Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step271Add0Arena s6Step271Add0During 838 830 805 s6Step271Add0A s6Step271Add0B s6Step271Add0Work
    (by decide +kernel) (by decide +kernel) s6Step271Add0_distinct
    (fun q hq => s6Step271Add0_owned (List.mem_toFinset.mpr hq)) s6Step271Add0_borrowed

private theorem s6Step271Add1_apart : Disjoint s6Step271Add1Arena.live s6Step271Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step271Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271Add1_card : s6Step271Add1Arena.live.card=901 := by
  decide +kernel

private theorem s6Step271Add1_borrowed : s6Step271Add1Arena.checkBorrow (hmrHybridCount s6Step271Add1Arena s6Step271Add1B.length) s6Step271Add1Work=some s6Step271Add1During := by
  have len : s6Step271Add1Work.length=hmrHybridCount s6Step271Add1Arena s6Step271Add1B.length := by
    rw [hmrHybridCount,s6Step271Add1_card]
    decide +kernel
  have nd : s6Step271Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step271Add1Arena s6Step271Add1During s6Step271Add1Work.toFinset s6Step271Add1_bounded s6Step271Add1_apart rfl

private theorem s6Step271Add1_distinct : (830::838::805::(s6Step271Add1A++s6Step271Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271Add1_owned : (830::838::805::(s6Step271Add1A++s6Step271Add1B)).toFinset⊆s6Step271Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step271Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271Add1_checked : compileHmrHybridCinLog s6Step271Add1Arena 838 830 805 s6Step271Add1A s6Step271Add1B s6Step271Add1Work=some s6Step271Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step271Add1Arena s6Step271Add1During 838 830 805 s6Step271Add1A s6Step271Add1B s6Step271Add1Work
    (by decide +kernel) (by decide +kernel) s6Step271Add1_distinct
    (fun q hq => s6Step271Add1_owned (List.mem_toFinset.mpr hq)) s6Step271Add1_borrowed

private theorem s6Step271F4_apart : Disjoint (s6Step271Add0A++s6Step271Add0B).toFinset (s6Step271Add1A++s6Step271Add1B).toFinset := by
  have nd : ((s6Step271Add0A++s6Step271Add0B)++(s6Step271Add1A++s6Step271Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step271F4_carry : s6Step271F4FlagArena.checkBorrow 1 [805]=some s6Step271Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step271F4FlagArena,s6Step271HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step271F4FlagArena,s6Step271HeadFvAfter,s6Step271Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step271F4_distinct : (780::838::830::805::((s6Step271Add0A++s6Step271Add1A)++(s6Step271Add0B++s6Step271Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271F4_flag : s6Step271HeadFvAfter.checkBorrow 1 [830]=some s6Step271F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step271HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step271F4_owned : (780::838::((s6Step271Add0A++s6Step271Add1A)++(s6Step271Add0B++s6Step271Add1B))).toFinset⊆s6Step271HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step271HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271F4_checked : compileHmrHybridF4Log s6Step271HeadFvAfter 780 838 s6Step271Add0A s6Step271Add0B s6Step271Add1A s6Step271Add1B [830] [805] s6Step271Add0Work s6Step271Add1Work=some s6Step271F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step271HeadFvAfter s6Step271F4FlagArena s6Step271Add0Arena s6Step271Add0During s6Step271Add1During 780 838
    s6Step271Add0A s6Step271Add0B s6Step271Add1A s6Step271Add1B [830] [805] s6Step271Add0Work s6Step271Add1Work
    (fun q hq => s6Step271F4_owned (List.mem_toFinset.mpr hq)) s6Step271F4_flag s6Step271F4_carry
    s6Step271F4_distinct s6Step271F4_apart s6Step271Add0_checked s6Step271Add1_checked

private theorem s6Step271Front_branch : s6Step271FrontSigmaArena.checkBorrow 1 [838]=some s6Step271HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step271FrontSigmaArena,s6Step271EntryGvAfter,s6Step271EntryFAfter,arenaWires]
  · ext q
    simp only [s6Step271FrontSigmaArena,s6Step271EntryGvAfter,s6Step271EntryFAfter,s6Step271HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step271Front_entry : HmrFrontEntryValid s6Step271EntryFBefore s6Step271FrontBank 136 151 ⟨135,135,151,151⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step271FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step271EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step271EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step271FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step271Front_sigma : s6Step271EntryGvAfter.checkBorrow 1 [780]=some s6Step271FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step271EntryGvAfter,s6Step271EntryFAfter,arenaWires]
  · rfl

private def s6Step271HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271HeadFBefore : Arena := s6Step271HeadGAfter

private def s6Step271HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 874],795⟩

private def s6Step271HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794],776⟩

private def s6Step271HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],777⟩

private def s6Step271HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859],775⟩

private theorem s6Step271HeadBank_incomingDistinct : ([s6Step271HeadGRow,s6Step271HeadFRow,s6Step271HeadGvRow,s6Step271HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271HeadF_Incoming : rowsOwned s6Step271HeadFBefore [s6Step271HeadFRow,s6Step271HeadGvRow,s6Step271HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271HeadGRow,s6Step271HeadFRow,s6Step271HeadGvRow,s6Step271HeadFvRow] 1 s6Step271HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271HeadBank_outgoingOwned : rowsOwned s6Step271HeadFvAfter [s6Step271HeadGOut,s6Step271HeadFOut,s6Step271HeadGvOut,s6Step271HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step271HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271HeadF_Outgoing : rowsOwned s6Step271HeadFvAfter [s6Step271HeadFOut,s6Step271HeadGvOut,s6Step271HeadFvOut] :=
  hmrRows_owned_drop s6Step271HeadFvAfter [s6Step271HeadGOut,s6Step271HeadFOut,s6Step271HeadGvOut,s6Step271HeadFvOut] 1 s6Step271HeadBank_outgoingOwned

private theorem s6Step271HeadF_distinct : (s6Step271HeadFRow.sign::s6Step271HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271HeadF_owned : (s6Step271HeadFRow.sign::s6Step271HeadFRow.payload).toFinset⊆s6Step271HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271HeadF_reserved : s6Step271HeadFBefore.reserve s6Step271HeadFFresh.toFinset=some s6Step271HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step271HeadFFresh,arenaWires]
  · norm_num [s6Step271HeadFBefore,s6Step271HeadGAfter,s6Step271HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step271HeadFAfter,s6Step271HeadFBefore,s6Step271HeadGAfter,s6Step271HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step271HeadF_checked : planRowResizeLog s6Step271HeadFBefore s6Step271HeadFRow 137 s6Step271HeadFFresh=
    some (s6Step271HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 874, 927],795⟩,growRow 795 s6Step271HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step271HeadFBefore s6Step271HeadFAfter s6Step271HeadFRow 137 s6Step271HeadFFresh
    s6Step271HeadF_distinct s6Step271HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step271HeadF_reserved
  have rowEq : WindowRow.mk (s6Step271HeadFRow.payload++s6Step271HeadFFresh) s6Step271HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 874, 927],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step271HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step271HeadFvBefore : Arena := s6Step271HeadGvAfter

private theorem s6Step271HeadFv_Incoming : rowsOwned s6Step271HeadFvBefore [s6Step271HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271HeadGRow,s6Step271HeadFRow,s6Step271HeadGvRow,s6Step271HeadFvRow] 3 s6Step271HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271HeadFv_Outgoing : rowsOwned s6Step271HeadFvAfter [s6Step271HeadFvOut] :=
  hmrRows_owned_drop s6Step271HeadFvAfter [s6Step271HeadGOut,s6Step271HeadFOut,s6Step271HeadGvOut,s6Step271HeadFvOut] 3 s6Step271HeadBank_outgoingOwned

private theorem s6Step271HeadFv_distinct : (s6Step271HeadFvRow.sign::s6Step271HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271HeadFv_owned : (s6Step271HeadFvRow.sign::s6Step271HeadFvRow.payload).toFinset⊆s6Step271HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271HeadFv_reserved : s6Step271HeadFvBefore.reserve s6Step271HeadFvFresh.toFinset=some s6Step271HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step271HeadFvFresh,arenaWires]
  · norm_num [s6Step271HeadFvBefore,s6Step271HeadGvAfter,s6Step271HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step271HeadFvAfter,s6Step271HeadFvBefore,s6Step271HeadGvAfter,s6Step271HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step271HeadFv_checked : planRowResizeLog s6Step271HeadFvBefore s6Step271HeadFvRow 152 s6Step271HeadFvFresh=
    some (s6Step271HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 877],776⟩,growRow 776 s6Step271HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step271HeadFvBefore s6Step271HeadFvAfter s6Step271HeadFvRow 152 s6Step271HeadFvFresh
    s6Step271HeadFv_distinct s6Step271HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step271HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step271HeadFvRow.payload++s6Step271HeadFvFresh) s6Step271HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 813, 779, 802, 882, 855, 807, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 877],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step271HeadG_Incoming : rowsOwned s6Step271HeadGBefore [s6Step271HeadGRow,s6Step271HeadFRow,s6Step271HeadGvRow,s6Step271HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271HeadGRow,s6Step271HeadFRow,s6Step271HeadGvRow,s6Step271HeadFvRow] 0 s6Step271HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271HeadG_Outgoing : rowsOwned s6Step271HeadFvAfter [s6Step271HeadGOut,s6Step271HeadFOut,s6Step271HeadGvOut,s6Step271HeadFvOut] :=
  hmrRows_owned_drop s6Step271HeadFvAfter [s6Step271HeadGOut,s6Step271HeadFOut,s6Step271HeadGvOut,s6Step271HeadFvOut] 0 s6Step271HeadBank_outgoingOwned

private theorem s6Step271HeadG_distinct : (s6Step271HeadGRow.sign::s6Step271HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271HeadG_owned : (s6Step271HeadGRow.sign::s6Step271HeadGRow.payload).toFinset⊆s6Step271HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271HeadG_reserved : s6Step271HeadGBefore.reserve s6Step271HeadGFresh.toFinset=some s6Step271HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step271HeadGFresh,arenaWires]
  · norm_num [s6Step271HeadGBefore,s6Step271HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step271HeadGAfter,s6Step271HeadGBefore,s6Step271HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step271HeadG_checked : planRowResizeLog s6Step271HeadGBefore s6Step271HeadGRow 137 s6Step271HeadGFresh=
    some (s6Step271HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 867],777⟩,growRow 777 s6Step271HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step271HeadGBefore s6Step271HeadGAfter s6Step271HeadGRow 137 s6Step271HeadGFresh
    s6Step271HeadG_distinct s6Step271HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step271HeadG_reserved
  have rowEq : WindowRow.mk (s6Step271HeadGRow.payload++s6Step271HeadGFresh) s6Step271HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 867],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step271HeadGvBefore : Arena := s6Step271HeadFAfter

private theorem s6Step271HeadGv_Incoming : rowsOwned s6Step271HeadGvBefore [s6Step271HeadGvRow,s6Step271HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step271HeadGRow,s6Step271HeadFRow,s6Step271HeadGvRow,s6Step271HeadFvRow] 2 s6Step271HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step271HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step271HeadGv_Outgoing : rowsOwned s6Step271HeadFvAfter [s6Step271HeadGvOut,s6Step271HeadFvOut] :=
  hmrRows_owned_drop s6Step271HeadFvAfter [s6Step271HeadGOut,s6Step271HeadFOut,s6Step271HeadGvOut,s6Step271HeadFvOut] 2 s6Step271HeadBank_outgoingOwned

private theorem s6Step271HeadGv_distinct : (s6Step271HeadGvRow.sign::s6Step271HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step271HeadGv_owned : (s6Step271HeadGvRow.sign::s6Step271HeadGvRow.payload).toFinset⊆s6Step271HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step271HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<877) ∨ (878≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step271HeadGv_reserved : s6Step271HeadGvBefore.reserve s6Step271HeadGvFresh.toFinset=some s6Step271HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step271HeadGvFresh,arenaWires]
  · norm_num [s6Step271HeadGvBefore,s6Step271HeadFAfter,s6Step271HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step271HeadGvAfter,s6Step271HeadGvBefore,s6Step271HeadFAfter,s6Step271HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step271HeadGv_checked : planRowResizeLog s6Step271HeadGvBefore s6Step271HeadGvRow 152 s6Step271HeadGvFresh=
    some (s6Step271HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 809],775⟩,growRow 775 s6Step271HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step271HeadGvBefore s6Step271HeadGvAfter s6Step271HeadGvRow 152 s6Step271HeadGvFresh
    s6Step271HeadGv_distinct s6Step271HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step271HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step271HeadGvRow.payload++s6Step271HeadGvFresh) s6Step271HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 784, 881, 768, 845, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 809],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step271HeadBank_rows : planWindowRowsLog s6Step271HeadGBefore [(s6Step271HeadGRow,137),(s6Step271HeadFRow,137),(s6Step271HeadGvRow,152),(s6Step271HeadFvRow,152)] [s6Step271HeadGFresh,s6Step271HeadFFresh,s6Step271HeadGvFresh,s6Step271HeadFvFresh]=
    some (s6Step271HeadFvAfter,[s6Step271HeadGOut,s6Step271HeadFOut,s6Step271HeadGvOut,s6Step271HeadFvOut],(growRow 777 s6Step271HeadGFresh ++ (growRow 795 s6Step271HeadFFresh ++ (growRow 775 s6Step271HeadGvFresh ++ (growRow 776 s6Step271HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step271HeadFvAfter [] []=some (s6Step271HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step271HeadFvBefore s6Step271HeadFvAfter s6Step271HeadFvAfter
    s6Step271HeadFvRow s6Step271HeadFvOut 152 s6Step271HeadFvFresh [] [] []
    (growRow 776 s6Step271HeadFvFresh) ([]) s6Step271HeadFv_Incoming s6Step271HeadFv_checked h4 s6Step271HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step271HeadGvBefore s6Step271HeadGvAfter s6Step271HeadFvAfter
    s6Step271HeadGvRow s6Step271HeadGvOut 152 s6Step271HeadGvFresh [(s6Step271HeadFvRow,152)] [s6Step271HeadFvFresh] [s6Step271HeadFvOut]
    (growRow 775 s6Step271HeadGvFresh) ((growRow 776 s6Step271HeadFvFresh ++ [])) s6Step271HeadGv_Incoming s6Step271HeadGv_checked h3 s6Step271HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step271HeadFBefore s6Step271HeadFAfter s6Step271HeadFvAfter
    s6Step271HeadFRow s6Step271HeadFOut 137 s6Step271HeadFFresh [(s6Step271HeadGvRow,152),(s6Step271HeadFvRow,152)] [s6Step271HeadGvFresh,s6Step271HeadFvFresh] [s6Step271HeadGvOut,s6Step271HeadFvOut]
    (growRow 795 s6Step271HeadFFresh) ((growRow 775 s6Step271HeadGvFresh ++ (growRow 776 s6Step271HeadFvFresh ++ []))) s6Step271HeadF_Incoming s6Step271HeadF_checked h2 s6Step271HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step271HeadGBefore s6Step271HeadGAfter s6Step271HeadFvAfter
    s6Step271HeadGRow s6Step271HeadGOut 137 s6Step271HeadGFresh [(s6Step271HeadFRow,137),(s6Step271HeadGvRow,152),(s6Step271HeadFvRow,152)] [s6Step271HeadFFresh,s6Step271HeadGvFresh,s6Step271HeadFvFresh] [s6Step271HeadFOut,s6Step271HeadGvOut,s6Step271HeadFvOut]
    (growRow 777 s6Step271HeadGFresh) ((growRow 795 s6Step271HeadFFresh ++ (growRow 775 s6Step271HeadGvFresh ++ (growRow 776 s6Step271HeadFvFresh ++ [])))) s6Step271HeadG_Incoming s6Step271HeadG_checked h1 s6Step271HeadG_Outgoing
  exact h0

private theorem s6Step271HeadBank_checked : compileHmrBankResizeLog .headroom s6Step271HeadGBefore ⟨s6Step271HeadFRow,s6Step271HeadGRow,s6Step271HeadFvRow,s6Step271HeadGvRow⟩ ⟨137,137,152,152⟩ [s6Step271HeadGFresh,s6Step271HeadFFresh,s6Step271HeadGvFresh,s6Step271HeadFvFresh]=
    some (s6Step271HeadFvAfter,⟨s6Step271HeadFOut,s6Step271HeadGOut,s6Step271HeadFvOut,s6Step271HeadGvOut⟩,(growRow 777 s6Step271HeadGFresh ++ (growRow 795 s6Step271HeadFFresh ++ (growRow 775 s6Step271HeadGvFresh ++ (growRow 776 s6Step271HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step271HeadBank_rows]
  rfl

private theorem s6Step271Front_checked : compileHmrSourceFrontLog s6Step271EntryFBefore s6Step271FrontBank 136 151 ⟨135,135,151,151⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step271FrontLog=some s6Step271FrontPlan := by
  have pairEq : s6Step271FrontPair=⟨s6Step271HeadFRow,s6Step271HeadGRow,s6Step271HeadFvRow,s6Step271HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step271FrontHead=⟨s6Step271ExitFRow,s6Step271ExitGRow,s6Step271ExitFvRow,s6Step271ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step271Add0A=s6Step271FrontHead.f.wires := by decide +kernel
  have gEq : s6Step271Add0B=s6Step271FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step271Add1A=s6Step271FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step271Add1B=s6Step271FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step271EntryFBefore s6Step271FrontBank 136 151 ⟨135,135,151,151⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step271FrontLog s6Step271FrontPlan
  · exact s6Step271Front_entry
  · exact s6Step271EntryBank_checked
  · exact s6Step271Front_sigma
  · rfl
  · exact s6Step271Front_branch
  · rfl
  · simpa only [s6Step271FrontPlan,pairEq] using s6Step271HeadBank_checked
  · simpa only [s6Step271FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step271F4_checked
  · exact s6Step271Counter_checked
  · rfl
  · simpa only [s6Step271FrontPlan,headEq] using s6Step271ExitBank_checked

private theorem s6Step271Complete_explicit_checked : compileHmrEarlyStepLog s6Step271EntryFBefore s6Step271FrontBank 136 151 ⟨135,135,151,151⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step271CompleteLog=some s6Step271CompletePlan := by
  let Q := s6Step271EarlyControlPlan
  have hq := s6Step271EarlyControl_plan_checked
  have fv1 : s6Step271CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step271CompleteOut.fv.payload[2]?.getD s6Step271CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step271CompleteOut.fv.payload[3]?.getD s6Step271CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step271CompleteOut.fv.payload[4]?.getD s6Step271CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step271EntryFBefore s6Step271EarlyControlArena s6Step271FrontBank 136 151 ⟨135,135,151,151⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 53 s6Step271CompleteLog s6Step271FrontPlan Q
    s6Step271Front_checked s6Step271Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step271Complete_owned s6Step271Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step271EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 769 780 s6Step271CompleteOut.fv.second (s6Step271CompleteOut.fv.payload[2]?.getD s6Step271CompleteOut.fv.sign) (s6Step271CompleteOut.fv.payload[3]?.getD s6Step271CompleteOut.fv.sign) (s6Step271CompleteOut.fv.payload[4]?.getD s6Step271CompleteOut.fv.sign) 838 53 s6Step271EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep271Arena : Arena := s6Step271EntryFBefore
def s6PrivateStep271Bank : WindowBank := s6Step271FrontBank
def s6PrivateStep271Spec : HmrSourceWalkStepLog := ⟨136,151,⟨135,135,151,151⟩,53,.early s6Step271CompleteLog⟩
def s6PrivateStep271Plan : HmrSourceStepPlan := .early s6Step271CompletePlan
theorem s6PrivateStep271_source : s6PrivateStep271Spec=s6ObservedLogs256[15] := rfl
theorem s6PrivateStep271_checked : compileHmrSourceStepLog s6PrivateStep271Arena s6PrivateStep271Bank
    s6PrivateStep271Spec.fgWidth s6PrivateStep271Spec.vWidth s6PrivateStep271Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]
    6 498 271 s6PrivateStep271Spec.need none s6PrivateStep271Spec.log=some s6PrivateStep271Plan := by
  change compileHmrSourceStepLog s6Step271EntryFBefore s6Step271FrontBank 136 151 ⟨135,135,151,151⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] 6 498 271 53 none (.early s6Step271CompleteLog)=some (.early s6Step271CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 271<498)]
  rw [s6Step271Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
