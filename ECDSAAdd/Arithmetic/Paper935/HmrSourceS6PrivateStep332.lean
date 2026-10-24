import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep330
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

private def s6Step332CompleteMoves : List (Wire × Wire) := [(838,360)]

private def s6Step332EarlyControlLog : HmrEarlyControlLog := ⟨[838, 907, 859, 865, 854],[903],[843],[860, 805, 817, 812, 915, 906],[]⟩

private def s6Step332FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [865], [], []],[[854], [859], [907], [794]],[[], [], [], []]⟩,[874],[841],[903],[843],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[903, 843, 860, 805]⟩

private def s6Step332CompleteLog : HmrEarlyStepLog := ⟨s6Step332FrontLog,s6Step332CompleteMoves,s6Step332EarlyControlLog⟩

private def s6Step332ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359],795⟩

private def s6Step332ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794],776⟩

private def s6Step332ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],777⟩

private def s6Step332ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩

private def s6Step332FrontOut : WindowBank := ⟨s6Step332ExitFOut,s6Step332ExitGOut,s6Step332ExitFvOut,s6Step332ExitGvOut⟩

private def s6Step332CompleteOut : WindowBank := s6Step332FrontOut.repacked s6Step332CompleteMoves

private def s6Step332EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step332EarlyControlPositiveArena,[903],s6Step332EarlyControlEqualityArena,[843],⟨⟨874,false⟩,[⟨⟨903,false⟩,843⟩]⟩⟩

private def s6Step332EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,838⟩,⟨⟨772,false⟩,907⟩,⟨⟨771,false⟩,859⟩,⟨⟨770,false⟩,865⟩,⟨⟨769,false⟩,854⟩]⟩

private def s6Step332EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step332EarlyControlZeroArena,s6Step332EarlyControlZeroPlan,s6Step332EarlyControlClassPlan,s6Step332EarlyControlFlagArena,s6Step332EarlyControlFittedArena,s6Step332EarlyControlHistoryArena,s6Step332EarlyControlSigmaArena,s6Step332EarlyControlOutputArena,s6Step332EarlyControlLog⟩

private def s6Step332CounterWork : List Wire := [903, 843, 860, 805]

private theorem s6Step332Counter_bounded : s6Step332CounterWork.toFinset⊆arenaWires := by norm_num [s6Step332CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step332HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332CounterDuring : Arena := ⟨s6Step332HeadFvAfter.live∪s6Step332CounterWork.toFinset,Finset.union_subset s6Step332HeadFvAfter.bounded s6Step332Counter_bounded⟩

private def s6Step332EntryFFresh : List Wire := []

private def s6Step332EntryFvFresh : List Wire := []

private def s6Step332EntryGFresh : List Wire := [865]

private def s6Step332EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332EntryGvAfter : Arena := s6Step332EntryGAfter

private def s6Step332EntryGvFresh : List Wire := []

private def s6Step332ExitFExtra : List Wire := [360, 859]

private def s6Step332ExitGExtra : List Wire := [865, 854]

private def s6Step332ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<360) ∨ (361≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332ExitGvExtra : List Wire := [907]

private def s6Step332Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332Add0Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step332Add0_bounded : s6Step332Add0Work.toFinset⊆arenaWires := by
  have h : s6Step332Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step332Add0During : Arena := ⟨s6Step332Add0Arena.live∪s6Step332Add0Work.toFinset,Finset.union_subset s6Step332Add0Arena.bounded s6Step332Add0_bounded⟩

private def s6Step332Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332Add1Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step332Add1_bounded : s6Step332Add1Work.toFinset⊆arenaWires := by
  have h : s6Step332Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step332Add1During : Arena := ⟨s6Step332Add1Arena.live∪s6Step332Add1Work.toFinset,Finset.union_subset s6Step332Add1Arena.bounded s6Step332Add1_bounded⟩

private def s6Step332F4FlagArena : Arena := ⟨s6Step332HeadFvAfter.live∪{903},Finset.union_subset s6Step332HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step332F4Plan : HmrHybridF4Plan := ⟨s6Step332F4FlagArena,[903],s6Step332Add0Arena,[843],s6Step332Add0During,s6Step332Add0Work,s6Step332Add1During,s6Step332Add1Work⟩

private def s6Step332HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 859],795⟩

private def s6Step332HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794],776⟩

private def s6Step332HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 865, 854],777⟩

private def s6Step332HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 907],775⟩

private def s6Step332FrontHead : WindowBank := ⟨s6Step332HeadFOut,s6Step332HeadGOut,s6Step332HeadFvOut,s6Step332HeadGvOut⟩

private def s6Step332EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step332EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step332EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 865],777⟩

private def s6Step332EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩

private def s6Step332FrontPair : WindowBank := ⟨s6Step332EntryFOut,s6Step332EntryGOut,s6Step332EntryFvOut,s6Step332EntryGvOut⟩

private def s6Step332FrontSigmaArena : Arena := ⟨s6Step332EntryGvAfter.live∪{874},Finset.union_subset s6Step332EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step332HeadFFresh : List Wire := [859]

private def s6Step332HeadFvFresh : List Wire := [794]

private def s6Step332HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332HeadGFresh : List Wire := [854]

private def s6Step332HeadGvFresh : List Wire := [907]

private def s6Step332FrontPlan : HmrSourceFront := ⟨s6Step332EntryGvAfter,s6Step332FrontPair,(growRow 795 s6Step332EntryFFresh ++ (growRow 777 s6Step332EntryGFresh ++ (growRow 776 s6Step332EntryFvFresh ++ (growRow 775 s6Step332EntryGvFresh ++ [])))),s6Step332FrontSigmaArena,[874],s6Step332HeadGBefore,[841],
  s6Step332HeadFvAfter,s6Step332FrontHead,(growRow 777 s6Step332HeadGFresh ++ (growRow 795 s6Step332HeadFFresh ++ (growRow 775 s6Step332HeadGvFresh ++ (growRow 776 s6Step332HeadFvFresh ++ [])))),s6Step332F4Plan,s6Step332CounterDuring,s6Step332CounterWork,s6Step332ExitGvAfter,s6Step332FrontOut,(shrinkRow 777 s6Step332ExitGExtra ++ (shrinkRow 795 s6Step332ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step332ExitGvExtra ++ []))))⟩

private def s6Step332CompletePlan : HmrEarlyStepPlan := ⟨s6Step332FrontPlan,s6Step332EarlyControlArena,s6Step332EarlyControlPlan,s6Step332CompleteMoves⟩

