import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep337
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

private def s6Step339CompleteMoves : List (Wire × Wire) := [(768,358)]

private def s6Step339EarlyControlLog : HmrEarlyControlLog := ⟨[768, 802, 865, 903, 843],[805],[817],[812, 915, 906, 792, 816, 819],[]⟩

private def s6Step339FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [843], [], []],[[805], [865], [802], [784]],[[], [], [], []]⟩,[907],[860],[817],[812],[915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906]⟩

private def s6Step339CompleteLog : HmrEarlyStepLog := ⟨s6Step339FrontLog,s6Step339CompleteMoves,s6Step339EarlyControlLog⟩

private def s6Step339ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357],795⟩

private def s6Step339ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩

private def s6Step339ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100],777⟩

private def s6Step339ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩

private def s6Step339FrontOut : WindowBank := ⟨s6Step339ExitFOut,s6Step339ExitGOut,s6Step339ExitFvOut,s6Step339ExitGvOut⟩

private def s6Step339CompleteOut : WindowBank := s6Step339FrontOut.repacked s6Step339CompleteMoves

private def s6Step339EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step339EarlyControlPositiveArena,[805],s6Step339EarlyControlEqualityArena,[817],⟨⟨907,false⟩,[⟨⟨805,false⟩,817⟩]⟩⟩

private def s6Step339EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,768⟩,⟨⟨772,false⟩,802⟩,⟨⟨771,false⟩,865⟩,⟨⟨770,false⟩,903⟩,⟨⟨769,false⟩,843⟩]⟩

private def s6Step339EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step339EarlyControlZeroArena,s6Step339EarlyControlZeroPlan,s6Step339EarlyControlClassPlan,s6Step339EarlyControlFlagArena,s6Step339EarlyControlFittedArena,s6Step339EarlyControlHistoryArena,s6Step339EarlyControlSigmaArena,s6Step339EarlyControlOutputArena,s6Step339EarlyControlLog⟩

private def s6Step339CounterWork : List Wire := [817, 812, 915, 906]

private theorem s6Step339Counter_bounded : s6Step339CounterWork.toFinset⊆arenaWires := by norm_num [s6Step339CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step339HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339CounterDuring : Arena := ⟨s6Step339HeadFvAfter.live∪s6Step339CounterWork.toFinset,Finset.union_subset s6Step339HeadFvAfter.bounded s6Step339Counter_bounded⟩

private def s6Step339EntryFFresh : List Wire := []

private def s6Step339EntryFvFresh : List Wire := []

private def s6Step339EntryGFresh : List Wire := [843]

private def s6Step339EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339EntryGvAfter : Arena := s6Step339EntryGAfter

private def s6Step339EntryGvFresh : List Wire := []

private def s6Step339ExitFExtra : List Wire := [358, 865]

private def s6Step339ExitGExtra : List Wire := [903, 843, 805]

private def s6Step339ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<358) ∨ (359≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339ExitGvExtra : List Wire := [802]

private def s6Step339Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339Add0Work : List Wire := [915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step339Add0_bounded : s6Step339Add0Work.toFinset⊆arenaWires := by
  have h : s6Step339Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step339Add0During : Arena := ⟨s6Step339Add0Arena.live∪s6Step339Add0Work.toFinset,Finset.union_subset s6Step339Add0Arena.bounded s6Step339Add0_bounded⟩

private def s6Step339Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339Add1Work : List Wire := [915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step339Add1_bounded : s6Step339Add1Work.toFinset⊆arenaWires := by
  have h : s6Step339Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step339Add1During : Arena := ⟨s6Step339Add1Arena.live∪s6Step339Add1Work.toFinset,Finset.union_subset s6Step339Add1Arena.bounded s6Step339Add1_bounded⟩

private def s6Step339F4FlagArena : Arena := ⟨s6Step339HeadFvAfter.live∪{817},Finset.union_subset s6Step339HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step339F4Plan : HmrHybridF4Plan := ⟨s6Step339F4FlagArena,[817],s6Step339Add0Arena,[812],s6Step339Add0During,s6Step339Add0Work,s6Step339Add1During,s6Step339Add1Work⟩

private def s6Step339HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 865],795⟩

private def s6Step339HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩

private def s6Step339HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 843, 805],777⟩

private def s6Step339HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 802],775⟩

private def s6Step339FrontHead : WindowBank := ⟨s6Step339HeadFOut,s6Step339HeadGOut,s6Step339HeadFvOut,s6Step339HeadGvOut⟩

private def s6Step339EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step339EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩

private def s6Step339EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 843],777⟩

private def s6Step339EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩

private def s6Step339FrontPair : WindowBank := ⟨s6Step339EntryFOut,s6Step339EntryGOut,s6Step339EntryFvOut,s6Step339EntryGvOut⟩

private def s6Step339FrontSigmaArena : Arena := ⟨s6Step339EntryGvAfter.live∪{907},Finset.union_subset s6Step339EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step339HeadFFresh : List Wire := [865]

private def s6Step339HeadFvFresh : List Wire := [784]

private def s6Step339HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339HeadGFresh : List Wire := [805]

private def s6Step339HeadGvFresh : List Wire := [802]

private def s6Step339FrontPlan : HmrSourceFront := ⟨s6Step339EntryGvAfter,s6Step339FrontPair,(growRow 795 s6Step339EntryFFresh ++ (growRow 777 s6Step339EntryGFresh ++ (growRow 776 s6Step339EntryFvFresh ++ (growRow 775 s6Step339EntryGvFresh ++ [])))),s6Step339FrontSigmaArena,[907],s6Step339HeadGBefore,[860],
  s6Step339HeadFvAfter,s6Step339FrontHead,(growRow 777 s6Step339HeadGFresh ++ (growRow 795 s6Step339HeadFFresh ++ (growRow 775 s6Step339HeadGvFresh ++ (growRow 776 s6Step339HeadFvFresh ++ [])))),s6Step339F4Plan,s6Step339CounterDuring,s6Step339CounterWork,s6Step339ExitGvAfter,s6Step339FrontOut,(shrinkRow 777 s6Step339ExitGExtra ++ (shrinkRow 795 s6Step339ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step339ExitGvExtra ++ []))))⟩

private def s6Step339CompletePlan : HmrEarlyStepPlan := ⟨s6Step339FrontPlan,s6Step339EarlyControlArena,s6Step339EarlyControlPlan,s6Step339CompleteMoves⟩

