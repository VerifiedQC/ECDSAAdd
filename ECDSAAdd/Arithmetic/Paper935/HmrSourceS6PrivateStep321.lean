import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep319
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

private def s6Step321CompleteMoves : List (Wire × Wire) := []

private def s6Step321EarlyControlLog : HmrEarlyControlLog := ⟨[843, 793, 853, 822, 841],[865],[860],[805, 817, 812, 915, 906, 792],[801]⟩

private def s6Step321FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[822], [853], [843], [793]],[[], [], [], []]⟩,[830],[880],[841],[865],[860, 805, 817, 812, 915, 906, 792, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812, 915, 906, 792, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[841, 865, 860, 805]⟩

private def s6Step321CompleteLog : HmrEarlyStepLog := ⟨s6Step321FrontLog,s6Step321CompleteMoves,s6Step321EarlyControlLog⟩

private def s6Step321ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩

private def s6Step321ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step321ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩

private def s6Step321ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩

private def s6Step321FrontOut : WindowBank := ⟨s6Step321ExitFOut,s6Step321ExitGOut,s6Step321ExitFvOut,s6Step321ExitGvOut⟩

private def s6Step321CompleteOut : WindowBank := s6Step321FrontOut.repacked s6Step321CompleteMoves

private def s6Step321EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step321EarlyControlPositiveArena,[865],s6Step321EarlyControlEqualityArena,[860],⟨⟨830,false⟩,[⟨⟨865,false⟩,860⟩]⟩⟩

private def s6Step321EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,843⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,853⟩,⟨⟨770,false⟩,822⟩,⟨⟨769,false⟩,841⟩]⟩

private def s6Step321EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step321EarlyControlZeroArena,s6Step321EarlyControlZeroPlan,s6Step321EarlyControlClassPlan,s6Step321EarlyControlFlagArena,s6Step321EarlyControlFittedArena,s6Step321EarlyControlHistoryArena,s6Step321EarlyControlSigmaArena,s6Step321EarlyControlOutputArena,s6Step321EarlyControlLog⟩

private def s6Step321CounterWork : List Wire := [841, 865, 860, 805]

private theorem s6Step321Counter_bounded : s6Step321CounterWork.toFinset⊆arenaWires := by norm_num [s6Step321CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step321HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321CounterDuring : Arena := ⟨s6Step321HeadFvAfter.live∪s6Step321CounterWork.toFinset,Finset.union_subset s6Step321HeadFvAfter.bounded s6Step321Counter_bounded⟩

private def s6Step321EntryFFresh : List Wire := []

private def s6Step321EntryFvFresh : List Wire := []

private def s6Step321EntryGFresh : List Wire := []

private def s6Step321EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321EntryGvAfter : Arena := s6Step321EntryFBefore

private def s6Step321EntryGvFresh : List Wire := []

private def s6Step321ExitFExtra : List Wire := [853]

private def s6Step321ExitFvExtra : List Wire := [793]

private def s6Step321ExitGExtra : List Wire := [822]

private def s6Step321ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321ExitGvExtra : List Wire := [843]

private def s6Step321Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321Add0Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step321Add0_bounded : s6Step321Add0Work.toFinset⊆arenaWires := by
  have h : s6Step321Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step321Add0During : Arena := ⟨s6Step321Add0Arena.live∪s6Step321Add0Work.toFinset,Finset.union_subset s6Step321Add0Arena.bounded s6Step321Add0_bounded⟩

private def s6Step321Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321Add1Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step321Add1_bounded : s6Step321Add1Work.toFinset⊆arenaWires := by
  have h : s6Step321Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step321Add1During : Arena := ⟨s6Step321Add1Arena.live∪s6Step321Add1Work.toFinset,Finset.union_subset s6Step321Add1Arena.bounded s6Step321Add1_bounded⟩

private def s6Step321F4FlagArena : Arena := ⟨s6Step321HeadFvAfter.live∪{841},Finset.union_subset s6Step321HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step321F4Plan : HmrHybridF4Plan := ⟨s6Step321F4FlagArena,[841],s6Step321Add0Arena,[865],s6Step321Add0During,s6Step321Add0Work,s6Step321Add1During,s6Step321Add1Work⟩

private def s6Step321HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 853],795⟩

private def s6Step321HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 793],776⟩

private def s6Step321HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 822],777⟩

private def s6Step321HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 843],775⟩

private def s6Step321FrontHead : WindowBank := ⟨s6Step321HeadFOut,s6Step321HeadGOut,s6Step321HeadFvOut,s6Step321HeadGvOut⟩

private def s6Step321EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩

private def s6Step321EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step321EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩

private def s6Step321EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩

private def s6Step321FrontPair : WindowBank := ⟨s6Step321EntryFOut,s6Step321EntryGOut,s6Step321EntryFvOut,s6Step321EntryGvOut⟩

private def s6Step321FrontSigmaArena : Arena := ⟨s6Step321EntryGvAfter.live∪{830},Finset.union_subset s6Step321EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step321HeadFFresh : List Wire := [853]

private def s6Step321HeadFvFresh : List Wire := [793]

private def s6Step321HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321HeadGFresh : List Wire := [822]

private def s6Step321HeadGvFresh : List Wire := [843]

private def s6Step321FrontPlan : HmrSourceFront := ⟨s6Step321EntryGvAfter,s6Step321FrontPair,(growRow 795 s6Step321EntryFFresh ++ (growRow 777 s6Step321EntryGFresh ++ (growRow 776 s6Step321EntryFvFresh ++ (growRow 775 s6Step321EntryGvFresh ++ [])))),s6Step321FrontSigmaArena,[830],s6Step321HeadGBefore,[880],
  s6Step321HeadFvAfter,s6Step321FrontHead,(growRow 777 s6Step321HeadGFresh ++ (growRow 795 s6Step321HeadFFresh ++ (growRow 775 s6Step321HeadGvFresh ++ (growRow 776 s6Step321HeadFvFresh ++ [])))),s6Step321F4Plan,s6Step321CounterDuring,s6Step321CounterWork,s6Step321ExitGvAfter,s6Step321FrontOut,(shrinkRow 777 s6Step321ExitGExtra ++ (shrinkRow 795 s6Step321ExitFExtra ++ (shrinkRow 776 s6Step321ExitFvExtra ++ (shrinkRow 775 s6Step321ExitGvExtra ++ []))))⟩

private def s6Step321CompletePlan : HmrEarlyStepPlan := ⟨s6Step321FrontPlan,s6Step321EarlyControlArena,s6Step321EarlyControlPlan,s6Step321CompleteMoves⟩