private theorem s6Step332Complete_apart : List.Disjoint (s6Step332CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [874, 841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step332CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[874, 841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step332Complete_owned : (s6Step332CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step332EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step332CompleteMoveArena : Arena := ⟨s6Step332ExitGvAfter.live∪{360},Finset.union_subset s6Step332ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step332Complete_repack : s6Step332ExitGvAfter.checkRepack s6Step332CompleteMoves=some s6Step332EarlyControlArena := by
  have owned : 838∈s6Step332ExitGvAfter.live := by norm_num [s6Step332ExitGvAfter,arenaWires]
  have reserve : s6Step332ExitGvAfter.reserve {360}=some s6Step332CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step332ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step332CompleteMoveArena.retireSet {838}=s6Step332EarlyControlArena := by
    unfold Arena.retireSet s6Step332EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step332CompleteMoveArena,s6Step332ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step332CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step332CompleteMoveArena.retireSet {838}).checkRepack []=some s6Step332EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step332EarlyControl_branchOwned : ([841] : List Wire).toFinset⊆s6Step332EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EarlyControl_branch : compileHmrBranchRetirement s6Step332EarlyControlSigmaArena 841=some s6Step332EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step332EarlyControl_branchOwned
  · ext q
    simp [s6Step332EarlyControlOutputArena,s6Step332EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step332EarlyControl_classEqualityBorrow : s6Step332EarlyControlPositiveArena.checkBorrow (([874, 903] : List Wire).length-1) s6Step332EarlyControlLog.classWork=some s6Step332EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step332EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step332EarlyControlEqualityArena,s6Step332EarlyControlPositiveArena,s6Step332EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step332EarlyControl_classEqualityOwned : ([874, 903] : List Wire).toFinset⊆s6Step332EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EarlyControl_classEquality : compileHmrEqualityLog s6Step332EarlyControlPositiveArena [874, 903] 0 s6Step332EarlyControlLog.classWork=some (s6Step332EarlyControlEqualityArena,s6Step332EarlyControlLog.classWork,s6Step332EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step332EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step332EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step332EarlyControl_classOwned : ([769, 854, 874] : List Wire).toFinset⊆s6Step332EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EarlyControl_positiveBorrow : s6Step332EarlyControlZeroArena.checkBorrow (1) s6Step332EarlyControlLog.positiveWork=some s6Step332EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step332EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step332EarlyControlPositiveArena,s6Step332EarlyControlZeroArena,s6Step332EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step332EarlyControl_class : compileHmrSourceClassLog s6Step332EarlyControlZeroArena false 769 s6Step332EarlyControlZeroPlan.top 0 874 s6Step332EarlyControlLog.positiveWork s6Step332EarlyControlLog.classWork=some s6Step332EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step332EarlyControlClassPlan s6Step332EarlyControlZeroArena false 769 s6Step332EarlyControlZeroPlan.top 0 874
  constructor
  · decide +kernel
  · exact s6Step332EarlyControl_classOwned
  · exact s6Step332EarlyControl_positiveBorrow
  · exact s6Step332EarlyControl_classEquality

private theorem s6Step332EarlyControl_entryRecordOwned : ([841, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step332EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EarlyControl_entrySigmaOwned : ([874, 254] : List Wire).toFinset⊆s6Step332EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EarlyControl_fitBorrow : s6Step332EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step332EarlyControlLog.recordFresh=some s6Step332EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step332EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step332EarlyControlFittedArena,s6Step332EarlyControlFlagArena,s6Step332EarlyControlLog,arenaWires]

private theorem s6Step332EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step332EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EarlyControl_fit : compileHmrRecordGrowLog s6Step332EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step332EarlyControlLog.recordFresh=some s6Step332EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step332EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step332EarlyControl_fitBorrow

private theorem s6Step332EarlyControl_flagsBorrow : s6Step332EarlyControlEqualityArena.checkBorrow (6) s6Step332EarlyControlLog.flagWork=some s6Step332EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step332EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step332EarlyControlFlagArena,s6Step332EarlyControlEqualityArena,s6Step332EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step332EarlyControl_flagsOwned : ([843, 253, 252, 251] : List Wire).toFinset⊆s6Step332EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EarlyControl_flags : compileHmrFlagsLog s6Step332EarlyControlClassPlan.equalityArena s6Step332EarlyControlClassPlan.equality.top 253 252 251 s6Step332EarlyControlLog.flagWork=some s6Step332EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step332EarlyControl_flagsOwned⟩
  · exact s6Step332EarlyControl_flagsBorrow

private theorem s6Step332EarlyControl_historyBorrow : s6Step332EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step332EarlyControlLog.recordFresh=some s6Step332EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step332EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step332EarlyControlHistoryArena,s6Step332EarlyControlArena,s6Step332EarlyControlLog,arenaWires]

private theorem s6Step332EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step332EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EarlyControl_history : compileHmrRecordGrowLog s6Step332EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step332EarlyControlLog.recordFresh=some s6Step332EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step332EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step332EarlyControl_historyBorrow

private theorem s6Step332EarlyControl_sigmaOwned : ([254, 874] : List Wire).toFinset⊆s6Step332EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EarlyControl_sigmaReleaseOwned : ([874] : List Wire).toFinset⊆s6Step332EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EarlyControl_sigmaRelease : s6Step332EarlyControlHistoryArena.release {874} (fun _ => false)=some s6Step332EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step332EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step332EarlyControlSigmaArena,s6Step332EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step332EarlyControl_sigma : compileHmrSigmaDropLog s6Step332EarlyControlHistoryArena false 0 0 254 874 []=some s6Step332EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step332EarlyControl_sigmaOwned⟩
  · exact s6Step332EarlyControl_sigmaRelease

private theorem s6Step332EarlyControl_zeroBorrow : s6Step332EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step332EarlyControlLog.zeroWork=some s6Step332EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step332EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step332EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step332EarlyControlZeroArena,s6Step332EarlyControlArena,s6Step332EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step332EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step332EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step332EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EarlyControl_zero : compileHmrEqualityLog s6Step332EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step332EarlyControlLog.zeroWork=some (s6Step332EarlyControlZeroArena,s6Step332EarlyControlLog.zeroWork,s6Step332EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step332EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step332EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step332EarlyControl_logged : s6Step332EarlyControlPlan.Logged s6Step332EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 841 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step332EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step332EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step332EarlyControl_zero
  · exact s6Step332EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step332EarlyControl_flags
  · exact s6Step332EarlyControl_fit
  · exact s6Step332EarlyControl_history
  · exact s6Step332EarlyControl_sigma
  · exact s6Step332EarlyControl_branch

private theorem s6Step332EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step332EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 841 60 s6Step332EarlyControlLog=some s6Step332EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step332EarlyControlPlan s6Step332EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 841 60 s6Step332EarlyControl_logged

private def s6Step332EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step332EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step332EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],777⟩

private def s6Step332EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩

private def s6Step332FrontBank : WindowBank := ⟨s6Step332EntryFRow,s6Step332EntryGRow,s6Step332EntryFvRow,s6Step332EntryGvRow⟩

private def s6Step332Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 859, 795]

private def s6Step332Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 865, 854, 777]

private def s6Step332Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794, 776]

private def s6Step332Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 907, 775]

private theorem s6Step332Counter_apart : Disjoint s6Step332HeadFvAfter.live s6Step332CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step332HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332Counter_borrowed : s6Step332HeadFvAfter.checkBorrow 4 s6Step332CounterWork=some s6Step332CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step332HeadFvAfter s6Step332CounterDuring s6Step332CounterWork.toFinset s6Step332Counter_bounded s6Step332Counter_apart rfl

private theorem s6Step332Counter_owned : (874::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step332HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step332HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332Counter_checked : compileHmrCounterStepLog s6Step332HeadFvAfter true 874 [774, 773, 772, 771, 770, 769] s6Step332CounterWork=some s6Step332CounterDuring := by
  have owned : ∀q∈874::[774, 773, 772, 771, 770, 769],q∈s6Step332HeadFvAfter.live := fun q hq => s6Step332Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step332Counter_borrowed

private def s6Step332EntryFAfter : Arena := s6Step332EntryFBefore

private theorem s6Step332EntryBank_incomingDistinct : ([s6Step332EntryFRow,s6Step332EntryGRow,s6Step332EntryFvRow,s6Step332EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332EntryF_Incoming : rowsOwned s6Step332EntryFBefore [s6Step332EntryFRow,s6Step332EntryGRow,s6Step332EntryFvRow,s6Step332EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332EntryFRow,s6Step332EntryGRow,s6Step332EntryFvRow,s6Step332EntryGvRow] 0 s6Step332EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332EntryBank_outgoingOwned : rowsOwned s6Step332EntryGvAfter [s6Step332EntryFOut,s6Step332EntryGOut,s6Step332EntryFvOut,s6Step332EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step332EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332EntryF_Outgoing : rowsOwned s6Step332EntryGvAfter [s6Step332EntryFOut,s6Step332EntryGOut,s6Step332EntryFvOut,s6Step332EntryGvOut] :=
  hmrRows_owned_drop s6Step332EntryGvAfter [s6Step332EntryFOut,s6Step332EntryGOut,s6Step332EntryFvOut,s6Step332EntryGvOut] 0 s6Step332EntryBank_outgoingOwned

private theorem s6Step332EntryF_distinct : (s6Step332EntryFRow.sign::s6Step332EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332EntryF_owned : (s6Step332EntryFRow.sign::s6Step332EntryFRow.payload).toFinset⊆s6Step332EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EntryF_reserved : s6Step332EntryFBefore.reserve s6Step332EntryFFresh.toFinset=some s6Step332EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step332EntryFFresh,arenaWires]
  · norm_num [s6Step332EntryFBefore,s6Step332EntryFFresh,arenaWires]
  · simp only [s6Step332EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step332EntryF_checked : planRowResizeLog s6Step332EntryFBefore s6Step332EntryFRow 105 s6Step332EntryFFresh=
    some (s6Step332EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩,growRow 795 s6Step332EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step332EntryFBefore s6Step332EntryFAfter s6Step332EntryFRow 105 s6Step332EntryFFresh
    s6Step332EntryF_distinct s6Step332EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step332EntryF_reserved
  have rowEq : WindowRow.mk (s6Step332EntryFRow.payload++s6Step332EntryFFresh) s6Step332EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step332EntryFvAfter : Arena := s6Step332EntryGAfter

private def s6Step332EntryFvBefore : Arena := s6Step332EntryGAfter

private theorem s6Step332EntryFv_Incoming : rowsOwned s6Step332EntryFvBefore [s6Step332EntryFvRow,s6Step332EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332EntryFRow,s6Step332EntryGRow,s6Step332EntryFvRow,s6Step332EntryGvRow] 2 s6Step332EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332EntryFv_Outgoing : rowsOwned s6Step332EntryGvAfter [s6Step332EntryFvOut,s6Step332EntryGvOut] :=
  hmrRows_owned_drop s6Step332EntryGvAfter [s6Step332EntryFOut,s6Step332EntryGOut,s6Step332EntryFvOut,s6Step332EntryGvOut] 2 s6Step332EntryBank_outgoingOwned

private theorem s6Step332EntryFv_distinct : (s6Step332EntryFvRow.sign::s6Step332EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332EntryFv_owned : (s6Step332EntryFvRow.sign::s6Step332EntryFvRow.payload).toFinset⊆s6Step332EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EntryFv_reserved : s6Step332EntryFvBefore.reserve s6Step332EntryFvFresh.toFinset=some s6Step332EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step332EntryFvFresh,arenaWires]
  · norm_num [s6Step332EntryFvBefore,s6Step332EntryGAfter,s6Step332EntryFvFresh,arenaWires]
  · simp only [s6Step332EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step332EntryFv_checked : planRowResizeLog s6Step332EntryFvBefore s6Step332EntryFvRow 181 s6Step332EntryFvFresh=
    some (s6Step332EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩,growRow 776 s6Step332EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step332EntryFvBefore s6Step332EntryFvAfter s6Step332EntryFvRow 181 s6Step332EntryFvFresh
    s6Step332EntryFv_distinct s6Step332EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step332EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step332EntryFvRow.payload++s6Step332EntryFvFresh) s6Step332EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step332EntryGBefore : Arena := s6Step332EntryFBefore

private theorem s6Step332EntryG_Incoming : rowsOwned s6Step332EntryGBefore [s6Step332EntryGRow,s6Step332EntryFvRow,s6Step332EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332EntryFRow,s6Step332EntryGRow,s6Step332EntryFvRow,s6Step332EntryGvRow] 1 s6Step332EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332EntryG_Outgoing : rowsOwned s6Step332EntryGvAfter [s6Step332EntryGOut,s6Step332EntryFvOut,s6Step332EntryGvOut] :=
  hmrRows_owned_drop s6Step332EntryGvAfter [s6Step332EntryFOut,s6Step332EntryGOut,s6Step332EntryFvOut,s6Step332EntryGvOut] 1 s6Step332EntryBank_outgoingOwned

private theorem s6Step332EntryG_distinct : (s6Step332EntryGRow.sign::s6Step332EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332EntryG_owned : (s6Step332EntryGRow.sign::s6Step332EntryGRow.payload).toFinset⊆s6Step332EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EntryG_reserved : s6Step332EntryGBefore.reserve s6Step332EntryGFresh.toFinset=some s6Step332EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step332EntryGFresh,arenaWires]
  · norm_num [s6Step332EntryGBefore,s6Step332EntryFBefore,s6Step332EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step332EntryGAfter,s6Step332EntryGBefore,s6Step332EntryFBefore,s6Step332EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step332EntryG_checked : planRowResizeLog s6Step332EntryGBefore s6Step332EntryGRow 105 s6Step332EntryGFresh=
    some (s6Step332EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 865],777⟩,growRow 777 s6Step332EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step332EntryGBefore s6Step332EntryGAfter s6Step332EntryGRow 105 s6Step332EntryGFresh
    s6Step332EntryG_distinct s6Step332EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step332EntryG_reserved
  have rowEq : WindowRow.mk (s6Step332EntryGRow.payload++s6Step332EntryGFresh) s6Step332EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 865],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step332EntryGvBefore : Arena := s6Step332EntryGAfter

private theorem s6Step332EntryGv_Incoming : rowsOwned s6Step332EntryGvBefore [s6Step332EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332EntryFRow,s6Step332EntryGRow,s6Step332EntryFvRow,s6Step332EntryGvRow] 3 s6Step332EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332EntryGv_Outgoing : rowsOwned s6Step332EntryGvAfter [s6Step332EntryGvOut] :=
  hmrRows_owned_drop s6Step332EntryGvAfter [s6Step332EntryFOut,s6Step332EntryGOut,s6Step332EntryFvOut,s6Step332EntryGvOut] 3 s6Step332EntryBank_outgoingOwned

private theorem s6Step332EntryGv_distinct : (s6Step332EntryGvRow.sign::s6Step332EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332EntryGv_owned : (s6Step332EntryGvRow.sign::s6Step332EntryGvRow.payload).toFinset⊆s6Step332EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332EntryGv_reserved : s6Step332EntryGvBefore.reserve s6Step332EntryGvFresh.toFinset=some s6Step332EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step332EntryGvFresh,arenaWires]
  · norm_num [s6Step332EntryGvBefore,s6Step332EntryGAfter,s6Step332EntryGvFresh,arenaWires]
  · simp only [s6Step332EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step332EntryGv_checked : planRowResizeLog s6Step332EntryGvBefore s6Step332EntryGvRow 181 s6Step332EntryGvFresh=
    some (s6Step332EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩,growRow 775 s6Step332EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step332EntryGvBefore s6Step332EntryGvAfter s6Step332EntryGvRow 181 s6Step332EntryGvFresh
    s6Step332EntryGv_distinct s6Step332EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step332EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step332EntryGvRow.payload++s6Step332EntryGvFresh) s6Step332EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step332EntryBank_rows : planWindowRowsLog s6Step332EntryFBefore [(s6Step332EntryFRow,105),(s6Step332EntryGRow,105),(s6Step332EntryFvRow,181),(s6Step332EntryGvRow,181)] [s6Step332EntryFFresh,s6Step332EntryGFresh,s6Step332EntryFvFresh,s6Step332EntryGvFresh]=
    some (s6Step332EntryGvAfter,[s6Step332EntryFOut,s6Step332EntryGOut,s6Step332EntryFvOut,s6Step332EntryGvOut],(growRow 795 s6Step332EntryFFresh ++ (growRow 777 s6Step332EntryGFresh ++ (growRow 776 s6Step332EntryFvFresh ++ (growRow 775 s6Step332EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step332EntryGvAfter [] []=some (s6Step332EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step332EntryGvBefore s6Step332EntryGvAfter s6Step332EntryGvAfter
    s6Step332EntryGvRow s6Step332EntryGvOut 181 s6Step332EntryGvFresh [] [] []
    (growRow 775 s6Step332EntryGvFresh) ([]) s6Step332EntryGv_Incoming s6Step332EntryGv_checked h4 s6Step332EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step332EntryFvBefore s6Step332EntryFvAfter s6Step332EntryGvAfter
    s6Step332EntryFvRow s6Step332EntryFvOut 181 s6Step332EntryFvFresh [(s6Step332EntryGvRow,181)] [s6Step332EntryGvFresh] [s6Step332EntryGvOut]
    (growRow 776 s6Step332EntryFvFresh) ((growRow 775 s6Step332EntryGvFresh ++ [])) s6Step332EntryFv_Incoming s6Step332EntryFv_checked h3 s6Step332EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step332EntryGBefore s6Step332EntryGAfter s6Step332EntryGvAfter
    s6Step332EntryGRow s6Step332EntryGOut 105 s6Step332EntryGFresh [(s6Step332EntryFvRow,181),(s6Step332EntryGvRow,181)] [s6Step332EntryFvFresh,s6Step332EntryGvFresh] [s6Step332EntryFvOut,s6Step332EntryGvOut]
    (growRow 777 s6Step332EntryGFresh) ((growRow 776 s6Step332EntryFvFresh ++ (growRow 775 s6Step332EntryGvFresh ++ []))) s6Step332EntryG_Incoming s6Step332EntryG_checked h2 s6Step332EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step332EntryFBefore s6Step332EntryFAfter s6Step332EntryGvAfter
    s6Step332EntryFRow s6Step332EntryFOut 105 s6Step332EntryFFresh [(s6Step332EntryGRow,105),(s6Step332EntryFvRow,181),(s6Step332EntryGvRow,181)] [s6Step332EntryGFresh,s6Step332EntryFvFresh,s6Step332EntryGvFresh] [s6Step332EntryGOut,s6Step332EntryFvOut,s6Step332EntryGvOut]
    (growRow 795 s6Step332EntryFFresh) ((growRow 777 s6Step332EntryGFresh ++ (growRow 776 s6Step332EntryFvFresh ++ (growRow 775 s6Step332EntryGvFresh ++ [])))) s6Step332EntryF_Incoming s6Step332EntryF_checked h1 s6Step332EntryF_Outgoing
  exact h0

private theorem s6Step332EntryBank_checked : compileHmrBankResizeLog .entry s6Step332EntryFBefore ⟨s6Step332EntryFRow,s6Step332EntryGRow,s6Step332EntryFvRow,s6Step332EntryGvRow⟩ ⟨105,105,181,181⟩ [s6Step332EntryFFresh,s6Step332EntryGFresh,s6Step332EntryFvFresh,s6Step332EntryGvFresh]=
    some (s6Step332EntryGvAfter,⟨s6Step332EntryFOut,s6Step332EntryGOut,s6Step332EntryFvOut,s6Step332EntryGvOut⟩,(growRow 795 s6Step332EntryFFresh ++ (growRow 777 s6Step332EntryGFresh ++ (growRow 776 s6Step332EntryFvFresh ++ (growRow 775 s6Step332EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step332EntryBank_rows]
  rfl

private def s6Step332ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<360) ∨ (361≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332ExitFBefore : Arena := s6Step332ExitGAfter

private def s6Step332ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 859],795⟩

private def s6Step332ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794],776⟩

private def s6Step332ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 865, 854],777⟩

private def s6Step332ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 907],775⟩

private theorem s6Step332ExitBank_incomingDistinct : ([s6Step332ExitGRow,s6Step332ExitFRow,s6Step332ExitFvRow,s6Step332ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332ExitF_Incoming : rowsOwned s6Step332ExitFBefore [s6Step332ExitFRow,s6Step332ExitFvRow,s6Step332ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332ExitGRow,s6Step332ExitFRow,s6Step332ExitFvRow,s6Step332ExitGvRow] 1 s6Step332ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332ExitBank_outgoingOwned : rowsOwned s6Step332ExitGvAfter [s6Step332ExitGOut,s6Step332ExitFOut,s6Step332ExitFvOut,s6Step332ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step332ExitGvAfter (fun q => (0≤q ∧ q<360) ∨ (361≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332ExitF_Outgoing : rowsOwned s6Step332ExitGvAfter [s6Step332ExitFOut,s6Step332ExitFvOut,s6Step332ExitGvOut] :=
  hmrRows_owned_drop s6Step332ExitGvAfter [s6Step332ExitGOut,s6Step332ExitFOut,s6Step332ExitFvOut,s6Step332ExitGvOut] 1 s6Step332ExitBank_outgoingOwned

private theorem s6Step332ExitF_distinct : (s6Step332ExitFRow.sign::s6Step332ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332ExitF_owned : (s6Step332ExitFRow.sign::s6Step332ExitFRow.payload).toFinset⊆s6Step332ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332ExitF_retired : s6Step332ExitFBefore.retireSet s6Step332ExitFExtra.toFinset=s6Step332ExitFAfter := by
  unfold Arena.retireSet s6Step332ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step332ExitFBefore,s6Step332ExitGAfter,s6Step332ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step332ExitF_checked : planRowResizeLog s6Step332ExitFBefore s6Step332ExitFRow 104 []=
    some (s6Step332ExitFAfter,s6Step332ExitFOut,shrinkRow 795 s6Step332ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step332ExitFBefore s6Step332ExitFRow 104 s6Step332ExitF_distinct s6Step332ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step332ExitFRow.payload.take 104) s6Step332ExitFRow.sign=s6Step332ExitFOut := by decide +kernel
  have hi : s6Step332ExitFRow.payload.drop 104=s6Step332ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step332ExitF_retired] at result
  exact result

private def s6Step332ExitFvAfter : Arena := s6Step332ExitFAfter

private def s6Step332ExitFvBefore : Arena := s6Step332ExitFAfter

private theorem s6Step332ExitFv_Incoming : rowsOwned s6Step332ExitFvBefore [s6Step332ExitFvRow,s6Step332ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332ExitGRow,s6Step332ExitFRow,s6Step332ExitFvRow,s6Step332ExitGvRow] 2 s6Step332ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332ExitFvBefore (fun q => (0≤q ∧ q<360) ∨ (361≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332ExitFv_Outgoing : rowsOwned s6Step332ExitGvAfter [s6Step332ExitFvOut,s6Step332ExitGvOut] :=
  hmrRows_owned_drop s6Step332ExitGvAfter [s6Step332ExitGOut,s6Step332ExitFOut,s6Step332ExitFvOut,s6Step332ExitGvOut] 2 s6Step332ExitBank_outgoingOwned

private theorem s6Step332ExitFv_distinct : (s6Step332ExitFvRow.sign::s6Step332ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332ExitFv_owned : (s6Step332ExitFvRow.sign::s6Step332ExitFvRow.payload).toFinset⊆s6Step332ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332ExitFvBefore (fun q => (0≤q ∧ q<360) ∨ (361≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332ExitFv_reserved : s6Step332ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step332ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step332ExitFv_checked : planRowResizeLog s6Step332ExitFvBefore s6Step332ExitFvRow 182 []=
    some (s6Step332ExitFvAfter,s6Step332ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step332ExitFvBefore s6Step332ExitFvAfter s6Step332ExitFvRow 182 []
    s6Step332ExitFv_distinct s6Step332ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step332ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step332ExitFvRow.payload++[]) s6Step332ExitFvRow.sign=s6Step332ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step332ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step332ExitG_Incoming : rowsOwned s6Step332ExitGBefore [s6Step332ExitGRow,s6Step332ExitFRow,s6Step332ExitFvRow,s6Step332ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332ExitGRow,s6Step332ExitFRow,s6Step332ExitFvRow,s6Step332ExitGvRow] 0 s6Step332ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332ExitG_Outgoing : rowsOwned s6Step332ExitGvAfter [s6Step332ExitGOut,s6Step332ExitFOut,s6Step332ExitFvOut,s6Step332ExitGvOut] :=
  hmrRows_owned_drop s6Step332ExitGvAfter [s6Step332ExitGOut,s6Step332ExitFOut,s6Step332ExitFvOut,s6Step332ExitGvOut] 0 s6Step332ExitBank_outgoingOwned

private theorem s6Step332ExitG_distinct : (s6Step332ExitGRow.sign::s6Step332ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332ExitG_owned : (s6Step332ExitGRow.sign::s6Step332ExitGRow.payload).toFinset⊆s6Step332ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332ExitG_retired : s6Step332ExitGBefore.retireSet s6Step332ExitGExtra.toFinset=s6Step332ExitGAfter := by
  unfold Arena.retireSet s6Step332ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step332ExitGBefore,s6Step332ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step332ExitG_checked : planRowResizeLog s6Step332ExitGBefore s6Step332ExitGRow 104 []=
    some (s6Step332ExitGAfter,s6Step332ExitGOut,shrinkRow 777 s6Step332ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step332ExitGBefore s6Step332ExitGRow 104 s6Step332ExitG_distinct s6Step332ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step332ExitGRow.payload.take 104) s6Step332ExitGRow.sign=s6Step332ExitGOut := by decide +kernel
  have hi : s6Step332ExitGRow.payload.drop 104=s6Step332ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step332ExitG_retired] at result
  exact result

private def s6Step332ExitGvBefore : Arena := s6Step332ExitFAfter

private theorem s6Step332ExitGv_Incoming : rowsOwned s6Step332ExitGvBefore [s6Step332ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332ExitGRow,s6Step332ExitFRow,s6Step332ExitFvRow,s6Step332ExitGvRow] 3 s6Step332ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332ExitGvBefore (fun q => (0≤q ∧ q<360) ∨ (361≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332ExitGv_Outgoing : rowsOwned s6Step332ExitGvAfter [s6Step332ExitGvOut] :=
  hmrRows_owned_drop s6Step332ExitGvAfter [s6Step332ExitGOut,s6Step332ExitFOut,s6Step332ExitFvOut,s6Step332ExitGvOut] 3 s6Step332ExitBank_outgoingOwned

private theorem s6Step332ExitGv_distinct : (s6Step332ExitGvRow.sign::s6Step332ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332ExitGv_owned : (s6Step332ExitGvRow.sign::s6Step332ExitGvRow.payload).toFinset⊆s6Step332ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332ExitGvBefore (fun q => (0≤q ∧ q<360) ∨ (361≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332ExitGv_retired : s6Step332ExitGvBefore.retireSet s6Step332ExitGvExtra.toFinset=s6Step332ExitGvAfter := by
  unfold Arena.retireSet s6Step332ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step332ExitGvBefore,s6Step332ExitFAfter,s6Step332ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step332ExitGv_checked : planRowResizeLog s6Step332ExitGvBefore s6Step332ExitGvRow 181 []=
    some (s6Step332ExitGvAfter,s6Step332ExitGvOut,shrinkRow 775 s6Step332ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step332ExitGvBefore s6Step332ExitGvRow 181 s6Step332ExitGv_distinct s6Step332ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step332ExitGvRow.payload.take 181) s6Step332ExitGvRow.sign=s6Step332ExitGvOut := by decide +kernel
  have hi : s6Step332ExitGvRow.payload.drop 181=s6Step332ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step332ExitGv_retired] at result
  exact result

private theorem s6Step332ExitBank_rows : planWindowRowsLog s6Step332ExitGBefore [(s6Step332ExitGRow,104),(s6Step332ExitFRow,104),(s6Step332ExitFvRow,182),(s6Step332ExitGvRow,181)] [[],[],[],[]]=
    some (s6Step332ExitGvAfter,[s6Step332ExitGOut,s6Step332ExitFOut,s6Step332ExitFvOut,s6Step332ExitGvOut],(shrinkRow 777 s6Step332ExitGExtra ++ (shrinkRow 795 s6Step332ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step332ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step332ExitGvAfter [] []=some (s6Step332ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step332ExitGvBefore s6Step332ExitGvAfter s6Step332ExitGvAfter
    s6Step332ExitGvRow s6Step332ExitGvOut 181 [] [] [] []
    (shrinkRow 775 s6Step332ExitGvExtra) ([]) s6Step332ExitGv_Incoming s6Step332ExitGv_checked h4 s6Step332ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step332ExitFvBefore s6Step332ExitFvAfter s6Step332ExitGvAfter
    s6Step332ExitFvRow s6Step332ExitFvOut 182 [] [(s6Step332ExitGvRow,181)] [[]] [s6Step332ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step332ExitGvExtra ++ [])) s6Step332ExitFv_Incoming s6Step332ExitFv_checked h3 s6Step332ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step332ExitFBefore s6Step332ExitFAfter s6Step332ExitGvAfter
    s6Step332ExitFRow s6Step332ExitFOut 104 [] [(s6Step332ExitFvRow,182),(s6Step332ExitGvRow,181)] [[],[]] [s6Step332ExitFvOut,s6Step332ExitGvOut]
    (shrinkRow 795 s6Step332ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step332ExitGvExtra ++ []))) s6Step332ExitF_Incoming s6Step332ExitF_checked h2 s6Step332ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step332ExitGBefore s6Step332ExitGAfter s6Step332ExitGvAfter
    s6Step332ExitGRow s6Step332ExitGOut 104 [] [(s6Step332ExitFRow,104),(s6Step332ExitFvRow,182),(s6Step332ExitGvRow,181)] [[],[],[]] [s6Step332ExitFOut,s6Step332ExitFvOut,s6Step332ExitGvOut]
    (shrinkRow 777 s6Step332ExitGExtra) ((shrinkRow 795 s6Step332ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step332ExitGvExtra ++ [])))) s6Step332ExitG_Incoming s6Step332ExitG_checked h1 s6Step332ExitG_Outgoing
  exact h0

private theorem s6Step332ExitBank_checked : compileHmrBankResizeLog .exit s6Step332ExitGBefore ⟨s6Step332ExitFRow,s6Step332ExitGRow,s6Step332ExitFvRow,s6Step332ExitGvRow⟩ ⟨104,104,182,181⟩ [[],[],[],[]]=
    some (s6Step332ExitGvAfter,⟨s6Step332ExitFOut,s6Step332ExitGOut,s6Step332ExitFvOut,s6Step332ExitGvOut⟩,(shrinkRow 777 s6Step332ExitGExtra ++ (shrinkRow 795 s6Step332ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step332ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step332ExitBank_rows]
  rfl

private theorem s6Step332Add0_apart : Disjoint s6Step332Add0Arena.live s6Step332Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step332Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332Add0_card : s6Step332Add0Arena.live.card=906 := by
  decide +kernel

private theorem s6Step332Add0_borrowed : s6Step332Add0Arena.checkBorrow (hmrHybridCount s6Step332Add0Arena s6Step332Add0B.length) s6Step332Add0Work=some s6Step332Add0During := by
  have len : s6Step332Add0Work.length=hmrHybridCount s6Step332Add0Arena s6Step332Add0B.length := by
    rw [hmrHybridCount,s6Step332Add0_card]
    decide +kernel
  have nd : s6Step332Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step332Add0Arena s6Step332Add0During s6Step332Add0Work.toFinset s6Step332Add0_bounded s6Step332Add0_apart rfl

private theorem s6Step332Add0_distinct : (903::841::843::(s6Step332Add0A++s6Step332Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332Add0_owned : (903::841::843::(s6Step332Add0A++s6Step332Add0B)).toFinset⊆s6Step332Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step332Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332Add0_checked : compileHmrHybridCinLog s6Step332Add0Arena 841 903 843 s6Step332Add0A s6Step332Add0B s6Step332Add0Work=some s6Step332Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step332Add0Arena s6Step332Add0During 841 903 843 s6Step332Add0A s6Step332Add0B s6Step332Add0Work
    (by decide +kernel) (by decide +kernel) s6Step332Add0_distinct
    (fun q hq => s6Step332Add0_owned (List.mem_toFinset.mpr hq)) s6Step332Add0_borrowed

private theorem s6Step332Add1_apart : Disjoint s6Step332Add1Arena.live s6Step332Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step332Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332Add1_card : s6Step332Add1Arena.live.card=906 := by
  decide +kernel

private theorem s6Step332Add1_borrowed : s6Step332Add1Arena.checkBorrow (hmrHybridCount s6Step332Add1Arena s6Step332Add1B.length) s6Step332Add1Work=some s6Step332Add1During := by
  have len : s6Step332Add1Work.length=hmrHybridCount s6Step332Add1Arena s6Step332Add1B.length := by
    rw [hmrHybridCount,s6Step332Add1_card]
    decide +kernel
  have nd : s6Step332Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step332Add1Arena s6Step332Add1During s6Step332Add1Work.toFinset s6Step332Add1_bounded s6Step332Add1_apart rfl

private theorem s6Step332Add1_distinct : (903::841::843::(s6Step332Add1A++s6Step332Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332Add1_owned : (903::841::843::(s6Step332Add1A++s6Step332Add1B)).toFinset⊆s6Step332Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step332Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332Add1_checked : compileHmrHybridCinLog s6Step332Add1Arena 841 903 843 s6Step332Add1A s6Step332Add1B s6Step332Add1Work=some s6Step332Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step332Add1Arena s6Step332Add1During 841 903 843 s6Step332Add1A s6Step332Add1B s6Step332Add1Work
    (by decide +kernel) (by decide +kernel) s6Step332Add1_distinct
    (fun q hq => s6Step332Add1_owned (List.mem_toFinset.mpr hq)) s6Step332Add1_borrowed

private theorem s6Step332F4_apart : Disjoint (s6Step332Add0A++s6Step332Add0B).toFinset (s6Step332Add1A++s6Step332Add1B).toFinset := by
  have nd : ((s6Step332Add0A++s6Step332Add0B)++(s6Step332Add1A++s6Step332Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step332F4_carry : s6Step332F4FlagArena.checkBorrow 1 [843]=some s6Step332Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step332F4FlagArena,s6Step332HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step332F4FlagArena,s6Step332HeadFvAfter,s6Step332Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step332F4_distinct : (874::841::903::843::((s6Step332Add0A++s6Step332Add1A)++(s6Step332Add0B++s6Step332Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332F4_flag : s6Step332HeadFvAfter.checkBorrow 1 [903]=some s6Step332F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step332HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step332F4_owned : (874::841::((s6Step332Add0A++s6Step332Add1A)++(s6Step332Add0B++s6Step332Add1B))).toFinset⊆s6Step332HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step332HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332F4_checked : compileHmrHybridF4Log s6Step332HeadFvAfter 874 841 s6Step332Add0A s6Step332Add0B s6Step332Add1A s6Step332Add1B [903] [843] s6Step332Add0Work s6Step332Add1Work=some s6Step332F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step332HeadFvAfter s6Step332F4FlagArena s6Step332Add0Arena s6Step332Add0During s6Step332Add1During 874 841
    s6Step332Add0A s6Step332Add0B s6Step332Add1A s6Step332Add1B [903] [843] s6Step332Add0Work s6Step332Add1Work
    (fun q hq => s6Step332F4_owned (List.mem_toFinset.mpr hq)) s6Step332F4_flag s6Step332F4_carry
    s6Step332F4_distinct s6Step332F4_apart s6Step332Add0_checked s6Step332Add1_checked

private theorem s6Step332Front_branch : s6Step332FrontSigmaArena.checkBorrow 1 [841]=some s6Step332HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step332FrontSigmaArena,s6Step332EntryGvAfter,s6Step332EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step332FrontSigmaArena,s6Step332EntryGvAfter,s6Step332EntryGAfter,s6Step332HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step332Front_entry : HmrFrontEntryValid s6Step332EntryFBefore s6Step332FrontBank 105 181 ⟨104,104,182,181⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step332FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step332EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step332EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step332FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step332Front_sigma : s6Step332EntryGvAfter.checkBorrow 1 [874]=some s6Step332FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step332EntryGvAfter,s6Step332EntryGAfter,arenaWires]
  · rfl

private def s6Step332HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332HeadFBefore : Arena := s6Step332HeadGAfter

private def s6Step332HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step332HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step332HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 865],777⟩

private def s6Step332HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩

private theorem s6Step332HeadBank_incomingDistinct : ([s6Step332HeadGRow,s6Step332HeadFRow,s6Step332HeadGvRow,s6Step332HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332HeadF_Incoming : rowsOwned s6Step332HeadFBefore [s6Step332HeadFRow,s6Step332HeadGvRow,s6Step332HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332HeadGRow,s6Step332HeadFRow,s6Step332HeadGvRow,s6Step332HeadFvRow] 1 s6Step332HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332HeadBank_outgoingOwned : rowsOwned s6Step332HeadFvAfter [s6Step332HeadGOut,s6Step332HeadFOut,s6Step332HeadGvOut,s6Step332HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step332HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332HeadF_Outgoing : rowsOwned s6Step332HeadFvAfter [s6Step332HeadFOut,s6Step332HeadGvOut,s6Step332HeadFvOut] :=
  hmrRows_owned_drop s6Step332HeadFvAfter [s6Step332HeadGOut,s6Step332HeadFOut,s6Step332HeadGvOut,s6Step332HeadFvOut] 1 s6Step332HeadBank_outgoingOwned

private theorem s6Step332HeadF_distinct : (s6Step332HeadFRow.sign::s6Step332HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332HeadF_owned : (s6Step332HeadFRow.sign::s6Step332HeadFRow.payload).toFinset⊆s6Step332HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332HeadF_reserved : s6Step332HeadFBefore.reserve s6Step332HeadFFresh.toFinset=some s6Step332HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step332HeadFFresh,arenaWires]
  · norm_num [s6Step332HeadFBefore,s6Step332HeadGAfter,s6Step332HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step332HeadFAfter,s6Step332HeadFBefore,s6Step332HeadGAfter,s6Step332HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step332HeadF_checked : planRowResizeLog s6Step332HeadFBefore s6Step332HeadFRow 106 s6Step332HeadFFresh=
    some (s6Step332HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 859],795⟩,growRow 795 s6Step332HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step332HeadFBefore s6Step332HeadFAfter s6Step332HeadFRow 106 s6Step332HeadFFresh
    s6Step332HeadF_distinct s6Step332HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step332HeadF_reserved
  have rowEq : WindowRow.mk (s6Step332HeadFRow.payload++s6Step332HeadFFresh) s6Step332HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 859],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step332HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step332HeadFvBefore : Arena := s6Step332HeadGvAfter

private theorem s6Step332HeadFv_Incoming : rowsOwned s6Step332HeadFvBefore [s6Step332HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332HeadGRow,s6Step332HeadFRow,s6Step332HeadGvRow,s6Step332HeadFvRow] 3 s6Step332HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332HeadFv_Outgoing : rowsOwned s6Step332HeadFvAfter [s6Step332HeadFvOut] :=
  hmrRows_owned_drop s6Step332HeadFvAfter [s6Step332HeadGOut,s6Step332HeadFOut,s6Step332HeadGvOut,s6Step332HeadFvOut] 3 s6Step332HeadBank_outgoingOwned

private theorem s6Step332HeadFv_distinct : (s6Step332HeadFvRow.sign::s6Step332HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332HeadFv_owned : (s6Step332HeadFvRow.sign::s6Step332HeadFvRow.payload).toFinset⊆s6Step332HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332HeadFv_reserved : s6Step332HeadFvBefore.reserve s6Step332HeadFvFresh.toFinset=some s6Step332HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step332HeadFvFresh,arenaWires]
  · norm_num [s6Step332HeadFvBefore,s6Step332HeadGvAfter,s6Step332HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step332HeadFvAfter,s6Step332HeadFvBefore,s6Step332HeadGvAfter,s6Step332HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step332HeadFv_checked : planRowResizeLog s6Step332HeadFvBefore s6Step332HeadFvRow 182 s6Step332HeadFvFresh=
    some (s6Step332HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794],776⟩,growRow 776 s6Step332HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step332HeadFvBefore s6Step332HeadFvAfter s6Step332HeadFvRow 182 s6Step332HeadFvFresh
    s6Step332HeadFv_distinct s6Step332HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step332HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step332HeadFvRow.payload++s6Step332HeadFvFresh) s6Step332HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 794],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step332HeadG_Incoming : rowsOwned s6Step332HeadGBefore [s6Step332HeadGRow,s6Step332HeadFRow,s6Step332HeadGvRow,s6Step332HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332HeadGRow,s6Step332HeadFRow,s6Step332HeadGvRow,s6Step332HeadFvRow] 0 s6Step332HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332HeadG_Outgoing : rowsOwned s6Step332HeadFvAfter [s6Step332HeadGOut,s6Step332HeadFOut,s6Step332HeadGvOut,s6Step332HeadFvOut] :=
  hmrRows_owned_drop s6Step332HeadFvAfter [s6Step332HeadGOut,s6Step332HeadFOut,s6Step332HeadGvOut,s6Step332HeadFvOut] 0 s6Step332HeadBank_outgoingOwned

private theorem s6Step332HeadG_distinct : (s6Step332HeadGRow.sign::s6Step332HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332HeadG_owned : (s6Step332HeadGRow.sign::s6Step332HeadGRow.payload).toFinset⊆s6Step332HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332HeadG_reserved : s6Step332HeadGBefore.reserve s6Step332HeadGFresh.toFinset=some s6Step332HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step332HeadGFresh,arenaWires]
  · norm_num [s6Step332HeadGBefore,s6Step332HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step332HeadGAfter,s6Step332HeadGBefore,s6Step332HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step332HeadG_checked : planRowResizeLog s6Step332HeadGBefore s6Step332HeadGRow 106 s6Step332HeadGFresh=
    some (s6Step332HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 865, 854],777⟩,growRow 777 s6Step332HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step332HeadGBefore s6Step332HeadGAfter s6Step332HeadGRow 106 s6Step332HeadGFresh
    s6Step332HeadG_distinct s6Step332HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step332HeadG_reserved
  have rowEq : WindowRow.mk (s6Step332HeadGRow.payload++s6Step332HeadGFresh) s6Step332HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 865, 854],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step332HeadGvBefore : Arena := s6Step332HeadFAfter

private theorem s6Step332HeadGv_Incoming : rowsOwned s6Step332HeadGvBefore [s6Step332HeadGvRow,s6Step332HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step332HeadGRow,s6Step332HeadFRow,s6Step332HeadGvRow,s6Step332HeadFvRow] 2 s6Step332HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step332HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step332HeadGv_Outgoing : rowsOwned s6Step332HeadFvAfter [s6Step332HeadGvOut,s6Step332HeadFvOut] :=
  hmrRows_owned_drop s6Step332HeadFvAfter [s6Step332HeadGOut,s6Step332HeadFOut,s6Step332HeadGvOut,s6Step332HeadFvOut] 2 s6Step332HeadBank_outgoingOwned

private theorem s6Step332HeadGv_distinct : (s6Step332HeadGvRow.sign::s6Step332HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step332HeadGv_owned : (s6Step332HeadGvRow.sign::s6Step332HeadGvRow.payload).toFinset⊆s6Step332HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step332HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step332HeadGv_reserved : s6Step332HeadGvBefore.reserve s6Step332HeadGvFresh.toFinset=some s6Step332HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step332HeadGvFresh,arenaWires]
  · norm_num [s6Step332HeadGvBefore,s6Step332HeadFAfter,s6Step332HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step332HeadGvAfter,s6Step332HeadGvBefore,s6Step332HeadFAfter,s6Step332HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step332HeadGv_checked : planRowResizeLog s6Step332HeadGvBefore s6Step332HeadGvRow 182 s6Step332HeadGvFresh=
    some (s6Step332HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 907],775⟩,growRow 775 s6Step332HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step332HeadGvBefore s6Step332HeadGvAfter s6Step332HeadGvRow 182 s6Step332HeadGvFresh
    s6Step332HeadGv_distinct s6Step332HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step332HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step332HeadGvRow.payload++s6Step332HeadGvFresh) s6Step332HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step332HeadBank_rows : planWindowRowsLog s6Step332HeadGBefore [(s6Step332HeadGRow,106),(s6Step332HeadFRow,106),(s6Step332HeadGvRow,182),(s6Step332HeadFvRow,182)] [s6Step332HeadGFresh,s6Step332HeadFFresh,s6Step332HeadGvFresh,s6Step332HeadFvFresh]=
    some (s6Step332HeadFvAfter,[s6Step332HeadGOut,s6Step332HeadFOut,s6Step332HeadGvOut,s6Step332HeadFvOut],(growRow 777 s6Step332HeadGFresh ++ (growRow 795 s6Step332HeadFFresh ++ (growRow 775 s6Step332HeadGvFresh ++ (growRow 776 s6Step332HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step332HeadFvAfter [] []=some (s6Step332HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step332HeadFvBefore s6Step332HeadFvAfter s6Step332HeadFvAfter
    s6Step332HeadFvRow s6Step332HeadFvOut 182 s6Step332HeadFvFresh [] [] []
    (growRow 776 s6Step332HeadFvFresh) ([]) s6Step332HeadFv_Incoming s6Step332HeadFv_checked h4 s6Step332HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step332HeadGvBefore s6Step332HeadGvAfter s6Step332HeadFvAfter
    s6Step332HeadGvRow s6Step332HeadGvOut 182 s6Step332HeadGvFresh [(s6Step332HeadFvRow,182)] [s6Step332HeadFvFresh] [s6Step332HeadFvOut]
    (growRow 775 s6Step332HeadGvFresh) ((growRow 776 s6Step332HeadFvFresh ++ [])) s6Step332HeadGv_Incoming s6Step332HeadGv_checked h3 s6Step332HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step332HeadFBefore s6Step332HeadFAfter s6Step332HeadFvAfter
    s6Step332HeadFRow s6Step332HeadFOut 106 s6Step332HeadFFresh [(s6Step332HeadGvRow,182),(s6Step332HeadFvRow,182)] [s6Step332HeadGvFresh,s6Step332HeadFvFresh] [s6Step332HeadGvOut,s6Step332HeadFvOut]
    (growRow 795 s6Step332HeadFFresh) ((growRow 775 s6Step332HeadGvFresh ++ (growRow 776 s6Step332HeadFvFresh ++ []))) s6Step332HeadF_Incoming s6Step332HeadF_checked h2 s6Step332HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step332HeadGBefore s6Step332HeadGAfter s6Step332HeadFvAfter
    s6Step332HeadGRow s6Step332HeadGOut 106 s6Step332HeadGFresh [(s6Step332HeadFRow,106),(s6Step332HeadGvRow,182),(s6Step332HeadFvRow,182)] [s6Step332HeadFFresh,s6Step332HeadGvFresh,s6Step332HeadFvFresh] [s6Step332HeadFOut,s6Step332HeadGvOut,s6Step332HeadFvOut]
    (growRow 777 s6Step332HeadGFresh) ((growRow 795 s6Step332HeadFFresh ++ (growRow 775 s6Step332HeadGvFresh ++ (growRow 776 s6Step332HeadFvFresh ++ [])))) s6Step332HeadG_Incoming s6Step332HeadG_checked h1 s6Step332HeadG_Outgoing
  exact h0

private theorem s6Step332HeadBank_checked : compileHmrBankResizeLog .headroom s6Step332HeadGBefore ⟨s6Step332HeadFRow,s6Step332HeadGRow,s6Step332HeadFvRow,s6Step332HeadGvRow⟩ ⟨106,106,182,182⟩ [s6Step332HeadGFresh,s6Step332HeadFFresh,s6Step332HeadGvFresh,s6Step332HeadFvFresh]=
    some (s6Step332HeadFvAfter,⟨s6Step332HeadFOut,s6Step332HeadGOut,s6Step332HeadFvOut,s6Step332HeadGvOut⟩,(growRow 777 s6Step332HeadGFresh ++ (growRow 795 s6Step332HeadFFresh ++ (growRow 775 s6Step332HeadGvFresh ++ (growRow 776 s6Step332HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step332HeadBank_rows]
  rfl

private theorem s6Step332Front_checked : compileHmrSourceFrontLog s6Step332EntryFBefore s6Step332FrontBank 105 181 ⟨104,104,182,181⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step332FrontLog=some s6Step332FrontPlan := by
  have pairEq : s6Step332FrontPair=⟨s6Step332HeadFRow,s6Step332HeadGRow,s6Step332HeadFvRow,s6Step332HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step332FrontHead=⟨s6Step332ExitFRow,s6Step332ExitGRow,s6Step332ExitFvRow,s6Step332ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step332Add0A=s6Step332FrontHead.f.wires := by decide +kernel
  have gEq : s6Step332Add0B=s6Step332FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step332Add1A=s6Step332FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step332Add1B=s6Step332FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step332EntryFBefore s6Step332FrontBank 105 181 ⟨104,104,182,181⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step332FrontLog s6Step332FrontPlan
  · exact s6Step332Front_entry
  · exact s6Step332EntryBank_checked
  · exact s6Step332Front_sigma
  · rfl
  · exact s6Step332Front_branch
  · rfl
  · simpa only [s6Step332FrontPlan,pairEq] using s6Step332HeadBank_checked
  · simpa only [s6Step332FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step332F4_checked
  · exact s6Step332Counter_checked
  · rfl
  · simpa only [s6Step332FrontPlan,headEq] using s6Step332ExitBank_checked

private theorem s6Step332Complete_explicit_checked : compileHmrEarlyStepLog s6Step332EntryFBefore s6Step332FrontBank 105 181 ⟨104,104,182,181⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step332CompleteLog=some s6Step332CompletePlan := by
  let Q := s6Step332EarlyControlPlan
  have hq := s6Step332EarlyControl_plan_checked
  have fv1 : s6Step332CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step332CompleteOut.fv.payload[2]?.getD s6Step332CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step332CompleteOut.fv.payload[3]?.getD s6Step332CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step332CompleteOut.fv.payload[4]?.getD s6Step332CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step332EntryFBefore s6Step332EarlyControlArena s6Step332FrontBank 105 181 ⟨104,104,182,181⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step332CompleteLog s6Step332FrontPlan Q
    s6Step332Front_checked s6Step332Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step332Complete_owned s6Step332Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step332EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 s6Step332CompleteOut.fv.second (s6Step332CompleteOut.fv.payload[2]?.getD s6Step332CompleteOut.fv.sign) (s6Step332CompleteOut.fv.payload[3]?.getD s6Step332CompleteOut.fv.sign) (s6Step332CompleteOut.fv.payload[4]?.getD s6Step332CompleteOut.fv.sign) 841 60 s6Step332EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep332Arena : Arena := s6Step332EntryFBefore
def s6PrivateStep332Bank : WindowBank := s6Step332FrontBank
def s6PrivateStep332Spec : HmrSourceWalkStepLog := ⟨105,181,⟨104,104,182,181⟩,60,.early s6Step332CompleteLog⟩
def s6PrivateStep332Plan : HmrSourceStepPlan := .early s6Step332CompletePlan
theorem s6PrivateStep332_source : s6PrivateStep332Spec=s6ObservedLogs320[12] := rfl
theorem s6PrivateStep332_checked : compileHmrSourceStepLog s6PrivateStep332Arena s6PrivateStep332Bank
    s6PrivateStep332Spec.fgWidth s6PrivateStep332Spec.vWidth s6PrivateStep332Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 332 s6PrivateStep332Spec.need none s6PrivateStep332Spec.log=some s6PrivateStep332Plan := by
  change compileHmrSourceStepLog s6Step332EntryFBefore s6Step332FrontBank 105 181 ⟨104,104,182,181⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 332 60 none (.early s6Step332CompleteLog)=some (.early s6Step332CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 332<498)]
  rw [s6Step332Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