private theorem s6Step339Complete_apart : List.Disjoint (s6Step339CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [907, 860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step339CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[907, 860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step339Complete_owned : (s6Step339CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step339EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step339CompleteMoveArena : Arena := ⟨s6Step339ExitGvAfter.live∪{358},Finset.union_subset s6Step339ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step339Complete_repack : s6Step339ExitGvAfter.checkRepack s6Step339CompleteMoves=some s6Step339EarlyControlArena := by
  have owned : 768∈s6Step339ExitGvAfter.live := by norm_num [s6Step339ExitGvAfter,arenaWires]
  have reserve : s6Step339ExitGvAfter.reserve {358}=some s6Step339CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step339ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step339CompleteMoveArena.retireSet {768}=s6Step339EarlyControlArena := by
    unfold Arena.retireSet s6Step339EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step339CompleteMoveArena,s6Step339ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step339CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step339CompleteMoveArena.retireSet {768}).checkRepack []=some s6Step339EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step339EarlyControl_branchOwned : ([860] : List Wire).toFinset⊆s6Step339EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlSigmaArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EarlyControl_branch : compileHmrBranchRetirement s6Step339EarlyControlSigmaArena 860=some s6Step339EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step339EarlyControl_branchOwned
  · ext q
    simp [s6Step339EarlyControlOutputArena,s6Step339EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step339EarlyControl_classEqualityBorrow : s6Step339EarlyControlPositiveArena.checkBorrow (([907, 805] : List Wire).length-1) s6Step339EarlyControlLog.classWork=some s6Step339EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step339EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step339EarlyControlEqualityArena,s6Step339EarlyControlPositiveArena,s6Step339EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step339EarlyControl_classEqualityOwned : ([907, 805] : List Wire).toFinset⊆s6Step339EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EarlyControl_classEquality : compileHmrEqualityLog s6Step339EarlyControlPositiveArena [907, 805] 0 s6Step339EarlyControlLog.classWork=some (s6Step339EarlyControlEqualityArena,s6Step339EarlyControlLog.classWork,s6Step339EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step339EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step339EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step339EarlyControl_classOwned : ([769, 843, 907] : List Wire).toFinset⊆s6Step339EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EarlyControl_positiveBorrow : s6Step339EarlyControlZeroArena.checkBorrow (1) s6Step339EarlyControlLog.positiveWork=some s6Step339EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step339EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step339EarlyControlPositiveArena,s6Step339EarlyControlZeroArena,s6Step339EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step339EarlyControl_class : compileHmrSourceClassLog s6Step339EarlyControlZeroArena false 769 s6Step339EarlyControlZeroPlan.top 0 907 s6Step339EarlyControlLog.positiveWork s6Step339EarlyControlLog.classWork=some s6Step339EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step339EarlyControlClassPlan s6Step339EarlyControlZeroArena false 769 s6Step339EarlyControlZeroPlan.top 0 907
  constructor
  · decide +kernel
  · exact s6Step339EarlyControl_classOwned
  · exact s6Step339EarlyControl_positiveBorrow
  · exact s6Step339EarlyControl_classEquality

private theorem s6Step339EarlyControl_entryRecordOwned : ([860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step339EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EarlyControl_entrySigmaOwned : ([907, 254] : List Wire).toFinset⊆s6Step339EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EarlyControl_fitBorrow : s6Step339EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step339EarlyControlLog.recordFresh=some s6Step339EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step339EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step339EarlyControlFittedArena,s6Step339EarlyControlFlagArena,s6Step339EarlyControlLog,arenaWires]

private theorem s6Step339EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step339EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EarlyControl_fit : compileHmrRecordGrowLog s6Step339EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step339EarlyControlLog.recordFresh=some s6Step339EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step339EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step339EarlyControl_fitBorrow

private theorem s6Step339EarlyControl_flagsBorrow : s6Step339EarlyControlEqualityArena.checkBorrow (6) s6Step339EarlyControlLog.flagWork=some s6Step339EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step339EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step339EarlyControlFlagArena,s6Step339EarlyControlEqualityArena,s6Step339EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step339EarlyControl_flagsOwned : ([817, 253, 252, 251] : List Wire).toFinset⊆s6Step339EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EarlyControl_flags : compileHmrFlagsLog s6Step339EarlyControlClassPlan.equalityArena s6Step339EarlyControlClassPlan.equality.top 253 252 251 s6Step339EarlyControlLog.flagWork=some s6Step339EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step339EarlyControl_flagsOwned⟩
  · exact s6Step339EarlyControl_flagsBorrow

private theorem s6Step339EarlyControl_historyBorrow : s6Step339EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step339EarlyControlLog.recordFresh=some s6Step339EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step339EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step339EarlyControlHistoryArena,s6Step339EarlyControlArena,s6Step339EarlyControlLog,arenaWires]

private theorem s6Step339EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step339EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EarlyControl_history : compileHmrRecordGrowLog s6Step339EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step339EarlyControlLog.recordFresh=some s6Step339EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step339EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step339EarlyControl_historyBorrow

private theorem s6Step339EarlyControl_sigmaOwned : ([254, 907] : List Wire).toFinset⊆s6Step339EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EarlyControl_sigmaReleaseOwned : ([907] : List Wire).toFinset⊆s6Step339EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EarlyControl_sigmaRelease : s6Step339EarlyControlHistoryArena.release {907} (fun _ => false)=some s6Step339EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step339EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step339EarlyControlSigmaArena,s6Step339EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step339EarlyControl_sigma : compileHmrSigmaDropLog s6Step339EarlyControlHistoryArena false 0 0 254 907 []=some s6Step339EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step339EarlyControl_sigmaOwned⟩
  · exact s6Step339EarlyControl_sigmaRelease

private theorem s6Step339EarlyControl_zeroBorrow : s6Step339EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step339EarlyControlLog.zeroWork=some s6Step339EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step339EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step339EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step339EarlyControlZeroArena,s6Step339EarlyControlArena,s6Step339EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step339EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step339EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step339EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EarlyControl_zero : compileHmrEqualityLog s6Step339EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step339EarlyControlLog.zeroWork=some (s6Step339EarlyControlZeroArena,s6Step339EarlyControlLog.zeroWork,s6Step339EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step339EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step339EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step339EarlyControl_logged : s6Step339EarlyControlPlan.Logged s6Step339EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 860 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step339EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step339EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step339EarlyControl_zero
  · exact s6Step339EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step339EarlyControl_flags
  · exact s6Step339EarlyControl_fit
  · exact s6Step339EarlyControl_history
  · exact s6Step339EarlyControl_sigma
  · exact s6Step339EarlyControl_branch

private theorem s6Step339EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step339EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 860 60 s6Step339EarlyControlLog=some s6Step339EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step339EarlyControlPlan s6Step339EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 860 60 s6Step339EarlyControl_logged

private def s6Step339EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step339EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩

private def s6Step339EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903],777⟩

private def s6Step339EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩

private def s6Step339FrontBank : WindowBank := ⟨s6Step339EntryFRow,s6Step339EntryGRow,s6Step339EntryFvRow,s6Step339EntryGvRow⟩

private def s6Step339Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 865, 795]

private def s6Step339Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 843, 805, 777]

private def s6Step339Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784, 776]

private def s6Step339Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 802, 775]

private theorem s6Step339Counter_apart : Disjoint s6Step339HeadFvAfter.live s6Step339CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step339HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339Counter_borrowed : s6Step339HeadFvAfter.checkBorrow 4 s6Step339CounterWork=some s6Step339CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step339HeadFvAfter s6Step339CounterDuring s6Step339CounterWork.toFinset s6Step339Counter_bounded s6Step339Counter_apart rfl

private theorem s6Step339Counter_owned : (907::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step339HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step339HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339Counter_checked : compileHmrCounterStepLog s6Step339HeadFvAfter true 907 [774, 773, 772, 771, 770, 769] s6Step339CounterWork=some s6Step339CounterDuring := by
  have owned : ∀q∈907::[774, 773, 772, 771, 770, 769],q∈s6Step339HeadFvAfter.live := fun q hq => s6Step339Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step339Counter_borrowed

private def s6Step339EntryFAfter : Arena := s6Step339EntryFBefore

private theorem s6Step339EntryBank_incomingDistinct : ([s6Step339EntryFRow,s6Step339EntryGRow,s6Step339EntryFvRow,s6Step339EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339EntryF_Incoming : rowsOwned s6Step339EntryFBefore [s6Step339EntryFRow,s6Step339EntryGRow,s6Step339EntryFvRow,s6Step339EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339EntryFRow,s6Step339EntryGRow,s6Step339EntryFvRow,s6Step339EntryGvRow] 0 s6Step339EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339EntryBank_outgoingOwned : rowsOwned s6Step339EntryGvAfter [s6Step339EntryFOut,s6Step339EntryGOut,s6Step339EntryFvOut,s6Step339EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step339EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339EntryF_Outgoing : rowsOwned s6Step339EntryGvAfter [s6Step339EntryFOut,s6Step339EntryGOut,s6Step339EntryFvOut,s6Step339EntryGvOut] :=
  hmrRows_owned_drop s6Step339EntryGvAfter [s6Step339EntryFOut,s6Step339EntryGOut,s6Step339EntryFvOut,s6Step339EntryGvOut] 0 s6Step339EntryBank_outgoingOwned

private theorem s6Step339EntryF_distinct : (s6Step339EntryFRow.sign::s6Step339EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339EntryF_owned : (s6Step339EntryFRow.sign::s6Step339EntryFRow.payload).toFinset⊆s6Step339EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EntryF_reserved : s6Step339EntryFBefore.reserve s6Step339EntryFFresh.toFinset=some s6Step339EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step339EntryFFresh,arenaWires]
  · norm_num [s6Step339EntryFBefore,s6Step339EntryFFresh,arenaWires]
  · simp only [s6Step339EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step339EntryF_checked : planRowResizeLog s6Step339EntryFBefore s6Step339EntryFRow 103 s6Step339EntryFFresh=
    some (s6Step339EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩,growRow 795 s6Step339EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step339EntryFBefore s6Step339EntryFAfter s6Step339EntryFRow 103 s6Step339EntryFFresh
    s6Step339EntryF_distinct s6Step339EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step339EntryF_reserved
  have rowEq : WindowRow.mk (s6Step339EntryFRow.payload++s6Step339EntryFFresh) s6Step339EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step339EntryFvAfter : Arena := s6Step339EntryGAfter

private def s6Step339EntryFvBefore : Arena := s6Step339EntryGAfter

private theorem s6Step339EntryFv_Incoming : rowsOwned s6Step339EntryFvBefore [s6Step339EntryFvRow,s6Step339EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339EntryFRow,s6Step339EntryGRow,s6Step339EntryFvRow,s6Step339EntryGvRow] 2 s6Step339EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339EntryFv_Outgoing : rowsOwned s6Step339EntryGvAfter [s6Step339EntryFvOut,s6Step339EntryGvOut] :=
  hmrRows_owned_drop s6Step339EntryGvAfter [s6Step339EntryFOut,s6Step339EntryGOut,s6Step339EntryFvOut,s6Step339EntryGvOut] 2 s6Step339EntryBank_outgoingOwned

private theorem s6Step339EntryFv_distinct : (s6Step339EntryFvRow.sign::s6Step339EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339EntryFv_owned : (s6Step339EntryFvRow.sign::s6Step339EntryFvRow.payload).toFinset⊆s6Step339EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EntryFv_reserved : s6Step339EntryFvBefore.reserve s6Step339EntryFvFresh.toFinset=some s6Step339EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step339EntryFvFresh,arenaWires]
  · norm_num [s6Step339EntryFvBefore,s6Step339EntryGAfter,s6Step339EntryFvFresh,arenaWires]
  · simp only [s6Step339EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step339EntryFv_checked : planRowResizeLog s6Step339EntryFvBefore s6Step339EntryFvRow 185 s6Step339EntryFvFresh=
    some (s6Step339EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩,growRow 776 s6Step339EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step339EntryFvBefore s6Step339EntryFvAfter s6Step339EntryFvRow 185 s6Step339EntryFvFresh
    s6Step339EntryFv_distinct s6Step339EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step339EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step339EntryFvRow.payload++s6Step339EntryFvFresh) s6Step339EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step339EntryGBefore : Arena := s6Step339EntryFBefore

private theorem s6Step339EntryG_Incoming : rowsOwned s6Step339EntryGBefore [s6Step339EntryGRow,s6Step339EntryFvRow,s6Step339EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339EntryFRow,s6Step339EntryGRow,s6Step339EntryFvRow,s6Step339EntryGvRow] 1 s6Step339EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339EntryG_Outgoing : rowsOwned s6Step339EntryGvAfter [s6Step339EntryGOut,s6Step339EntryFvOut,s6Step339EntryGvOut] :=
  hmrRows_owned_drop s6Step339EntryGvAfter [s6Step339EntryFOut,s6Step339EntryGOut,s6Step339EntryFvOut,s6Step339EntryGvOut] 1 s6Step339EntryBank_outgoingOwned

private theorem s6Step339EntryG_distinct : (s6Step339EntryGRow.sign::s6Step339EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339EntryG_owned : (s6Step339EntryGRow.sign::s6Step339EntryGRow.payload).toFinset⊆s6Step339EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EntryG_reserved : s6Step339EntryGBefore.reserve s6Step339EntryGFresh.toFinset=some s6Step339EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step339EntryGFresh,arenaWires]
  · norm_num [s6Step339EntryGBefore,s6Step339EntryFBefore,s6Step339EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step339EntryGAfter,s6Step339EntryGBefore,s6Step339EntryFBefore,s6Step339EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step339EntryG_checked : planRowResizeLog s6Step339EntryGBefore s6Step339EntryGRow 103 s6Step339EntryGFresh=
    some (s6Step339EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 843],777⟩,growRow 777 s6Step339EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step339EntryGBefore s6Step339EntryGAfter s6Step339EntryGRow 103 s6Step339EntryGFresh
    s6Step339EntryG_distinct s6Step339EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step339EntryG_reserved
  have rowEq : WindowRow.mk (s6Step339EntryGRow.payload++s6Step339EntryGFresh) s6Step339EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 843],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step339EntryGvBefore : Arena := s6Step339EntryGAfter

private theorem s6Step339EntryGv_Incoming : rowsOwned s6Step339EntryGvBefore [s6Step339EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339EntryFRow,s6Step339EntryGRow,s6Step339EntryFvRow,s6Step339EntryGvRow] 3 s6Step339EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339EntryGv_Outgoing : rowsOwned s6Step339EntryGvAfter [s6Step339EntryGvOut] :=
  hmrRows_owned_drop s6Step339EntryGvAfter [s6Step339EntryFOut,s6Step339EntryGOut,s6Step339EntryFvOut,s6Step339EntryGvOut] 3 s6Step339EntryBank_outgoingOwned

private theorem s6Step339EntryGv_distinct : (s6Step339EntryGvRow.sign::s6Step339EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339EntryGv_owned : (s6Step339EntryGvRow.sign::s6Step339EntryGvRow.payload).toFinset⊆s6Step339EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339EntryGv_reserved : s6Step339EntryGvBefore.reserve s6Step339EntryGvFresh.toFinset=some s6Step339EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step339EntryGvFresh,arenaWires]
  · norm_num [s6Step339EntryGvBefore,s6Step339EntryGAfter,s6Step339EntryGvFresh,arenaWires]
  · simp only [s6Step339EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step339EntryGv_checked : planRowResizeLog s6Step339EntryGvBefore s6Step339EntryGvRow 185 s6Step339EntryGvFresh=
    some (s6Step339EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩,growRow 775 s6Step339EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step339EntryGvBefore s6Step339EntryGvAfter s6Step339EntryGvRow 185 s6Step339EntryGvFresh
    s6Step339EntryGv_distinct s6Step339EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step339EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step339EntryGvRow.payload++s6Step339EntryGvFresh) s6Step339EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step339EntryBank_rows : planWindowRowsLog s6Step339EntryFBefore [(s6Step339EntryFRow,103),(s6Step339EntryGRow,103),(s6Step339EntryFvRow,185),(s6Step339EntryGvRow,185)] [s6Step339EntryFFresh,s6Step339EntryGFresh,s6Step339EntryFvFresh,s6Step339EntryGvFresh]=
    some (s6Step339EntryGvAfter,[s6Step339EntryFOut,s6Step339EntryGOut,s6Step339EntryFvOut,s6Step339EntryGvOut],(growRow 795 s6Step339EntryFFresh ++ (growRow 777 s6Step339EntryGFresh ++ (growRow 776 s6Step339EntryFvFresh ++ (growRow 775 s6Step339EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step339EntryGvAfter [] []=some (s6Step339EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step339EntryGvBefore s6Step339EntryGvAfter s6Step339EntryGvAfter
    s6Step339EntryGvRow s6Step339EntryGvOut 185 s6Step339EntryGvFresh [] [] []
    (growRow 775 s6Step339EntryGvFresh) ([]) s6Step339EntryGv_Incoming s6Step339EntryGv_checked h4 s6Step339EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step339EntryFvBefore s6Step339EntryFvAfter s6Step339EntryGvAfter
    s6Step339EntryFvRow s6Step339EntryFvOut 185 s6Step339EntryFvFresh [(s6Step339EntryGvRow,185)] [s6Step339EntryGvFresh] [s6Step339EntryGvOut]
    (growRow 776 s6Step339EntryFvFresh) ((growRow 775 s6Step339EntryGvFresh ++ [])) s6Step339EntryFv_Incoming s6Step339EntryFv_checked h3 s6Step339EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step339EntryGBefore s6Step339EntryGAfter s6Step339EntryGvAfter
    s6Step339EntryGRow s6Step339EntryGOut 103 s6Step339EntryGFresh [(s6Step339EntryFvRow,185),(s6Step339EntryGvRow,185)] [s6Step339EntryFvFresh,s6Step339EntryGvFresh] [s6Step339EntryFvOut,s6Step339EntryGvOut]
    (growRow 777 s6Step339EntryGFresh) ((growRow 776 s6Step339EntryFvFresh ++ (growRow 775 s6Step339EntryGvFresh ++ []))) s6Step339EntryG_Incoming s6Step339EntryG_checked h2 s6Step339EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step339EntryFBefore s6Step339EntryFAfter s6Step339EntryGvAfter
    s6Step339EntryFRow s6Step339EntryFOut 103 s6Step339EntryFFresh [(s6Step339EntryGRow,103),(s6Step339EntryFvRow,185),(s6Step339EntryGvRow,185)] [s6Step339EntryGFresh,s6Step339EntryFvFresh,s6Step339EntryGvFresh] [s6Step339EntryGOut,s6Step339EntryFvOut,s6Step339EntryGvOut]
    (growRow 795 s6Step339EntryFFresh) ((growRow 777 s6Step339EntryGFresh ++ (growRow 776 s6Step339EntryFvFresh ++ (growRow 775 s6Step339EntryGvFresh ++ [])))) s6Step339EntryF_Incoming s6Step339EntryF_checked h1 s6Step339EntryF_Outgoing
  exact h0

private theorem s6Step339EntryBank_checked : compileHmrBankResizeLog .entry s6Step339EntryFBefore ⟨s6Step339EntryFRow,s6Step339EntryGRow,s6Step339EntryFvRow,s6Step339EntryGvRow⟩ ⟨103,103,185,185⟩ [s6Step339EntryFFresh,s6Step339EntryGFresh,s6Step339EntryFvFresh,s6Step339EntryGvFresh]=
    some (s6Step339EntryGvAfter,⟨s6Step339EntryFOut,s6Step339EntryGOut,s6Step339EntryFvOut,s6Step339EntryGvOut⟩,(growRow 795 s6Step339EntryFFresh ++ (growRow 777 s6Step339EntryGFresh ++ (growRow 776 s6Step339EntryFvFresh ++ (growRow 775 s6Step339EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step339EntryBank_rows]
  rfl

private def s6Step339ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<358) ∨ (359≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339ExitFBefore : Arena := s6Step339ExitGAfter

private def s6Step339ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 865],795⟩

private def s6Step339ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩

private def s6Step339ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 843, 805],777⟩

private def s6Step339ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 802],775⟩

private theorem s6Step339ExitBank_incomingDistinct : ([s6Step339ExitGRow,s6Step339ExitFRow,s6Step339ExitFvRow,s6Step339ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339ExitF_Incoming : rowsOwned s6Step339ExitFBefore [s6Step339ExitFRow,s6Step339ExitFvRow,s6Step339ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339ExitGRow,s6Step339ExitFRow,s6Step339ExitFvRow,s6Step339ExitGvRow] 1 s6Step339ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339ExitBank_outgoingOwned : rowsOwned s6Step339ExitGvAfter [s6Step339ExitGOut,s6Step339ExitFOut,s6Step339ExitFvOut,s6Step339ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step339ExitGvAfter (fun q => (0≤q ∧ q<358) ∨ (359≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339ExitF_Outgoing : rowsOwned s6Step339ExitGvAfter [s6Step339ExitFOut,s6Step339ExitFvOut,s6Step339ExitGvOut] :=
  hmrRows_owned_drop s6Step339ExitGvAfter [s6Step339ExitGOut,s6Step339ExitFOut,s6Step339ExitFvOut,s6Step339ExitGvOut] 1 s6Step339ExitBank_outgoingOwned

private theorem s6Step339ExitF_distinct : (s6Step339ExitFRow.sign::s6Step339ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339ExitF_owned : (s6Step339ExitFRow.sign::s6Step339ExitFRow.payload).toFinset⊆s6Step339ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339ExitF_retired : s6Step339ExitFBefore.retireSet s6Step339ExitFExtra.toFinset=s6Step339ExitFAfter := by
  unfold Arena.retireSet s6Step339ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step339ExitFBefore,s6Step339ExitGAfter,s6Step339ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step339ExitF_checked : planRowResizeLog s6Step339ExitFBefore s6Step339ExitFRow 102 []=
    some (s6Step339ExitFAfter,s6Step339ExitFOut,shrinkRow 795 s6Step339ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step339ExitFBefore s6Step339ExitFRow 102 s6Step339ExitF_distinct s6Step339ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step339ExitFRow.payload.take 102) s6Step339ExitFRow.sign=s6Step339ExitFOut := by decide +kernel
  have hi : s6Step339ExitFRow.payload.drop 102=s6Step339ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step339ExitF_retired] at result
  exact result

private def s6Step339ExitFvAfter : Arena := s6Step339ExitFAfter

private def s6Step339ExitFvBefore : Arena := s6Step339ExitFAfter

private theorem s6Step339ExitFv_Incoming : rowsOwned s6Step339ExitFvBefore [s6Step339ExitFvRow,s6Step339ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339ExitGRow,s6Step339ExitFRow,s6Step339ExitFvRow,s6Step339ExitGvRow] 2 s6Step339ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339ExitFvBefore (fun q => (0≤q ∧ q<358) ∨ (359≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339ExitFv_Outgoing : rowsOwned s6Step339ExitGvAfter [s6Step339ExitFvOut,s6Step339ExitGvOut] :=
  hmrRows_owned_drop s6Step339ExitGvAfter [s6Step339ExitGOut,s6Step339ExitFOut,s6Step339ExitFvOut,s6Step339ExitGvOut] 2 s6Step339ExitBank_outgoingOwned

private theorem s6Step339ExitFv_distinct : (s6Step339ExitFvRow.sign::s6Step339ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339ExitFv_owned : (s6Step339ExitFvRow.sign::s6Step339ExitFvRow.payload).toFinset⊆s6Step339ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339ExitFvBefore (fun q => (0≤q ∧ q<358) ∨ (359≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339ExitFv_reserved : s6Step339ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step339ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step339ExitFv_checked : planRowResizeLog s6Step339ExitFvBefore s6Step339ExitFvRow 186 []=
    some (s6Step339ExitFvAfter,s6Step339ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step339ExitFvBefore s6Step339ExitFvAfter s6Step339ExitFvRow 186 []
    s6Step339ExitFv_distinct s6Step339ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step339ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step339ExitFvRow.payload++[]) s6Step339ExitFvRow.sign=s6Step339ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step339ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step339ExitG_Incoming : rowsOwned s6Step339ExitGBefore [s6Step339ExitGRow,s6Step339ExitFRow,s6Step339ExitFvRow,s6Step339ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339ExitGRow,s6Step339ExitFRow,s6Step339ExitFvRow,s6Step339ExitGvRow] 0 s6Step339ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339ExitG_Outgoing : rowsOwned s6Step339ExitGvAfter [s6Step339ExitGOut,s6Step339ExitFOut,s6Step339ExitFvOut,s6Step339ExitGvOut] :=
  hmrRows_owned_drop s6Step339ExitGvAfter [s6Step339ExitGOut,s6Step339ExitFOut,s6Step339ExitFvOut,s6Step339ExitGvOut] 0 s6Step339ExitBank_outgoingOwned

private theorem s6Step339ExitG_distinct : (s6Step339ExitGRow.sign::s6Step339ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339ExitG_owned : (s6Step339ExitGRow.sign::s6Step339ExitGRow.payload).toFinset⊆s6Step339ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339ExitG_retired : s6Step339ExitGBefore.retireSet s6Step339ExitGExtra.toFinset=s6Step339ExitGAfter := by
  unfold Arena.retireSet s6Step339ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step339ExitGBefore,s6Step339ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step339ExitG_checked : planRowResizeLog s6Step339ExitGBefore s6Step339ExitGRow 101 []=
    some (s6Step339ExitGAfter,s6Step339ExitGOut,shrinkRow 777 s6Step339ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step339ExitGBefore s6Step339ExitGRow 101 s6Step339ExitG_distinct s6Step339ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step339ExitGRow.payload.take 101) s6Step339ExitGRow.sign=s6Step339ExitGOut := by decide +kernel
  have hi : s6Step339ExitGRow.payload.drop 101=s6Step339ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step339ExitG_retired] at result
  exact result

private def s6Step339ExitGvBefore : Arena := s6Step339ExitFAfter

private theorem s6Step339ExitGv_Incoming : rowsOwned s6Step339ExitGvBefore [s6Step339ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339ExitGRow,s6Step339ExitFRow,s6Step339ExitFvRow,s6Step339ExitGvRow] 3 s6Step339ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339ExitGvBefore (fun q => (0≤q ∧ q<358) ∨ (359≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339ExitGv_Outgoing : rowsOwned s6Step339ExitGvAfter [s6Step339ExitGvOut] :=
  hmrRows_owned_drop s6Step339ExitGvAfter [s6Step339ExitGOut,s6Step339ExitFOut,s6Step339ExitFvOut,s6Step339ExitGvOut] 3 s6Step339ExitBank_outgoingOwned

private theorem s6Step339ExitGv_distinct : (s6Step339ExitGvRow.sign::s6Step339ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339ExitGv_owned : (s6Step339ExitGvRow.sign::s6Step339ExitGvRow.payload).toFinset⊆s6Step339ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339ExitGvBefore (fun q => (0≤q ∧ q<358) ∨ (359≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339ExitGv_retired : s6Step339ExitGvBefore.retireSet s6Step339ExitGvExtra.toFinset=s6Step339ExitGvAfter := by
  unfold Arena.retireSet s6Step339ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step339ExitGvBefore,s6Step339ExitFAfter,s6Step339ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step339ExitGv_checked : planRowResizeLog s6Step339ExitGvBefore s6Step339ExitGvRow 185 []=
    some (s6Step339ExitGvAfter,s6Step339ExitGvOut,shrinkRow 775 s6Step339ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step339ExitGvBefore s6Step339ExitGvRow 185 s6Step339ExitGv_distinct s6Step339ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step339ExitGvRow.payload.take 185) s6Step339ExitGvRow.sign=s6Step339ExitGvOut := by decide +kernel
  have hi : s6Step339ExitGvRow.payload.drop 185=s6Step339ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step339ExitGv_retired] at result
  exact result

private theorem s6Step339ExitBank_rows : planWindowRowsLog s6Step339ExitGBefore [(s6Step339ExitGRow,101),(s6Step339ExitFRow,102),(s6Step339ExitFvRow,186),(s6Step339ExitGvRow,185)] [[],[],[],[]]=
    some (s6Step339ExitGvAfter,[s6Step339ExitGOut,s6Step339ExitFOut,s6Step339ExitFvOut,s6Step339ExitGvOut],(shrinkRow 777 s6Step339ExitGExtra ++ (shrinkRow 795 s6Step339ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step339ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step339ExitGvAfter [] []=some (s6Step339ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step339ExitGvBefore s6Step339ExitGvAfter s6Step339ExitGvAfter
    s6Step339ExitGvRow s6Step339ExitGvOut 185 [] [] [] []
    (shrinkRow 775 s6Step339ExitGvExtra) ([]) s6Step339ExitGv_Incoming s6Step339ExitGv_checked h4 s6Step339ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step339ExitFvBefore s6Step339ExitFvAfter s6Step339ExitGvAfter
    s6Step339ExitFvRow s6Step339ExitFvOut 186 [] [(s6Step339ExitGvRow,185)] [[]] [s6Step339ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step339ExitGvExtra ++ [])) s6Step339ExitFv_Incoming s6Step339ExitFv_checked h3 s6Step339ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step339ExitFBefore s6Step339ExitFAfter s6Step339ExitGvAfter
    s6Step339ExitFRow s6Step339ExitFOut 102 [] [(s6Step339ExitFvRow,186),(s6Step339ExitGvRow,185)] [[],[]] [s6Step339ExitFvOut,s6Step339ExitGvOut]
    (shrinkRow 795 s6Step339ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step339ExitGvExtra ++ []))) s6Step339ExitF_Incoming s6Step339ExitF_checked h2 s6Step339ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step339ExitGBefore s6Step339ExitGAfter s6Step339ExitGvAfter
    s6Step339ExitGRow s6Step339ExitGOut 101 [] [(s6Step339ExitFRow,102),(s6Step339ExitFvRow,186),(s6Step339ExitGvRow,185)] [[],[],[]] [s6Step339ExitFOut,s6Step339ExitFvOut,s6Step339ExitGvOut]
    (shrinkRow 777 s6Step339ExitGExtra) ((shrinkRow 795 s6Step339ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step339ExitGvExtra ++ [])))) s6Step339ExitG_Incoming s6Step339ExitG_checked h1 s6Step339ExitG_Outgoing
  exact h0

private theorem s6Step339ExitBank_checked : compileHmrBankResizeLog .exit s6Step339ExitGBefore ⟨s6Step339ExitFRow,s6Step339ExitGRow,s6Step339ExitFvRow,s6Step339ExitGvRow⟩ ⟨102,101,186,185⟩ [[],[],[],[]]=
    some (s6Step339ExitGvAfter,⟨s6Step339ExitFOut,s6Step339ExitGOut,s6Step339ExitFvOut,s6Step339ExitGvOut⟩,(shrinkRow 777 s6Step339ExitGExtra ++ (shrinkRow 795 s6Step339ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step339ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step339ExitBank_rows]
  rfl

private theorem s6Step339Add0_apart : Disjoint s6Step339Add0Arena.live s6Step339Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step339Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339Add0_card : s6Step339Add0Arena.live.card=910 := by
  decide +kernel

private theorem s6Step339Add0_borrowed : s6Step339Add0Arena.checkBorrow (hmrHybridCount s6Step339Add0Arena s6Step339Add0B.length) s6Step339Add0Work=some s6Step339Add0During := by
  have len : s6Step339Add0Work.length=hmrHybridCount s6Step339Add0Arena s6Step339Add0B.length := by
    rw [hmrHybridCount,s6Step339Add0_card]
    decide +kernel
  have nd : s6Step339Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step339Add0Arena s6Step339Add0During s6Step339Add0Work.toFinset s6Step339Add0_bounded s6Step339Add0_apart rfl

private theorem s6Step339Add0_distinct : (817::860::812::(s6Step339Add0A++s6Step339Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339Add0_owned : (817::860::812::(s6Step339Add0A++s6Step339Add0B)).toFinset⊆s6Step339Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step339Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339Add0_checked : compileHmrHybridCinLog s6Step339Add0Arena 860 817 812 s6Step339Add0A s6Step339Add0B s6Step339Add0Work=some s6Step339Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step339Add0Arena s6Step339Add0During 860 817 812 s6Step339Add0A s6Step339Add0B s6Step339Add0Work
    (by decide +kernel) (by decide +kernel) s6Step339Add0_distinct
    (fun q hq => s6Step339Add0_owned (List.mem_toFinset.mpr hq)) s6Step339Add0_borrowed

private theorem s6Step339Add1_apart : Disjoint s6Step339Add1Arena.live s6Step339Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step339Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339Add1_card : s6Step339Add1Arena.live.card=910 := by
  decide +kernel

private theorem s6Step339Add1_borrowed : s6Step339Add1Arena.checkBorrow (hmrHybridCount s6Step339Add1Arena s6Step339Add1B.length) s6Step339Add1Work=some s6Step339Add1During := by
  have len : s6Step339Add1Work.length=hmrHybridCount s6Step339Add1Arena s6Step339Add1B.length := by
    rw [hmrHybridCount,s6Step339Add1_card]
    decide +kernel
  have nd : s6Step339Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step339Add1Arena s6Step339Add1During s6Step339Add1Work.toFinset s6Step339Add1_bounded s6Step339Add1_apart rfl

private theorem s6Step339Add1_distinct : (817::860::812::(s6Step339Add1A++s6Step339Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339Add1_owned : (817::860::812::(s6Step339Add1A++s6Step339Add1B)).toFinset⊆s6Step339Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step339Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339Add1_checked : compileHmrHybridCinLog s6Step339Add1Arena 860 817 812 s6Step339Add1A s6Step339Add1B s6Step339Add1Work=some s6Step339Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step339Add1Arena s6Step339Add1During 860 817 812 s6Step339Add1A s6Step339Add1B s6Step339Add1Work
    (by decide +kernel) (by decide +kernel) s6Step339Add1_distinct
    (fun q hq => s6Step339Add1_owned (List.mem_toFinset.mpr hq)) s6Step339Add1_borrowed

private theorem s6Step339F4_apart : Disjoint (s6Step339Add0A++s6Step339Add0B).toFinset (s6Step339Add1A++s6Step339Add1B).toFinset := by
  have nd : ((s6Step339Add0A++s6Step339Add0B)++(s6Step339Add1A++s6Step339Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step339F4_carry : s6Step339F4FlagArena.checkBorrow 1 [812]=some s6Step339Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step339F4FlagArena,s6Step339HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step339F4FlagArena,s6Step339HeadFvAfter,s6Step339Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step339F4_distinct : (907::860::817::812::((s6Step339Add0A++s6Step339Add1A)++(s6Step339Add0B++s6Step339Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339F4_flag : s6Step339HeadFvAfter.checkBorrow 1 [817]=some s6Step339F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step339HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step339F4_owned : (907::860::((s6Step339Add0A++s6Step339Add1A)++(s6Step339Add0B++s6Step339Add1B))).toFinset⊆s6Step339HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step339HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339F4_checked : compileHmrHybridF4Log s6Step339HeadFvAfter 907 860 s6Step339Add0A s6Step339Add0B s6Step339Add1A s6Step339Add1B [817] [812] s6Step339Add0Work s6Step339Add1Work=some s6Step339F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step339HeadFvAfter s6Step339F4FlagArena s6Step339Add0Arena s6Step339Add0During s6Step339Add1During 907 860
    s6Step339Add0A s6Step339Add0B s6Step339Add1A s6Step339Add1B [817] [812] s6Step339Add0Work s6Step339Add1Work
    (fun q hq => s6Step339F4_owned (List.mem_toFinset.mpr hq)) s6Step339F4_flag s6Step339F4_carry
    s6Step339F4_distinct s6Step339F4_apart s6Step339Add0_checked s6Step339Add1_checked

private theorem s6Step339Front_branch : s6Step339FrontSigmaArena.checkBorrow 1 [860]=some s6Step339HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step339FrontSigmaArena,s6Step339EntryGvAfter,s6Step339EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step339FrontSigmaArena,s6Step339EntryGvAfter,s6Step339EntryGAfter,s6Step339HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step339Front_entry : HmrFrontEntryValid s6Step339EntryFBefore s6Step339FrontBank 103 185 ⟨102,101,186,185⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step339FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step339EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step339EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step339FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step339Front_sigma : s6Step339EntryGvAfter.checkBorrow 1 [907]=some s6Step339FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step339EntryGvAfter,s6Step339EntryGAfter,arenaWires]
  · rfl

private def s6Step339HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339HeadFBefore : Arena := s6Step339HeadGAfter

private def s6Step339HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358],795⟩

private def s6Step339HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838],776⟩

private def s6Step339HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 843],777⟩

private def s6Step339HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867],775⟩

private theorem s6Step339HeadBank_incomingDistinct : ([s6Step339HeadGRow,s6Step339HeadFRow,s6Step339HeadGvRow,s6Step339HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339HeadF_Incoming : rowsOwned s6Step339HeadFBefore [s6Step339HeadFRow,s6Step339HeadGvRow,s6Step339HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339HeadGRow,s6Step339HeadFRow,s6Step339HeadGvRow,s6Step339HeadFvRow] 1 s6Step339HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339HeadBank_outgoingOwned : rowsOwned s6Step339HeadFvAfter [s6Step339HeadGOut,s6Step339HeadFOut,s6Step339HeadGvOut,s6Step339HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step339HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339HeadF_Outgoing : rowsOwned s6Step339HeadFvAfter [s6Step339HeadFOut,s6Step339HeadGvOut,s6Step339HeadFvOut] :=
  hmrRows_owned_drop s6Step339HeadFvAfter [s6Step339HeadGOut,s6Step339HeadFOut,s6Step339HeadGvOut,s6Step339HeadFvOut] 1 s6Step339HeadBank_outgoingOwned

private theorem s6Step339HeadF_distinct : (s6Step339HeadFRow.sign::s6Step339HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339HeadF_owned : (s6Step339HeadFRow.sign::s6Step339HeadFRow.payload).toFinset⊆s6Step339HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339HeadF_reserved : s6Step339HeadFBefore.reserve s6Step339HeadFFresh.toFinset=some s6Step339HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step339HeadFFresh,arenaWires]
  · norm_num [s6Step339HeadFBefore,s6Step339HeadGAfter,s6Step339HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step339HeadFAfter,s6Step339HeadFBefore,s6Step339HeadGAfter,s6Step339HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step339HeadF_checked : planRowResizeLog s6Step339HeadFBefore s6Step339HeadFRow 104 s6Step339HeadFFresh=
    some (s6Step339HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 865],795⟩,growRow 795 s6Step339HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step339HeadFBefore s6Step339HeadFAfter s6Step339HeadFRow 104 s6Step339HeadFFresh
    s6Step339HeadF_distinct s6Step339HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step339HeadF_reserved
  have rowEq : WindowRow.mk (s6Step339HeadFRow.payload++s6Step339HeadFFresh) s6Step339HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 865],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step339HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step339HeadFvBefore : Arena := s6Step339HeadGvAfter

private theorem s6Step339HeadFv_Incoming : rowsOwned s6Step339HeadFvBefore [s6Step339HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339HeadGRow,s6Step339HeadFRow,s6Step339HeadGvRow,s6Step339HeadFvRow] 3 s6Step339HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339HeadFv_Outgoing : rowsOwned s6Step339HeadFvAfter [s6Step339HeadFvOut] :=
  hmrRows_owned_drop s6Step339HeadFvAfter [s6Step339HeadGOut,s6Step339HeadFOut,s6Step339HeadGvOut,s6Step339HeadFvOut] 3 s6Step339HeadBank_outgoingOwned

private theorem s6Step339HeadFv_distinct : (s6Step339HeadFvRow.sign::s6Step339HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339HeadFv_owned : (s6Step339HeadFvRow.sign::s6Step339HeadFvRow.payload).toFinset⊆s6Step339HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339HeadFv_reserved : s6Step339HeadFvBefore.reserve s6Step339HeadFvFresh.toFinset=some s6Step339HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step339HeadFvFresh,arenaWires]
  · norm_num [s6Step339HeadFvBefore,s6Step339HeadGvAfter,s6Step339HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step339HeadFvAfter,s6Step339HeadFvBefore,s6Step339HeadGvAfter,s6Step339HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step339HeadFv_checked : planRowResizeLog s6Step339HeadFvBefore s6Step339HeadFvRow 186 s6Step339HeadFvFresh=
    some (s6Step339HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩,growRow 776 s6Step339HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step339HeadFvBefore s6Step339HeadFvAfter s6Step339HeadFvRow 186 s6Step339HeadFvFresh
    s6Step339HeadFv_distinct s6Step339HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step339HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step339HeadFvRow.payload++s6Step339HeadFvFresh) s6Step339HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 854, 859, 838, 784],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step339HeadG_Incoming : rowsOwned s6Step339HeadGBefore [s6Step339HeadGRow,s6Step339HeadFRow,s6Step339HeadGvRow,s6Step339HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339HeadGRow,s6Step339HeadFRow,s6Step339HeadGvRow,s6Step339HeadFvRow] 0 s6Step339HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339HeadG_Outgoing : rowsOwned s6Step339HeadFvAfter [s6Step339HeadGOut,s6Step339HeadFOut,s6Step339HeadGvOut,s6Step339HeadFvOut] :=
  hmrRows_owned_drop s6Step339HeadFvAfter [s6Step339HeadGOut,s6Step339HeadFOut,s6Step339HeadGvOut,s6Step339HeadFvOut] 0 s6Step339HeadBank_outgoingOwned

private theorem s6Step339HeadG_distinct : (s6Step339HeadGRow.sign::s6Step339HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339HeadG_owned : (s6Step339HeadGRow.sign::s6Step339HeadGRow.payload).toFinset⊆s6Step339HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339HeadG_reserved : s6Step339HeadGBefore.reserve s6Step339HeadGFresh.toFinset=some s6Step339HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step339HeadGFresh,arenaWires]
  · norm_num [s6Step339HeadGBefore,s6Step339HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step339HeadGAfter,s6Step339HeadGBefore,s6Step339HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step339HeadG_checked : planRowResizeLog s6Step339HeadGBefore s6Step339HeadGRow 104 s6Step339HeadGFresh=
    some (s6Step339HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 843, 805],777⟩,growRow 777 s6Step339HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step339HeadGBefore s6Step339HeadGAfter s6Step339HeadGRow 104 s6Step339HeadGFresh
    s6Step339HeadG_distinct s6Step339HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step339HeadG_reserved
  have rowEq : WindowRow.mk (s6Step339HeadGRow.payload++s6Step339HeadGFresh) s6Step339HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 903, 843, 805],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step339HeadGvBefore : Arena := s6Step339HeadFAfter

private theorem s6Step339HeadGv_Incoming : rowsOwned s6Step339HeadGvBefore [s6Step339HeadGvRow,s6Step339HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step339HeadGRow,s6Step339HeadFRow,s6Step339HeadGvRow,s6Step339HeadFvRow] 2 s6Step339HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step339HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step339HeadGv_Outgoing : rowsOwned s6Step339HeadFvAfter [s6Step339HeadGvOut,s6Step339HeadFvOut] :=
  hmrRows_owned_drop s6Step339HeadFvAfter [s6Step339HeadGOut,s6Step339HeadFOut,s6Step339HeadGvOut,s6Step339HeadFvOut] 2 s6Step339HeadBank_outgoingOwned

private theorem s6Step339HeadGv_distinct : (s6Step339HeadGvRow.sign::s6Step339HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step339HeadGv_owned : (s6Step339HeadGvRow.sign::s6Step339HeadGvRow.payload).toFinset⊆s6Step339HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step339HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step339HeadGv_reserved : s6Step339HeadGvBefore.reserve s6Step339HeadGvFresh.toFinset=some s6Step339HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step339HeadGvFresh,arenaWires]
  · norm_num [s6Step339HeadGvBefore,s6Step339HeadFAfter,s6Step339HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step339HeadGvAfter,s6Step339HeadGvBefore,s6Step339HeadFAfter,s6Step339HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step339HeadGv_checked : planRowResizeLog s6Step339HeadGvBefore s6Step339HeadGvRow 186 s6Step339HeadGvFresh=
    some (s6Step339HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 802],775⟩,growRow 775 s6Step339HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step339HeadGvBefore s6Step339HeadGvAfter s6Step339HeadGvRow 186 s6Step339HeadGvFresh
    s6Step339HeadGv_distinct s6Step339HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step339HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step339HeadGvRow.payload++s6Step339HeadGvFresh) s6Step339HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 780, 874, 867, 802],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step339HeadBank_rows : planWindowRowsLog s6Step339HeadGBefore [(s6Step339HeadGRow,104),(s6Step339HeadFRow,104),(s6Step339HeadGvRow,186),(s6Step339HeadFvRow,186)] [s6Step339HeadGFresh,s6Step339HeadFFresh,s6Step339HeadGvFresh,s6Step339HeadFvFresh]=
    some (s6Step339HeadFvAfter,[s6Step339HeadGOut,s6Step339HeadFOut,s6Step339HeadGvOut,s6Step339HeadFvOut],(growRow 777 s6Step339HeadGFresh ++ (growRow 795 s6Step339HeadFFresh ++ (growRow 775 s6Step339HeadGvFresh ++ (growRow 776 s6Step339HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step339HeadFvAfter [] []=some (s6Step339HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step339HeadFvBefore s6Step339HeadFvAfter s6Step339HeadFvAfter
    s6Step339HeadFvRow s6Step339HeadFvOut 186 s6Step339HeadFvFresh [] [] []
    (growRow 776 s6Step339HeadFvFresh) ([]) s6Step339HeadFv_Incoming s6Step339HeadFv_checked h4 s6Step339HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step339HeadGvBefore s6Step339HeadGvAfter s6Step339HeadFvAfter
    s6Step339HeadGvRow s6Step339HeadGvOut 186 s6Step339HeadGvFresh [(s6Step339HeadFvRow,186)] [s6Step339HeadFvFresh] [s6Step339HeadFvOut]
    (growRow 775 s6Step339HeadGvFresh) ((growRow 776 s6Step339HeadFvFresh ++ [])) s6Step339HeadGv_Incoming s6Step339HeadGv_checked h3 s6Step339HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step339HeadFBefore s6Step339HeadFAfter s6Step339HeadFvAfter
    s6Step339HeadFRow s6Step339HeadFOut 104 s6Step339HeadFFresh [(s6Step339HeadGvRow,186),(s6Step339HeadFvRow,186)] [s6Step339HeadGvFresh,s6Step339HeadFvFresh] [s6Step339HeadGvOut,s6Step339HeadFvOut]
    (growRow 795 s6Step339HeadFFresh) ((growRow 775 s6Step339HeadGvFresh ++ (growRow 776 s6Step339HeadFvFresh ++ []))) s6Step339HeadF_Incoming s6Step339HeadF_checked h2 s6Step339HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step339HeadGBefore s6Step339HeadGAfter s6Step339HeadFvAfter
    s6Step339HeadGRow s6Step339HeadGOut 104 s6Step339HeadGFresh [(s6Step339HeadFRow,104),(s6Step339HeadGvRow,186),(s6Step339HeadFvRow,186)] [s6Step339HeadFFresh,s6Step339HeadGvFresh,s6Step339HeadFvFresh] [s6Step339HeadFOut,s6Step339HeadGvOut,s6Step339HeadFvOut]
    (growRow 777 s6Step339HeadGFresh) ((growRow 795 s6Step339HeadFFresh ++ (growRow 775 s6Step339HeadGvFresh ++ (growRow 776 s6Step339HeadFvFresh ++ [])))) s6Step339HeadG_Incoming s6Step339HeadG_checked h1 s6Step339HeadG_Outgoing
  exact h0

private theorem s6Step339HeadBank_checked : compileHmrBankResizeLog .headroom s6Step339HeadGBefore ⟨s6Step339HeadFRow,s6Step339HeadGRow,s6Step339HeadFvRow,s6Step339HeadGvRow⟩ ⟨104,104,186,186⟩ [s6Step339HeadGFresh,s6Step339HeadFFresh,s6Step339HeadGvFresh,s6Step339HeadFvFresh]=
    some (s6Step339HeadFvAfter,⟨s6Step339HeadFOut,s6Step339HeadGOut,s6Step339HeadFvOut,s6Step339HeadGvOut⟩,(growRow 777 s6Step339HeadGFresh ++ (growRow 795 s6Step339HeadFFresh ++ (growRow 775 s6Step339HeadGvFresh ++ (growRow 776 s6Step339HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step339HeadBank_rows]
  rfl

private theorem s6Step339Front_checked : compileHmrSourceFrontLog s6Step339EntryFBefore s6Step339FrontBank 103 185 ⟨102,101,186,185⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step339FrontLog=some s6Step339FrontPlan := by
  have pairEq : s6Step339FrontPair=⟨s6Step339HeadFRow,s6Step339HeadGRow,s6Step339HeadFvRow,s6Step339HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step339FrontHead=⟨s6Step339ExitFRow,s6Step339ExitGRow,s6Step339ExitFvRow,s6Step339ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step339Add0A=s6Step339FrontHead.f.wires := by decide +kernel
  have gEq : s6Step339Add0B=s6Step339FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step339Add1A=s6Step339FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step339Add1B=s6Step339FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step339EntryFBefore s6Step339FrontBank 103 185 ⟨102,101,186,185⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step339FrontLog s6Step339FrontPlan
  · exact s6Step339Front_entry
  · exact s6Step339EntryBank_checked
  · exact s6Step339Front_sigma
  · rfl
  · exact s6Step339Front_branch
  · rfl
  · simpa only [s6Step339FrontPlan,pairEq] using s6Step339HeadBank_checked
  · simpa only [s6Step339FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step339F4_checked
  · exact s6Step339Counter_checked
  · rfl
  · simpa only [s6Step339FrontPlan,headEq] using s6Step339ExitBank_checked

private theorem s6Step339Complete_explicit_checked : compileHmrEarlyStepLog s6Step339EntryFBefore s6Step339FrontBank 103 185 ⟨102,101,186,185⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step339CompleteLog=some s6Step339CompletePlan := by
  let Q := s6Step339EarlyControlPlan
  have hq := s6Step339EarlyControl_plan_checked
  have fv1 : s6Step339CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step339CompleteOut.fv.payload[2]?.getD s6Step339CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step339CompleteOut.fv.payload[3]?.getD s6Step339CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step339CompleteOut.fv.payload[4]?.getD s6Step339CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step339EntryFBefore s6Step339EarlyControlArena s6Step339FrontBank 103 185 ⟨102,101,186,185⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step339CompleteLog s6Step339FrontPlan Q
    s6Step339Front_checked s6Step339Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step339Complete_owned s6Step339Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step339EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 s6Step339CompleteOut.fv.second (s6Step339CompleteOut.fv.payload[2]?.getD s6Step339CompleteOut.fv.sign) (s6Step339CompleteOut.fv.payload[3]?.getD s6Step339CompleteOut.fv.sign) (s6Step339CompleteOut.fv.payload[4]?.getD s6Step339CompleteOut.fv.sign) 860 60 s6Step339EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep339Arena : Arena := s6Step339EntryFBefore
def s6PrivateStep339Bank : WindowBank := s6Step339FrontBank
def s6PrivateStep339Spec : HmrSourceWalkStepLog := ⟨103,185,⟨102,101,186,185⟩,60,.early s6Step339CompleteLog⟩
def s6PrivateStep339Plan : HmrSourceStepPlan := .early s6Step339CompletePlan
theorem s6PrivateStep339_source : s6PrivateStep339Spec=s6ObservedLogs336[3] := rfl
theorem s6PrivateStep339_checked : compileHmrSourceStepLog s6PrivateStep339Arena s6PrivateStep339Bank
    s6PrivateStep339Spec.fgWidth s6PrivateStep339Spec.vWidth s6PrivateStep339Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 339 s6PrivateStep339Spec.need none s6PrivateStep339Spec.log=some s6PrivateStep339Plan := by
  change compileHmrSourceStepLog s6Step339EntryFBefore s6Step339FrontBank 103 185 ⟨102,101,186,185⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 339 60 none (.early s6Step339CompleteLog)=some (.early s6Step339CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 339<498)]
  rw [s6Step339Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
