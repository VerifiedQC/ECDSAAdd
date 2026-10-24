import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep279
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

private def s6Step281CompleteMoves : List (Wire × Wire) := [(858,385),(887,386)]

private def s6Step281EarlyControlLog : HmrEarlyControlLog := ⟨[887, 858, 882, 845, 855],[809],[830],[805, 817, 812, 915, 906, 899],[]⟩

private def s6Step281FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[845], [882], [927], [881]],[[], [], [], []]⟩,[813],[807],[855],[809],[830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[855, 809, 830, 805]⟩

private def s6Step281CompleteLog : HmrEarlyStepLog := ⟨s6Step281FrontLog,s6Step281CompleteMoves,s6Step281EarlyControlLog⟩

private def s6Step281ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384],795⟩

private def s6Step281ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881],776⟩

private def s6Step281ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779],777⟩

private def s6Step281ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927],775⟩

private def s6Step281FrontOut : WindowBank := ⟨s6Step281ExitFOut,s6Step281ExitGOut,s6Step281ExitFvOut,s6Step281ExitGvOut⟩

private def s6Step281CompleteOut : WindowBank := s6Step281FrontOut.repacked s6Step281CompleteMoves

private def s6Step281EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step281EarlyControlPositiveArena,[809],s6Step281EarlyControlEqualityArena,[830],⟨⟨813,false⟩,[⟨⟨809,false⟩,830⟩]⟩⟩

private def s6Step281EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,858⟩,⟨⟨771,false⟩,882⟩,⟨⟨770,false⟩,845⟩,⟨⟨769,false⟩,855⟩]⟩

private def s6Step281EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step281EarlyControlZeroArena,s6Step281EarlyControlZeroPlan,s6Step281EarlyControlClassPlan,s6Step281EarlyControlFlagArena,s6Step281EarlyControlFittedArena,s6Step281EarlyControlHistoryArena,s6Step281EarlyControlSigmaArena,s6Step281EarlyControlOutputArena,s6Step281EarlyControlLog⟩

private def s6Step281CounterWork : List Wire := [855, 809, 830, 805]

private theorem s6Step281Counter_bounded : s6Step281CounterWork.toFinset⊆arenaWires := by norm_num [s6Step281CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step281HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281CounterDuring : Arena := ⟨s6Step281HeadFvAfter.live∪s6Step281CounterWork.toFinset,Finset.union_subset s6Step281HeadFvAfter.bounded s6Step281Counter_bounded⟩

private def s6Step281EntryFFresh : List Wire := []

private def s6Step281EntryFvFresh : List Wire := []

private def s6Step281EntryGFresh : List Wire := []

private def s6Step281EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281EntryGvAfter : Arena := s6Step281EntryFBefore

private def s6Step281EntryGvFresh : List Wire := []

private def s6Step281ExitFExtra : List Wire := [385, 386, 882]

private def s6Step281ExitGExtra : List Wire := [845]

private def s6Step281ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<385) ∨ (387≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281ExitGvAfter : Arena := s6Step281ExitFAfter

private def s6Step281Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step281Add0_bounded : s6Step281Add0Work.toFinset⊆arenaWires := by
  have h : s6Step281Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step281Add0During : Arena := ⟨s6Step281Add0Arena.live∪s6Step281Add0Work.toFinset,Finset.union_subset s6Step281Add0Arena.bounded s6Step281Add0_bounded⟩

private def s6Step281Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step281Add1_bounded : s6Step281Add1Work.toFinset⊆arenaWires := by
  have h : s6Step281Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step281Add1During : Arena := ⟨s6Step281Add1Arena.live∪s6Step281Add1Work.toFinset,Finset.union_subset s6Step281Add1Arena.bounded s6Step281Add1_bounded⟩

private def s6Step281F4FlagArena : Arena := ⟨s6Step281HeadFvAfter.live∪{855},Finset.union_subset s6Step281HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step281F4Plan : HmrHybridF4Plan := ⟨s6Step281F4FlagArena,[855],s6Step281Add0Arena,[809],s6Step281Add0During,s6Step281Add0Work,s6Step281Add1During,s6Step281Add1Work⟩

private def s6Step281HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 882],795⟩

private def s6Step281HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881],776⟩

private def s6Step281HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 845],777⟩

private def s6Step281HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927],775⟩

private def s6Step281FrontHead : WindowBank := ⟨s6Step281HeadFOut,s6Step281HeadGOut,s6Step281HeadFvOut,s6Step281HeadGvOut⟩

private def s6Step281EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386],795⟩

private def s6Step281EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩

private def s6Step281EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779],777⟩

private def s6Step281EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩

private def s6Step281FrontPair : WindowBank := ⟨s6Step281EntryFOut,s6Step281EntryGOut,s6Step281EntryFvOut,s6Step281EntryGvOut⟩

private def s6Step281FrontSigmaArena : Arena := ⟨s6Step281EntryGvAfter.live∪{813},Finset.union_subset s6Step281EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step281HeadFFresh : List Wire := [882]

private def s6Step281HeadFvFresh : List Wire := [881]

private def s6Step281HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281HeadGFresh : List Wire := [845]

private def s6Step281HeadGvFresh : List Wire := [927]

