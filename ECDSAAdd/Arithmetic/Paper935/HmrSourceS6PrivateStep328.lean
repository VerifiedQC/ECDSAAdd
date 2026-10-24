import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep326
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

private def s6Step328CompleteMoves : List (Wire × Wire) := [(833,362)]

private def s6Step328EarlyControlLog : HmrEarlyControlLog := ⟨[833, 854, 841, 865, 862],[903],[843],[860, 805, 817, 812, 915, 906],[]⟩

private def s6Step328FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [903], [], [854]],[[843], [862], [841], [865]],[[], [], [], []]⟩,[907],[793],[860],[805],[817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812]⟩

private def s6Step328CompleteLog : HmrEarlyStepLog := ⟨s6Step328FrontLog,s6Step328CompleteMoves,s6Step328EarlyControlLog⟩

private def s6Step328ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361],795⟩

private def s6Step328ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step328ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],777⟩

private def s6Step328ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830],775⟩

private def s6Step328FrontOut : WindowBank := ⟨s6Step328ExitFOut,s6Step328ExitGOut,s6Step328ExitFvOut,s6Step328ExitGvOut⟩

private def s6Step328CompleteOut : WindowBank := s6Step328FrontOut.repacked s6Step328CompleteMoves

private def s6Step328EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step328EarlyControlPositiveArena,[903],s6Step328EarlyControlEqualityArena,[843],⟨⟨907,false⟩,[⟨⟨903,false⟩,843⟩]⟩⟩

private def s6Step328EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,833⟩,⟨⟨772,false⟩,854⟩,⟨⟨771,false⟩,841⟩,⟨⟨770,false⟩,865⟩,⟨⟨769,false⟩,862⟩]⟩

private def s6Step328EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step328EarlyControlZeroArena,s6Step328EarlyControlZeroPlan,s6Step328EarlyControlClassPlan,s6Step328EarlyControlFlagArena,s6Step328EarlyControlFittedArena,s6Step328EarlyControlHistoryArena,s6Step328EarlyControlSigmaArena,s6Step328EarlyControlOutputArena,s6Step328EarlyControlLog⟩

private def s6Step328CounterWork : List Wire := [860, 805, 817, 812]

private theorem s6Step328Counter_bounded : s6Step328CounterWork.toFinset⊆arenaWires := by norm_num [s6Step328CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step328HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328CounterDuring : Arena := ⟨s6Step328HeadFvAfter.live∪s6Step328CounterWork.toFinset,Finset.union_subset s6Step328HeadFvAfter.bounded s6Step328Counter_bounded⟩

private def s6Step328EntryFFresh : List Wire := []

private def s6Step328EntryFvFresh : List Wire := []

private def s6Step328EntryGFresh : List Wire := [903]

private def s6Step328EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EntryGvFresh : List Wire := [854]

private def s6Step328ExitFExtra : List Wire := [362, 862]

private def s6Step328ExitFvExtra : List Wire := [865]

private def s6Step328ExitGExtra : List Wire := [903, 843]

private def s6Step328ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<362) ∨ (363≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328ExitGvExtra : List Wire := [854, 841]

private def s6Step328Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328Add0Work : List Wire := [817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step328Add0_bounded : s6Step328Add0Work.toFinset⊆arenaWires := by
  have h : s6Step328Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step328Add0During : Arena := ⟨s6Step328Add0Arena.live∪s6Step328Add0Work.toFinset,Finset.union_subset s6Step328Add0Arena.bounded s6Step328Add0_bounded⟩

private def s6Step328Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328Add1Work : List Wire := [817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step328Add1_bounded : s6Step328Add1Work.toFinset⊆arenaWires := by
  have h : s6Step328Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step328Add1During : Arena := ⟨s6Step328Add1Arena.live∪s6Step328Add1Work.toFinset,Finset.union_subset s6Step328Add1Arena.bounded s6Step328Add1_bounded⟩

private def s6Step328F4FlagArena : Arena := ⟨s6Step328HeadFvAfter.live∪{860},Finset.union_subset s6Step328HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step328F4Plan : HmrHybridF4Plan := ⟨s6Step328F4FlagArena,[860],s6Step328Add0Arena,[805],s6Step328Add0During,s6Step328Add0Work,s6Step328Add1During,s6Step328Add1Work⟩

private def s6Step328HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 862],795⟩

private def s6Step328HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 865],776⟩

private def s6Step328HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 903, 843],777⟩

private def s6Step328HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 854, 841],775⟩

private def s6Step328FrontHead : WindowBank := ⟨s6Step328HeadFOut,s6Step328HeadGOut,s6Step328HeadFvOut,s6Step328HeadGvOut⟩

private def s6Step328EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩

private def s6Step328EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step328EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 903],777⟩

private def s6Step328EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 854],775⟩

private def s6Step328FrontPair : WindowBank := ⟨s6Step328EntryFOut,s6Step328EntryGOut,s6Step328EntryFvOut,s6Step328EntryGvOut⟩

private def s6Step328FrontSigmaArena : Arena := ⟨s6Step328EntryGvAfter.live∪{907},Finset.union_subset s6Step328EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step328HeadFFresh : List Wire := [862]

private def s6Step328HeadFvFresh : List Wire := [865]

private def s6Step328HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328HeadGFresh : List Wire := [843]

private def s6Step328HeadGvFresh : List Wire := [841]

private def s6Step328FrontPlan : HmrSourceFront := ⟨s6Step328EntryGvAfter,s6Step328FrontPair,(growRow 795 s6Step328EntryFFresh ++ (growRow 777 s6Step328EntryGFresh ++ (growRow 776 s6Step328EntryFvFresh ++ (growRow 775 s6Step328EntryGvFresh ++ [])))),s6Step328FrontSigmaArena,[907],s6Step328HeadGBefore,[793],
  s6Step328HeadFvAfter,s6Step328FrontHead,(growRow 777 s6Step328HeadGFresh ++ (growRow 795 s6Step328HeadFFresh ++ (growRow 775 s6Step328HeadGvFresh ++ (growRow 776 s6Step328HeadFvFresh ++ [])))),s6Step328F4Plan,s6Step328CounterDuring,s6Step328CounterWork,s6Step328ExitGvAfter,s6Step328FrontOut,(shrinkRow 777 s6Step328ExitGExtra ++ (shrinkRow 795 s6Step328ExitFExtra ++ (shrinkRow 776 s6Step328ExitFvExtra ++ (shrinkRow 775 s6Step328ExitGvExtra ++ []))))⟩

private def s6Step328CompletePlan : HmrEarlyStepPlan := ⟨s6Step328FrontPlan,s6Step328EarlyControlArena,s6Step328EarlyControlPlan,s6Step328CompleteMoves⟩