private theorem s6Step321Complete_apart : List.Disjoint (s6Step321CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [830, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] := by
  have nd : ((s6Step321CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[830, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step321Complete_owned : (s6Step321CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step321EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321Complete_repack : s6Step321ExitGvAfter.checkRepack s6Step321CompleteMoves=some s6Step321EarlyControlArena := by rfl

private theorem s6Step321EarlyControl_branchOwned : ([880] : List Wire).toFinset⊆s6Step321EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EarlyControl_branch : compileHmrBranchRetirement s6Step321EarlyControlSigmaArena 880=some s6Step321EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step321EarlyControl_branchOwned
  · ext q
    simp [s6Step321EarlyControlOutputArena,s6Step321EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step321EarlyControl_classEqualityBorrow : s6Step321EarlyControlPositiveArena.checkBorrow (([830, 865] : List Wire).length-1) s6Step321EarlyControlLog.classWork=some s6Step321EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step321EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step321EarlyControlEqualityArena,s6Step321EarlyControlPositiveArena,s6Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step321EarlyControl_classEqualityOwned : ([830, 865] : List Wire).toFinset⊆s6Step321EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EarlyControl_classEquality : compileHmrEqualityLog s6Step321EarlyControlPositiveArena [830, 865] 0 s6Step321EarlyControlLog.classWork=some (s6Step321EarlyControlEqualityArena,s6Step321EarlyControlLog.classWork,s6Step321EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step321EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step321EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step321EarlyControl_classOwned : ([769, 841, 830] : List Wire).toFinset⊆s6Step321EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EarlyControl_positiveBorrow : s6Step321EarlyControlZeroArena.checkBorrow (1) s6Step321EarlyControlLog.positiveWork=some s6Step321EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step321EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step321EarlyControlPositiveArena,s6Step321EarlyControlZeroArena,s6Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step321EarlyControl_class : compileHmrSourceClassLog s6Step321EarlyControlZeroArena false 769 s6Step321EarlyControlZeroPlan.top 0 830 s6Step321EarlyControlLog.positiveWork s6Step321EarlyControlLog.classWork=some s6Step321EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step321EarlyControlClassPlan s6Step321EarlyControlZeroArena false 769 s6Step321EarlyControlZeroPlan.top 0 830
  constructor
  · decide +kernel
  · exact s6Step321EarlyControl_classOwned
  · exact s6Step321EarlyControl_positiveBorrow
  · exact s6Step321EarlyControl_classEquality

private theorem s6Step321EarlyControl_entryRecordOwned : ([880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] : List Wire).toFinset⊆s6Step321EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EarlyControl_entrySigmaOwned : ([830, 254] : List Wire).toFinset⊆s6Step321EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EarlyControl_fitBorrow : s6Step321EarlyControlFlagArena.checkBorrow ((59-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] : List Wire).length)) s6Step321EarlyControlLog.recordFresh=some s6Step321EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step321EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step321EarlyControlFittedArena,s6Step321EarlyControlFlagArena,s6Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step321EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] : List Wire).toFinset⊆s6Step321EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EarlyControl_fit : compileHmrRecordGrowLog s6Step321EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] 59 s6Step321EarlyControlLog.recordFresh=some s6Step321EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step321EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step321EarlyControl_fitBorrow

private theorem s6Step321EarlyControl_flagsBorrow : s6Step321EarlyControlEqualityArena.checkBorrow (6) s6Step321EarlyControlLog.flagWork=some s6Step321EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step321EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step321EarlyControlFlagArena,s6Step321EarlyControlEqualityArena,s6Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step321EarlyControl_flagsOwned : ([860, 253, 252, 251] : List Wire).toFinset⊆s6Step321EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EarlyControl_flags : compileHmrFlagsLog s6Step321EarlyControlClassPlan.equalityArena s6Step321EarlyControlClassPlan.equality.top 253 252 251 s6Step321EarlyControlLog.flagWork=some s6Step321EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step321EarlyControl_flagsOwned⟩
  · exact s6Step321EarlyControl_flagsBorrow

private theorem s6Step321EarlyControl_historyBorrow : s6Step321EarlyControlArena.checkBorrow ((59-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] : List Wire).length)) s6Step321EarlyControlLog.recordFresh=some s6Step321EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step321EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step321EarlyControlHistoryArena,s6Step321EarlyControlArena,s6Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step321EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] : List Wire).toFinset⊆s6Step321EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EarlyControl_history : compileHmrRecordGrowLog s6Step321EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] 59 s6Step321EarlyControlLog.recordFresh=some s6Step321EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step321EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step321EarlyControl_historyBorrow

private theorem s6Step321EarlyControl_sigmaOwned : ([254, 830] : List Wire).toFinset⊆s6Step321EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EarlyControl_sigmaReleaseOwned : ([830] : List Wire).toFinset⊆s6Step321EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EarlyControl_sigmaRelease : s6Step321EarlyControlHistoryArena.release {830} (fun _ => false)=some s6Step321EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step321EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step321EarlyControlSigmaArena,s6Step321EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step321EarlyControl_sigma : compileHmrSigmaDropLog s6Step321EarlyControlHistoryArena false 0 0 254 830 []=some s6Step321EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step321EarlyControl_sigmaOwned⟩
  · exact s6Step321EarlyControl_sigmaRelease

private theorem s6Step321EarlyControl_zeroBorrow : s6Step321EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step321EarlyControlLog.zeroWork=some s6Step321EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step321EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step321EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step321EarlyControlZeroArena,s6Step321EarlyControlArena,s6Step321EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step321EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step321EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step321EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EarlyControl_zero : compileHmrEqualityLog s6Step321EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step321EarlyControlLog.zeroWork=some (s6Step321EarlyControlZeroArena,s6Step321EarlyControlLog.zeroWork,s6Step321EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step321EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step321EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step321EarlyControl_logged : s6Step321EarlyControlPlan.Logged s6Step321EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] 769 830 254 253 252 251 880 59 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step321EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step321EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step321EarlyControl_zero
  · exact s6Step321EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step321EarlyControl_flags
  · exact s6Step321EarlyControl_fit
  · exact s6Step321EarlyControl_history
  · exact s6Step321EarlyControl_sigma
  · exact s6Step321EarlyControl_branch

private theorem s6Step321EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step321EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] 769 830 254 253 252 251 880 59 s6Step321EarlyControlLog=some s6Step321EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step321EarlyControlPlan s6Step321EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] 769 830 254 253 252 251 880 59 s6Step321EarlyControl_logged

private def s6Step321EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩

private def s6Step321EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step321EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩

private def s6Step321EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩

private def s6Step321FrontBank : WindowBank := ⟨s6Step321EntryFRow,s6Step321EntryGRow,s6Step321EntryFvRow,s6Step321EntryGvRow⟩

private def s6Step321Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 853, 795]

private def s6Step321Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 822, 777]

private def s6Step321Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 793, 776]

private def s6Step321Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 843, 775]

private theorem s6Step321Counter_apart : Disjoint s6Step321HeadFvAfter.live s6Step321CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step321HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321Counter_borrowed : s6Step321HeadFvAfter.checkBorrow 4 s6Step321CounterWork=some s6Step321CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step321HeadFvAfter s6Step321CounterDuring s6Step321CounterWork.toFinset s6Step321Counter_bounded s6Step321Counter_apart rfl