private def s6Step281FrontPlan : HmrSourceFront := ⟨s6Step281EntryGvAfter,s6Step281FrontPair,(growRow 795 s6Step281EntryFFresh ++ (growRow 777 s6Step281EntryGFresh ++ (growRow 776 s6Step281EntryFvFresh ++ (growRow 775 s6Step281EntryGvFresh ++ [])))),s6Step281FrontSigmaArena,[813],s6Step281HeadGBefore,[807],
  s6Step281HeadFvAfter,s6Step281FrontHead,(growRow 777 s6Step281HeadGFresh ++ (growRow 795 s6Step281HeadFFresh ++ (growRow 775 s6Step281HeadGvFresh ++ (growRow 776 s6Step281HeadFvFresh ++ [])))),s6Step281F4Plan,s6Step281CounterDuring,s6Step281CounterWork,s6Step281ExitGvAfter,s6Step281FrontOut,(shrinkRow 777 s6Step281ExitGExtra ++ (shrinkRow 795 s6Step281ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step281CompletePlan : HmrEarlyStepPlan := ⟨s6Step281FrontPlan,s6Step281EarlyControlArena,s6Step281EarlyControlPlan,s6Step281CompleteMoves⟩

private theorem s6Step281Complete_apart : List.Disjoint (s6Step281CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [813, 807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := by
  have nd : ((s6Step281CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[813, 807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step281Complete_owned : (s6Step281CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step281EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step281CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,386),(387,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(810,811),(813,815),(818,819),(821,830),(831,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,882),(883,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step281CompleteRelocationMove0Borrowed : Arena := ⟨s6Step281ExitGvAfter.live∪{385},Finset.union_subset s6Step281ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step281CompleteRelocationMove1Borrowed : Arena := ⟨s6Step281CompleteRelocationMove0After.live∪{386},Finset.union_subset s6Step281CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step281CompleteRelocation_move0_owned : 858∈s6Step281ExitGvAfter.live := by norm_num [s6Step281ExitGvAfter,s6Step281ExitFAfter,arenaWires]

private theorem s6Step281CompleteRelocation_move0_reserve : s6Step281ExitGvAfter.reserve {385}=some s6Step281CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step281ExitGvAfter,s6Step281ExitFAfter,arenaWires]
  · rfl

private theorem s6Step281CompleteRelocation_move0_retire : s6Step281CompleteRelocationMove0Borrowed.retireSet {858}=s6Step281CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step281CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step281CompleteRelocationMove0Borrowed,s6Step281ExitGvAfter,s6Step281ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step281CompleteRelocation_move1_owned : 887∈s6Step281CompleteRelocationMove0After.live := by norm_num [s6Step281CompleteRelocationMove0After,arenaWires]

private theorem s6Step281CompleteRelocation_move1_reserve : s6Step281CompleteRelocationMove0After.reserve {386}=some s6Step281CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step281CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step281CompleteRelocation_move1_retire : s6Step281CompleteRelocationMove1Borrowed.retireSet {887}=s6Step281EarlyControlArena := by
  unfold Arena.retireSet s6Step281EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step281CompleteRelocationMove1Borrowed,s6Step281CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step281CompleteRelocation_checked : s6Step281ExitGvAfter.checkRepack [(858,385),(887,386)]=some s6Step281EarlyControlArena := by
  have tail2 : s6Step281EarlyControlArena.checkRepack []=some s6Step281EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step281CompleteRelocationMove0After s6Step281CompleteRelocationMove1Borrowed s6Step281EarlyControlArena s6Step281EarlyControlArena 887 386 []
    s6Step281CompleteRelocation_move1_owned s6Step281CompleteRelocation_move1_reserve s6Step281CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step281ExitGvAfter s6Step281CompleteRelocationMove0Borrowed s6Step281CompleteRelocationMove0After s6Step281EarlyControlArena 858 385 [(887,386)]
    s6Step281CompleteRelocation_move0_owned s6Step281CompleteRelocation_move0_reserve s6Step281CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step281Complete_repack : s6Step281ExitGvAfter.checkRepack s6Step281CompleteMoves=some s6Step281EarlyControlArena := by
  simpa only [s6Step281CompleteMoves] using s6Step281CompleteRelocation_checked

private theorem s6Step281EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s6Step281EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EarlyControl_branch : compileHmrBranchRetirement s6Step281EarlyControlSigmaArena 807=some s6Step281EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step281EarlyControl_branchOwned
  · ext q
    simp [s6Step281EarlyControlOutputArena,s6Step281EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step281EarlyControl_classEqualityBorrow : s6Step281EarlyControlPositiveArena.checkBorrow (([813, 809] : List Wire).length-1) s6Step281EarlyControlLog.classWork=some s6Step281EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step281EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step281EarlyControlEqualityArena,s6Step281EarlyControlPositiveArena,s6Step281EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step281EarlyControl_classEqualityOwned : ([813, 809] : List Wire).toFinset⊆s6Step281EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EarlyControl_classEquality : compileHmrEqualityLog s6Step281EarlyControlPositiveArena [813, 809] 0 s6Step281EarlyControlLog.classWork=some (s6Step281EarlyControlEqualityArena,s6Step281EarlyControlLog.classWork,s6Step281EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step281EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step281EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step281EarlyControl_classOwned : ([769, 855, 813] : List Wire).toFinset⊆s6Step281EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EarlyControl_positiveBorrow : s6Step281EarlyControlZeroArena.checkBorrow (1) s6Step281EarlyControlLog.positiveWork=some s6Step281EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step281EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step281EarlyControlPositiveArena,s6Step281EarlyControlZeroArena,s6Step281EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step281EarlyControl_class : compileHmrSourceClassLog s6Step281EarlyControlZeroArena false 769 s6Step281EarlyControlZeroPlan.top 0 813 s6Step281EarlyControlLog.positiveWork s6Step281EarlyControlLog.classWork=some s6Step281EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step281EarlyControlClassPlan s6Step281EarlyControlZeroArena false 769 s6Step281EarlyControlZeroPlan.top 0 813
  constructor
  · decide +kernel
  · exact s6Step281EarlyControl_classOwned
  · exact s6Step281EarlyControl_positiveBorrow
  · exact s6Step281EarlyControl_classEquality

private theorem s6Step281EarlyControl_entryRecordOwned : ([807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step281EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EarlyControl_entrySigmaOwned : ([813, 254] : List Wire).toFinset⊆s6Step281EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EarlyControl_fitBorrow : s6Step281EarlyControlFlagArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step281EarlyControlLog.recordFresh=some s6Step281EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step281EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step281EarlyControlFittedArena,s6Step281EarlyControlFlagArena,s6Step281EarlyControlLog,arenaWires]

private theorem s6Step281EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step281EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EarlyControl_fit : compileHmrRecordGrowLog s6Step281EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step281EarlyControlLog.recordFresh=some s6Step281EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step281EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step281EarlyControl_fitBorrow

private theorem s6Step281EarlyControl_flagsBorrow : s6Step281EarlyControlEqualityArena.checkBorrow (6) s6Step281EarlyControlLog.flagWork=some s6Step281EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step281EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step281EarlyControlFlagArena,s6Step281EarlyControlEqualityArena,s6Step281EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step281EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s6Step281EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EarlyControl_flags : compileHmrFlagsLog s6Step281EarlyControlClassPlan.equalityArena s6Step281EarlyControlClassPlan.equality.top 253 252 251 s6Step281EarlyControlLog.flagWork=some s6Step281EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step281EarlyControl_flagsOwned⟩
  · exact s6Step281EarlyControl_flagsBorrow

private theorem s6Step281EarlyControl_historyBorrow : s6Step281EarlyControlArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step281EarlyControlLog.recordFresh=some s6Step281EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step281EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step281EarlyControlHistoryArena,s6Step281EarlyControlArena,s6Step281EarlyControlLog,arenaWires]

private theorem s6Step281EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step281EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EarlyControl_history : compileHmrRecordGrowLog s6Step281EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step281EarlyControlLog.recordFresh=some s6Step281EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step281EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step281EarlyControl_historyBorrow

private theorem s6Step281EarlyControl_sigmaOwned : ([254, 813] : List Wire).toFinset⊆s6Step281EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EarlyControl_sigmaReleaseOwned : ([813] : List Wire).toFinset⊆s6Step281EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EarlyControl_sigmaRelease : s6Step281EarlyControlHistoryArena.release {813} (fun _ => false)=some s6Step281EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step281EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step281EarlyControlSigmaArena,s6Step281EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step281EarlyControl_sigma : compileHmrSigmaDropLog s6Step281EarlyControlHistoryArena false 0 0 254 813 []=some s6Step281EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step281EarlyControl_sigmaOwned⟩
  · exact s6Step281EarlyControl_sigmaRelease

private theorem s6Step281EarlyControl_zeroBorrow : s6Step281EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step281EarlyControlLog.zeroWork=some s6Step281EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step281EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step281EarlyControlZeroArena,s6Step281EarlyControlArena,s6Step281EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step281EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step281EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step281EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EarlyControl_zero : compileHmrEqualityLog s6Step281EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step281EarlyControlLog.zeroWork=some (s6Step281EarlyControlZeroArena,s6Step281EarlyControlLog.zeroWork,s6Step281EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step281EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step281EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step281EarlyControl_logged : s6Step281EarlyControlPlan.Logged s6Step281EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 813 254 253 252 251 807 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step281EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step281EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step281EarlyControl_zero
  · exact s6Step281EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step281EarlyControl_flags
  · exact s6Step281EarlyControl_fit
  · exact s6Step281EarlyControl_history
  · exact s6Step281EarlyControl_sigma
  · exact s6Step281EarlyControl_branch

private theorem s6Step281EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step281EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 813 254 253 252 251 807 54 s6Step281EarlyControlLog=some s6Step281EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step281EarlyControlPlan s6Step281EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 813 254 253 252 251 807 54 s6Step281EarlyControl_logged

private def s6Step281EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386],795⟩

private def s6Step281EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩

private def s6Step281EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779],777⟩

private def s6Step281EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩

private def s6Step281FrontBank : WindowBank := ⟨s6Step281EntryFRow,s6Step281EntryGRow,s6Step281EntryFvRow,s6Step281EntryGvRow⟩

private def s6Step281Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 882, 795]

private def s6Step281Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 845, 777]

private def s6Step281Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 776]

private def s6Step281Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 775]

private theorem s6Step281Counter_apart : Disjoint s6Step281HeadFvAfter.live s6Step281CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step281HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281Counter_borrowed : s6Step281HeadFvAfter.checkBorrow 4 s6Step281CounterWork=some s6Step281CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step281HeadFvAfter s6Step281CounterDuring s6Step281CounterWork.toFinset s6Step281Counter_bounded s6Step281Counter_apart rfl

private theorem s6Step281Counter_owned : (813::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step281HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step281HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281Counter_checked : compileHmrCounterStepLog s6Step281HeadFvAfter true 813 [774, 773, 772, 771, 770, 769] s6Step281CounterWork=some s6Step281CounterDuring := by
  have owned : ∀q∈813::[774, 773, 772, 771, 770, 769],q∈s6Step281HeadFvAfter.live := fun q hq => s6Step281Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step281Counter_borrowed

private def s6Step281EntryFAfter : Arena := s6Step281EntryFBefore

private theorem s6Step281EntryBank_incomingDistinct : ([s6Step281EntryFRow,s6Step281EntryGRow,s6Step281EntryFvRow,s6Step281EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281EntryF_Incoming : rowsOwned s6Step281EntryFBefore [s6Step281EntryFRow,s6Step281EntryGRow,s6Step281EntryFvRow,s6Step281EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281EntryFRow,s6Step281EntryGRow,s6Step281EntryFvRow,s6Step281EntryGvRow] 0 s6Step281EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281EntryBank_outgoingOwned : rowsOwned s6Step281EntryGvAfter [s6Step281EntryFOut,s6Step281EntryGOut,s6Step281EntryFvOut,s6Step281EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step281EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281EntryF_Outgoing : rowsOwned s6Step281EntryGvAfter [s6Step281EntryFOut,s6Step281EntryGOut,s6Step281EntryFvOut,s6Step281EntryGvOut] :=
  hmrRows_owned_drop s6Step281EntryGvAfter [s6Step281EntryFOut,s6Step281EntryGOut,s6Step281EntryFvOut,s6Step281EntryGvOut] 0 s6Step281EntryBank_outgoingOwned

private theorem s6Step281EntryF_distinct : (s6Step281EntryFRow.sign::s6Step281EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281EntryF_owned : (s6Step281EntryFRow.sign::s6Step281EntryFRow.payload).toFinset⊆s6Step281EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EntryF_reserved : s6Step281EntryFBefore.reserve s6Step281EntryFFresh.toFinset=some s6Step281EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step281EntryFFresh,arenaWires]
  · norm_num [s6Step281EntryFBefore,s6Step281EntryFFresh,arenaWires]
  · simp only [s6Step281EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step281EntryF_checked : planRowResizeLog s6Step281EntryFBefore s6Step281EntryFRow 131 s6Step281EntryFFresh=
    some (s6Step281EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386],795⟩,growRow 795 s6Step281EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step281EntryFBefore s6Step281EntryFAfter s6Step281EntryFRow 131 s6Step281EntryFFresh
    s6Step281EntryF_distinct s6Step281EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step281EntryF_reserved
  have rowEq : WindowRow.mk (s6Step281EntryFRow.payload++s6Step281EntryFFresh) s6Step281EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step281EntryFvAfter : Arena := s6Step281EntryFBefore

private def s6Step281EntryFvBefore : Arena := s6Step281EntryFBefore

private theorem s6Step281EntryFv_Incoming : rowsOwned s6Step281EntryFvBefore [s6Step281EntryFvRow,s6Step281EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281EntryFRow,s6Step281EntryGRow,s6Step281EntryFvRow,s6Step281EntryGvRow] 2 s6Step281EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281EntryFv_Outgoing : rowsOwned s6Step281EntryGvAfter [s6Step281EntryFvOut,s6Step281EntryGvOut] :=
  hmrRows_owned_drop s6Step281EntryGvAfter [s6Step281EntryFOut,s6Step281EntryGOut,s6Step281EntryFvOut,s6Step281EntryGvOut] 2 s6Step281EntryBank_outgoingOwned

private theorem s6Step281EntryFv_distinct : (s6Step281EntryFvRow.sign::s6Step281EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281EntryFv_owned : (s6Step281EntryFvRow.sign::s6Step281EntryFvRow.payload).toFinset⊆s6Step281EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EntryFv_reserved : s6Step281EntryFvBefore.reserve s6Step281EntryFvFresh.toFinset=some s6Step281EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step281EntryFvFresh,arenaWires]
  · norm_num [s6Step281EntryFvBefore,s6Step281EntryFBefore,s6Step281EntryFvFresh,arenaWires]
  · simp only [s6Step281EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step281EntryFv_checked : planRowResizeLog s6Step281EntryFvBefore s6Step281EntryFvRow 155 s6Step281EntryFvFresh=
    some (s6Step281EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩,growRow 776 s6Step281EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step281EntryFvBefore s6Step281EntryFvAfter s6Step281EntryFvRow 155 s6Step281EntryFvFresh
    s6Step281EntryFv_distinct s6Step281EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step281EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step281EntryFvRow.payload++s6Step281EntryFvFresh) s6Step281EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step281EntryGAfter : Arena := s6Step281EntryFBefore

private def s6Step281EntryGBefore : Arena := s6Step281EntryFBefore

private theorem s6Step281EntryG_Incoming : rowsOwned s6Step281EntryGBefore [s6Step281EntryGRow,s6Step281EntryFvRow,s6Step281EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281EntryFRow,s6Step281EntryGRow,s6Step281EntryFvRow,s6Step281EntryGvRow] 1 s6Step281EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281EntryG_Outgoing : rowsOwned s6Step281EntryGvAfter [s6Step281EntryGOut,s6Step281EntryFvOut,s6Step281EntryGvOut] :=
  hmrRows_owned_drop s6Step281EntryGvAfter [s6Step281EntryFOut,s6Step281EntryGOut,s6Step281EntryFvOut,s6Step281EntryGvOut] 1 s6Step281EntryBank_outgoingOwned

private theorem s6Step281EntryG_distinct : (s6Step281EntryGRow.sign::s6Step281EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281EntryG_owned : (s6Step281EntryGRow.sign::s6Step281EntryGRow.payload).toFinset⊆s6Step281EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EntryG_reserved : s6Step281EntryGBefore.reserve s6Step281EntryGFresh.toFinset=some s6Step281EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step281EntryGFresh,arenaWires]
  · norm_num [s6Step281EntryGBefore,s6Step281EntryFBefore,s6Step281EntryGFresh,arenaWires]
  · simp only [s6Step281EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step281EntryG_checked : planRowResizeLog s6Step281EntryGBefore s6Step281EntryGRow 131 s6Step281EntryGFresh=
    some (s6Step281EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779],777⟩,growRow 777 s6Step281EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step281EntryGBefore s6Step281EntryGAfter s6Step281EntryGRow 131 s6Step281EntryGFresh
    s6Step281EntryG_distinct s6Step281EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step281EntryG_reserved
  have rowEq : WindowRow.mk (s6Step281EntryGRow.payload++s6Step281EntryGFresh) s6Step281EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step281EntryGvBefore : Arena := s6Step281EntryFBefore

private theorem s6Step281EntryGv_Incoming : rowsOwned s6Step281EntryGvBefore [s6Step281EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281EntryFRow,s6Step281EntryGRow,s6Step281EntryFvRow,s6Step281EntryGvRow] 3 s6Step281EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281EntryGv_Outgoing : rowsOwned s6Step281EntryGvAfter [s6Step281EntryGvOut] :=
  hmrRows_owned_drop s6Step281EntryGvAfter [s6Step281EntryFOut,s6Step281EntryGOut,s6Step281EntryFvOut,s6Step281EntryGvOut] 3 s6Step281EntryBank_outgoingOwned

private theorem s6Step281EntryGv_distinct : (s6Step281EntryGvRow.sign::s6Step281EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281EntryGv_owned : (s6Step281EntryGvRow.sign::s6Step281EntryGvRow.payload).toFinset⊆s6Step281EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281EntryGv_reserved : s6Step281EntryGvBefore.reserve s6Step281EntryGvFresh.toFinset=some s6Step281EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step281EntryGvFresh,arenaWires]
  · norm_num [s6Step281EntryGvBefore,s6Step281EntryFBefore,s6Step281EntryGvFresh,arenaWires]
  · simp only [s6Step281EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step281EntryGv_checked : planRowResizeLog s6Step281EntryGvBefore s6Step281EntryGvRow 155 s6Step281EntryGvFresh=
    some (s6Step281EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩,growRow 775 s6Step281EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step281EntryGvBefore s6Step281EntryGvAfter s6Step281EntryGvRow 155 s6Step281EntryGvFresh
    s6Step281EntryGv_distinct s6Step281EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step281EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step281EntryGvRow.payload++s6Step281EntryGvFresh) s6Step281EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step281EntryBank_rows : planWindowRowsLog s6Step281EntryFBefore [(s6Step281EntryFRow,131),(s6Step281EntryGRow,131),(s6Step281EntryFvRow,155),(s6Step281EntryGvRow,155)] [s6Step281EntryFFresh,s6Step281EntryGFresh,s6Step281EntryFvFresh,s6Step281EntryGvFresh]=
    some (s6Step281EntryGvAfter,[s6Step281EntryFOut,s6Step281EntryGOut,s6Step281EntryFvOut,s6Step281EntryGvOut],(growRow 795 s6Step281EntryFFresh ++ (growRow 777 s6Step281EntryGFresh ++ (growRow 776 s6Step281EntryFvFresh ++ (growRow 775 s6Step281EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step281EntryGvAfter [] []=some (s6Step281EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step281EntryGvBefore s6Step281EntryGvAfter s6Step281EntryGvAfter
    s6Step281EntryGvRow s6Step281EntryGvOut 155 s6Step281EntryGvFresh [] [] []
    (growRow 775 s6Step281EntryGvFresh) ([]) s6Step281EntryGv_Incoming s6Step281EntryGv_checked h4 s6Step281EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step281EntryFvBefore s6Step281EntryFvAfter s6Step281EntryGvAfter
    s6Step281EntryFvRow s6Step281EntryFvOut 155 s6Step281EntryFvFresh [(s6Step281EntryGvRow,155)] [s6Step281EntryGvFresh] [s6Step281EntryGvOut]
    (growRow 776 s6Step281EntryFvFresh) ((growRow 775 s6Step281EntryGvFresh ++ [])) s6Step281EntryFv_Incoming s6Step281EntryFv_checked h3 s6Step281EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step281EntryGBefore s6Step281EntryGAfter s6Step281EntryGvAfter
    s6Step281EntryGRow s6Step281EntryGOut 131 s6Step281EntryGFresh [(s6Step281EntryFvRow,155),(s6Step281EntryGvRow,155)] [s6Step281EntryFvFresh,s6Step281EntryGvFresh] [s6Step281EntryFvOut,s6Step281EntryGvOut]
    (growRow 777 s6Step281EntryGFresh) ((growRow 776 s6Step281EntryFvFresh ++ (growRow 775 s6Step281EntryGvFresh ++ []))) s6Step281EntryG_Incoming s6Step281EntryG_checked h2 s6Step281EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step281EntryFBefore s6Step281EntryFAfter s6Step281EntryGvAfter
    s6Step281EntryFRow s6Step281EntryFOut 131 s6Step281EntryFFresh [(s6Step281EntryGRow,131),(s6Step281EntryFvRow,155),(s6Step281EntryGvRow,155)] [s6Step281EntryGFresh,s6Step281EntryFvFresh,s6Step281EntryGvFresh] [s6Step281EntryGOut,s6Step281EntryFvOut,s6Step281EntryGvOut]
    (growRow 795 s6Step281EntryFFresh) ((growRow 777 s6Step281EntryGFresh ++ (growRow 776 s6Step281EntryFvFresh ++ (growRow 775 s6Step281EntryGvFresh ++ [])))) s6Step281EntryF_Incoming s6Step281EntryF_checked h1 s6Step281EntryF_Outgoing
  exact h0

private theorem s6Step281EntryBank_checked : compileHmrBankResizeLog .entry s6Step281EntryFBefore ⟨s6Step281EntryFRow,s6Step281EntryGRow,s6Step281EntryFvRow,s6Step281EntryGvRow⟩ ⟨131,131,155,155⟩ [s6Step281EntryFFresh,s6Step281EntryGFresh,s6Step281EntryFvFresh,s6Step281EntryGvFresh]=
    some (s6Step281EntryGvAfter,⟨s6Step281EntryFOut,s6Step281EntryGOut,s6Step281EntryFvOut,s6Step281EntryGvOut⟩,(growRow 795 s6Step281EntryFFresh ++ (growRow 777 s6Step281EntryGFresh ++ (growRow 776 s6Step281EntryFvFresh ++ (growRow 775 s6Step281EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step281EntryBank_rows]
  rfl

private def s6Step281ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281ExitFBefore : Arena := s6Step281ExitGAfter

private def s6Step281ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 882],795⟩

private def s6Step281ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881],776⟩

private def s6Step281ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 845],777⟩

private def s6Step281ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927],775⟩

private theorem s6Step281ExitBank_incomingDistinct : ([s6Step281ExitGRow,s6Step281ExitFRow,s6Step281ExitFvRow,s6Step281ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281ExitF_Incoming : rowsOwned s6Step281ExitFBefore [s6Step281ExitFRow,s6Step281ExitFvRow,s6Step281ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281ExitGRow,s6Step281ExitFRow,s6Step281ExitFvRow,s6Step281ExitGvRow] 1 s6Step281ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281ExitBank_outgoingOwned : rowsOwned s6Step281ExitGvAfter [s6Step281ExitGOut,s6Step281ExitFOut,s6Step281ExitFvOut,s6Step281ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step281ExitGvAfter (fun q => (0≤q ∧ q<385) ∨ (387≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281ExitF_Outgoing : rowsOwned s6Step281ExitGvAfter [s6Step281ExitFOut,s6Step281ExitFvOut,s6Step281ExitGvOut] :=
  hmrRows_owned_drop s6Step281ExitGvAfter [s6Step281ExitGOut,s6Step281ExitFOut,s6Step281ExitFvOut,s6Step281ExitGvOut] 1 s6Step281ExitBank_outgoingOwned

private theorem s6Step281ExitF_distinct : (s6Step281ExitFRow.sign::s6Step281ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281ExitF_owned : (s6Step281ExitFRow.sign::s6Step281ExitFRow.payload).toFinset⊆s6Step281ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281ExitF_retired : s6Step281ExitFBefore.retireSet s6Step281ExitFExtra.toFinset=s6Step281ExitFAfter := by
  unfold Arena.retireSet s6Step281ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step281ExitFBefore,s6Step281ExitGAfter,s6Step281ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step281ExitF_checked : planRowResizeLog s6Step281ExitFBefore s6Step281ExitFRow 129 []=
    some (s6Step281ExitFAfter,s6Step281ExitFOut,shrinkRow 795 s6Step281ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step281ExitFBefore s6Step281ExitFRow 129 s6Step281ExitF_distinct s6Step281ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step281ExitFRow.payload.take 129) s6Step281ExitFRow.sign=s6Step281ExitFOut := by decide +kernel
  have hi : s6Step281ExitFRow.payload.drop 129=s6Step281ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step281ExitF_retired] at result
  exact result

private def s6Step281ExitFvAfter : Arena := s6Step281ExitFAfter

private def s6Step281ExitFvBefore : Arena := s6Step281ExitFAfter

private theorem s6Step281ExitFv_Incoming : rowsOwned s6Step281ExitFvBefore [s6Step281ExitFvRow,s6Step281ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281ExitGRow,s6Step281ExitFRow,s6Step281ExitFvRow,s6Step281ExitGvRow] 2 s6Step281ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281ExitFvBefore (fun q => (0≤q ∧ q<385) ∨ (387≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281ExitFv_Outgoing : rowsOwned s6Step281ExitGvAfter [s6Step281ExitFvOut,s6Step281ExitGvOut] :=
  hmrRows_owned_drop s6Step281ExitGvAfter [s6Step281ExitGOut,s6Step281ExitFOut,s6Step281ExitFvOut,s6Step281ExitGvOut] 2 s6Step281ExitBank_outgoingOwned

private theorem s6Step281ExitFv_distinct : (s6Step281ExitFvRow.sign::s6Step281ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281ExitFv_owned : (s6Step281ExitFvRow.sign::s6Step281ExitFvRow.payload).toFinset⊆s6Step281ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281ExitFvBefore (fun q => (0≤q ∧ q<385) ∨ (387≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281ExitFv_reserved : s6Step281ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step281ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step281ExitFv_checked : planRowResizeLog s6Step281ExitFvBefore s6Step281ExitFvRow 156 []=
    some (s6Step281ExitFvAfter,s6Step281ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step281ExitFvBefore s6Step281ExitFvAfter s6Step281ExitFvRow 156 []
    s6Step281ExitFv_distinct s6Step281ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step281ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step281ExitFvRow.payload++[]) s6Step281ExitFvRow.sign=s6Step281ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step281ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step281ExitG_Incoming : rowsOwned s6Step281ExitGBefore [s6Step281ExitGRow,s6Step281ExitFRow,s6Step281ExitFvRow,s6Step281ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281ExitGRow,s6Step281ExitFRow,s6Step281ExitFvRow,s6Step281ExitGvRow] 0 s6Step281ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281ExitG_Outgoing : rowsOwned s6Step281ExitGvAfter [s6Step281ExitGOut,s6Step281ExitFOut,s6Step281ExitFvOut,s6Step281ExitGvOut] :=
  hmrRows_owned_drop s6Step281ExitGvAfter [s6Step281ExitGOut,s6Step281ExitFOut,s6Step281ExitFvOut,s6Step281ExitGvOut] 0 s6Step281ExitBank_outgoingOwned

private theorem s6Step281ExitG_distinct : (s6Step281ExitGRow.sign::s6Step281ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281ExitG_owned : (s6Step281ExitGRow.sign::s6Step281ExitGRow.payload).toFinset⊆s6Step281ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281ExitG_retired : s6Step281ExitGBefore.retireSet s6Step281ExitGExtra.toFinset=s6Step281ExitGAfter := by
  unfold Arena.retireSet s6Step281ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step281ExitGBefore,s6Step281ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step281ExitG_checked : planRowResizeLog s6Step281ExitGBefore s6Step281ExitGRow 131 []=
    some (s6Step281ExitGAfter,s6Step281ExitGOut,shrinkRow 777 s6Step281ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step281ExitGBefore s6Step281ExitGRow 131 s6Step281ExitG_distinct s6Step281ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step281ExitGRow.payload.take 131) s6Step281ExitGRow.sign=s6Step281ExitGOut := by decide +kernel
  have hi : s6Step281ExitGRow.payload.drop 131=s6Step281ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step281ExitG_retired] at result
  exact result

private def s6Step281ExitGvBefore : Arena := s6Step281ExitFAfter

private theorem s6Step281ExitGv_Incoming : rowsOwned s6Step281ExitGvBefore [s6Step281ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281ExitGRow,s6Step281ExitFRow,s6Step281ExitFvRow,s6Step281ExitGvRow] 3 s6Step281ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281ExitGvBefore (fun q => (0≤q ∧ q<385) ∨ (387≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281ExitGv_Outgoing : rowsOwned s6Step281ExitGvAfter [s6Step281ExitGvOut] :=
  hmrRows_owned_drop s6Step281ExitGvAfter [s6Step281ExitGOut,s6Step281ExitFOut,s6Step281ExitFvOut,s6Step281ExitGvOut] 3 s6Step281ExitBank_outgoingOwned

private theorem s6Step281ExitGv_distinct : (s6Step281ExitGvRow.sign::s6Step281ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281ExitGv_owned : (s6Step281ExitGvRow.sign::s6Step281ExitGvRow.payload).toFinset⊆s6Step281ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281ExitGvBefore (fun q => (0≤q ∧ q<385) ∨ (387≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281ExitGv_reserved : s6Step281ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step281ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step281ExitGv_checked : planRowResizeLog s6Step281ExitGvBefore s6Step281ExitGvRow 156 []=
    some (s6Step281ExitGvAfter,s6Step281ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step281ExitGvBefore s6Step281ExitGvAfter s6Step281ExitGvRow 156 []
    s6Step281ExitGv_distinct s6Step281ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step281ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step281ExitGvRow.payload++[]) s6Step281ExitGvRow.sign=s6Step281ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step281ExitBank_rows : planWindowRowsLog s6Step281ExitGBefore [(s6Step281ExitGRow,131),(s6Step281ExitFRow,129),(s6Step281ExitFvRow,156),(s6Step281ExitGvRow,156)] [[],[],[],[]]=
    some (s6Step281ExitGvAfter,[s6Step281ExitGOut,s6Step281ExitFOut,s6Step281ExitFvOut,s6Step281ExitGvOut],(shrinkRow 777 s6Step281ExitGExtra ++ (shrinkRow 795 s6Step281ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step281ExitGvAfter [] []=some (s6Step281ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step281ExitGvBefore s6Step281ExitGvAfter s6Step281ExitGvAfter
    s6Step281ExitGvRow s6Step281ExitGvOut 156 [] [] [] []
    (growRow 775 []) ([]) s6Step281ExitGv_Incoming s6Step281ExitGv_checked h4 s6Step281ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step281ExitFvBefore s6Step281ExitFvAfter s6Step281ExitGvAfter
    s6Step281ExitFvRow s6Step281ExitFvOut 156 [] [(s6Step281ExitGvRow,156)] [[]] [s6Step281ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step281ExitFv_Incoming s6Step281ExitFv_checked h3 s6Step281ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step281ExitFBefore s6Step281ExitFAfter s6Step281ExitGvAfter
    s6Step281ExitFRow s6Step281ExitFOut 129 [] [(s6Step281ExitFvRow,156),(s6Step281ExitGvRow,156)] [[],[]] [s6Step281ExitFvOut,s6Step281ExitGvOut]
    (shrinkRow 795 s6Step281ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step281ExitF_Incoming s6Step281ExitF_checked h2 s6Step281ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step281ExitGBefore s6Step281ExitGAfter s6Step281ExitGvAfter
    s6Step281ExitGRow s6Step281ExitGOut 131 [] [(s6Step281ExitFRow,129),(s6Step281ExitFvRow,156),(s6Step281ExitGvRow,156)] [[],[],[]] [s6Step281ExitFOut,s6Step281ExitFvOut,s6Step281ExitGvOut]
    (shrinkRow 777 s6Step281ExitGExtra) ((shrinkRow 795 s6Step281ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step281ExitG_Incoming s6Step281ExitG_checked h1 s6Step281ExitG_Outgoing
  exact h0

private theorem s6Step281ExitBank_checked : compileHmrBankResizeLog .exit s6Step281ExitGBefore ⟨s6Step281ExitFRow,s6Step281ExitGRow,s6Step281ExitFvRow,s6Step281ExitGvRow⟩ ⟨129,131,156,156⟩ [[],[],[],[]]=
    some (s6Step281ExitGvAfter,⟨s6Step281ExitFOut,s6Step281ExitGOut,s6Step281ExitFvOut,s6Step281ExitGvOut⟩,(shrinkRow 777 s6Step281ExitGExtra ++ (shrinkRow 795 s6Step281ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step281ExitBank_rows]
  rfl

private theorem s6Step281Add0_apart : Disjoint s6Step281Add0Arena.live s6Step281Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step281Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281Add0_card : s6Step281Add0Arena.live.card=900 := by
  decide +kernel

private theorem s6Step281Add0_borrowed : s6Step281Add0Arena.checkBorrow (hmrHybridCount s6Step281Add0Arena s6Step281Add0B.length) s6Step281Add0Work=some s6Step281Add0During := by
  have len : s6Step281Add0Work.length=hmrHybridCount s6Step281Add0Arena s6Step281Add0B.length := by
    rw [hmrHybridCount,s6Step281Add0_card]
    decide +kernel
  have nd : s6Step281Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step281Add0Arena s6Step281Add0During s6Step281Add0Work.toFinset s6Step281Add0_bounded s6Step281Add0_apart rfl

private theorem s6Step281Add0_distinct : (855::807::809::(s6Step281Add0A++s6Step281Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281Add0_owned : (855::807::809::(s6Step281Add0A++s6Step281Add0B)).toFinset⊆s6Step281Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step281Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281Add0_checked : compileHmrHybridCinLog s6Step281Add0Arena 807 855 809 s6Step281Add0A s6Step281Add0B s6Step281Add0Work=some s6Step281Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step281Add0Arena s6Step281Add0During 807 855 809 s6Step281Add0A s6Step281Add0B s6Step281Add0Work
    (by decide +kernel) (by decide +kernel) s6Step281Add0_distinct
    (fun q hq => s6Step281Add0_owned (List.mem_toFinset.mpr hq)) s6Step281Add0_borrowed

private theorem s6Step281Add1_apart : Disjoint s6Step281Add1Arena.live s6Step281Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step281Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281Add1_card : s6Step281Add1Arena.live.card=900 := by
  decide +kernel

private theorem s6Step281Add1_borrowed : s6Step281Add1Arena.checkBorrow (hmrHybridCount s6Step281Add1Arena s6Step281Add1B.length) s6Step281Add1Work=some s6Step281Add1During := by
  have len : s6Step281Add1Work.length=hmrHybridCount s6Step281Add1Arena s6Step281Add1B.length := by
    rw [hmrHybridCount,s6Step281Add1_card]
    decide +kernel
  have nd : s6Step281Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step281Add1Arena s6Step281Add1During s6Step281Add1Work.toFinset s6Step281Add1_bounded s6Step281Add1_apart rfl

private theorem s6Step281Add1_distinct : (855::807::809::(s6Step281Add1A++s6Step281Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281Add1_owned : (855::807::809::(s6Step281Add1A++s6Step281Add1B)).toFinset⊆s6Step281Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step281Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281Add1_checked : compileHmrHybridCinLog s6Step281Add1Arena 807 855 809 s6Step281Add1A s6Step281Add1B s6Step281Add1Work=some s6Step281Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step281Add1Arena s6Step281Add1During 807 855 809 s6Step281Add1A s6Step281Add1B s6Step281Add1Work
    (by decide +kernel) (by decide +kernel) s6Step281Add1_distinct
    (fun q hq => s6Step281Add1_owned (List.mem_toFinset.mpr hq)) s6Step281Add1_borrowed

private theorem s6Step281F4_apart : Disjoint (s6Step281Add0A++s6Step281Add0B).toFinset (s6Step281Add1A++s6Step281Add1B).toFinset := by
  have nd : ((s6Step281Add0A++s6Step281Add0B)++(s6Step281Add1A++s6Step281Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step281F4_carry : s6Step281F4FlagArena.checkBorrow 1 [809]=some s6Step281Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step281F4FlagArena,s6Step281HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step281F4FlagArena,s6Step281HeadFvAfter,s6Step281Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step281F4_distinct : (813::807::855::809::((s6Step281Add0A++s6Step281Add1A)++(s6Step281Add0B++s6Step281Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281F4_flag : s6Step281HeadFvAfter.checkBorrow 1 [855]=some s6Step281F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step281HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step281F4_owned : (813::807::((s6Step281Add0A++s6Step281Add1A)++(s6Step281Add0B++s6Step281Add1B))).toFinset⊆s6Step281HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step281HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281F4_checked : compileHmrHybridF4Log s6Step281HeadFvAfter 813 807 s6Step281Add0A s6Step281Add0B s6Step281Add1A s6Step281Add1B [855] [809] s6Step281Add0Work s6Step281Add1Work=some s6Step281F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step281HeadFvAfter s6Step281F4FlagArena s6Step281Add0Arena s6Step281Add0During s6Step281Add1During 813 807
    s6Step281Add0A s6Step281Add0B s6Step281Add1A s6Step281Add1B [855] [809] s6Step281Add0Work s6Step281Add1Work
    (fun q hq => s6Step281F4_owned (List.mem_toFinset.mpr hq)) s6Step281F4_flag s6Step281F4_carry
    s6Step281F4_distinct s6Step281F4_apart s6Step281Add0_checked s6Step281Add1_checked

private theorem s6Step281Front_branch : s6Step281FrontSigmaArena.checkBorrow 1 [807]=some s6Step281HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step281FrontSigmaArena,s6Step281EntryGvAfter,s6Step281EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step281FrontSigmaArena,s6Step281EntryGvAfter,s6Step281EntryFBefore,s6Step281HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step281Front_entry : HmrFrontEntryValid s6Step281EntryFBefore s6Step281FrontBank 131 155 ⟨129,131,156,156⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step281FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step281EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step281EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step281FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step281Front_sigma : s6Step281EntryGvAfter.checkBorrow 1 [813]=some s6Step281FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step281EntryGvAfter,s6Step281EntryFBefore,arenaWires]
  · rfl

private def s6Step281HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281HeadFBefore : Arena := s6Step281HeadGAfter

private def s6Step281HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386],795⟩

private def s6Step281HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867],776⟩

private def s6Step281HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779],777⟩

private def s6Step281HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877],775⟩

private theorem s6Step281HeadBank_incomingDistinct : ([s6Step281HeadGRow,s6Step281HeadFRow,s6Step281HeadGvRow,s6Step281HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281HeadF_Incoming : rowsOwned s6Step281HeadFBefore [s6Step281HeadFRow,s6Step281HeadGvRow,s6Step281HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281HeadGRow,s6Step281HeadFRow,s6Step281HeadGvRow,s6Step281HeadFvRow] 1 s6Step281HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281HeadBank_outgoingOwned : rowsOwned s6Step281HeadFvAfter [s6Step281HeadGOut,s6Step281HeadFOut,s6Step281HeadGvOut,s6Step281HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step281HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281HeadF_Outgoing : rowsOwned s6Step281HeadFvAfter [s6Step281HeadFOut,s6Step281HeadGvOut,s6Step281HeadFvOut] :=
  hmrRows_owned_drop s6Step281HeadFvAfter [s6Step281HeadGOut,s6Step281HeadFOut,s6Step281HeadGvOut,s6Step281HeadFvOut] 1 s6Step281HeadBank_outgoingOwned

private theorem s6Step281HeadF_distinct : (s6Step281HeadFRow.sign::s6Step281HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281HeadF_owned : (s6Step281HeadFRow.sign::s6Step281HeadFRow.payload).toFinset⊆s6Step281HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281HeadF_reserved : s6Step281HeadFBefore.reserve s6Step281HeadFFresh.toFinset=some s6Step281HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step281HeadFFresh,arenaWires]
  · norm_num [s6Step281HeadFBefore,s6Step281HeadGAfter,s6Step281HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step281HeadFAfter,s6Step281HeadFBefore,s6Step281HeadGAfter,s6Step281HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step281HeadF_checked : planRowResizeLog s6Step281HeadFBefore s6Step281HeadFRow 132 s6Step281HeadFFresh=
    some (s6Step281HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 882],795⟩,growRow 795 s6Step281HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step281HeadFBefore s6Step281HeadFAfter s6Step281HeadFRow 132 s6Step281HeadFFresh
    s6Step281HeadF_distinct s6Step281HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step281HeadF_reserved
  have rowEq : WindowRow.mk (s6Step281HeadFRow.payload++s6Step281HeadFFresh) s6Step281HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 882],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step281HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step281HeadFvBefore : Arena := s6Step281HeadGvAfter

private theorem s6Step281HeadFv_Incoming : rowsOwned s6Step281HeadFvBefore [s6Step281HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281HeadGRow,s6Step281HeadFRow,s6Step281HeadGvRow,s6Step281HeadFvRow] 3 s6Step281HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281HeadFv_Outgoing : rowsOwned s6Step281HeadFvAfter [s6Step281HeadFvOut] :=
  hmrRows_owned_drop s6Step281HeadFvAfter [s6Step281HeadGOut,s6Step281HeadFOut,s6Step281HeadGvOut,s6Step281HeadFvOut] 3 s6Step281HeadBank_outgoingOwned

private theorem s6Step281HeadFv_distinct : (s6Step281HeadFvRow.sign::s6Step281HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281HeadFv_owned : (s6Step281HeadFvRow.sign::s6Step281HeadFvRow.payload).toFinset⊆s6Step281HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281HeadFv_reserved : s6Step281HeadFvBefore.reserve s6Step281HeadFvFresh.toFinset=some s6Step281HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step281HeadFvFresh,arenaWires]
  · norm_num [s6Step281HeadFvBefore,s6Step281HeadGvAfter,s6Step281HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step281HeadFvAfter,s6Step281HeadFvBefore,s6Step281HeadGvAfter,s6Step281HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step281HeadFv_checked : planRowResizeLog s6Step281HeadFvBefore s6Step281HeadFvRow 156 s6Step281HeadFvFresh=
    some (s6Step281HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881],776⟩,growRow 776 s6Step281HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step281HeadFvBefore s6Step281HeadFvAfter s6Step281HeadFvRow 156 s6Step281HeadFvFresh
    s6Step281HeadFv_distinct s6Step281HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step281HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step281HeadFvRow.payload++s6Step281HeadFvFresh) s6Step281HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 873, 875, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step281HeadG_Incoming : rowsOwned s6Step281HeadGBefore [s6Step281HeadGRow,s6Step281HeadFRow,s6Step281HeadGvRow,s6Step281HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281HeadGRow,s6Step281HeadFRow,s6Step281HeadGvRow,s6Step281HeadFvRow] 0 s6Step281HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281HeadG_Outgoing : rowsOwned s6Step281HeadFvAfter [s6Step281HeadGOut,s6Step281HeadFOut,s6Step281HeadGvOut,s6Step281HeadFvOut] :=
  hmrRows_owned_drop s6Step281HeadFvAfter [s6Step281HeadGOut,s6Step281HeadFOut,s6Step281HeadGvOut,s6Step281HeadFvOut] 0 s6Step281HeadBank_outgoingOwned

private theorem s6Step281HeadG_distinct : (s6Step281HeadGRow.sign::s6Step281HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281HeadG_owned : (s6Step281HeadGRow.sign::s6Step281HeadGRow.payload).toFinset⊆s6Step281HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281HeadG_reserved : s6Step281HeadGBefore.reserve s6Step281HeadGFresh.toFinset=some s6Step281HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step281HeadGFresh,arenaWires]
  · norm_num [s6Step281HeadGBefore,s6Step281HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step281HeadGAfter,s6Step281HeadGBefore,s6Step281HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step281HeadG_checked : planRowResizeLog s6Step281HeadGBefore s6Step281HeadGRow 132 s6Step281HeadGFresh=
    some (s6Step281HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 845],777⟩,growRow 777 s6Step281HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step281HeadGBefore s6Step281HeadGAfter s6Step281HeadGRow 132 s6Step281HeadGFresh
    s6Step281HeadG_distinct s6Step281HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step281HeadG_reserved
  have rowEq : WindowRow.mk (s6Step281HeadGRow.payload++s6Step281HeadGFresh) s6Step281HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 779, 845],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step281HeadGvBefore : Arena := s6Step281HeadFAfter

private theorem s6Step281HeadGv_Incoming : rowsOwned s6Step281HeadGvBefore [s6Step281HeadGvRow,s6Step281HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step281HeadGRow,s6Step281HeadFRow,s6Step281HeadGvRow,s6Step281HeadFvRow] 2 s6Step281HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step281HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step281HeadGv_Outgoing : rowsOwned s6Step281HeadFvAfter [s6Step281HeadGvOut,s6Step281HeadFvOut] :=
  hmrRows_owned_drop s6Step281HeadFvAfter [s6Step281HeadGOut,s6Step281HeadFOut,s6Step281HeadGvOut,s6Step281HeadFvOut] 2 s6Step281HeadBank_outgoingOwned

private theorem s6Step281HeadGv_distinct : (s6Step281HeadGvRow.sign::s6Step281HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step281HeadGv_owned : (s6Step281HeadGvRow.sign::s6Step281HeadGvRow.payload).toFinset⊆s6Step281HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step281HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<881) ∨ (882≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<927) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step281HeadGv_reserved : s6Step281HeadGvBefore.reserve s6Step281HeadGvFresh.toFinset=some s6Step281HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step281HeadGvFresh,arenaWires]
  · norm_num [s6Step281HeadGvBefore,s6Step281HeadFAfter,s6Step281HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step281HeadGvAfter,s6Step281HeadGvBefore,s6Step281HeadFAfter,s6Step281HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step281HeadGv_checked : planRowResizeLog s6Step281HeadGvBefore s6Step281HeadGvRow 156 s6Step281HeadGvFresh=
    some (s6Step281HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927],775⟩,growRow 775 s6Step281HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step281HeadGvBefore s6Step281HeadGvAfter s6Step281HeadGvRow 156 s6Step281HeadGvFresh
    s6Step281HeadGv_distinct s6Step281HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step281HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step281HeadGvRow.payload++s6Step281HeadGvFresh) s6Step281HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 858, 887, 892, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step281HeadBank_rows : planWindowRowsLog s6Step281HeadGBefore [(s6Step281HeadGRow,132),(s6Step281HeadFRow,132),(s6Step281HeadGvRow,156),(s6Step281HeadFvRow,156)] [s6Step281HeadGFresh,s6Step281HeadFFresh,s6Step281HeadGvFresh,s6Step281HeadFvFresh]=
    some (s6Step281HeadFvAfter,[s6Step281HeadGOut,s6Step281HeadFOut,s6Step281HeadGvOut,s6Step281HeadFvOut],(growRow 777 s6Step281HeadGFresh ++ (growRow 795 s6Step281HeadFFresh ++ (growRow 775 s6Step281HeadGvFresh ++ (growRow 776 s6Step281HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step281HeadFvAfter [] []=some (s6Step281HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step281HeadFvBefore s6Step281HeadFvAfter s6Step281HeadFvAfter
    s6Step281HeadFvRow s6Step281HeadFvOut 156 s6Step281HeadFvFresh [] [] []
    (growRow 776 s6Step281HeadFvFresh) ([]) s6Step281HeadFv_Incoming s6Step281HeadFv_checked h4 s6Step281HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step281HeadGvBefore s6Step281HeadGvAfter s6Step281HeadFvAfter
    s6Step281HeadGvRow s6Step281HeadGvOut 156 s6Step281HeadGvFresh [(s6Step281HeadFvRow,156)] [s6Step281HeadFvFresh] [s6Step281HeadFvOut]
    (growRow 775 s6Step281HeadGvFresh) ((growRow 776 s6Step281HeadFvFresh ++ [])) s6Step281HeadGv_Incoming s6Step281HeadGv_checked h3 s6Step281HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step281HeadFBefore s6Step281HeadFAfter s6Step281HeadFvAfter
    s6Step281HeadFRow s6Step281HeadFOut 132 s6Step281HeadFFresh [(s6Step281HeadGvRow,156),(s6Step281HeadFvRow,156)] [s6Step281HeadGvFresh,s6Step281HeadFvFresh] [s6Step281HeadGvOut,s6Step281HeadFvOut]
    (growRow 795 s6Step281HeadFFresh) ((growRow 775 s6Step281HeadGvFresh ++ (growRow 776 s6Step281HeadFvFresh ++ []))) s6Step281HeadF_Incoming s6Step281HeadF_checked h2 s6Step281HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step281HeadGBefore s6Step281HeadGAfter s6Step281HeadFvAfter
    s6Step281HeadGRow s6Step281HeadGOut 132 s6Step281HeadGFresh [(s6Step281HeadFRow,132),(s6Step281HeadGvRow,156),(s6Step281HeadFvRow,156)] [s6Step281HeadFFresh,s6Step281HeadGvFresh,s6Step281HeadFvFresh] [s6Step281HeadFOut,s6Step281HeadGvOut,s6Step281HeadFvOut]
    (growRow 777 s6Step281HeadGFresh) ((growRow 795 s6Step281HeadFFresh ++ (growRow 775 s6Step281HeadGvFresh ++ (growRow 776 s6Step281HeadFvFresh ++ [])))) s6Step281HeadG_Incoming s6Step281HeadG_checked h1 s6Step281HeadG_Outgoing
  exact h0

private theorem s6Step281HeadBank_checked : compileHmrBankResizeLog .headroom s6Step281HeadGBefore ⟨s6Step281HeadFRow,s6Step281HeadGRow,s6Step281HeadFvRow,s6Step281HeadGvRow⟩ ⟨132,132,156,156⟩ [s6Step281HeadGFresh,s6Step281HeadFFresh,s6Step281HeadGvFresh,s6Step281HeadFvFresh]=
    some (s6Step281HeadFvAfter,⟨s6Step281HeadFOut,s6Step281HeadGOut,s6Step281HeadFvOut,s6Step281HeadGvOut⟩,(growRow 777 s6Step281HeadGFresh ++ (growRow 795 s6Step281HeadFFresh ++ (growRow 775 s6Step281HeadGvFresh ++ (growRow 776 s6Step281HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step281HeadBank_rows]
  rfl

private theorem s6Step281Front_checked : compileHmrSourceFrontLog s6Step281EntryFBefore s6Step281FrontBank 131 155 ⟨129,131,156,156⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step281FrontLog=some s6Step281FrontPlan := by
  have pairEq : s6Step281FrontPair=⟨s6Step281HeadFRow,s6Step281HeadGRow,s6Step281HeadFvRow,s6Step281HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step281FrontHead=⟨s6Step281ExitFRow,s6Step281ExitGRow,s6Step281ExitFvRow,s6Step281ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step281Add0A=s6Step281FrontHead.f.wires := by decide +kernel
  have gEq : s6Step281Add0B=s6Step281FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step281Add1A=s6Step281FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step281Add1B=s6Step281FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step281EntryFBefore s6Step281FrontBank 131 155 ⟨129,131,156,156⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step281FrontLog s6Step281FrontPlan
  · exact s6Step281Front_entry
  · exact s6Step281EntryBank_checked
  · exact s6Step281Front_sigma
  · rfl
  · exact s6Step281Front_branch
  · rfl
  · simpa only [s6Step281FrontPlan,pairEq] using s6Step281HeadBank_checked
  · simpa only [s6Step281FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step281F4_checked
  · exact s6Step281Counter_checked
  · rfl
  · simpa only [s6Step281FrontPlan,headEq] using s6Step281ExitBank_checked

private theorem s6Step281Complete_explicit_checked : compileHmrEarlyStepLog s6Step281EntryFBefore s6Step281FrontBank 131 155 ⟨129,131,156,156⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step281CompleteLog=some s6Step281CompletePlan := by
  let Q := s6Step281EarlyControlPlan
  have hq := s6Step281EarlyControl_plan_checked
  have fv1 : s6Step281CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step281CompleteOut.fv.payload[2]?.getD s6Step281CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step281CompleteOut.fv.payload[3]?.getD s6Step281CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step281CompleteOut.fv.payload[4]?.getD s6Step281CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step281EntryFBefore s6Step281EarlyControlArena s6Step281FrontBank 131 155 ⟨129,131,156,156⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step281CompleteLog s6Step281FrontPlan Q
    s6Step281Front_checked s6Step281Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step281Complete_owned s6Step281Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step281EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 813 s6Step281CompleteOut.fv.second (s6Step281CompleteOut.fv.payload[2]?.getD s6Step281CompleteOut.fv.sign) (s6Step281CompleteOut.fv.payload[3]?.getD s6Step281CompleteOut.fv.sign) (s6Step281CompleteOut.fv.payload[4]?.getD s6Step281CompleteOut.fv.sign) 807 54 s6Step281EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep281Arena : Arena := s6Step281EntryFBefore
def s6PrivateStep281Bank : WindowBank := s6Step281FrontBank
def s6PrivateStep281Spec : HmrSourceWalkStepLog := ⟨131,155,⟨129,131,156,156⟩,54,.early s6Step281CompleteLog⟩
def s6PrivateStep281Plan : HmrSourceStepPlan := .early s6Step281CompletePlan
theorem s6PrivateStep281_source : s6PrivateStep281Spec=s6ObservedLogs272[9] := rfl
theorem s6PrivateStep281_checked : compileHmrSourceStepLog s6PrivateStep281Arena s6PrivateStep281Bank
    s6PrivateStep281Spec.fgWidth s6PrivateStep281Spec.vWidth s6PrivateStep281Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]
    6 498 281 s6PrivateStep281Spec.need none s6PrivateStep281Spec.log=some s6PrivateStep281Plan := by
  change compileHmrSourceStepLog s6Step281EntryFBefore s6Step281FrontBank 131 155 ⟨129,131,156,156⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 6 498 281 54 none (.early s6Step281CompleteLog)=some (.early s6Step281CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 281<498)]
  rw [s6Step281Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