private theorem s6Step328Complete_apart : List.Disjoint (s6Step328CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [907, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step328CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[907, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step328Complete_owned : (s6Step328CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step328EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step328CompleteMoveArena : Arena := ⟨s6Step328ExitGvAfter.live∪{362},Finset.union_subset s6Step328ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step328Complete_repack : s6Step328ExitGvAfter.checkRepack s6Step328CompleteMoves=some s6Step328EarlyControlArena := by
  have owned : 833∈s6Step328ExitGvAfter.live := by norm_num [s6Step328ExitGvAfter,arenaWires]
  have reserve : s6Step328ExitGvAfter.reserve {362}=some s6Step328CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step328ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step328CompleteMoveArena.retireSet {833}=s6Step328EarlyControlArena := by
    unfold Arena.retireSet s6Step328EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step328CompleteMoveArena,s6Step328ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step328CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step328CompleteMoveArena.retireSet {833}).checkRepack []=some s6Step328EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step328EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s6Step328EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EarlyControl_branch : compileHmrBranchRetirement s6Step328EarlyControlSigmaArena 793=some s6Step328EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step328EarlyControl_branchOwned
  · ext q
    simp [s6Step328EarlyControlOutputArena,s6Step328EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step328EarlyControl_classEqualityBorrow : s6Step328EarlyControlPositiveArena.checkBorrow (([907, 903] : List Wire).length-1) s6Step328EarlyControlLog.classWork=some s6Step328EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step328EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step328EarlyControlEqualityArena,s6Step328EarlyControlPositiveArena,s6Step328EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step328EarlyControl_classEqualityOwned : ([907, 903] : List Wire).toFinset⊆s6Step328EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EarlyControl_classEquality : compileHmrEqualityLog s6Step328EarlyControlPositiveArena [907, 903] 0 s6Step328EarlyControlLog.classWork=some (s6Step328EarlyControlEqualityArena,s6Step328EarlyControlLog.classWork,s6Step328EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step328EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step328EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step328EarlyControl_classOwned : ([769, 862, 907] : List Wire).toFinset⊆s6Step328EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EarlyControl_positiveBorrow : s6Step328EarlyControlZeroArena.checkBorrow (1) s6Step328EarlyControlLog.positiveWork=some s6Step328EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step328EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step328EarlyControlPositiveArena,s6Step328EarlyControlZeroArena,s6Step328EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step328EarlyControl_class : compileHmrSourceClassLog s6Step328EarlyControlZeroArena false 769 s6Step328EarlyControlZeroPlan.top 0 907 s6Step328EarlyControlLog.positiveWork s6Step328EarlyControlLog.classWork=some s6Step328EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step328EarlyControlClassPlan s6Step328EarlyControlZeroArena false 769 s6Step328EarlyControlZeroPlan.top 0 907
  constructor
  · decide +kernel
  · exact s6Step328EarlyControl_classOwned
  · exact s6Step328EarlyControl_positiveBorrow
  · exact s6Step328EarlyControl_classEquality

private theorem s6Step328EarlyControl_entryRecordOwned : ([793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step328EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EarlyControl_entrySigmaOwned : ([907, 254] : List Wire).toFinset⊆s6Step328EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EarlyControl_fitBorrow : s6Step328EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step328EarlyControlLog.recordFresh=some s6Step328EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step328EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step328EarlyControlFittedArena,s6Step328EarlyControlFlagArena,s6Step328EarlyControlLog,arenaWires]

private theorem s6Step328EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step328EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EarlyControl_fit : compileHmrRecordGrowLog s6Step328EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step328EarlyControlLog.recordFresh=some s6Step328EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step328EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step328EarlyControl_fitBorrow

private theorem s6Step328EarlyControl_flagsBorrow : s6Step328EarlyControlEqualityArena.checkBorrow (6) s6Step328EarlyControlLog.flagWork=some s6Step328EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step328EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step328EarlyControlFlagArena,s6Step328EarlyControlEqualityArena,s6Step328EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step328EarlyControl_flagsOwned : ([843, 253, 252, 251] : List Wire).toFinset⊆s6Step328EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EarlyControl_flags : compileHmrFlagsLog s6Step328EarlyControlClassPlan.equalityArena s6Step328EarlyControlClassPlan.equality.top 253 252 251 s6Step328EarlyControlLog.flagWork=some s6Step328EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step328EarlyControl_flagsOwned⟩
  · exact s6Step328EarlyControl_flagsBorrow

private theorem s6Step328EarlyControl_historyBorrow : s6Step328EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step328EarlyControlLog.recordFresh=some s6Step328EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step328EarlyControlHistoryArena,s6Step328EarlyControlArena,s6Step328EarlyControlLog,arenaWires]

private theorem s6Step328EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step328EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EarlyControl_history : compileHmrRecordGrowLog s6Step328EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step328EarlyControlLog.recordFresh=some s6Step328EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step328EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step328EarlyControl_historyBorrow

private theorem s6Step328EarlyControl_sigmaOwned : ([254, 907] : List Wire).toFinset⊆s6Step328EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EarlyControl_sigmaReleaseOwned : ([907] : List Wire).toFinset⊆s6Step328EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EarlyControl_sigmaRelease : s6Step328EarlyControlHistoryArena.release {907} (fun _ => false)=some s6Step328EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step328EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step328EarlyControlSigmaArena,s6Step328EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step328EarlyControl_sigma : compileHmrSigmaDropLog s6Step328EarlyControlHistoryArena false 0 0 254 907 []=some s6Step328EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step328EarlyControl_sigmaOwned⟩
  · exact s6Step328EarlyControl_sigmaRelease

private theorem s6Step328EarlyControl_zeroBorrow : s6Step328EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step328EarlyControlLog.zeroWork=some s6Step328EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step328EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step328EarlyControlZeroArena,s6Step328EarlyControlArena,s6Step328EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step328EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step328EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step328EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EarlyControl_zero : compileHmrEqualityLog s6Step328EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step328EarlyControlLog.zeroWork=some (s6Step328EarlyControlZeroArena,s6Step328EarlyControlLog.zeroWork,s6Step328EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step328EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step328EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step328EarlyControl_logged : s6Step328EarlyControlPlan.Logged s6Step328EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 793 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step328EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step328EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step328EarlyControl_zero
  · exact s6Step328EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step328EarlyControl_flags
  · exact s6Step328EarlyControl_fit
  · exact s6Step328EarlyControl_history
  · exact s6Step328EarlyControl_sigma
  · exact s6Step328EarlyControl_branch

private theorem s6Step328EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step328EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 793 60 s6Step328EarlyControlLog=some s6Step328EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step328EarlyControlPlan s6Step328EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 793 60 s6Step328EarlyControl_logged

private def s6Step328EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩

private def s6Step328EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step328EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],777⟩

private def s6Step328EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830],775⟩

private def s6Step328FrontBank : WindowBank := ⟨s6Step328EntryFRow,s6Step328EntryGRow,s6Step328EntryFvRow,s6Step328EntryGvRow⟩

private def s6Step328Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 862, 795]

private def s6Step328Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 903, 843, 777]

private def s6Step328Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 865, 776]

private def s6Step328Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 854, 841, 775]

private theorem s6Step328Counter_apart : Disjoint s6Step328HeadFvAfter.live s6Step328CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step328HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328Counter_borrowed : s6Step328HeadFvAfter.checkBorrow 4 s6Step328CounterWork=some s6Step328CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step328HeadFvAfter s6Step328CounterDuring s6Step328CounterWork.toFinset s6Step328Counter_bounded s6Step328Counter_apart rfl