private theorem s6Step321Counter_owned : (830::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step321HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step321HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321Counter_checked : compileHmrCounterStepLog s6Step321HeadFvAfter true 830 [774, 773, 772, 771, 770, 769] s6Step321CounterWork=some s6Step321CounterDuring := by
  have owned : ∀q∈830::[774, 773, 772, 771, 770, 769],q∈s6Step321HeadFvAfter.live := fun q hq => s6Step321Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step321Counter_borrowed

private def s6Step321EntryFAfter : Arena := s6Step321EntryFBefore

private theorem s6Step321EntryBank_incomingDistinct : ([s6Step321EntryFRow,s6Step321EntryGRow,s6Step321EntryFvRow,s6Step321EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321EntryF_Incoming : rowsOwned s6Step321EntryFBefore [s6Step321EntryFRow,s6Step321EntryGRow,s6Step321EntryFvRow,s6Step321EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321EntryFRow,s6Step321EntryGRow,s6Step321EntryFvRow,s6Step321EntryGvRow] 0 s6Step321EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321EntryBank_outgoingOwned : rowsOwned s6Step321EntryGvAfter [s6Step321EntryFOut,s6Step321EntryGOut,s6Step321EntryFvOut,s6Step321EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step321EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321EntryF_Outgoing : rowsOwned s6Step321EntryGvAfter [s6Step321EntryFOut,s6Step321EntryGOut,s6Step321EntryFvOut,s6Step321EntryGvOut] :=
  hmrRows_owned_drop s6Step321EntryGvAfter [s6Step321EntryFOut,s6Step321EntryGOut,s6Step321EntryFvOut,s6Step321EntryGvOut] 0 s6Step321EntryBank_outgoingOwned

private theorem s6Step321EntryF_distinct : (s6Step321EntryFRow.sign::s6Step321EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321EntryF_owned : (s6Step321EntryFRow.sign::s6Step321EntryFRow.payload).toFinset⊆s6Step321EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EntryF_reserved : s6Step321EntryFBefore.reserve s6Step321EntryFFresh.toFinset=some s6Step321EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step321EntryFFresh,arenaWires]
  · norm_num [s6Step321EntryFBefore,s6Step321EntryFFresh,arenaWires]
  · simp only [s6Step321EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step321EntryF_checked : planRowResizeLog s6Step321EntryFBefore s6Step321EntryFRow 110 s6Step321EntryFFresh=
    some (s6Step321EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩,growRow 795 s6Step321EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step321EntryFBefore s6Step321EntryFAfter s6Step321EntryFRow 110 s6Step321EntryFFresh
    s6Step321EntryF_distinct s6Step321EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step321EntryF_reserved
  have rowEq : WindowRow.mk (s6Step321EntryFRow.payload++s6Step321EntryFFresh) s6Step321EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step321EntryFvAfter : Arena := s6Step321EntryFBefore

private def s6Step321EntryFvBefore : Arena := s6Step321EntryFBefore

private theorem s6Step321EntryFv_Incoming : rowsOwned s6Step321EntryFvBefore [s6Step321EntryFvRow,s6Step321EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321EntryFRow,s6Step321EntryGRow,s6Step321EntryFvRow,s6Step321EntryGvRow] 2 s6Step321EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321EntryFv_Outgoing : rowsOwned s6Step321EntryGvAfter [s6Step321EntryFvOut,s6Step321EntryGvOut] :=
  hmrRows_owned_drop s6Step321EntryGvAfter [s6Step321EntryFOut,s6Step321EntryGOut,s6Step321EntryFvOut,s6Step321EntryGvOut] 2 s6Step321EntryBank_outgoingOwned

private theorem s6Step321EntryFv_distinct : (s6Step321EntryFvRow.sign::s6Step321EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321EntryFv_owned : (s6Step321EntryFvRow.sign::s6Step321EntryFvRow.payload).toFinset⊆s6Step321EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EntryFv_reserved : s6Step321EntryFvBefore.reserve s6Step321EntryFvFresh.toFinset=some s6Step321EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step321EntryFvFresh,arenaWires]
  · norm_num [s6Step321EntryFvBefore,s6Step321EntryFBefore,s6Step321EntryFvFresh,arenaWires]
  · simp only [s6Step321EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step321EntryFv_checked : planRowResizeLog s6Step321EntryFvBefore s6Step321EntryFvRow 176 s6Step321EntryFvFresh=
    some (s6Step321EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩,growRow 776 s6Step321EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step321EntryFvBefore s6Step321EntryFvAfter s6Step321EntryFvRow 176 s6Step321EntryFvFresh
    s6Step321EntryFv_distinct s6Step321EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step321EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step321EntryFvRow.payload++s6Step321EntryFvFresh) s6Step321EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step321EntryGAfter : Arena := s6Step321EntryFBefore

private def s6Step321EntryGBefore : Arena := s6Step321EntryFBefore

private theorem s6Step321EntryG_Incoming : rowsOwned s6Step321EntryGBefore [s6Step321EntryGRow,s6Step321EntryFvRow,s6Step321EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321EntryFRow,s6Step321EntryGRow,s6Step321EntryFvRow,s6Step321EntryGvRow] 1 s6Step321EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321EntryG_Outgoing : rowsOwned s6Step321EntryGvAfter [s6Step321EntryGOut,s6Step321EntryFvOut,s6Step321EntryGvOut] :=
  hmrRows_owned_drop s6Step321EntryGvAfter [s6Step321EntryFOut,s6Step321EntryGOut,s6Step321EntryFvOut,s6Step321EntryGvOut] 1 s6Step321EntryBank_outgoingOwned

private theorem s6Step321EntryG_distinct : (s6Step321EntryGRow.sign::s6Step321EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321EntryG_owned : (s6Step321EntryGRow.sign::s6Step321EntryGRow.payload).toFinset⊆s6Step321EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EntryG_reserved : s6Step321EntryGBefore.reserve s6Step321EntryGFresh.toFinset=some s6Step321EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step321EntryGFresh,arenaWires]
  · norm_num [s6Step321EntryGBefore,s6Step321EntryFBefore,s6Step321EntryGFresh,arenaWires]
  · simp only [s6Step321EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step321EntryG_checked : planRowResizeLog s6Step321EntryGBefore s6Step321EntryGRow 110 s6Step321EntryGFresh=
    some (s6Step321EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩,growRow 777 s6Step321EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step321EntryGBefore s6Step321EntryGAfter s6Step321EntryGRow 110 s6Step321EntryGFresh
    s6Step321EntryG_distinct s6Step321EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step321EntryG_reserved
  have rowEq : WindowRow.mk (s6Step321EntryGRow.payload++s6Step321EntryGFresh) s6Step321EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step321EntryGvBefore : Arena := s6Step321EntryFBefore

private theorem s6Step321EntryGv_Incoming : rowsOwned s6Step321EntryGvBefore [s6Step321EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321EntryFRow,s6Step321EntryGRow,s6Step321EntryFvRow,s6Step321EntryGvRow] 3 s6Step321EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321EntryGv_Outgoing : rowsOwned s6Step321EntryGvAfter [s6Step321EntryGvOut] :=
  hmrRows_owned_drop s6Step321EntryGvAfter [s6Step321EntryFOut,s6Step321EntryGOut,s6Step321EntryFvOut,s6Step321EntryGvOut] 3 s6Step321EntryBank_outgoingOwned

private theorem s6Step321EntryGv_distinct : (s6Step321EntryGvRow.sign::s6Step321EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321EntryGv_owned : (s6Step321EntryGvRow.sign::s6Step321EntryGvRow.payload).toFinset⊆s6Step321EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321EntryGv_reserved : s6Step321EntryGvBefore.reserve s6Step321EntryGvFresh.toFinset=some s6Step321EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step321EntryGvFresh,arenaWires]
  · norm_num [s6Step321EntryGvBefore,s6Step321EntryFBefore,s6Step321EntryGvFresh,arenaWires]
  · simp only [s6Step321EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step321EntryGv_checked : planRowResizeLog s6Step321EntryGvBefore s6Step321EntryGvRow 176 s6Step321EntryGvFresh=
    some (s6Step321EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩,growRow 775 s6Step321EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step321EntryGvBefore s6Step321EntryGvAfter s6Step321EntryGvRow 176 s6Step321EntryGvFresh
    s6Step321EntryGv_distinct s6Step321EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step321EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step321EntryGvRow.payload++s6Step321EntryGvFresh) s6Step321EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step321EntryBank_rows : planWindowRowsLog s6Step321EntryFBefore [(s6Step321EntryFRow,110),(s6Step321EntryGRow,110),(s6Step321EntryFvRow,176),(s6Step321EntryGvRow,176)] [s6Step321EntryFFresh,s6Step321EntryGFresh,s6Step321EntryFvFresh,s6Step321EntryGvFresh]=
    some (s6Step321EntryGvAfter,[s6Step321EntryFOut,s6Step321EntryGOut,s6Step321EntryFvOut,s6Step321EntryGvOut],(growRow 795 s6Step321EntryFFresh ++ (growRow 777 s6Step321EntryGFresh ++ (growRow 776 s6Step321EntryFvFresh ++ (growRow 775 s6Step321EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step321EntryGvAfter [] []=some (s6Step321EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step321EntryGvBefore s6Step321EntryGvAfter s6Step321EntryGvAfter
    s6Step321EntryGvRow s6Step321EntryGvOut 176 s6Step321EntryGvFresh [] [] []
    (growRow 775 s6Step321EntryGvFresh) ([]) s6Step321EntryGv_Incoming s6Step321EntryGv_checked h4 s6Step321EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step321EntryFvBefore s6Step321EntryFvAfter s6Step321EntryGvAfter
    s6Step321EntryFvRow s6Step321EntryFvOut 176 s6Step321EntryFvFresh [(s6Step321EntryGvRow,176)] [s6Step321EntryGvFresh] [s6Step321EntryGvOut]
    (growRow 776 s6Step321EntryFvFresh) ((growRow 775 s6Step321EntryGvFresh ++ [])) s6Step321EntryFv_Incoming s6Step321EntryFv_checked h3 s6Step321EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step321EntryGBefore s6Step321EntryGAfter s6Step321EntryGvAfter
    s6Step321EntryGRow s6Step321EntryGOut 110 s6Step321EntryGFresh [(s6Step321EntryFvRow,176),(s6Step321EntryGvRow,176)] [s6Step321EntryFvFresh,s6Step321EntryGvFresh] [s6Step321EntryFvOut,s6Step321EntryGvOut]
    (growRow 777 s6Step321EntryGFresh) ((growRow 776 s6Step321EntryFvFresh ++ (growRow 775 s6Step321EntryGvFresh ++ []))) s6Step321EntryG_Incoming s6Step321EntryG_checked h2 s6Step321EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step321EntryFBefore s6Step321EntryFAfter s6Step321EntryGvAfter
    s6Step321EntryFRow s6Step321EntryFOut 110 s6Step321EntryFFresh [(s6Step321EntryGRow,110),(s6Step321EntryFvRow,176),(s6Step321EntryGvRow,176)] [s6Step321EntryGFresh,s6Step321EntryFvFresh,s6Step321EntryGvFresh] [s6Step321EntryGOut,s6Step321EntryFvOut,s6Step321EntryGvOut]
    (growRow 795 s6Step321EntryFFresh) ((growRow 777 s6Step321EntryGFresh ++ (growRow 776 s6Step321EntryFvFresh ++ (growRow 775 s6Step321EntryGvFresh ++ [])))) s6Step321EntryF_Incoming s6Step321EntryF_checked h1 s6Step321EntryF_Outgoing
  exact h0

private theorem s6Step321EntryBank_checked : compileHmrBankResizeLog .entry s6Step321EntryFBefore ⟨s6Step321EntryFRow,s6Step321EntryGRow,s6Step321EntryFvRow,s6Step321EntryGvRow⟩ ⟨110,110,176,176⟩ [s6Step321EntryFFresh,s6Step321EntryGFresh,s6Step321EntryFvFresh,s6Step321EntryGvFresh]=
    some (s6Step321EntryGvAfter,⟨s6Step321EntryFOut,s6Step321EntryGOut,s6Step321EntryFvOut,s6Step321EntryGvOut⟩,(growRow 795 s6Step321EntryFFresh ++ (growRow 777 s6Step321EntryGFresh ++ (growRow 776 s6Step321EntryFvFresh ++ (growRow 775 s6Step321EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step321EntryBank_rows]
  rfl

private def s6Step321ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321ExitFBefore : Arena := s6Step321ExitGAfter

private def s6Step321ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 853],795⟩

private def s6Step321ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 793],776⟩

private def s6Step321ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 822],777⟩

private def s6Step321ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 843],775⟩

private theorem s6Step321ExitBank_incomingDistinct : ([s6Step321ExitGRow,s6Step321ExitFRow,s6Step321ExitFvRow,s6Step321ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321ExitF_Incoming : rowsOwned s6Step321ExitFBefore [s6Step321ExitFRow,s6Step321ExitFvRow,s6Step321ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321ExitGRow,s6Step321ExitFRow,s6Step321ExitFvRow,s6Step321ExitGvRow] 1 s6Step321ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321ExitBank_outgoingOwned : rowsOwned s6Step321ExitGvAfter [s6Step321ExitGOut,s6Step321ExitFOut,s6Step321ExitFvOut,s6Step321ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step321ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321ExitF_Outgoing : rowsOwned s6Step321ExitGvAfter [s6Step321ExitFOut,s6Step321ExitFvOut,s6Step321ExitGvOut] :=
  hmrRows_owned_drop s6Step321ExitGvAfter [s6Step321ExitGOut,s6Step321ExitFOut,s6Step321ExitFvOut,s6Step321ExitGvOut] 1 s6Step321ExitBank_outgoingOwned

private theorem s6Step321ExitF_distinct : (s6Step321ExitFRow.sign::s6Step321ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321ExitF_owned : (s6Step321ExitFRow.sign::s6Step321ExitFRow.payload).toFinset⊆s6Step321ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321ExitF_retired : s6Step321ExitFBefore.retireSet s6Step321ExitFExtra.toFinset=s6Step321ExitFAfter := by
  unfold Arena.retireSet s6Step321ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step321ExitFBefore,s6Step321ExitGAfter,s6Step321ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step321ExitF_checked : planRowResizeLog s6Step321ExitFBefore s6Step321ExitFRow 110 []=
    some (s6Step321ExitFAfter,s6Step321ExitFOut,shrinkRow 795 s6Step321ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step321ExitFBefore s6Step321ExitFRow 110 s6Step321ExitF_distinct s6Step321ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step321ExitFRow.payload.take 110) s6Step321ExitFRow.sign=s6Step321ExitFOut := by decide +kernel
  have hi : s6Step321ExitFRow.payload.drop 110=s6Step321ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step321ExitF_retired] at result
  exact result

private def s6Step321ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321ExitFvBefore : Arena := s6Step321ExitFAfter

private theorem s6Step321ExitFv_Incoming : rowsOwned s6Step321ExitFvBefore [s6Step321ExitFvRow,s6Step321ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321ExitGRow,s6Step321ExitFRow,s6Step321ExitFvRow,s6Step321ExitGvRow] 2 s6Step321ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321ExitFv_Outgoing : rowsOwned s6Step321ExitGvAfter [s6Step321ExitFvOut,s6Step321ExitGvOut] :=
  hmrRows_owned_drop s6Step321ExitGvAfter [s6Step321ExitGOut,s6Step321ExitFOut,s6Step321ExitFvOut,s6Step321ExitGvOut] 2 s6Step321ExitBank_outgoingOwned

private theorem s6Step321ExitFv_distinct : (s6Step321ExitFvRow.sign::s6Step321ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321ExitFv_owned : (s6Step321ExitFvRow.sign::s6Step321ExitFvRow.payload).toFinset⊆s6Step321ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321ExitFv_retired : s6Step321ExitFvBefore.retireSet s6Step321ExitFvExtra.toFinset=s6Step321ExitFvAfter := by
  unfold Arena.retireSet s6Step321ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step321ExitFvBefore,s6Step321ExitFAfter,s6Step321ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step321ExitFv_checked : planRowResizeLog s6Step321ExitFvBefore s6Step321ExitFvRow 176 []=
    some (s6Step321ExitFvAfter,s6Step321ExitFvOut,shrinkRow 776 s6Step321ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step321ExitFvBefore s6Step321ExitFvRow 176 s6Step321ExitFv_distinct s6Step321ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step321ExitFvRow.payload.take 176) s6Step321ExitFvRow.sign=s6Step321ExitFvOut := by decide +kernel
  have hi : s6Step321ExitFvRow.payload.drop 176=s6Step321ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step321ExitFv_retired] at result
  exact result

private def s6Step321ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step321ExitG_Incoming : rowsOwned s6Step321ExitGBefore [s6Step321ExitGRow,s6Step321ExitFRow,s6Step321ExitFvRow,s6Step321ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321ExitGRow,s6Step321ExitFRow,s6Step321ExitFvRow,s6Step321ExitGvRow] 0 s6Step321ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321ExitG_Outgoing : rowsOwned s6Step321ExitGvAfter [s6Step321ExitGOut,s6Step321ExitFOut,s6Step321ExitFvOut,s6Step321ExitGvOut] :=
  hmrRows_owned_drop s6Step321ExitGvAfter [s6Step321ExitGOut,s6Step321ExitFOut,s6Step321ExitFvOut,s6Step321ExitGvOut] 0 s6Step321ExitBank_outgoingOwned

private theorem s6Step321ExitG_distinct : (s6Step321ExitGRow.sign::s6Step321ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321ExitG_owned : (s6Step321ExitGRow.sign::s6Step321ExitGRow.payload).toFinset⊆s6Step321ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321ExitG_retired : s6Step321ExitGBefore.retireSet s6Step321ExitGExtra.toFinset=s6Step321ExitGAfter := by
  unfold Arena.retireSet s6Step321ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step321ExitGBefore,s6Step321ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step321ExitG_checked : planRowResizeLog s6Step321ExitGBefore s6Step321ExitGRow 110 []=
    some (s6Step321ExitGAfter,s6Step321ExitGOut,shrinkRow 777 s6Step321ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step321ExitGBefore s6Step321ExitGRow 110 s6Step321ExitG_distinct s6Step321ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step321ExitGRow.payload.take 110) s6Step321ExitGRow.sign=s6Step321ExitGOut := by decide +kernel
  have hi : s6Step321ExitGRow.payload.drop 110=s6Step321ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step321ExitG_retired] at result
  exact result

private def s6Step321ExitGvBefore : Arena := s6Step321ExitFvAfter

private theorem s6Step321ExitGv_Incoming : rowsOwned s6Step321ExitGvBefore [s6Step321ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321ExitGRow,s6Step321ExitFRow,s6Step321ExitFvRow,s6Step321ExitGvRow] 3 s6Step321ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321ExitGv_Outgoing : rowsOwned s6Step321ExitGvAfter [s6Step321ExitGvOut] :=
  hmrRows_owned_drop s6Step321ExitGvAfter [s6Step321ExitGOut,s6Step321ExitFOut,s6Step321ExitFvOut,s6Step321ExitGvOut] 3 s6Step321ExitBank_outgoingOwned

private theorem s6Step321ExitGv_distinct : (s6Step321ExitGvRow.sign::s6Step321ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321ExitGv_owned : (s6Step321ExitGvRow.sign::s6Step321ExitGvRow.payload).toFinset⊆s6Step321ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321ExitGv_retired : s6Step321ExitGvBefore.retireSet s6Step321ExitGvExtra.toFinset=s6Step321ExitGvAfter := by
  unfold Arena.retireSet s6Step321ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step321ExitGvBefore,s6Step321ExitFvAfter,s6Step321ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step321ExitGv_checked : planRowResizeLog s6Step321ExitGvBefore s6Step321ExitGvRow 176 []=
    some (s6Step321ExitGvAfter,s6Step321ExitGvOut,shrinkRow 775 s6Step321ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step321ExitGvBefore s6Step321ExitGvRow 176 s6Step321ExitGv_distinct s6Step321ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step321ExitGvRow.payload.take 176) s6Step321ExitGvRow.sign=s6Step321ExitGvOut := by decide +kernel
  have hi : s6Step321ExitGvRow.payload.drop 176=s6Step321ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step321ExitGv_retired] at result
  exact result

private theorem s6Step321ExitBank_rows : planWindowRowsLog s6Step321ExitGBefore [(s6Step321ExitGRow,110),(s6Step321ExitFRow,110),(s6Step321ExitFvRow,176),(s6Step321ExitGvRow,176)] [[],[],[],[]]=
    some (s6Step321ExitGvAfter,[s6Step321ExitGOut,s6Step321ExitFOut,s6Step321ExitFvOut,s6Step321ExitGvOut],(shrinkRow 777 s6Step321ExitGExtra ++ (shrinkRow 795 s6Step321ExitFExtra ++ (shrinkRow 776 s6Step321ExitFvExtra ++ (shrinkRow 775 s6Step321ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step321ExitGvAfter [] []=some (s6Step321ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step321ExitGvBefore s6Step321ExitGvAfter s6Step321ExitGvAfter
    s6Step321ExitGvRow s6Step321ExitGvOut 176 [] [] [] []
    (shrinkRow 775 s6Step321ExitGvExtra) ([]) s6Step321ExitGv_Incoming s6Step321ExitGv_checked h4 s6Step321ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step321ExitFvBefore s6Step321ExitFvAfter s6Step321ExitGvAfter
    s6Step321ExitFvRow s6Step321ExitFvOut 176 [] [(s6Step321ExitGvRow,176)] [[]] [s6Step321ExitGvOut]
    (shrinkRow 776 s6Step321ExitFvExtra) ((shrinkRow 775 s6Step321ExitGvExtra ++ [])) s6Step321ExitFv_Incoming s6Step321ExitFv_checked h3 s6Step321ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step321ExitFBefore s6Step321ExitFAfter s6Step321ExitGvAfter
    s6Step321ExitFRow s6Step321ExitFOut 110 [] [(s6Step321ExitFvRow,176),(s6Step321ExitGvRow,176)] [[],[]] [s6Step321ExitFvOut,s6Step321ExitGvOut]
    (shrinkRow 795 s6Step321ExitFExtra) ((shrinkRow 776 s6Step321ExitFvExtra ++ (shrinkRow 775 s6Step321ExitGvExtra ++ []))) s6Step321ExitF_Incoming s6Step321ExitF_checked h2 s6Step321ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step321ExitGBefore s6Step321ExitGAfter s6Step321ExitGvAfter
    s6Step321ExitGRow s6Step321ExitGOut 110 [] [(s6Step321ExitFRow,110),(s6Step321ExitFvRow,176),(s6Step321ExitGvRow,176)] [[],[],[]] [s6Step321ExitFOut,s6Step321ExitFvOut,s6Step321ExitGvOut]
    (shrinkRow 777 s6Step321ExitGExtra) ((shrinkRow 795 s6Step321ExitFExtra ++ (shrinkRow 776 s6Step321ExitFvExtra ++ (shrinkRow 775 s6Step321ExitGvExtra ++ [])))) s6Step321ExitG_Incoming s6Step321ExitG_checked h1 s6Step321ExitG_Outgoing
  exact h0

private theorem s6Step321ExitBank_checked : compileHmrBankResizeLog .exit s6Step321ExitGBefore ⟨s6Step321ExitFRow,s6Step321ExitGRow,s6Step321ExitFvRow,s6Step321ExitGvRow⟩ ⟨110,110,176,176⟩ [[],[],[],[]]=
    some (s6Step321ExitGvAfter,⟨s6Step321ExitFOut,s6Step321ExitGOut,s6Step321ExitFvOut,s6Step321ExitGvOut⟩,(shrinkRow 777 s6Step321ExitGExtra ++ (shrinkRow 795 s6Step321ExitFExtra ++ (shrinkRow 776 s6Step321ExitFvExtra ++ (shrinkRow 775 s6Step321ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step321ExitBank_rows]
  rfl

private theorem s6Step321Add0_apart : Disjoint s6Step321Add0Arena.live s6Step321Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step321Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321Add0_card : s6Step321Add0Arena.live.card=904 := by
  decide +kernel

private theorem s6Step321Add0_borrowed : s6Step321Add0Arena.checkBorrow (hmrHybridCount s6Step321Add0Arena s6Step321Add0B.length) s6Step321Add0Work=some s6Step321Add0During := by
  have len : s6Step321Add0Work.length=hmrHybridCount s6Step321Add0Arena s6Step321Add0B.length := by
    rw [hmrHybridCount,s6Step321Add0_card]
    decide +kernel
  have nd : s6Step321Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step321Add0Arena s6Step321Add0During s6Step321Add0Work.toFinset s6Step321Add0_bounded s6Step321Add0_apart rfl

private theorem s6Step321Add0_distinct : (841::880::865::(s6Step321Add0A++s6Step321Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321Add0_owned : (841::880::865::(s6Step321Add0A++s6Step321Add0B)).toFinset⊆s6Step321Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step321Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321Add0_checked : compileHmrHybridCinLog s6Step321Add0Arena 880 841 865 s6Step321Add0A s6Step321Add0B s6Step321Add0Work=some s6Step321Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step321Add0Arena s6Step321Add0During 880 841 865 s6Step321Add0A s6Step321Add0B s6Step321Add0Work
    (by decide +kernel) (by decide +kernel) s6Step321Add0_distinct
    (fun q hq => s6Step321Add0_owned (List.mem_toFinset.mpr hq)) s6Step321Add0_borrowed

private theorem s6Step321Add1_apart : Disjoint s6Step321Add1Arena.live s6Step321Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step321Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321Add1_card : s6Step321Add1Arena.live.card=904 := by
  decide +kernel

private theorem s6Step321Add1_borrowed : s6Step321Add1Arena.checkBorrow (hmrHybridCount s6Step321Add1Arena s6Step321Add1B.length) s6Step321Add1Work=some s6Step321Add1During := by
  have len : s6Step321Add1Work.length=hmrHybridCount s6Step321Add1Arena s6Step321Add1B.length := by
    rw [hmrHybridCount,s6Step321Add1_card]
    decide +kernel
  have nd : s6Step321Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step321Add1Arena s6Step321Add1During s6Step321Add1Work.toFinset s6Step321Add1_bounded s6Step321Add1_apart rfl

private theorem s6Step321Add1_distinct : (841::880::865::(s6Step321Add1A++s6Step321Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321Add1_owned : (841::880::865::(s6Step321Add1A++s6Step321Add1B)).toFinset⊆s6Step321Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step321Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321Add1_checked : compileHmrHybridCinLog s6Step321Add1Arena 880 841 865 s6Step321Add1A s6Step321Add1B s6Step321Add1Work=some s6Step321Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step321Add1Arena s6Step321Add1During 880 841 865 s6Step321Add1A s6Step321Add1B s6Step321Add1Work
    (by decide +kernel) (by decide +kernel) s6Step321Add1_distinct
    (fun q hq => s6Step321Add1_owned (List.mem_toFinset.mpr hq)) s6Step321Add1_borrowed

private theorem s6Step321F4_apart : Disjoint (s6Step321Add0A++s6Step321Add0B).toFinset (s6Step321Add1A++s6Step321Add1B).toFinset := by
  have nd : ((s6Step321Add0A++s6Step321Add0B)++(s6Step321Add1A++s6Step321Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step321F4_carry : s6Step321F4FlagArena.checkBorrow 1 [865]=some s6Step321Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step321F4FlagArena,s6Step321HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step321F4FlagArena,s6Step321HeadFvAfter,s6Step321Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step321F4_distinct : (830::880::841::865::((s6Step321Add0A++s6Step321Add1A)++(s6Step321Add0B++s6Step321Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321F4_flag : s6Step321HeadFvAfter.checkBorrow 1 [841]=some s6Step321F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step321HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step321F4_owned : (830::880::((s6Step321Add0A++s6Step321Add1A)++(s6Step321Add0B++s6Step321Add1B))).toFinset⊆s6Step321HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step321HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321F4_checked : compileHmrHybridF4Log s6Step321HeadFvAfter 830 880 s6Step321Add0A s6Step321Add0B s6Step321Add1A s6Step321Add1B [841] [865] s6Step321Add0Work s6Step321Add1Work=some s6Step321F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step321HeadFvAfter s6Step321F4FlagArena s6Step321Add0Arena s6Step321Add0During s6Step321Add1During 830 880
    s6Step321Add0A s6Step321Add0B s6Step321Add1A s6Step321Add1B [841] [865] s6Step321Add0Work s6Step321Add1Work
    (fun q hq => s6Step321F4_owned (List.mem_toFinset.mpr hq)) s6Step321F4_flag s6Step321F4_carry
    s6Step321F4_distinct s6Step321F4_apart s6Step321Add0_checked s6Step321Add1_checked

private theorem s6Step321Front_branch : s6Step321FrontSigmaArena.checkBorrow 1 [880]=some s6Step321HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step321FrontSigmaArena,s6Step321EntryGvAfter,s6Step321EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step321FrontSigmaArena,s6Step321EntryGvAfter,s6Step321EntryFBefore,s6Step321HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step321Front_entry : HmrFrontEntryValid s6Step321EntryFBefore s6Step321FrontBank 110 176 ⟨110,110,176,176⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step321FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step321EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step321EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step321FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step321Front_sigma : s6Step321EntryGvAfter.checkBorrow 1 [830]=some s6Step321FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step321EntryGvAfter,s6Step321EntryFBefore,arenaWires]
  · rfl

private def s6Step321HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321HeadFBefore : Arena := s6Step321HeadGAfter

private def s6Step321HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365],795⟩

private def s6Step321HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803],776⟩

private def s6Step321HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],777⟩

private def s6Step321HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868],775⟩

private theorem s6Step321HeadBank_incomingDistinct : ([s6Step321HeadGRow,s6Step321HeadFRow,s6Step321HeadGvRow,s6Step321HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321HeadF_Incoming : rowsOwned s6Step321HeadFBefore [s6Step321HeadFRow,s6Step321HeadGvRow,s6Step321HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321HeadGRow,s6Step321HeadFRow,s6Step321HeadGvRow,s6Step321HeadFvRow] 1 s6Step321HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321HeadBank_outgoingOwned : rowsOwned s6Step321HeadFvAfter [s6Step321HeadGOut,s6Step321HeadFOut,s6Step321HeadGvOut,s6Step321HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step321HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321HeadF_Outgoing : rowsOwned s6Step321HeadFvAfter [s6Step321HeadFOut,s6Step321HeadGvOut,s6Step321HeadFvOut] :=
  hmrRows_owned_drop s6Step321HeadFvAfter [s6Step321HeadGOut,s6Step321HeadFOut,s6Step321HeadGvOut,s6Step321HeadFvOut] 1 s6Step321HeadBank_outgoingOwned

private theorem s6Step321HeadF_distinct : (s6Step321HeadFRow.sign::s6Step321HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321HeadF_owned : (s6Step321HeadFRow.sign::s6Step321HeadFRow.payload).toFinset⊆s6Step321HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321HeadF_reserved : s6Step321HeadFBefore.reserve s6Step321HeadFFresh.toFinset=some s6Step321HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step321HeadFFresh,arenaWires]
  · norm_num [s6Step321HeadFBefore,s6Step321HeadGAfter,s6Step321HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step321HeadFAfter,s6Step321HeadFBefore,s6Step321HeadGAfter,s6Step321HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step321HeadF_checked : planRowResizeLog s6Step321HeadFBefore s6Step321HeadFRow 111 s6Step321HeadFFresh=
    some (s6Step321HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 853],795⟩,growRow 795 s6Step321HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step321HeadFBefore s6Step321HeadFAfter s6Step321HeadFRow 111 s6Step321HeadFFresh
    s6Step321HeadF_distinct s6Step321HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step321HeadF_reserved
  have rowEq : WindowRow.mk (s6Step321HeadFRow.payload++s6Step321HeadFFresh) s6Step321HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 853],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step321HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step321HeadFvBefore : Arena := s6Step321HeadGvAfter

private theorem s6Step321HeadFv_Incoming : rowsOwned s6Step321HeadFvBefore [s6Step321HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321HeadGRow,s6Step321HeadFRow,s6Step321HeadGvRow,s6Step321HeadFvRow] 3 s6Step321HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321HeadFv_Outgoing : rowsOwned s6Step321HeadFvAfter [s6Step321HeadFvOut] :=
  hmrRows_owned_drop s6Step321HeadFvAfter [s6Step321HeadGOut,s6Step321HeadFOut,s6Step321HeadGvOut,s6Step321HeadFvOut] 3 s6Step321HeadBank_outgoingOwned

private theorem s6Step321HeadFv_distinct : (s6Step321HeadFvRow.sign::s6Step321HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321HeadFv_owned : (s6Step321HeadFvRow.sign::s6Step321HeadFvRow.payload).toFinset⊆s6Step321HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321HeadFv_reserved : s6Step321HeadFvBefore.reserve s6Step321HeadFvFresh.toFinset=some s6Step321HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step321HeadFvFresh,arenaWires]
  · norm_num [s6Step321HeadFvBefore,s6Step321HeadGvAfter,s6Step321HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step321HeadFvAfter,s6Step321HeadFvBefore,s6Step321HeadGvAfter,s6Step321HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step321HeadFv_checked : planRowResizeLog s6Step321HeadFvBefore s6Step321HeadFvRow 177 s6Step321HeadFvFresh=
    some (s6Step321HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 793],776⟩,growRow 776 s6Step321HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step321HeadFvBefore s6Step321HeadFvAfter s6Step321HeadFvRow 177 s6Step321HeadFvFresh
    s6Step321HeadFv_distinct s6Step321HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step321HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step321HeadFvRow.payload++s6Step321HeadFvFresh) s6Step321HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 793],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step321HeadG_Incoming : rowsOwned s6Step321HeadGBefore [s6Step321HeadGRow,s6Step321HeadFRow,s6Step321HeadGvRow,s6Step321HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321HeadGRow,s6Step321HeadFRow,s6Step321HeadGvRow,s6Step321HeadFvRow] 0 s6Step321HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321HeadG_Outgoing : rowsOwned s6Step321HeadFvAfter [s6Step321HeadGOut,s6Step321HeadFOut,s6Step321HeadGvOut,s6Step321HeadFvOut] :=
  hmrRows_owned_drop s6Step321HeadFvAfter [s6Step321HeadGOut,s6Step321HeadFOut,s6Step321HeadGvOut,s6Step321HeadFvOut] 0 s6Step321HeadBank_outgoingOwned

private theorem s6Step321HeadG_distinct : (s6Step321HeadGRow.sign::s6Step321HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321HeadG_owned : (s6Step321HeadGRow.sign::s6Step321HeadGRow.payload).toFinset⊆s6Step321HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321HeadG_reserved : s6Step321HeadGBefore.reserve s6Step321HeadGFresh.toFinset=some s6Step321HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step321HeadGFresh,arenaWires]
  · norm_num [s6Step321HeadGBefore,s6Step321HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step321HeadGAfter,s6Step321HeadGBefore,s6Step321HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step321HeadG_checked : planRowResizeLog s6Step321HeadGBefore s6Step321HeadGRow 111 s6Step321HeadGFresh=
    some (s6Step321HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 822],777⟩,growRow 777 s6Step321HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step321HeadGBefore s6Step321HeadGAfter s6Step321HeadGRow 111 s6Step321HeadGFresh
    s6Step321HeadG_distinct s6Step321HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step321HeadG_reserved
  have rowEq : WindowRow.mk (s6Step321HeadGRow.payload++s6Step321HeadGFresh) s6Step321HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 822],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step321HeadGvBefore : Arena := s6Step321HeadFAfter

private theorem s6Step321HeadGv_Incoming : rowsOwned s6Step321HeadGvBefore [s6Step321HeadGvRow,s6Step321HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step321HeadGRow,s6Step321HeadFRow,s6Step321HeadGvRow,s6Step321HeadFvRow] 2 s6Step321HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step321HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step321HeadGv_Outgoing : rowsOwned s6Step321HeadFvAfter [s6Step321HeadGvOut,s6Step321HeadFvOut] :=
  hmrRows_owned_drop s6Step321HeadFvAfter [s6Step321HeadGOut,s6Step321HeadFOut,s6Step321HeadGvOut,s6Step321HeadFvOut] 2 s6Step321HeadBank_outgoingOwned

private theorem s6Step321HeadGv_distinct : (s6Step321HeadGvRow.sign::s6Step321HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step321HeadGv_owned : (s6Step321HeadGvRow.sign::s6Step321HeadGvRow.payload).toFinset⊆s6Step321HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step321HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step321HeadGv_reserved : s6Step321HeadGvBefore.reserve s6Step321HeadGvFresh.toFinset=some s6Step321HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step321HeadGvFresh,arenaWires]
  · norm_num [s6Step321HeadGvBefore,s6Step321HeadFAfter,s6Step321HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step321HeadGvAfter,s6Step321HeadGvBefore,s6Step321HeadFAfter,s6Step321HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step321HeadGv_checked : planRowResizeLog s6Step321HeadGvBefore s6Step321HeadGvRow 177 s6Step321HeadGvFresh=
    some (s6Step321HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 843],775⟩,growRow 775 s6Step321HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step321HeadGvBefore s6Step321HeadGvAfter s6Step321HeadGvRow 177 s6Step321HeadGvFresh
    s6Step321HeadGv_distinct s6Step321HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step321HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step321HeadGvRow.payload++s6Step321HeadGvFresh) s6Step321HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 843],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step321HeadBank_rows : planWindowRowsLog s6Step321HeadGBefore [(s6Step321HeadGRow,111),(s6Step321HeadFRow,111),(s6Step321HeadGvRow,177),(s6Step321HeadFvRow,177)] [s6Step321HeadGFresh,s6Step321HeadFFresh,s6Step321HeadGvFresh,s6Step321HeadFvFresh]=
    some (s6Step321HeadFvAfter,[s6Step321HeadGOut,s6Step321HeadFOut,s6Step321HeadGvOut,s6Step321HeadFvOut],(growRow 777 s6Step321HeadGFresh ++ (growRow 795 s6Step321HeadFFresh ++ (growRow 775 s6Step321HeadGvFresh ++ (growRow 776 s6Step321HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step321HeadFvAfter [] []=some (s6Step321HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step321HeadFvBefore s6Step321HeadFvAfter s6Step321HeadFvAfter
    s6Step321HeadFvRow s6Step321HeadFvOut 177 s6Step321HeadFvFresh [] [] []
    (growRow 776 s6Step321HeadFvFresh) ([]) s6Step321HeadFv_Incoming s6Step321HeadFv_checked h4 s6Step321HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step321HeadGvBefore s6Step321HeadGvAfter s6Step321HeadFvAfter
    s6Step321HeadGvRow s6Step321HeadGvOut 177 s6Step321HeadGvFresh [(s6Step321HeadFvRow,177)] [s6Step321HeadFvFresh] [s6Step321HeadFvOut]
    (growRow 775 s6Step321HeadGvFresh) ((growRow 776 s6Step321HeadFvFresh ++ [])) s6Step321HeadGv_Incoming s6Step321HeadGv_checked h3 s6Step321HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step321HeadFBefore s6Step321HeadFAfter s6Step321HeadFvAfter
    s6Step321HeadFRow s6Step321HeadFOut 111 s6Step321HeadFFresh [(s6Step321HeadGvRow,177),(s6Step321HeadFvRow,177)] [s6Step321HeadGvFresh,s6Step321HeadFvFresh] [s6Step321HeadGvOut,s6Step321HeadFvOut]
    (growRow 795 s6Step321HeadFFresh) ((growRow 775 s6Step321HeadGvFresh ++ (growRow 776 s6Step321HeadFvFresh ++ []))) s6Step321HeadF_Incoming s6Step321HeadF_checked h2 s6Step321HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step321HeadGBefore s6Step321HeadGAfter s6Step321HeadFvAfter
    s6Step321HeadGRow s6Step321HeadGOut 111 s6Step321HeadGFresh [(s6Step321HeadFRow,111),(s6Step321HeadGvRow,177),(s6Step321HeadFvRow,177)] [s6Step321HeadFFresh,s6Step321HeadGvFresh,s6Step321HeadFvFresh] [s6Step321HeadFOut,s6Step321HeadGvOut,s6Step321HeadFvOut]
    (growRow 777 s6Step321HeadGFresh) ((growRow 795 s6Step321HeadFFresh ++ (growRow 775 s6Step321HeadGvFresh ++ (growRow 776 s6Step321HeadFvFresh ++ [])))) s6Step321HeadG_Incoming s6Step321HeadG_checked h1 s6Step321HeadG_Outgoing
  exact h0

private theorem s6Step321HeadBank_checked : compileHmrBankResizeLog .headroom s6Step321HeadGBefore ⟨s6Step321HeadFRow,s6Step321HeadGRow,s6Step321HeadFvRow,s6Step321HeadGvRow⟩ ⟨111,111,177,177⟩ [s6Step321HeadGFresh,s6Step321HeadFFresh,s6Step321HeadGvFresh,s6Step321HeadFvFresh]=
    some (s6Step321HeadFvAfter,⟨s6Step321HeadFOut,s6Step321HeadGOut,s6Step321HeadFvOut,s6Step321HeadGvOut⟩,(growRow 777 s6Step321HeadGFresh ++ (growRow 795 s6Step321HeadFFresh ++ (growRow 775 s6Step321HeadGvFresh ++ (growRow 776 s6Step321HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step321HeadBank_rows]
  rfl

private theorem s6Step321Front_checked : compileHmrSourceFrontLog s6Step321EntryFBefore s6Step321FrontBank 110 176 ⟨110,110,176,176⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step321FrontLog=some s6Step321FrontPlan := by
  have pairEq : s6Step321FrontPair=⟨s6Step321HeadFRow,s6Step321HeadGRow,s6Step321HeadFvRow,s6Step321HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step321FrontHead=⟨s6Step321ExitFRow,s6Step321ExitGRow,s6Step321ExitFvRow,s6Step321ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step321Add0A=s6Step321FrontHead.f.wires := by decide +kernel
  have gEq : s6Step321Add0B=s6Step321FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step321Add1A=s6Step321FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step321Add1B=s6Step321FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step321EntryFBefore s6Step321FrontBank 110 176 ⟨110,110,176,176⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step321FrontLog s6Step321FrontPlan
  · exact s6Step321Front_entry
  · exact s6Step321EntryBank_checked
  · exact s6Step321Front_sigma
  · rfl
  · exact s6Step321Front_branch
  · rfl
  · simpa only [s6Step321FrontPlan,pairEq] using s6Step321HeadBank_checked
  · simpa only [s6Step321FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step321F4_checked
  · exact s6Step321Counter_checked
  · rfl
  · simpa only [s6Step321FrontPlan,headEq] using s6Step321ExitBank_checked

private theorem s6Step321Complete_explicit_checked : compileHmrEarlyStepLog s6Step321EntryFBefore s6Step321FrontBank 110 176 ⟨110,110,176,176⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] 59 s6Step321CompleteLog=some s6Step321CompletePlan := by
  let Q := s6Step321EarlyControlPlan
  have hq := s6Step321EarlyControl_plan_checked
  have fv1 : s6Step321CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step321CompleteOut.fv.payload[2]?.getD s6Step321CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step321CompleteOut.fv.payload[3]?.getD s6Step321CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step321CompleteOut.fv.payload[4]?.getD s6Step321CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step321EntryFBefore s6Step321EarlyControlArena s6Step321FrontBank 110 176 ⟨110,110,176,176⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] 59 s6Step321CompleteLog s6Step321FrontPlan Q
    s6Step321Front_checked s6Step321Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step321Complete_owned s6Step321Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step321EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] 769 830 s6Step321CompleteOut.fv.second (s6Step321CompleteOut.fv.payload[2]?.getD s6Step321CompleteOut.fv.sign) (s6Step321CompleteOut.fv.payload[3]?.getD s6Step321CompleteOut.fv.sign) (s6Step321CompleteOut.fv.payload[4]?.getD s6Step321CompleteOut.fv.sign) 880 59 s6Step321EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep321Arena : Arena := s6Step321EntryFBefore
def s6PrivateStep321Bank : WindowBank := s6Step321FrontBank
def s6PrivateStep321Spec : HmrSourceWalkStepLog := ⟨110,176,⟨110,110,176,176⟩,59,.early s6Step321CompleteLog⟩
def s6PrivateStep321Plan : HmrSourceStepPlan := .early s6Step321CompletePlan
theorem s6PrivateStep321_source : s6PrivateStep321Spec=s6ObservedLogs320[1] := rfl
theorem s6PrivateStep321_checked : compileHmrSourceStepLog s6PrivateStep321Arena s6PrivateStep321Bank
    s6PrivateStep321Spec.fgWidth s6PrivateStep321Spec.vWidth s6PrivateStep321Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849]
    6 498 321 s6PrivateStep321Spec.need none s6PrivateStep321Spec.log=some s6PrivateStep321Plan := by
  change compileHmrSourceStepLog s6Step321EntryFBefore s6Step321FrontBank 110 176 ⟨110,110,176,176⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849] 6 498 321 59 none (.early s6Step321CompleteLog)=some (.early s6Step321CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 321<498)]
  rw [s6Step321Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