private theorem s6Step328Counter_owned : (907::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step328HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step328HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328Counter_checked : compileHmrCounterStepLog s6Step328HeadFvAfter true 907 [774, 773, 772, 771, 770, 769] s6Step328CounterWork=some s6Step328CounterDuring := by
  have owned : ∀q∈907::[774, 773, 772, 771, 770, 769],q∈s6Step328HeadFvAfter.live := fun q hq => s6Step328Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step328Counter_borrowed

private def s6Step328EntryFAfter : Arena := s6Step328EntryFBefore

private theorem s6Step328EntryBank_incomingDistinct : ([s6Step328EntryFRow,s6Step328EntryGRow,s6Step328EntryFvRow,s6Step328EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328EntryF_Incoming : rowsOwned s6Step328EntryFBefore [s6Step328EntryFRow,s6Step328EntryGRow,s6Step328EntryFvRow,s6Step328EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328EntryFRow,s6Step328EntryGRow,s6Step328EntryFvRow,s6Step328EntryGvRow] 0 s6Step328EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328EntryBank_outgoingOwned : rowsOwned s6Step328EntryGvAfter [s6Step328EntryFOut,s6Step328EntryGOut,s6Step328EntryFvOut,s6Step328EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step328EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328EntryF_Outgoing : rowsOwned s6Step328EntryGvAfter [s6Step328EntryFOut,s6Step328EntryGOut,s6Step328EntryFvOut,s6Step328EntryGvOut] :=
  hmrRows_owned_drop s6Step328EntryGvAfter [s6Step328EntryFOut,s6Step328EntryGOut,s6Step328EntryFvOut,s6Step328EntryGvOut] 0 s6Step328EntryBank_outgoingOwned

private theorem s6Step328EntryF_distinct : (s6Step328EntryFRow.sign::s6Step328EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328EntryF_owned : (s6Step328EntryFRow.sign::s6Step328EntryFRow.payload).toFinset⊆s6Step328EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EntryF_reserved : s6Step328EntryFBefore.reserve s6Step328EntryFFresh.toFinset=some s6Step328EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step328EntryFFresh,arenaWires]
  · norm_num [s6Step328EntryFBefore,s6Step328EntryFFresh,arenaWires]
  · simp only [s6Step328EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step328EntryF_checked : planRowResizeLog s6Step328EntryFBefore s6Step328EntryFRow 107 s6Step328EntryFFresh=
    some (s6Step328EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩,growRow 795 s6Step328EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step328EntryFBefore s6Step328EntryFAfter s6Step328EntryFRow 107 s6Step328EntryFFresh
    s6Step328EntryF_distinct s6Step328EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step328EntryF_reserved
  have rowEq : WindowRow.mk (s6Step328EntryFRow.payload++s6Step328EntryFFresh) s6Step328EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step328EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328EntryFvAfter : Arena := s6Step328EntryGAfter

private def s6Step328EntryFvBefore : Arena := s6Step328EntryGAfter

private theorem s6Step328EntryFv_Incoming : rowsOwned s6Step328EntryFvBefore [s6Step328EntryFvRow,s6Step328EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328EntryFRow,s6Step328EntryGRow,s6Step328EntryFvRow,s6Step328EntryGvRow] 2 s6Step328EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328EntryFv_Outgoing : rowsOwned s6Step328EntryGvAfter [s6Step328EntryFvOut,s6Step328EntryGvOut] :=
  hmrRows_owned_drop s6Step328EntryGvAfter [s6Step328EntryFOut,s6Step328EntryGOut,s6Step328EntryFvOut,s6Step328EntryGvOut] 2 s6Step328EntryBank_outgoingOwned

private theorem s6Step328EntryFv_distinct : (s6Step328EntryFvRow.sign::s6Step328EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328EntryFv_owned : (s6Step328EntryFvRow.sign::s6Step328EntryFvRow.payload).toFinset⊆s6Step328EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EntryFv_reserved : s6Step328EntryFvBefore.reserve s6Step328EntryFvFresh.toFinset=some s6Step328EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step328EntryFvFresh,arenaWires]
  · norm_num [s6Step328EntryFvBefore,s6Step328EntryGAfter,s6Step328EntryFvFresh,arenaWires]
  · simp only [s6Step328EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step328EntryFv_checked : planRowResizeLog s6Step328EntryFvBefore s6Step328EntryFvRow 180 s6Step328EntryFvFresh=
    some (s6Step328EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩,growRow 776 s6Step328EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step328EntryFvBefore s6Step328EntryFvAfter s6Step328EntryFvRow 180 s6Step328EntryFvFresh
    s6Step328EntryFv_distinct s6Step328EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step328EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step328EntryFvRow.payload++s6Step328EntryFvFresh) s6Step328EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step328EntryGBefore : Arena := s6Step328EntryFBefore

private theorem s6Step328EntryG_Incoming : rowsOwned s6Step328EntryGBefore [s6Step328EntryGRow,s6Step328EntryFvRow,s6Step328EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328EntryFRow,s6Step328EntryGRow,s6Step328EntryFvRow,s6Step328EntryGvRow] 1 s6Step328EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328EntryG_Outgoing : rowsOwned s6Step328EntryGvAfter [s6Step328EntryGOut,s6Step328EntryFvOut,s6Step328EntryGvOut] :=
  hmrRows_owned_drop s6Step328EntryGvAfter [s6Step328EntryFOut,s6Step328EntryGOut,s6Step328EntryFvOut,s6Step328EntryGvOut] 1 s6Step328EntryBank_outgoingOwned

private theorem s6Step328EntryG_distinct : (s6Step328EntryGRow.sign::s6Step328EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328EntryG_owned : (s6Step328EntryGRow.sign::s6Step328EntryGRow.payload).toFinset⊆s6Step328EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EntryG_reserved : s6Step328EntryGBefore.reserve s6Step328EntryGFresh.toFinset=some s6Step328EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step328EntryGFresh,arenaWires]
  · norm_num [s6Step328EntryGBefore,s6Step328EntryFBefore,s6Step328EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step328EntryGAfter,s6Step328EntryGBefore,s6Step328EntryFBefore,s6Step328EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step328EntryG_checked : planRowResizeLog s6Step328EntryGBefore s6Step328EntryGRow 107 s6Step328EntryGFresh=
    some (s6Step328EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 903],777⟩,growRow 777 s6Step328EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step328EntryGBefore s6Step328EntryGAfter s6Step328EntryGRow 107 s6Step328EntryGFresh
    s6Step328EntryG_distinct s6Step328EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step328EntryG_reserved
  have rowEq : WindowRow.mk (s6Step328EntryGRow.payload++s6Step328EntryGFresh) s6Step328EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 903],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step328EntryGvBefore : Arena := s6Step328EntryGAfter

private theorem s6Step328EntryGv_Incoming : rowsOwned s6Step328EntryGvBefore [s6Step328EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328EntryFRow,s6Step328EntryGRow,s6Step328EntryFvRow,s6Step328EntryGvRow] 3 s6Step328EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328EntryGv_Outgoing : rowsOwned s6Step328EntryGvAfter [s6Step328EntryGvOut] :=
  hmrRows_owned_drop s6Step328EntryGvAfter [s6Step328EntryFOut,s6Step328EntryGOut,s6Step328EntryFvOut,s6Step328EntryGvOut] 3 s6Step328EntryBank_outgoingOwned

private theorem s6Step328EntryGv_distinct : (s6Step328EntryGvRow.sign::s6Step328EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328EntryGv_owned : (s6Step328EntryGvRow.sign::s6Step328EntryGvRow.payload).toFinset⊆s6Step328EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328EntryGv_reserved : s6Step328EntryGvBefore.reserve s6Step328EntryGvFresh.toFinset=some s6Step328EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step328EntryGvFresh,arenaWires]
  · norm_num [s6Step328EntryGvBefore,s6Step328EntryGAfter,s6Step328EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step328EntryGvAfter,s6Step328EntryGvBefore,s6Step328EntryGAfter,s6Step328EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step328EntryGv_checked : planRowResizeLog s6Step328EntryGvBefore s6Step328EntryGvRow 180 s6Step328EntryGvFresh=
    some (s6Step328EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 854],775⟩,growRow 775 s6Step328EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step328EntryGvBefore s6Step328EntryGvAfter s6Step328EntryGvRow 180 s6Step328EntryGvFresh
    s6Step328EntryGv_distinct s6Step328EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step328EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step328EntryGvRow.payload++s6Step328EntryGvFresh) s6Step328EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 854],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step328EntryBank_rows : planWindowRowsLog s6Step328EntryFBefore [(s6Step328EntryFRow,107),(s6Step328EntryGRow,107),(s6Step328EntryFvRow,180),(s6Step328EntryGvRow,180)] [s6Step328EntryFFresh,s6Step328EntryGFresh,s6Step328EntryFvFresh,s6Step328EntryGvFresh]=
    some (s6Step328EntryGvAfter,[s6Step328EntryFOut,s6Step328EntryGOut,s6Step328EntryFvOut,s6Step328EntryGvOut],(growRow 795 s6Step328EntryFFresh ++ (growRow 777 s6Step328EntryGFresh ++ (growRow 776 s6Step328EntryFvFresh ++ (growRow 775 s6Step328EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step328EntryGvAfter [] []=some (s6Step328EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step328EntryGvBefore s6Step328EntryGvAfter s6Step328EntryGvAfter
    s6Step328EntryGvRow s6Step328EntryGvOut 180 s6Step328EntryGvFresh [] [] []
    (growRow 775 s6Step328EntryGvFresh) ([]) s6Step328EntryGv_Incoming s6Step328EntryGv_checked h4 s6Step328EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step328EntryFvBefore s6Step328EntryFvAfter s6Step328EntryGvAfter
    s6Step328EntryFvRow s6Step328EntryFvOut 180 s6Step328EntryFvFresh [(s6Step328EntryGvRow,180)] [s6Step328EntryGvFresh] [s6Step328EntryGvOut]
    (growRow 776 s6Step328EntryFvFresh) ((growRow 775 s6Step328EntryGvFresh ++ [])) s6Step328EntryFv_Incoming s6Step328EntryFv_checked h3 s6Step328EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step328EntryGBefore s6Step328EntryGAfter s6Step328EntryGvAfter
    s6Step328EntryGRow s6Step328EntryGOut 107 s6Step328EntryGFresh [(s6Step328EntryFvRow,180),(s6Step328EntryGvRow,180)] [s6Step328EntryFvFresh,s6Step328EntryGvFresh] [s6Step328EntryFvOut,s6Step328EntryGvOut]
    (growRow 777 s6Step328EntryGFresh) ((growRow 776 s6Step328EntryFvFresh ++ (growRow 775 s6Step328EntryGvFresh ++ []))) s6Step328EntryG_Incoming s6Step328EntryG_checked h2 s6Step328EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step328EntryFBefore s6Step328EntryFAfter s6Step328EntryGvAfter
    s6Step328EntryFRow s6Step328EntryFOut 107 s6Step328EntryFFresh [(s6Step328EntryGRow,107),(s6Step328EntryFvRow,180),(s6Step328EntryGvRow,180)] [s6Step328EntryGFresh,s6Step328EntryFvFresh,s6Step328EntryGvFresh] [s6Step328EntryGOut,s6Step328EntryFvOut,s6Step328EntryGvOut]
    (growRow 795 s6Step328EntryFFresh) ((growRow 777 s6Step328EntryGFresh ++ (growRow 776 s6Step328EntryFvFresh ++ (growRow 775 s6Step328EntryGvFresh ++ [])))) s6Step328EntryF_Incoming s6Step328EntryF_checked h1 s6Step328EntryF_Outgoing
  exact h0

private theorem s6Step328EntryBank_checked : compileHmrBankResizeLog .entry s6Step328EntryFBefore ⟨s6Step328EntryFRow,s6Step328EntryGRow,s6Step328EntryFvRow,s6Step328EntryGvRow⟩ ⟨107,107,180,180⟩ [s6Step328EntryFFresh,s6Step328EntryGFresh,s6Step328EntryFvFresh,s6Step328EntryGvFresh]=
    some (s6Step328EntryGvAfter,⟨s6Step328EntryFOut,s6Step328EntryGOut,s6Step328EntryFvOut,s6Step328EntryGvOut⟩,(growRow 795 s6Step328EntryFFresh ++ (growRow 777 s6Step328EntryGFresh ++ (growRow 776 s6Step328EntryFvFresh ++ (growRow 775 s6Step328EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step328EntryBank_rows]
  rfl

private def s6Step328ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<362) ∨ (363≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328ExitFBefore : Arena := s6Step328ExitGAfter

private def s6Step328ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 862],795⟩

private def s6Step328ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 865],776⟩

private def s6Step328ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 903, 843],777⟩

private def s6Step328ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 854, 841],775⟩

private theorem s6Step328ExitBank_incomingDistinct : ([s6Step328ExitGRow,s6Step328ExitFRow,s6Step328ExitFvRow,s6Step328ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328ExitF_Incoming : rowsOwned s6Step328ExitFBefore [s6Step328ExitFRow,s6Step328ExitFvRow,s6Step328ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328ExitGRow,s6Step328ExitFRow,s6Step328ExitFvRow,s6Step328ExitGvRow] 1 s6Step328ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328ExitBank_outgoingOwned : rowsOwned s6Step328ExitGvAfter [s6Step328ExitGOut,s6Step328ExitFOut,s6Step328ExitFvOut,s6Step328ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step328ExitGvAfter (fun q => (0≤q ∧ q<362) ∨ (363≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328ExitF_Outgoing : rowsOwned s6Step328ExitGvAfter [s6Step328ExitFOut,s6Step328ExitFvOut,s6Step328ExitGvOut] :=
  hmrRows_owned_drop s6Step328ExitGvAfter [s6Step328ExitGOut,s6Step328ExitFOut,s6Step328ExitFvOut,s6Step328ExitGvOut] 1 s6Step328ExitBank_outgoingOwned

private theorem s6Step328ExitF_distinct : (s6Step328ExitFRow.sign::s6Step328ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328ExitF_owned : (s6Step328ExitFRow.sign::s6Step328ExitFRow.payload).toFinset⊆s6Step328ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328ExitF_retired : s6Step328ExitFBefore.retireSet s6Step328ExitFExtra.toFinset=s6Step328ExitFAfter := by
  unfold Arena.retireSet s6Step328ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step328ExitFBefore,s6Step328ExitGAfter,s6Step328ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step328ExitF_checked : planRowResizeLog s6Step328ExitFBefore s6Step328ExitFRow 106 []=
    some (s6Step328ExitFAfter,s6Step328ExitFOut,shrinkRow 795 s6Step328ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step328ExitFBefore s6Step328ExitFRow 106 s6Step328ExitF_distinct s6Step328ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step328ExitFRow.payload.take 106) s6Step328ExitFRow.sign=s6Step328ExitFOut := by decide +kernel
  have hi : s6Step328ExitFRow.payload.drop 106=s6Step328ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step328ExitF_retired] at result
  exact result

private def s6Step328ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<362) ∨ (363≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328ExitFvBefore : Arena := s6Step328ExitFAfter

private theorem s6Step328ExitFv_Incoming : rowsOwned s6Step328ExitFvBefore [s6Step328ExitFvRow,s6Step328ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328ExitGRow,s6Step328ExitFRow,s6Step328ExitFvRow,s6Step328ExitGvRow] 2 s6Step328ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328ExitFvBefore (fun q => (0≤q ∧ q<362) ∨ (363≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328ExitFv_Outgoing : rowsOwned s6Step328ExitGvAfter [s6Step328ExitFvOut,s6Step328ExitGvOut] :=
  hmrRows_owned_drop s6Step328ExitGvAfter [s6Step328ExitGOut,s6Step328ExitFOut,s6Step328ExitFvOut,s6Step328ExitGvOut] 2 s6Step328ExitBank_outgoingOwned

private theorem s6Step328ExitFv_distinct : (s6Step328ExitFvRow.sign::s6Step328ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328ExitFv_owned : (s6Step328ExitFvRow.sign::s6Step328ExitFvRow.payload).toFinset⊆s6Step328ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328ExitFvBefore (fun q => (0≤q ∧ q<362) ∨ (363≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328ExitFv_retired : s6Step328ExitFvBefore.retireSet s6Step328ExitFvExtra.toFinset=s6Step328ExitFvAfter := by
  unfold Arena.retireSet s6Step328ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step328ExitFvBefore,s6Step328ExitFAfter,s6Step328ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step328ExitFv_checked : planRowResizeLog s6Step328ExitFvBefore s6Step328ExitFvRow 180 []=
    some (s6Step328ExitFvAfter,s6Step328ExitFvOut,shrinkRow 776 s6Step328ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step328ExitFvBefore s6Step328ExitFvRow 180 s6Step328ExitFv_distinct s6Step328ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step328ExitFvRow.payload.take 180) s6Step328ExitFvRow.sign=s6Step328ExitFvOut := by decide +kernel
  have hi : s6Step328ExitFvRow.payload.drop 180=s6Step328ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step328ExitFv_retired] at result
  exact result

private def s6Step328ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step328ExitG_Incoming : rowsOwned s6Step328ExitGBefore [s6Step328ExitGRow,s6Step328ExitFRow,s6Step328ExitFvRow,s6Step328ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328ExitGRow,s6Step328ExitFRow,s6Step328ExitFvRow,s6Step328ExitGvRow] 0 s6Step328ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328ExitG_Outgoing : rowsOwned s6Step328ExitGvAfter [s6Step328ExitGOut,s6Step328ExitFOut,s6Step328ExitFvOut,s6Step328ExitGvOut] :=
  hmrRows_owned_drop s6Step328ExitGvAfter [s6Step328ExitGOut,s6Step328ExitFOut,s6Step328ExitFvOut,s6Step328ExitGvOut] 0 s6Step328ExitBank_outgoingOwned

private theorem s6Step328ExitG_distinct : (s6Step328ExitGRow.sign::s6Step328ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328ExitG_owned : (s6Step328ExitGRow.sign::s6Step328ExitGRow.payload).toFinset⊆s6Step328ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328ExitG_retired : s6Step328ExitGBefore.retireSet s6Step328ExitGExtra.toFinset=s6Step328ExitGAfter := by
  unfold Arena.retireSet s6Step328ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step328ExitGBefore,s6Step328ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step328ExitG_checked : planRowResizeLog s6Step328ExitGBefore s6Step328ExitGRow 106 []=
    some (s6Step328ExitGAfter,s6Step328ExitGOut,shrinkRow 777 s6Step328ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step328ExitGBefore s6Step328ExitGRow 106 s6Step328ExitG_distinct s6Step328ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step328ExitGRow.payload.take 106) s6Step328ExitGRow.sign=s6Step328ExitGOut := by decide +kernel
  have hi : s6Step328ExitGRow.payload.drop 106=s6Step328ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step328ExitG_retired] at result
  exact result

private def s6Step328ExitGvBefore : Arena := s6Step328ExitFvAfter

private theorem s6Step328ExitGv_Incoming : rowsOwned s6Step328ExitGvBefore [s6Step328ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328ExitGRow,s6Step328ExitFRow,s6Step328ExitFvRow,s6Step328ExitGvRow] 3 s6Step328ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328ExitGvBefore (fun q => (0≤q ∧ q<362) ∨ (363≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328ExitGv_Outgoing : rowsOwned s6Step328ExitGvAfter [s6Step328ExitGvOut] :=
  hmrRows_owned_drop s6Step328ExitGvAfter [s6Step328ExitGOut,s6Step328ExitFOut,s6Step328ExitFvOut,s6Step328ExitGvOut] 3 s6Step328ExitBank_outgoingOwned

private theorem s6Step328ExitGv_distinct : (s6Step328ExitGvRow.sign::s6Step328ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328ExitGv_owned : (s6Step328ExitGvRow.sign::s6Step328ExitGvRow.payload).toFinset⊆s6Step328ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328ExitGvBefore (fun q => (0≤q ∧ q<362) ∨ (363≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328ExitGv_retired : s6Step328ExitGvBefore.retireSet s6Step328ExitGvExtra.toFinset=s6Step328ExitGvAfter := by
  unfold Arena.retireSet s6Step328ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step328ExitGvBefore,s6Step328ExitFvAfter,s6Step328ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step328ExitGv_checked : planRowResizeLog s6Step328ExitGvBefore s6Step328ExitGvRow 179 []=
    some (s6Step328ExitGvAfter,s6Step328ExitGvOut,shrinkRow 775 s6Step328ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step328ExitGvBefore s6Step328ExitGvRow 179 s6Step328ExitGv_distinct s6Step328ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step328ExitGvRow.payload.take 179) s6Step328ExitGvRow.sign=s6Step328ExitGvOut := by decide +kernel
  have hi : s6Step328ExitGvRow.payload.drop 179=s6Step328ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step328ExitGv_retired] at result
  exact result

private theorem s6Step328ExitBank_rows : planWindowRowsLog s6Step328ExitGBefore [(s6Step328ExitGRow,106),(s6Step328ExitFRow,106),(s6Step328ExitFvRow,180),(s6Step328ExitGvRow,179)] [[],[],[],[]]=
    some (s6Step328ExitGvAfter,[s6Step328ExitGOut,s6Step328ExitFOut,s6Step328ExitFvOut,s6Step328ExitGvOut],(shrinkRow 777 s6Step328ExitGExtra ++ (shrinkRow 795 s6Step328ExitFExtra ++ (shrinkRow 776 s6Step328ExitFvExtra ++ (shrinkRow 775 s6Step328ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step328ExitGvAfter [] []=some (s6Step328ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step328ExitGvBefore s6Step328ExitGvAfter s6Step328ExitGvAfter
    s6Step328ExitGvRow s6Step328ExitGvOut 179 [] [] [] []
    (shrinkRow 775 s6Step328ExitGvExtra) ([]) s6Step328ExitGv_Incoming s6Step328ExitGv_checked h4 s6Step328ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step328ExitFvBefore s6Step328ExitFvAfter s6Step328ExitGvAfter
    s6Step328ExitFvRow s6Step328ExitFvOut 180 [] [(s6Step328ExitGvRow,179)] [[]] [s6Step328ExitGvOut]
    (shrinkRow 776 s6Step328ExitFvExtra) ((shrinkRow 775 s6Step328ExitGvExtra ++ [])) s6Step328ExitFv_Incoming s6Step328ExitFv_checked h3 s6Step328ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step328ExitFBefore s6Step328ExitFAfter s6Step328ExitGvAfter
    s6Step328ExitFRow s6Step328ExitFOut 106 [] [(s6Step328ExitFvRow,180),(s6Step328ExitGvRow,179)] [[],[]] [s6Step328ExitFvOut,s6Step328ExitGvOut]
    (shrinkRow 795 s6Step328ExitFExtra) ((shrinkRow 776 s6Step328ExitFvExtra ++ (shrinkRow 775 s6Step328ExitGvExtra ++ []))) s6Step328ExitF_Incoming s6Step328ExitF_checked h2 s6Step328ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step328ExitGBefore s6Step328ExitGAfter s6Step328ExitGvAfter
    s6Step328ExitGRow s6Step328ExitGOut 106 [] [(s6Step328ExitFRow,106),(s6Step328ExitFvRow,180),(s6Step328ExitGvRow,179)] [[],[],[]] [s6Step328ExitFOut,s6Step328ExitFvOut,s6Step328ExitGvOut]
    (shrinkRow 777 s6Step328ExitGExtra) ((shrinkRow 795 s6Step328ExitFExtra ++ (shrinkRow 776 s6Step328ExitFvExtra ++ (shrinkRow 775 s6Step328ExitGvExtra ++ [])))) s6Step328ExitG_Incoming s6Step328ExitG_checked h1 s6Step328ExitG_Outgoing
  exact h0

private theorem s6Step328ExitBank_checked : compileHmrBankResizeLog .exit s6Step328ExitGBefore ⟨s6Step328ExitFRow,s6Step328ExitGRow,s6Step328ExitFvRow,s6Step328ExitGvRow⟩ ⟨106,106,180,179⟩ [[],[],[],[]]=
    some (s6Step328ExitGvAfter,⟨s6Step328ExitFOut,s6Step328ExitGOut,s6Step328ExitFvOut,s6Step328ExitGvOut⟩,(shrinkRow 777 s6Step328ExitGExtra ++ (shrinkRow 795 s6Step328ExitFExtra ++ (shrinkRow 776 s6Step328ExitFvExtra ++ (shrinkRow 775 s6Step328ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step328ExitBank_rows]
  rfl

private theorem s6Step328Add0_apart : Disjoint s6Step328Add0Arena.live s6Step328Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step328Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328Add0_card : s6Step328Add0Arena.live.card=908 := by
  decide +kernel

private theorem s6Step328Add0_borrowed : s6Step328Add0Arena.checkBorrow (hmrHybridCount s6Step328Add0Arena s6Step328Add0B.length) s6Step328Add0Work=some s6Step328Add0During := by
  have len : s6Step328Add0Work.length=hmrHybridCount s6Step328Add0Arena s6Step328Add0B.length := by
    rw [hmrHybridCount,s6Step328Add0_card]
    decide +kernel
  have nd : s6Step328Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step328Add0Arena s6Step328Add0During s6Step328Add0Work.toFinset s6Step328Add0_bounded s6Step328Add0_apart rfl

private theorem s6Step328Add0_distinct : (860::793::805::(s6Step328Add0A++s6Step328Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328Add0_owned : (860::793::805::(s6Step328Add0A++s6Step328Add0B)).toFinset⊆s6Step328Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step328Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328Add0_checked : compileHmrHybridCinLog s6Step328Add0Arena 793 860 805 s6Step328Add0A s6Step328Add0B s6Step328Add0Work=some s6Step328Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step328Add0Arena s6Step328Add0During 793 860 805 s6Step328Add0A s6Step328Add0B s6Step328Add0Work
    (by decide +kernel) (by decide +kernel) s6Step328Add0_distinct
    (fun q hq => s6Step328Add0_owned (List.mem_toFinset.mpr hq)) s6Step328Add0_borrowed

private theorem s6Step328Add1_apart : Disjoint s6Step328Add1Arena.live s6Step328Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step328Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328Add1_card : s6Step328Add1Arena.live.card=908 := by
  decide +kernel

private theorem s6Step328Add1_borrowed : s6Step328Add1Arena.checkBorrow (hmrHybridCount s6Step328Add1Arena s6Step328Add1B.length) s6Step328Add1Work=some s6Step328Add1During := by
  have len : s6Step328Add1Work.length=hmrHybridCount s6Step328Add1Arena s6Step328Add1B.length := by
    rw [hmrHybridCount,s6Step328Add1_card]
    decide +kernel
  have nd : s6Step328Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step328Add1Arena s6Step328Add1During s6Step328Add1Work.toFinset s6Step328Add1_bounded s6Step328Add1_apart rfl

private theorem s6Step328Add1_distinct : (860::793::805::(s6Step328Add1A++s6Step328Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328Add1_owned : (860::793::805::(s6Step328Add1A++s6Step328Add1B)).toFinset⊆s6Step328Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step328Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328Add1_checked : compileHmrHybridCinLog s6Step328Add1Arena 793 860 805 s6Step328Add1A s6Step328Add1B s6Step328Add1Work=some s6Step328Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step328Add1Arena s6Step328Add1During 793 860 805 s6Step328Add1A s6Step328Add1B s6Step328Add1Work
    (by decide +kernel) (by decide +kernel) s6Step328Add1_distinct
    (fun q hq => s6Step328Add1_owned (List.mem_toFinset.mpr hq)) s6Step328Add1_borrowed

private theorem s6Step328F4_apart : Disjoint (s6Step328Add0A++s6Step328Add0B).toFinset (s6Step328Add1A++s6Step328Add1B).toFinset := by
  have nd : ((s6Step328Add0A++s6Step328Add0B)++(s6Step328Add1A++s6Step328Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step328F4_carry : s6Step328F4FlagArena.checkBorrow 1 [805]=some s6Step328Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step328F4FlagArena,s6Step328HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step328F4FlagArena,s6Step328HeadFvAfter,s6Step328Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step328F4_distinct : (907::793::860::805::((s6Step328Add0A++s6Step328Add1A)++(s6Step328Add0B++s6Step328Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328F4_flag : s6Step328HeadFvAfter.checkBorrow 1 [860]=some s6Step328F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step328HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step328F4_owned : (907::793::((s6Step328Add0A++s6Step328Add1A)++(s6Step328Add0B++s6Step328Add1B))).toFinset⊆s6Step328HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step328HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328F4_checked : compileHmrHybridF4Log s6Step328HeadFvAfter 907 793 s6Step328Add0A s6Step328Add0B s6Step328Add1A s6Step328Add1B [860] [805] s6Step328Add0Work s6Step328Add1Work=some s6Step328F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step328HeadFvAfter s6Step328F4FlagArena s6Step328Add0Arena s6Step328Add0During s6Step328Add1During 907 793
    s6Step328Add0A s6Step328Add0B s6Step328Add1A s6Step328Add1B [860] [805] s6Step328Add0Work s6Step328Add1Work
    (fun q hq => s6Step328F4_owned (List.mem_toFinset.mpr hq)) s6Step328F4_flag s6Step328F4_carry
    s6Step328F4_distinct s6Step328F4_apart s6Step328Add0_checked s6Step328Add1_checked

private theorem s6Step328Front_branch : s6Step328FrontSigmaArena.checkBorrow 1 [793]=some s6Step328HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step328FrontSigmaArena,s6Step328EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step328FrontSigmaArena,s6Step328EntryGvAfter,s6Step328HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step328Front_entry : HmrFrontEntryValid s6Step328EntryFBefore s6Step328FrontBank 107 180 ⟨106,106,180,179⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step328FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step328EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step328EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step328FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step328Front_sigma : s6Step328EntryGvAfter.checkBorrow 1 [907]=some s6Step328FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step328EntryGvAfter,arenaWires]
  · rfl

private def s6Step328HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328HeadFBefore : Arena := s6Step328HeadGAfter

private def s6Step328HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩

private def s6Step328HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step328HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 903],777⟩

private def s6Step328HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 854],775⟩

private theorem s6Step328HeadBank_incomingDistinct : ([s6Step328HeadGRow,s6Step328HeadFRow,s6Step328HeadGvRow,s6Step328HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328HeadF_Incoming : rowsOwned s6Step328HeadFBefore [s6Step328HeadFRow,s6Step328HeadGvRow,s6Step328HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328HeadGRow,s6Step328HeadFRow,s6Step328HeadGvRow,s6Step328HeadFvRow] 1 s6Step328HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328HeadBank_outgoingOwned : rowsOwned s6Step328HeadFvAfter [s6Step328HeadGOut,s6Step328HeadFOut,s6Step328HeadGvOut,s6Step328HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step328HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328HeadF_Outgoing : rowsOwned s6Step328HeadFvAfter [s6Step328HeadFOut,s6Step328HeadGvOut,s6Step328HeadFvOut] :=
  hmrRows_owned_drop s6Step328HeadFvAfter [s6Step328HeadGOut,s6Step328HeadFOut,s6Step328HeadGvOut,s6Step328HeadFvOut] 1 s6Step328HeadBank_outgoingOwned

private theorem s6Step328HeadF_distinct : (s6Step328HeadFRow.sign::s6Step328HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328HeadF_owned : (s6Step328HeadFRow.sign::s6Step328HeadFRow.payload).toFinset⊆s6Step328HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328HeadF_reserved : s6Step328HeadFBefore.reserve s6Step328HeadFFresh.toFinset=some s6Step328HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step328HeadFFresh,arenaWires]
  · norm_num [s6Step328HeadFBefore,s6Step328HeadGAfter,s6Step328HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step328HeadFAfter,s6Step328HeadFBefore,s6Step328HeadGAfter,s6Step328HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step328HeadF_checked : planRowResizeLog s6Step328HeadFBefore s6Step328HeadFRow 108 s6Step328HeadFFresh=
    some (s6Step328HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 862],795⟩,growRow 795 s6Step328HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step328HeadFBefore s6Step328HeadFAfter s6Step328HeadFRow 108 s6Step328HeadFFresh
    s6Step328HeadF_distinct s6Step328HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step328HeadF_reserved
  have rowEq : WindowRow.mk (s6Step328HeadFRow.payload++s6Step328HeadFFresh) s6Step328HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 862],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step328HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step328HeadFvBefore : Arena := s6Step328HeadGvAfter

private theorem s6Step328HeadFv_Incoming : rowsOwned s6Step328HeadFvBefore [s6Step328HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328HeadGRow,s6Step328HeadFRow,s6Step328HeadGvRow,s6Step328HeadFvRow] 3 s6Step328HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328HeadFv_Outgoing : rowsOwned s6Step328HeadFvAfter [s6Step328HeadFvOut] :=
  hmrRows_owned_drop s6Step328HeadFvAfter [s6Step328HeadGOut,s6Step328HeadFOut,s6Step328HeadGvOut,s6Step328HeadFvOut] 3 s6Step328HeadBank_outgoingOwned

private theorem s6Step328HeadFv_distinct : (s6Step328HeadFvRow.sign::s6Step328HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328HeadFv_owned : (s6Step328HeadFvRow.sign::s6Step328HeadFvRow.payload).toFinset⊆s6Step328HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328HeadFv_reserved : s6Step328HeadFvBefore.reserve s6Step328HeadFvFresh.toFinset=some s6Step328HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step328HeadFvFresh,arenaWires]
  · norm_num [s6Step328HeadFvBefore,s6Step328HeadGvAfter,s6Step328HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step328HeadFvAfter,s6Step328HeadFvBefore,s6Step328HeadGvAfter,s6Step328HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step328HeadFv_checked : planRowResizeLog s6Step328HeadFvBefore s6Step328HeadFvRow 181 s6Step328HeadFvFresh=
    some (s6Step328HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 865],776⟩,growRow 776 s6Step328HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step328HeadFvBefore s6Step328HeadFvAfter s6Step328HeadFvRow 181 s6Step328HeadFvFresh
    s6Step328HeadFv_distinct s6Step328HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step328HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step328HeadFvRow.payload++s6Step328HeadFvFresh) s6Step328HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 865],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step328HeadG_Incoming : rowsOwned s6Step328HeadGBefore [s6Step328HeadGRow,s6Step328HeadFRow,s6Step328HeadGvRow,s6Step328HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328HeadGRow,s6Step328HeadFRow,s6Step328HeadGvRow,s6Step328HeadFvRow] 0 s6Step328HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328HeadG_Outgoing : rowsOwned s6Step328HeadFvAfter [s6Step328HeadGOut,s6Step328HeadFOut,s6Step328HeadGvOut,s6Step328HeadFvOut] :=
  hmrRows_owned_drop s6Step328HeadFvAfter [s6Step328HeadGOut,s6Step328HeadFOut,s6Step328HeadGvOut,s6Step328HeadFvOut] 0 s6Step328HeadBank_outgoingOwned

private theorem s6Step328HeadG_distinct : (s6Step328HeadGRow.sign::s6Step328HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328HeadG_owned : (s6Step328HeadGRow.sign::s6Step328HeadGRow.payload).toFinset⊆s6Step328HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328HeadG_reserved : s6Step328HeadGBefore.reserve s6Step328HeadGFresh.toFinset=some s6Step328HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step328HeadGFresh,arenaWires]
  · norm_num [s6Step328HeadGBefore,s6Step328HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step328HeadGAfter,s6Step328HeadGBefore,s6Step328HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step328HeadG_checked : planRowResizeLog s6Step328HeadGBefore s6Step328HeadGRow 108 s6Step328HeadGFresh=
    some (s6Step328HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 903, 843],777⟩,growRow 777 s6Step328HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step328HeadGBefore s6Step328HeadGAfter s6Step328HeadGRow 108 s6Step328HeadGFresh
    s6Step328HeadG_distinct s6Step328HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step328HeadG_reserved
  have rowEq : WindowRow.mk (s6Step328HeadGRow.payload++s6Step328HeadGFresh) s6Step328HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 903, 843],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step328HeadGvBefore : Arena := s6Step328HeadFAfter

private theorem s6Step328HeadGv_Incoming : rowsOwned s6Step328HeadGvBefore [s6Step328HeadGvRow,s6Step328HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step328HeadGRow,s6Step328HeadFRow,s6Step328HeadGvRow,s6Step328HeadFvRow] 2 s6Step328HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step328HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step328HeadGv_Outgoing : rowsOwned s6Step328HeadFvAfter [s6Step328HeadGvOut,s6Step328HeadFvOut] :=
  hmrRows_owned_drop s6Step328HeadFvAfter [s6Step328HeadGOut,s6Step328HeadFOut,s6Step328HeadGvOut,s6Step328HeadFvOut] 2 s6Step328HeadBank_outgoingOwned

private theorem s6Step328HeadGv_distinct : (s6Step328HeadGvRow.sign::s6Step328HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step328HeadGv_owned : (s6Step328HeadGvRow.sign::s6Step328HeadGvRow.payload).toFinset⊆s6Step328HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step328HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step328HeadGv_reserved : s6Step328HeadGvBefore.reserve s6Step328HeadGvFresh.toFinset=some s6Step328HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step328HeadGvFresh,arenaWires]
  · norm_num [s6Step328HeadGvBefore,s6Step328HeadFAfter,s6Step328HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step328HeadGvAfter,s6Step328HeadGvBefore,s6Step328HeadFAfter,s6Step328HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step328HeadGv_checked : planRowResizeLog s6Step328HeadGvBefore s6Step328HeadGvRow 181 s6Step328HeadGvFresh=
    some (s6Step328HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 854, 841],775⟩,growRow 775 s6Step328HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step328HeadGvBefore s6Step328HeadGvAfter s6Step328HeadGvRow 181 s6Step328HeadGvFresh
    s6Step328HeadGv_distinct s6Step328HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step328HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step328HeadGvRow.payload++s6Step328HeadGvFresh) s6Step328HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 854, 841],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step328HeadBank_rows : planWindowRowsLog s6Step328HeadGBefore [(s6Step328HeadGRow,108),(s6Step328HeadFRow,108),(s6Step328HeadGvRow,181),(s6Step328HeadFvRow,181)] [s6Step328HeadGFresh,s6Step328HeadFFresh,s6Step328HeadGvFresh,s6Step328HeadFvFresh]=
    some (s6Step328HeadFvAfter,[s6Step328HeadGOut,s6Step328HeadFOut,s6Step328HeadGvOut,s6Step328HeadFvOut],(growRow 777 s6Step328HeadGFresh ++ (growRow 795 s6Step328HeadFFresh ++ (growRow 775 s6Step328HeadGvFresh ++ (growRow 776 s6Step328HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step328HeadFvAfter [] []=some (s6Step328HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step328HeadFvBefore s6Step328HeadFvAfter s6Step328HeadFvAfter
    s6Step328HeadFvRow s6Step328HeadFvOut 181 s6Step328HeadFvFresh [] [] []
    (growRow 776 s6Step328HeadFvFresh) ([]) s6Step328HeadFv_Incoming s6Step328HeadFv_checked h4 s6Step328HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step328HeadGvBefore s6Step328HeadGvAfter s6Step328HeadFvAfter
    s6Step328HeadGvRow s6Step328HeadGvOut 181 s6Step328HeadGvFresh [(s6Step328HeadFvRow,181)] [s6Step328HeadFvFresh] [s6Step328HeadFvOut]
    (growRow 775 s6Step328HeadGvFresh) ((growRow 776 s6Step328HeadFvFresh ++ [])) s6Step328HeadGv_Incoming s6Step328HeadGv_checked h3 s6Step328HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step328HeadFBefore s6Step328HeadFAfter s6Step328HeadFvAfter
    s6Step328HeadFRow s6Step328HeadFOut 108 s6Step328HeadFFresh [(s6Step328HeadGvRow,181),(s6Step328HeadFvRow,181)] [s6Step328HeadGvFresh,s6Step328HeadFvFresh] [s6Step328HeadGvOut,s6Step328HeadFvOut]
    (growRow 795 s6Step328HeadFFresh) ((growRow 775 s6Step328HeadGvFresh ++ (growRow 776 s6Step328HeadFvFresh ++ []))) s6Step328HeadF_Incoming s6Step328HeadF_checked h2 s6Step328HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step328HeadGBefore s6Step328HeadGAfter s6Step328HeadFvAfter
    s6Step328HeadGRow s6Step328HeadGOut 108 s6Step328HeadGFresh [(s6Step328HeadFRow,108),(s6Step328HeadGvRow,181),(s6Step328HeadFvRow,181)] [s6Step328HeadFFresh,s6Step328HeadGvFresh,s6Step328HeadFvFresh] [s6Step328HeadFOut,s6Step328HeadGvOut,s6Step328HeadFvOut]
    (growRow 777 s6Step328HeadGFresh) ((growRow 795 s6Step328HeadFFresh ++ (growRow 775 s6Step328HeadGvFresh ++ (growRow 776 s6Step328HeadFvFresh ++ [])))) s6Step328HeadG_Incoming s6Step328HeadG_checked h1 s6Step328HeadG_Outgoing
  exact h0

private theorem s6Step328HeadBank_checked : compileHmrBankResizeLog .headroom s6Step328HeadGBefore ⟨s6Step328HeadFRow,s6Step328HeadGRow,s6Step328HeadFvRow,s6Step328HeadGvRow⟩ ⟨108,108,181,181⟩ [s6Step328HeadGFresh,s6Step328HeadFFresh,s6Step328HeadGvFresh,s6Step328HeadFvFresh]=
    some (s6Step328HeadFvAfter,⟨s6Step328HeadFOut,s6Step328HeadGOut,s6Step328HeadFvOut,s6Step328HeadGvOut⟩,(growRow 777 s6Step328HeadGFresh ++ (growRow 795 s6Step328HeadFFresh ++ (growRow 775 s6Step328HeadGvFresh ++ (growRow 776 s6Step328HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step328HeadBank_rows]
  rfl

private theorem s6Step328Front_checked : compileHmrSourceFrontLog s6Step328EntryFBefore s6Step328FrontBank 107 180 ⟨106,106,180,179⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step328FrontLog=some s6Step328FrontPlan := by
  have pairEq : s6Step328FrontPair=⟨s6Step328HeadFRow,s6Step328HeadGRow,s6Step328HeadFvRow,s6Step328HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step328FrontHead=⟨s6Step328ExitFRow,s6Step328ExitGRow,s6Step328ExitFvRow,s6Step328ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step328Add0A=s6Step328FrontHead.f.wires := by decide +kernel
  have gEq : s6Step328Add0B=s6Step328FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step328Add1A=s6Step328FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step328Add1B=s6Step328FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step328EntryFBefore s6Step328FrontBank 107 180 ⟨106,106,180,179⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step328FrontLog s6Step328FrontPlan
  · exact s6Step328Front_entry
  · exact s6Step328EntryBank_checked
  · exact s6Step328Front_sigma
  · rfl
  · exact s6Step328Front_branch
  · rfl
  · simpa only [s6Step328FrontPlan,pairEq] using s6Step328HeadBank_checked
  · simpa only [s6Step328FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step328F4_checked
  · exact s6Step328Counter_checked
  · rfl
  · simpa only [s6Step328FrontPlan,headEq] using s6Step328ExitBank_checked

private theorem s6Step328Complete_explicit_checked : compileHmrEarlyStepLog s6Step328EntryFBefore s6Step328FrontBank 107 180 ⟨106,106,180,179⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step328CompleteLog=some s6Step328CompletePlan := by
  let Q := s6Step328EarlyControlPlan
  have hq := s6Step328EarlyControl_plan_checked
  have fv1 : s6Step328CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step328CompleteOut.fv.payload[2]?.getD s6Step328CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step328CompleteOut.fv.payload[3]?.getD s6Step328CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step328CompleteOut.fv.payload[4]?.getD s6Step328CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step328EntryFBefore s6Step328EarlyControlArena s6Step328FrontBank 107 180 ⟨106,106,180,179⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step328CompleteLog s6Step328FrontPlan Q
    s6Step328Front_checked s6Step328Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step328Complete_owned s6Step328Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step328EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 s6Step328CompleteOut.fv.second (s6Step328CompleteOut.fv.payload[2]?.getD s6Step328CompleteOut.fv.sign) (s6Step328CompleteOut.fv.payload[3]?.getD s6Step328CompleteOut.fv.sign) (s6Step328CompleteOut.fv.payload[4]?.getD s6Step328CompleteOut.fv.sign) 793 60 s6Step328EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep328Arena : Arena := s6Step328EntryFBefore
def s6PrivateStep328Bank : WindowBank := s6Step328FrontBank
def s6PrivateStep328Spec : HmrSourceWalkStepLog := ⟨107,180,⟨106,106,180,179⟩,60,.early s6Step328CompleteLog⟩
def s6PrivateStep328Plan : HmrSourceStepPlan := .early s6Step328CompletePlan
theorem s6PrivateStep328_source : s6PrivateStep328Spec=s6ObservedLogs320[8] := rfl
theorem s6PrivateStep328_checked : compileHmrSourceStepLog s6PrivateStep328Arena s6PrivateStep328Bank
    s6PrivateStep328Spec.fgWidth s6PrivateStep328Spec.vWidth s6PrivateStep328Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 328 s6PrivateStep328Spec.need none s6PrivateStep328Spec.log=some s6PrivateStep328Plan := by
  change compileHmrSourceStepLog s6Step328EntryFBefore s6Step328FrontBank 107 180 ⟨106,106,180,179⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 328 60 none (.early s6Step328CompleteLog)=some (.early s6Step328CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 328<498)]
  rw [s6Step328Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
