import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep329
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

private def s6Step331CompleteMoves : List (Wire × Wire) := []

private def s6Step331EarlyControlLog : HmrEarlyControlLog := ⟨[841, 854, 859, 907, 794],[903],[843],[860, 805, 817, 812, 915, 906],[]⟩

private def s6Step331FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [907], [], [833]],[[794], [859], [841], [854]],[[], [], [], []]⟩,[874],[865],[903],[843],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[903, 843, 860, 805]⟩

private def s6Step331CompleteLog : HmrEarlyStepLog := ⟨s6Step331FrontLog,s6Step331CompleteMoves,s6Step331EarlyControlLog⟩

private def s6Step331ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step331ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step331ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],777⟩

private def s6Step331ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩

private def s6Step331FrontOut : WindowBank := ⟨s6Step331ExitFOut,s6Step331ExitGOut,s6Step331ExitFvOut,s6Step331ExitGvOut⟩

private def s6Step331CompleteOut : WindowBank := s6Step331FrontOut.repacked s6Step331CompleteMoves

private def s6Step331EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step331EarlyControlPositiveArena,[903],s6Step331EarlyControlEqualityArena,[843],⟨⟨874,false⟩,[⟨⟨903,false⟩,843⟩]⟩⟩

private def s6Step331EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,841⟩,⟨⟨772,false⟩,854⟩,⟨⟨771,false⟩,859⟩,⟨⟨770,false⟩,907⟩,⟨⟨769,false⟩,794⟩]⟩

private def s6Step331EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step331EarlyControlZeroArena,s6Step331EarlyControlZeroPlan,s6Step331EarlyControlClassPlan,s6Step331EarlyControlFlagArena,s6Step331EarlyControlFittedArena,s6Step331EarlyControlHistoryArena,s6Step331EarlyControlSigmaArena,s6Step331EarlyControlOutputArena,s6Step331EarlyControlLog⟩

private def s6Step331CounterWork : List Wire := [903, 843, 860, 805]

private theorem s6Step331Counter_bounded : s6Step331CounterWork.toFinset⊆arenaWires := by norm_num [s6Step331CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step331HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331CounterDuring : Arena := ⟨s6Step331HeadFvAfter.live∪s6Step331CounterWork.toFinset,Finset.union_subset s6Step331HeadFvAfter.bounded s6Step331Counter_bounded⟩

private def s6Step331EntryFFresh : List Wire := []

private def s6Step331EntryFvFresh : List Wire := []

private def s6Step331EntryGFresh : List Wire := [907]

private def s6Step331EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EntryGvFresh : List Wire := [833]

private def s6Step331ExitFExtra : List Wire := [859]

private def s6Step331ExitFvExtra : List Wire := [854]

private def s6Step331ExitGExtra : List Wire := [907, 794]

private def s6Step331ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331ExitGvExtra : List Wire := [841]

private def s6Step331Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331Add0Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step331Add0_bounded : s6Step331Add0Work.toFinset⊆arenaWires := by
  have h : s6Step331Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step331Add0During : Arena := ⟨s6Step331Add0Arena.live∪s6Step331Add0Work.toFinset,Finset.union_subset s6Step331Add0Arena.bounded s6Step331Add0_bounded⟩

private def s6Step331Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331Add1Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step331Add1_bounded : s6Step331Add1Work.toFinset⊆arenaWires := by
  have h : s6Step331Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step331Add1During : Arena := ⟨s6Step331Add1Arena.live∪s6Step331Add1Work.toFinset,Finset.union_subset s6Step331Add1Arena.bounded s6Step331Add1_bounded⟩

private def s6Step331F4FlagArena : Arena := ⟨s6Step331HeadFvAfter.live∪{903},Finset.union_subset s6Step331HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step331F4Plan : HmrHybridF4Plan := ⟨s6Step331F4FlagArena,[903],s6Step331Add0Arena,[843],s6Step331Add0During,s6Step331Add0Work,s6Step331Add1During,s6Step331Add1Work⟩

private def s6Step331HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 859],795⟩

private def s6Step331HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 854],776⟩

private def s6Step331HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907, 794],777⟩

private def s6Step331HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩

private def s6Step331FrontHead : WindowBank := ⟨s6Step331HeadFOut,s6Step331HeadGOut,s6Step331HeadFvOut,s6Step331HeadGvOut⟩

private def s6Step331EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step331EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step331EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907],777⟩

private def s6Step331EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩

private def s6Step331FrontPair : WindowBank := ⟨s6Step331EntryFOut,s6Step331EntryGOut,s6Step331EntryFvOut,s6Step331EntryGvOut⟩

private def s6Step331FrontSigmaArena : Arena := ⟨s6Step331EntryGvAfter.live∪{874},Finset.union_subset s6Step331EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step331HeadFFresh : List Wire := [859]

private def s6Step331HeadFvFresh : List Wire := [854]

private def s6Step331HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331HeadGFresh : List Wire := [794]

private def s6Step331HeadGvFresh : List Wire := [841]

private def s6Step331FrontPlan : HmrSourceFront := ⟨s6Step331EntryGvAfter,s6Step331FrontPair,(growRow 795 s6Step331EntryFFresh ++ (growRow 777 s6Step331EntryGFresh ++ (growRow 776 s6Step331EntryFvFresh ++ (growRow 775 s6Step331EntryGvFresh ++ [])))),s6Step331FrontSigmaArena,[874],s6Step331HeadGBefore,[865],
  s6Step331HeadFvAfter,s6Step331FrontHead,(growRow 777 s6Step331HeadGFresh ++ (growRow 795 s6Step331HeadFFresh ++ (growRow 775 s6Step331HeadGvFresh ++ (growRow 776 s6Step331HeadFvFresh ++ [])))),s6Step331F4Plan,s6Step331CounterDuring,s6Step331CounterWork,s6Step331ExitGvAfter,s6Step331FrontOut,(shrinkRow 777 s6Step331ExitGExtra ++ (shrinkRow 795 s6Step331ExitFExtra ++ (shrinkRow 776 s6Step331ExitFvExtra ++ (shrinkRow 775 s6Step331ExitGvExtra ++ []))))⟩

private def s6Step331CompletePlan : HmrEarlyStepPlan := ⟨s6Step331FrontPlan,s6Step331EarlyControlArena,s6Step331EarlyControlPlan,s6Step331CompleteMoves⟩

private theorem s6Step331Complete_apart : List.Disjoint (s6Step331CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [874, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step331CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[874, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step331Complete_owned : (s6Step331CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step331EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331Complete_repack : s6Step331ExitGvAfter.checkRepack s6Step331CompleteMoves=some s6Step331EarlyControlArena := by rfl

private theorem s6Step331EarlyControl_branchOwned : ([865] : List Wire).toFinset⊆s6Step331EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EarlyControl_branch : compileHmrBranchRetirement s6Step331EarlyControlSigmaArena 865=some s6Step331EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step331EarlyControl_branchOwned
  · ext q
    simp [s6Step331EarlyControlOutputArena,s6Step331EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step331EarlyControl_classEqualityBorrow : s6Step331EarlyControlPositiveArena.checkBorrow (([874, 903] : List Wire).length-1) s6Step331EarlyControlLog.classWork=some s6Step331EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step331EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step331EarlyControlEqualityArena,s6Step331EarlyControlPositiveArena,s6Step331EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step331EarlyControl_classEqualityOwned : ([874, 903] : List Wire).toFinset⊆s6Step331EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EarlyControl_classEquality : compileHmrEqualityLog s6Step331EarlyControlPositiveArena [874, 903] 0 s6Step331EarlyControlLog.classWork=some (s6Step331EarlyControlEqualityArena,s6Step331EarlyControlLog.classWork,s6Step331EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step331EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step331EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step331EarlyControl_classOwned : ([769, 794, 874] : List Wire).toFinset⊆s6Step331EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EarlyControl_positiveBorrow : s6Step331EarlyControlZeroArena.checkBorrow (1) s6Step331EarlyControlLog.positiveWork=some s6Step331EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step331EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step331EarlyControlPositiveArena,s6Step331EarlyControlZeroArena,s6Step331EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step331EarlyControl_class : compileHmrSourceClassLog s6Step331EarlyControlZeroArena false 769 s6Step331EarlyControlZeroPlan.top 0 874 s6Step331EarlyControlLog.positiveWork s6Step331EarlyControlLog.classWork=some s6Step331EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step331EarlyControlClassPlan s6Step331EarlyControlZeroArena false 769 s6Step331EarlyControlZeroPlan.top 0 874
  constructor
  · decide +kernel
  · exact s6Step331EarlyControl_classOwned
  · exact s6Step331EarlyControl_positiveBorrow
  · exact s6Step331EarlyControl_classEquality

private theorem s6Step331EarlyControl_entryRecordOwned : ([865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step331EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EarlyControl_entrySigmaOwned : ([874, 254] : List Wire).toFinset⊆s6Step331EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EarlyControl_fitBorrow : s6Step331EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step331EarlyControlLog.recordFresh=some s6Step331EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step331EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step331EarlyControlFittedArena,s6Step331EarlyControlFlagArena,s6Step331EarlyControlLog,arenaWires]

private theorem s6Step331EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step331EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EarlyControl_fit : compileHmrRecordGrowLog s6Step331EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step331EarlyControlLog.recordFresh=some s6Step331EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step331EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step331EarlyControl_fitBorrow

private theorem s6Step331EarlyControl_flagsBorrow : s6Step331EarlyControlEqualityArena.checkBorrow (6) s6Step331EarlyControlLog.flagWork=some s6Step331EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step331EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step331EarlyControlFlagArena,s6Step331EarlyControlEqualityArena,s6Step331EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step331EarlyControl_flagsOwned : ([843, 253, 252, 251] : List Wire).toFinset⊆s6Step331EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EarlyControl_flags : compileHmrFlagsLog s6Step331EarlyControlClassPlan.equalityArena s6Step331EarlyControlClassPlan.equality.top 253 252 251 s6Step331EarlyControlLog.flagWork=some s6Step331EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step331EarlyControl_flagsOwned⟩
  · exact s6Step331EarlyControl_flagsBorrow

private theorem s6Step331EarlyControl_historyBorrow : s6Step331EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step331EarlyControlLog.recordFresh=some s6Step331EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step331EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step331EarlyControlHistoryArena,s6Step331EarlyControlArena,s6Step331EarlyControlLog,arenaWires]

private theorem s6Step331EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step331EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EarlyControl_history : compileHmrRecordGrowLog s6Step331EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step331EarlyControlLog.recordFresh=some s6Step331EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step331EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step331EarlyControl_historyBorrow

private theorem s6Step331EarlyControl_sigmaOwned : ([254, 874] : List Wire).toFinset⊆s6Step331EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EarlyControl_sigmaReleaseOwned : ([874] : List Wire).toFinset⊆s6Step331EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EarlyControl_sigmaRelease : s6Step331EarlyControlHistoryArena.release {874} (fun _ => false)=some s6Step331EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step331EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step331EarlyControlSigmaArena,s6Step331EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step331EarlyControl_sigma : compileHmrSigmaDropLog s6Step331EarlyControlHistoryArena false 0 0 254 874 []=some s6Step331EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step331EarlyControl_sigmaOwned⟩
  · exact s6Step331EarlyControl_sigmaRelease

private theorem s6Step331EarlyControl_zeroBorrow : s6Step331EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step331EarlyControlLog.zeroWork=some s6Step331EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step331EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step331EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step331EarlyControlZeroArena,s6Step331EarlyControlArena,s6Step331EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step331EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step331EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step331EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EarlyControl_zero : compileHmrEqualityLog s6Step331EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step331EarlyControlLog.zeroWork=some (s6Step331EarlyControlZeroArena,s6Step331EarlyControlLog.zeroWork,s6Step331EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step331EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step331EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step331EarlyControl_logged : s6Step331EarlyControlPlan.Logged s6Step331EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 865 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step331EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step331EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step331EarlyControl_zero
  · exact s6Step331EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step331EarlyControl_flags
  · exact s6Step331EarlyControl_fit
  · exact s6Step331EarlyControl_history
  · exact s6Step331EarlyControl_sigma
  · exact s6Step331EarlyControl_branch

private theorem s6Step331EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step331EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 865 60 s6Step331EarlyControlLog=some s6Step331EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step331EarlyControlPlan s6Step331EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 254 253 252 251 865 60 s6Step331EarlyControl_logged

private def s6Step331EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step331EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step331EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],777⟩

private def s6Step331EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩

private def s6Step331FrontBank : WindowBank := ⟨s6Step331EntryFRow,s6Step331EntryGRow,s6Step331EntryFvRow,s6Step331EntryGvRow⟩

private def s6Step331Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 859, 795]

private def s6Step331Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907, 794, 777]

private def s6Step331Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 854, 776]

private def s6Step331Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841, 775]

private theorem s6Step331Counter_apart : Disjoint s6Step331HeadFvAfter.live s6Step331CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step331HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331Counter_borrowed : s6Step331HeadFvAfter.checkBorrow 4 s6Step331CounterWork=some s6Step331CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step331HeadFvAfter s6Step331CounterDuring s6Step331CounterWork.toFinset s6Step331Counter_bounded s6Step331Counter_apart rfl

private theorem s6Step331Counter_owned : (874::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step331HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step331HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331Counter_checked : compileHmrCounterStepLog s6Step331HeadFvAfter true 874 [774, 773, 772, 771, 770, 769] s6Step331CounterWork=some s6Step331CounterDuring := by
  have owned : ∀q∈874::[774, 773, 772, 771, 770, 769],q∈s6Step331HeadFvAfter.live := fun q hq => s6Step331Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step331Counter_borrowed

private def s6Step331EntryFAfter : Arena := s6Step331EntryFBefore

private theorem s6Step331EntryBank_incomingDistinct : ([s6Step331EntryFRow,s6Step331EntryGRow,s6Step331EntryFvRow,s6Step331EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331EntryF_Incoming : rowsOwned s6Step331EntryFBefore [s6Step331EntryFRow,s6Step331EntryGRow,s6Step331EntryFvRow,s6Step331EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331EntryFRow,s6Step331EntryGRow,s6Step331EntryFvRow,s6Step331EntryGvRow] 0 s6Step331EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331EntryBank_outgoingOwned : rowsOwned s6Step331EntryGvAfter [s6Step331EntryFOut,s6Step331EntryGOut,s6Step331EntryFvOut,s6Step331EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step331EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331EntryF_Outgoing : rowsOwned s6Step331EntryGvAfter [s6Step331EntryFOut,s6Step331EntryGOut,s6Step331EntryFvOut,s6Step331EntryGvOut] :=
  hmrRows_owned_drop s6Step331EntryGvAfter [s6Step331EntryFOut,s6Step331EntryGOut,s6Step331EntryFvOut,s6Step331EntryGvOut] 0 s6Step331EntryBank_outgoingOwned

private theorem s6Step331EntryF_distinct : (s6Step331EntryFRow.sign::s6Step331EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331EntryF_owned : (s6Step331EntryFRow.sign::s6Step331EntryFRow.payload).toFinset⊆s6Step331EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EntryF_reserved : s6Step331EntryFBefore.reserve s6Step331EntryFFresh.toFinset=some s6Step331EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step331EntryFFresh,arenaWires]
  · norm_num [s6Step331EntryFBefore,s6Step331EntryFFresh,arenaWires]
  · simp only [s6Step331EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step331EntryF_checked : planRowResizeLog s6Step331EntryFBefore s6Step331EntryFRow 105 s6Step331EntryFFresh=
    some (s6Step331EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩,growRow 795 s6Step331EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step331EntryFBefore s6Step331EntryFAfter s6Step331EntryFRow 105 s6Step331EntryFFresh
    s6Step331EntryF_distinct s6Step331EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step331EntryF_reserved
  have rowEq : WindowRow.mk (s6Step331EntryFRow.payload++s6Step331EntryFFresh) s6Step331EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step331EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331EntryFvAfter : Arena := s6Step331EntryGAfter

private def s6Step331EntryFvBefore : Arena := s6Step331EntryGAfter

private theorem s6Step331EntryFv_Incoming : rowsOwned s6Step331EntryFvBefore [s6Step331EntryFvRow,s6Step331EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331EntryFRow,s6Step331EntryGRow,s6Step331EntryFvRow,s6Step331EntryGvRow] 2 s6Step331EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331EntryFv_Outgoing : rowsOwned s6Step331EntryGvAfter [s6Step331EntryFvOut,s6Step331EntryGvOut] :=
  hmrRows_owned_drop s6Step331EntryGvAfter [s6Step331EntryFOut,s6Step331EntryGOut,s6Step331EntryFvOut,s6Step331EntryGvOut] 2 s6Step331EntryBank_outgoingOwned

private theorem s6Step331EntryFv_distinct : (s6Step331EntryFvRow.sign::s6Step331EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331EntryFv_owned : (s6Step331EntryFvRow.sign::s6Step331EntryFvRow.payload).toFinset⊆s6Step331EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EntryFv_reserved : s6Step331EntryFvBefore.reserve s6Step331EntryFvFresh.toFinset=some s6Step331EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step331EntryFvFresh,arenaWires]
  · norm_num [s6Step331EntryFvBefore,s6Step331EntryGAfter,s6Step331EntryFvFresh,arenaWires]
  · simp only [s6Step331EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step331EntryFv_checked : planRowResizeLog s6Step331EntryFvBefore s6Step331EntryFvRow 181 s6Step331EntryFvFresh=
    some (s6Step331EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩,growRow 776 s6Step331EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step331EntryFvBefore s6Step331EntryFvAfter s6Step331EntryFvRow 181 s6Step331EntryFvFresh
    s6Step331EntryFv_distinct s6Step331EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step331EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step331EntryFvRow.payload++s6Step331EntryFvFresh) s6Step331EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step331EntryGBefore : Arena := s6Step331EntryFBefore

private theorem s6Step331EntryG_Incoming : rowsOwned s6Step331EntryGBefore [s6Step331EntryGRow,s6Step331EntryFvRow,s6Step331EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331EntryFRow,s6Step331EntryGRow,s6Step331EntryFvRow,s6Step331EntryGvRow] 1 s6Step331EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331EntryG_Outgoing : rowsOwned s6Step331EntryGvAfter [s6Step331EntryGOut,s6Step331EntryFvOut,s6Step331EntryGvOut] :=
  hmrRows_owned_drop s6Step331EntryGvAfter [s6Step331EntryFOut,s6Step331EntryGOut,s6Step331EntryFvOut,s6Step331EntryGvOut] 1 s6Step331EntryBank_outgoingOwned

private theorem s6Step331EntryG_distinct : (s6Step331EntryGRow.sign::s6Step331EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331EntryG_owned : (s6Step331EntryGRow.sign::s6Step331EntryGRow.payload).toFinset⊆s6Step331EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EntryG_reserved : s6Step331EntryGBefore.reserve s6Step331EntryGFresh.toFinset=some s6Step331EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step331EntryGFresh,arenaWires]
  · norm_num [s6Step331EntryGBefore,s6Step331EntryFBefore,s6Step331EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step331EntryGAfter,s6Step331EntryGBefore,s6Step331EntryFBefore,s6Step331EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step331EntryG_checked : planRowResizeLog s6Step331EntryGBefore s6Step331EntryGRow 105 s6Step331EntryGFresh=
    some (s6Step331EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907],777⟩,growRow 777 s6Step331EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step331EntryGBefore s6Step331EntryGAfter s6Step331EntryGRow 105 s6Step331EntryGFresh
    s6Step331EntryG_distinct s6Step331EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step331EntryG_reserved
  have rowEq : WindowRow.mk (s6Step331EntryGRow.payload++s6Step331EntryGFresh) s6Step331EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step331EntryGvBefore : Arena := s6Step331EntryGAfter

private theorem s6Step331EntryGv_Incoming : rowsOwned s6Step331EntryGvBefore [s6Step331EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331EntryFRow,s6Step331EntryGRow,s6Step331EntryFvRow,s6Step331EntryGvRow] 3 s6Step331EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331EntryGv_Outgoing : rowsOwned s6Step331EntryGvAfter [s6Step331EntryGvOut] :=
  hmrRows_owned_drop s6Step331EntryGvAfter [s6Step331EntryFOut,s6Step331EntryGOut,s6Step331EntryFvOut,s6Step331EntryGvOut] 3 s6Step331EntryBank_outgoingOwned

private theorem s6Step331EntryGv_distinct : (s6Step331EntryGvRow.sign::s6Step331EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331EntryGv_owned : (s6Step331EntryGvRow.sign::s6Step331EntryGvRow.payload).toFinset⊆s6Step331EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331EntryGv_reserved : s6Step331EntryGvBefore.reserve s6Step331EntryGvFresh.toFinset=some s6Step331EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step331EntryGvFresh,arenaWires]
  · norm_num [s6Step331EntryGvBefore,s6Step331EntryGAfter,s6Step331EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step331EntryGvAfter,s6Step331EntryGvBefore,s6Step331EntryGAfter,s6Step331EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step331EntryGv_checked : planRowResizeLog s6Step331EntryGvBefore s6Step331EntryGvRow 181 s6Step331EntryGvFresh=
    some (s6Step331EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩,growRow 775 s6Step331EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step331EntryGvBefore s6Step331EntryGvAfter s6Step331EntryGvRow 181 s6Step331EntryGvFresh
    s6Step331EntryGv_distinct s6Step331EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step331EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step331EntryGvRow.payload++s6Step331EntryGvFresh) s6Step331EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step331EntryBank_rows : planWindowRowsLog s6Step331EntryFBefore [(s6Step331EntryFRow,105),(s6Step331EntryGRow,105),(s6Step331EntryFvRow,181),(s6Step331EntryGvRow,181)] [s6Step331EntryFFresh,s6Step331EntryGFresh,s6Step331EntryFvFresh,s6Step331EntryGvFresh]=
    some (s6Step331EntryGvAfter,[s6Step331EntryFOut,s6Step331EntryGOut,s6Step331EntryFvOut,s6Step331EntryGvOut],(growRow 795 s6Step331EntryFFresh ++ (growRow 777 s6Step331EntryGFresh ++ (growRow 776 s6Step331EntryFvFresh ++ (growRow 775 s6Step331EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step331EntryGvAfter [] []=some (s6Step331EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step331EntryGvBefore s6Step331EntryGvAfter s6Step331EntryGvAfter
    s6Step331EntryGvRow s6Step331EntryGvOut 181 s6Step331EntryGvFresh [] [] []
    (growRow 775 s6Step331EntryGvFresh) ([]) s6Step331EntryGv_Incoming s6Step331EntryGv_checked h4 s6Step331EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step331EntryFvBefore s6Step331EntryFvAfter s6Step331EntryGvAfter
    s6Step331EntryFvRow s6Step331EntryFvOut 181 s6Step331EntryFvFresh [(s6Step331EntryGvRow,181)] [s6Step331EntryGvFresh] [s6Step331EntryGvOut]
    (growRow 776 s6Step331EntryFvFresh) ((growRow 775 s6Step331EntryGvFresh ++ [])) s6Step331EntryFv_Incoming s6Step331EntryFv_checked h3 s6Step331EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step331EntryGBefore s6Step331EntryGAfter s6Step331EntryGvAfter
    s6Step331EntryGRow s6Step331EntryGOut 105 s6Step331EntryGFresh [(s6Step331EntryFvRow,181),(s6Step331EntryGvRow,181)] [s6Step331EntryFvFresh,s6Step331EntryGvFresh] [s6Step331EntryFvOut,s6Step331EntryGvOut]
    (growRow 777 s6Step331EntryGFresh) ((growRow 776 s6Step331EntryFvFresh ++ (growRow 775 s6Step331EntryGvFresh ++ []))) s6Step331EntryG_Incoming s6Step331EntryG_checked h2 s6Step331EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step331EntryFBefore s6Step331EntryFAfter s6Step331EntryGvAfter
    s6Step331EntryFRow s6Step331EntryFOut 105 s6Step331EntryFFresh [(s6Step331EntryGRow,105),(s6Step331EntryFvRow,181),(s6Step331EntryGvRow,181)] [s6Step331EntryGFresh,s6Step331EntryFvFresh,s6Step331EntryGvFresh] [s6Step331EntryGOut,s6Step331EntryFvOut,s6Step331EntryGvOut]
    (growRow 795 s6Step331EntryFFresh) ((growRow 777 s6Step331EntryGFresh ++ (growRow 776 s6Step331EntryFvFresh ++ (growRow 775 s6Step331EntryGvFresh ++ [])))) s6Step331EntryF_Incoming s6Step331EntryF_checked h1 s6Step331EntryF_Outgoing
  exact h0

private theorem s6Step331EntryBank_checked : compileHmrBankResizeLog .entry s6Step331EntryFBefore ⟨s6Step331EntryFRow,s6Step331EntryGRow,s6Step331EntryFvRow,s6Step331EntryGvRow⟩ ⟨105,105,181,181⟩ [s6Step331EntryFFresh,s6Step331EntryGFresh,s6Step331EntryFvFresh,s6Step331EntryGvFresh]=
    some (s6Step331EntryGvAfter,⟨s6Step331EntryFOut,s6Step331EntryGOut,s6Step331EntryFvOut,s6Step331EntryGvOut⟩,(growRow 795 s6Step331EntryFFresh ++ (growRow 777 s6Step331EntryGFresh ++ (growRow 776 s6Step331EntryFvFresh ++ (growRow 775 s6Step331EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step331EntryBank_rows]
  rfl

private def s6Step331ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331ExitFBefore : Arena := s6Step331ExitGAfter

private def s6Step331ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 859],795⟩

private def s6Step331ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 854],776⟩

private def s6Step331ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907, 794],777⟩

private def s6Step331ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩

private theorem s6Step331ExitBank_incomingDistinct : ([s6Step331ExitGRow,s6Step331ExitFRow,s6Step331ExitFvRow,s6Step331ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331ExitF_Incoming : rowsOwned s6Step331ExitFBefore [s6Step331ExitFRow,s6Step331ExitFvRow,s6Step331ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331ExitGRow,s6Step331ExitFRow,s6Step331ExitFvRow,s6Step331ExitGvRow] 1 s6Step331ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331ExitBank_outgoingOwned : rowsOwned s6Step331ExitGvAfter [s6Step331ExitGOut,s6Step331ExitFOut,s6Step331ExitFvOut,s6Step331ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step331ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331ExitF_Outgoing : rowsOwned s6Step331ExitGvAfter [s6Step331ExitFOut,s6Step331ExitFvOut,s6Step331ExitGvOut] :=
  hmrRows_owned_drop s6Step331ExitGvAfter [s6Step331ExitGOut,s6Step331ExitFOut,s6Step331ExitFvOut,s6Step331ExitGvOut] 1 s6Step331ExitBank_outgoingOwned

private theorem s6Step331ExitF_distinct : (s6Step331ExitFRow.sign::s6Step331ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331ExitF_owned : (s6Step331ExitFRow.sign::s6Step331ExitFRow.payload).toFinset⊆s6Step331ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331ExitF_retired : s6Step331ExitFBefore.retireSet s6Step331ExitFExtra.toFinset=s6Step331ExitFAfter := by
  unfold Arena.retireSet s6Step331ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step331ExitFBefore,s6Step331ExitGAfter,s6Step331ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step331ExitF_checked : planRowResizeLog s6Step331ExitFBefore s6Step331ExitFRow 105 []=
    some (s6Step331ExitFAfter,s6Step331ExitFOut,shrinkRow 795 s6Step331ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step331ExitFBefore s6Step331ExitFRow 105 s6Step331ExitF_distinct s6Step331ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step331ExitFRow.payload.take 105) s6Step331ExitFRow.sign=s6Step331ExitFOut := by decide +kernel
  have hi : s6Step331ExitFRow.payload.drop 105=s6Step331ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step331ExitF_retired] at result
  exact result

private def s6Step331ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331ExitFvBefore : Arena := s6Step331ExitFAfter

private theorem s6Step331ExitFv_Incoming : rowsOwned s6Step331ExitFvBefore [s6Step331ExitFvRow,s6Step331ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331ExitGRow,s6Step331ExitFRow,s6Step331ExitFvRow,s6Step331ExitGvRow] 2 s6Step331ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331ExitFv_Outgoing : rowsOwned s6Step331ExitGvAfter [s6Step331ExitFvOut,s6Step331ExitGvOut] :=
  hmrRows_owned_drop s6Step331ExitGvAfter [s6Step331ExitGOut,s6Step331ExitFOut,s6Step331ExitFvOut,s6Step331ExitGvOut] 2 s6Step331ExitBank_outgoingOwned

private theorem s6Step331ExitFv_distinct : (s6Step331ExitFvRow.sign::s6Step331ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331ExitFv_owned : (s6Step331ExitFvRow.sign::s6Step331ExitFvRow.payload).toFinset⊆s6Step331ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331ExitFv_retired : s6Step331ExitFvBefore.retireSet s6Step331ExitFvExtra.toFinset=s6Step331ExitFvAfter := by
  unfold Arena.retireSet s6Step331ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step331ExitFvBefore,s6Step331ExitFAfter,s6Step331ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step331ExitFv_checked : planRowResizeLog s6Step331ExitFvBefore s6Step331ExitFvRow 181 []=
    some (s6Step331ExitFvAfter,s6Step331ExitFvOut,shrinkRow 776 s6Step331ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step331ExitFvBefore s6Step331ExitFvRow 181 s6Step331ExitFv_distinct s6Step331ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step331ExitFvRow.payload.take 181) s6Step331ExitFvRow.sign=s6Step331ExitFvOut := by decide +kernel
  have hi : s6Step331ExitFvRow.payload.drop 181=s6Step331ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step331ExitFv_retired] at result
  exact result

private def s6Step331ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step331ExitG_Incoming : rowsOwned s6Step331ExitGBefore [s6Step331ExitGRow,s6Step331ExitFRow,s6Step331ExitFvRow,s6Step331ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331ExitGRow,s6Step331ExitFRow,s6Step331ExitFvRow,s6Step331ExitGvRow] 0 s6Step331ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331ExitG_Outgoing : rowsOwned s6Step331ExitGvAfter [s6Step331ExitGOut,s6Step331ExitFOut,s6Step331ExitFvOut,s6Step331ExitGvOut] :=
  hmrRows_owned_drop s6Step331ExitGvAfter [s6Step331ExitGOut,s6Step331ExitFOut,s6Step331ExitFvOut,s6Step331ExitGvOut] 0 s6Step331ExitBank_outgoingOwned

private theorem s6Step331ExitG_distinct : (s6Step331ExitGRow.sign::s6Step331ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331ExitG_owned : (s6Step331ExitGRow.sign::s6Step331ExitGRow.payload).toFinset⊆s6Step331ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331ExitG_retired : s6Step331ExitGBefore.retireSet s6Step331ExitGExtra.toFinset=s6Step331ExitGAfter := by
  unfold Arena.retireSet s6Step331ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step331ExitGBefore,s6Step331ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step331ExitG_checked : planRowResizeLog s6Step331ExitGBefore s6Step331ExitGRow 104 []=
    some (s6Step331ExitGAfter,s6Step331ExitGOut,shrinkRow 777 s6Step331ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step331ExitGBefore s6Step331ExitGRow 104 s6Step331ExitG_distinct s6Step331ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step331ExitGRow.payload.take 104) s6Step331ExitGRow.sign=s6Step331ExitGOut := by decide +kernel
  have hi : s6Step331ExitGRow.payload.drop 104=s6Step331ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step331ExitG_retired] at result
  exact result

private def s6Step331ExitGvBefore : Arena := s6Step331ExitFvAfter

private theorem s6Step331ExitGv_Incoming : rowsOwned s6Step331ExitGvBefore [s6Step331ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331ExitGRow,s6Step331ExitFRow,s6Step331ExitFvRow,s6Step331ExitGvRow] 3 s6Step331ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331ExitGv_Outgoing : rowsOwned s6Step331ExitGvAfter [s6Step331ExitGvOut] :=
  hmrRows_owned_drop s6Step331ExitGvAfter [s6Step331ExitGOut,s6Step331ExitFOut,s6Step331ExitFvOut,s6Step331ExitGvOut] 3 s6Step331ExitBank_outgoingOwned

private theorem s6Step331ExitGv_distinct : (s6Step331ExitGvRow.sign::s6Step331ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331ExitGv_owned : (s6Step331ExitGvRow.sign::s6Step331ExitGvRow.payload).toFinset⊆s6Step331ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331ExitGv_retired : s6Step331ExitGvBefore.retireSet s6Step331ExitGvExtra.toFinset=s6Step331ExitGvAfter := by
  unfold Arena.retireSet s6Step331ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step331ExitGvBefore,s6Step331ExitFvAfter,s6Step331ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step331ExitGv_checked : planRowResizeLog s6Step331ExitGvBefore s6Step331ExitGvRow 181 []=
    some (s6Step331ExitGvAfter,s6Step331ExitGvOut,shrinkRow 775 s6Step331ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step331ExitGvBefore s6Step331ExitGvRow 181 s6Step331ExitGv_distinct s6Step331ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step331ExitGvRow.payload.take 181) s6Step331ExitGvRow.sign=s6Step331ExitGvOut := by decide +kernel
  have hi : s6Step331ExitGvRow.payload.drop 181=s6Step331ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step331ExitGv_retired] at result
  exact result

private theorem s6Step331ExitBank_rows : planWindowRowsLog s6Step331ExitGBefore [(s6Step331ExitGRow,104),(s6Step331ExitFRow,105),(s6Step331ExitFvRow,181),(s6Step331ExitGvRow,181)] [[],[],[],[]]=
    some (s6Step331ExitGvAfter,[s6Step331ExitGOut,s6Step331ExitFOut,s6Step331ExitFvOut,s6Step331ExitGvOut],(shrinkRow 777 s6Step331ExitGExtra ++ (shrinkRow 795 s6Step331ExitFExtra ++ (shrinkRow 776 s6Step331ExitFvExtra ++ (shrinkRow 775 s6Step331ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step331ExitGvAfter [] []=some (s6Step331ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step331ExitGvBefore s6Step331ExitGvAfter s6Step331ExitGvAfter
    s6Step331ExitGvRow s6Step331ExitGvOut 181 [] [] [] []
    (shrinkRow 775 s6Step331ExitGvExtra) ([]) s6Step331ExitGv_Incoming s6Step331ExitGv_checked h4 s6Step331ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step331ExitFvBefore s6Step331ExitFvAfter s6Step331ExitGvAfter
    s6Step331ExitFvRow s6Step331ExitFvOut 181 [] [(s6Step331ExitGvRow,181)] [[]] [s6Step331ExitGvOut]
    (shrinkRow 776 s6Step331ExitFvExtra) ((shrinkRow 775 s6Step331ExitGvExtra ++ [])) s6Step331ExitFv_Incoming s6Step331ExitFv_checked h3 s6Step331ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step331ExitFBefore s6Step331ExitFAfter s6Step331ExitGvAfter
    s6Step331ExitFRow s6Step331ExitFOut 105 [] [(s6Step331ExitFvRow,181),(s6Step331ExitGvRow,181)] [[],[]] [s6Step331ExitFvOut,s6Step331ExitGvOut]
    (shrinkRow 795 s6Step331ExitFExtra) ((shrinkRow 776 s6Step331ExitFvExtra ++ (shrinkRow 775 s6Step331ExitGvExtra ++ []))) s6Step331ExitF_Incoming s6Step331ExitF_checked h2 s6Step331ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step331ExitGBefore s6Step331ExitGAfter s6Step331ExitGvAfter
    s6Step331ExitGRow s6Step331ExitGOut 104 [] [(s6Step331ExitFRow,105),(s6Step331ExitFvRow,181),(s6Step331ExitGvRow,181)] [[],[],[]] [s6Step331ExitFOut,s6Step331ExitFvOut,s6Step331ExitGvOut]
    (shrinkRow 777 s6Step331ExitGExtra) ((shrinkRow 795 s6Step331ExitFExtra ++ (shrinkRow 776 s6Step331ExitFvExtra ++ (shrinkRow 775 s6Step331ExitGvExtra ++ [])))) s6Step331ExitG_Incoming s6Step331ExitG_checked h1 s6Step331ExitG_Outgoing
  exact h0

private theorem s6Step331ExitBank_checked : compileHmrBankResizeLog .exit s6Step331ExitGBefore ⟨s6Step331ExitFRow,s6Step331ExitGRow,s6Step331ExitFvRow,s6Step331ExitGvRow⟩ ⟨105,104,181,181⟩ [[],[],[],[]]=
    some (s6Step331ExitGvAfter,⟨s6Step331ExitFOut,s6Step331ExitGOut,s6Step331ExitFvOut,s6Step331ExitGvOut⟩,(shrinkRow 777 s6Step331ExitGExtra ++ (shrinkRow 795 s6Step331ExitFExtra ++ (shrinkRow 776 s6Step331ExitFvExtra ++ (shrinkRow 775 s6Step331ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step331ExitBank_rows]
  rfl

private theorem s6Step331Add0_apart : Disjoint s6Step331Add0Arena.live s6Step331Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step331Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331Add0_card : s6Step331Add0Arena.live.card=906 := by
  decide +kernel

private theorem s6Step331Add0_borrowed : s6Step331Add0Arena.checkBorrow (hmrHybridCount s6Step331Add0Arena s6Step331Add0B.length) s6Step331Add0Work=some s6Step331Add0During := by
  have len : s6Step331Add0Work.length=hmrHybridCount s6Step331Add0Arena s6Step331Add0B.length := by
    rw [hmrHybridCount,s6Step331Add0_card]
    decide +kernel
  have nd : s6Step331Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step331Add0Arena s6Step331Add0During s6Step331Add0Work.toFinset s6Step331Add0_bounded s6Step331Add0_apart rfl

private theorem s6Step331Add0_distinct : (903::865::843::(s6Step331Add0A++s6Step331Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331Add0_owned : (903::865::843::(s6Step331Add0A++s6Step331Add0B)).toFinset⊆s6Step331Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step331Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331Add0_checked : compileHmrHybridCinLog s6Step331Add0Arena 865 903 843 s6Step331Add0A s6Step331Add0B s6Step331Add0Work=some s6Step331Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step331Add0Arena s6Step331Add0During 865 903 843 s6Step331Add0A s6Step331Add0B s6Step331Add0Work
    (by decide +kernel) (by decide +kernel) s6Step331Add0_distinct
    (fun q hq => s6Step331Add0_owned (List.mem_toFinset.mpr hq)) s6Step331Add0_borrowed

private theorem s6Step331Add1_apart : Disjoint s6Step331Add1Arena.live s6Step331Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step331Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331Add1_card : s6Step331Add1Arena.live.card=906 := by
  decide +kernel

private theorem s6Step331Add1_borrowed : s6Step331Add1Arena.checkBorrow (hmrHybridCount s6Step331Add1Arena s6Step331Add1B.length) s6Step331Add1Work=some s6Step331Add1During := by
  have len : s6Step331Add1Work.length=hmrHybridCount s6Step331Add1Arena s6Step331Add1B.length := by
    rw [hmrHybridCount,s6Step331Add1_card]
    decide +kernel
  have nd : s6Step331Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step331Add1Arena s6Step331Add1During s6Step331Add1Work.toFinset s6Step331Add1_bounded s6Step331Add1_apart rfl

private theorem s6Step331Add1_distinct : (903::865::843::(s6Step331Add1A++s6Step331Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331Add1_owned : (903::865::843::(s6Step331Add1A++s6Step331Add1B)).toFinset⊆s6Step331Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step331Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331Add1_checked : compileHmrHybridCinLog s6Step331Add1Arena 865 903 843 s6Step331Add1A s6Step331Add1B s6Step331Add1Work=some s6Step331Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step331Add1Arena s6Step331Add1During 865 903 843 s6Step331Add1A s6Step331Add1B s6Step331Add1Work
    (by decide +kernel) (by decide +kernel) s6Step331Add1_distinct
    (fun q hq => s6Step331Add1_owned (List.mem_toFinset.mpr hq)) s6Step331Add1_borrowed

private theorem s6Step331F4_apart : Disjoint (s6Step331Add0A++s6Step331Add0B).toFinset (s6Step331Add1A++s6Step331Add1B).toFinset := by
  have nd : ((s6Step331Add0A++s6Step331Add0B)++(s6Step331Add1A++s6Step331Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step331F4_carry : s6Step331F4FlagArena.checkBorrow 1 [843]=some s6Step331Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step331F4FlagArena,s6Step331HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step331F4FlagArena,s6Step331HeadFvAfter,s6Step331Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step331F4_distinct : (874::865::903::843::((s6Step331Add0A++s6Step331Add1A)++(s6Step331Add0B++s6Step331Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331F4_flag : s6Step331HeadFvAfter.checkBorrow 1 [903]=some s6Step331F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step331HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step331F4_owned : (874::865::((s6Step331Add0A++s6Step331Add1A)++(s6Step331Add0B++s6Step331Add1B))).toFinset⊆s6Step331HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step331HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331F4_checked : compileHmrHybridF4Log s6Step331HeadFvAfter 874 865 s6Step331Add0A s6Step331Add0B s6Step331Add1A s6Step331Add1B [903] [843] s6Step331Add0Work s6Step331Add1Work=some s6Step331F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step331HeadFvAfter s6Step331F4FlagArena s6Step331Add0Arena s6Step331Add0During s6Step331Add1During 874 865
    s6Step331Add0A s6Step331Add0B s6Step331Add1A s6Step331Add1B [903] [843] s6Step331Add0Work s6Step331Add1Work
    (fun q hq => s6Step331F4_owned (List.mem_toFinset.mpr hq)) s6Step331F4_flag s6Step331F4_carry
    s6Step331F4_distinct s6Step331F4_apart s6Step331Add0_checked s6Step331Add1_checked

private theorem s6Step331Front_branch : s6Step331FrontSigmaArena.checkBorrow 1 [865]=some s6Step331HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step331FrontSigmaArena,s6Step331EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step331FrontSigmaArena,s6Step331EntryGvAfter,s6Step331HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step331Front_entry : HmrFrontEntryValid s6Step331EntryFBefore s6Step331FrontBank 105 181 ⟨105,104,181,181⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step331FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step331EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step331EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step331FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step331Front_sigma : s6Step331EntryGvAfter.checkBorrow 1 [874]=some s6Step331FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step331EntryGvAfter,arenaWires]
  · rfl

private def s6Step331HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331HeadFBefore : Arena := s6Step331HeadGAfter

private def s6Step331HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step331HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step331HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907],777⟩

private def s6Step331HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833],775⟩

private theorem s6Step331HeadBank_incomingDistinct : ([s6Step331HeadGRow,s6Step331HeadFRow,s6Step331HeadGvRow,s6Step331HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331HeadF_Incoming : rowsOwned s6Step331HeadFBefore [s6Step331HeadFRow,s6Step331HeadGvRow,s6Step331HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331HeadGRow,s6Step331HeadFRow,s6Step331HeadGvRow,s6Step331HeadFvRow] 1 s6Step331HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331HeadBank_outgoingOwned : rowsOwned s6Step331HeadFvAfter [s6Step331HeadGOut,s6Step331HeadFOut,s6Step331HeadGvOut,s6Step331HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step331HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331HeadF_Outgoing : rowsOwned s6Step331HeadFvAfter [s6Step331HeadFOut,s6Step331HeadGvOut,s6Step331HeadFvOut] :=
  hmrRows_owned_drop s6Step331HeadFvAfter [s6Step331HeadGOut,s6Step331HeadFOut,s6Step331HeadGvOut,s6Step331HeadFvOut] 1 s6Step331HeadBank_outgoingOwned

private theorem s6Step331HeadF_distinct : (s6Step331HeadFRow.sign::s6Step331HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331HeadF_owned : (s6Step331HeadFRow.sign::s6Step331HeadFRow.payload).toFinset⊆s6Step331HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331HeadF_reserved : s6Step331HeadFBefore.reserve s6Step331HeadFFresh.toFinset=some s6Step331HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step331HeadFFresh,arenaWires]
  · norm_num [s6Step331HeadFBefore,s6Step331HeadGAfter,s6Step331HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step331HeadFAfter,s6Step331HeadFBefore,s6Step331HeadGAfter,s6Step331HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step331HeadF_checked : planRowResizeLog s6Step331HeadFBefore s6Step331HeadFRow 106 s6Step331HeadFFresh=
    some (s6Step331HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 859],795⟩,growRow 795 s6Step331HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step331HeadFBefore s6Step331HeadFAfter s6Step331HeadFRow 106 s6Step331HeadFFresh
    s6Step331HeadF_distinct s6Step331HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step331HeadF_reserved
  have rowEq : WindowRow.mk (s6Step331HeadFRow.payload++s6Step331HeadFFresh) s6Step331HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 859],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step331HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step331HeadFvBefore : Arena := s6Step331HeadGvAfter

private theorem s6Step331HeadFv_Incoming : rowsOwned s6Step331HeadFvBefore [s6Step331HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331HeadGRow,s6Step331HeadFRow,s6Step331HeadGvRow,s6Step331HeadFvRow] 3 s6Step331HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331HeadFv_Outgoing : rowsOwned s6Step331HeadFvAfter [s6Step331HeadFvOut] :=
  hmrRows_owned_drop s6Step331HeadFvAfter [s6Step331HeadGOut,s6Step331HeadFOut,s6Step331HeadGvOut,s6Step331HeadFvOut] 3 s6Step331HeadBank_outgoingOwned

private theorem s6Step331HeadFv_distinct : (s6Step331HeadFvRow.sign::s6Step331HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331HeadFv_owned : (s6Step331HeadFvRow.sign::s6Step331HeadFvRow.payload).toFinset⊆s6Step331HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331HeadFv_reserved : s6Step331HeadFvBefore.reserve s6Step331HeadFvFresh.toFinset=some s6Step331HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step331HeadFvFresh,arenaWires]
  · norm_num [s6Step331HeadFvBefore,s6Step331HeadGvAfter,s6Step331HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step331HeadFvAfter,s6Step331HeadFvBefore,s6Step331HeadGvAfter,s6Step331HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step331HeadFv_checked : planRowResizeLog s6Step331HeadFvBefore s6Step331HeadFvRow 182 s6Step331HeadFvFresh=
    some (s6Step331HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 854],776⟩,growRow 776 s6Step331HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step331HeadFvBefore s6Step331HeadFvAfter s6Step331HeadFvRow 182 s6Step331HeadFvFresh
    s6Step331HeadFv_distinct s6Step331HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step331HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step331HeadFvRow.payload++s6Step331HeadFvFresh) s6Step331HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 854],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step331HeadG_Incoming : rowsOwned s6Step331HeadGBefore [s6Step331HeadGRow,s6Step331HeadFRow,s6Step331HeadGvRow,s6Step331HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331HeadGRow,s6Step331HeadFRow,s6Step331HeadGvRow,s6Step331HeadFvRow] 0 s6Step331HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331HeadG_Outgoing : rowsOwned s6Step331HeadFvAfter [s6Step331HeadGOut,s6Step331HeadFOut,s6Step331HeadGvOut,s6Step331HeadFvOut] :=
  hmrRows_owned_drop s6Step331HeadFvAfter [s6Step331HeadGOut,s6Step331HeadFOut,s6Step331HeadGvOut,s6Step331HeadFvOut] 0 s6Step331HeadBank_outgoingOwned

private theorem s6Step331HeadG_distinct : (s6Step331HeadGRow.sign::s6Step331HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331HeadG_owned : (s6Step331HeadGRow.sign::s6Step331HeadGRow.payload).toFinset⊆s6Step331HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331HeadG_reserved : s6Step331HeadGBefore.reserve s6Step331HeadGFresh.toFinset=some s6Step331HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step331HeadGFresh,arenaWires]
  · norm_num [s6Step331HeadGBefore,s6Step331HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step331HeadGAfter,s6Step331HeadGBefore,s6Step331HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step331HeadG_checked : planRowResizeLog s6Step331HeadGBefore s6Step331HeadGRow 106 s6Step331HeadGFresh=
    some (s6Step331HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907, 794],777⟩,growRow 777 s6Step331HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step331HeadGBefore s6Step331HeadGAfter s6Step331HeadGRow 106 s6Step331HeadGFresh
    s6Step331HeadG_distinct s6Step331HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step331HeadG_reserved
  have rowEq : WindowRow.mk (s6Step331HeadGRow.payload++s6Step331HeadGFresh) s6Step331HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 907, 794],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step331HeadGvBefore : Arena := s6Step331HeadFAfter

private theorem s6Step331HeadGv_Incoming : rowsOwned s6Step331HeadGvBefore [s6Step331HeadGvRow,s6Step331HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step331HeadGRow,s6Step331HeadFRow,s6Step331HeadGvRow,s6Step331HeadFvRow] 2 s6Step331HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step331HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step331HeadGv_Outgoing : rowsOwned s6Step331HeadFvAfter [s6Step331HeadGvOut,s6Step331HeadFvOut] :=
  hmrRows_owned_drop s6Step331HeadFvAfter [s6Step331HeadGOut,s6Step331HeadFOut,s6Step331HeadGvOut,s6Step331HeadFvOut] 2 s6Step331HeadBank_outgoingOwned

private theorem s6Step331HeadGv_distinct : (s6Step331HeadGvRow.sign::s6Step331HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step331HeadGv_owned : (s6Step331HeadGvRow.sign::s6Step331HeadGvRow.payload).toFinset⊆s6Step331HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step331HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step331HeadGv_reserved : s6Step331HeadGvBefore.reserve s6Step331HeadGvFresh.toFinset=some s6Step331HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step331HeadGvFresh,arenaWires]
  · norm_num [s6Step331HeadGvBefore,s6Step331HeadFAfter,s6Step331HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step331HeadGvAfter,s6Step331HeadGvBefore,s6Step331HeadFAfter,s6Step331HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step331HeadGv_checked : planRowResizeLog s6Step331HeadGvBefore s6Step331HeadGvRow 182 s6Step331HeadGvFresh=
    some (s6Step331HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩,growRow 775 s6Step331HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step331HeadGvBefore s6Step331HeadGvAfter s6Step331HeadGvRow 182 s6Step331HeadGvFresh
    s6Step331HeadGv_distinct s6Step331HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step331HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step331HeadGvRow.payload++s6Step331HeadGvFresh) s6Step331HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 833, 841],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step331HeadBank_rows : planWindowRowsLog s6Step331HeadGBefore [(s6Step331HeadGRow,106),(s6Step331HeadFRow,106),(s6Step331HeadGvRow,182),(s6Step331HeadFvRow,182)] [s6Step331HeadGFresh,s6Step331HeadFFresh,s6Step331HeadGvFresh,s6Step331HeadFvFresh]=
    some (s6Step331HeadFvAfter,[s6Step331HeadGOut,s6Step331HeadFOut,s6Step331HeadGvOut,s6Step331HeadFvOut],(growRow 777 s6Step331HeadGFresh ++ (growRow 795 s6Step331HeadFFresh ++ (growRow 775 s6Step331HeadGvFresh ++ (growRow 776 s6Step331HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step331HeadFvAfter [] []=some (s6Step331HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step331HeadFvBefore s6Step331HeadFvAfter s6Step331HeadFvAfter
    s6Step331HeadFvRow s6Step331HeadFvOut 182 s6Step331HeadFvFresh [] [] []
    (growRow 776 s6Step331HeadFvFresh) ([]) s6Step331HeadFv_Incoming s6Step331HeadFv_checked h4 s6Step331HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step331HeadGvBefore s6Step331HeadGvAfter s6Step331HeadFvAfter
    s6Step331HeadGvRow s6Step331HeadGvOut 182 s6Step331HeadGvFresh [(s6Step331HeadFvRow,182)] [s6Step331HeadFvFresh] [s6Step331HeadFvOut]
    (growRow 775 s6Step331HeadGvFresh) ((growRow 776 s6Step331HeadFvFresh ++ [])) s6Step331HeadGv_Incoming s6Step331HeadGv_checked h3 s6Step331HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step331HeadFBefore s6Step331HeadFAfter s6Step331HeadFvAfter
    s6Step331HeadFRow s6Step331HeadFOut 106 s6Step331HeadFFresh [(s6Step331HeadGvRow,182),(s6Step331HeadFvRow,182)] [s6Step331HeadGvFresh,s6Step331HeadFvFresh] [s6Step331HeadGvOut,s6Step331HeadFvOut]
    (growRow 795 s6Step331HeadFFresh) ((growRow 775 s6Step331HeadGvFresh ++ (growRow 776 s6Step331HeadFvFresh ++ []))) s6Step331HeadF_Incoming s6Step331HeadF_checked h2 s6Step331HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step331HeadGBefore s6Step331HeadGAfter s6Step331HeadFvAfter
    s6Step331HeadGRow s6Step331HeadGOut 106 s6Step331HeadGFresh [(s6Step331HeadFRow,106),(s6Step331HeadGvRow,182),(s6Step331HeadFvRow,182)] [s6Step331HeadFFresh,s6Step331HeadGvFresh,s6Step331HeadFvFresh] [s6Step331HeadFOut,s6Step331HeadGvOut,s6Step331HeadFvOut]
    (growRow 777 s6Step331HeadGFresh) ((growRow 795 s6Step331HeadFFresh ++ (growRow 775 s6Step331HeadGvFresh ++ (growRow 776 s6Step331HeadFvFresh ++ [])))) s6Step331HeadG_Incoming s6Step331HeadG_checked h1 s6Step331HeadG_Outgoing
  exact h0

private theorem s6Step331HeadBank_checked : compileHmrBankResizeLog .headroom s6Step331HeadGBefore ⟨s6Step331HeadFRow,s6Step331HeadGRow,s6Step331HeadFvRow,s6Step331HeadGvRow⟩ ⟨106,106,182,182⟩ [s6Step331HeadGFresh,s6Step331HeadFFresh,s6Step331HeadGvFresh,s6Step331HeadFvFresh]=
    some (s6Step331HeadFvAfter,⟨s6Step331HeadFOut,s6Step331HeadGOut,s6Step331HeadFvOut,s6Step331HeadGvOut⟩,(growRow 777 s6Step331HeadGFresh ++ (growRow 795 s6Step331HeadFFresh ++ (growRow 775 s6Step331HeadGvFresh ++ (growRow 776 s6Step331HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step331HeadBank_rows]
  rfl

private theorem s6Step331Front_checked : compileHmrSourceFrontLog s6Step331EntryFBefore s6Step331FrontBank 105 181 ⟨105,104,181,181⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step331FrontLog=some s6Step331FrontPlan := by
  have pairEq : s6Step331FrontPair=⟨s6Step331HeadFRow,s6Step331HeadGRow,s6Step331HeadFvRow,s6Step331HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step331FrontHead=⟨s6Step331ExitFRow,s6Step331ExitGRow,s6Step331ExitFvRow,s6Step331ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step331Add0A=s6Step331FrontHead.f.wires := by decide +kernel
  have gEq : s6Step331Add0B=s6Step331FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step331Add1A=s6Step331FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step331Add1B=s6Step331FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step331EntryFBefore s6Step331FrontBank 105 181 ⟨105,104,181,181⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step331FrontLog s6Step331FrontPlan
  · exact s6Step331Front_entry
  · exact s6Step331EntryBank_checked
  · exact s6Step331Front_sigma
  · rfl
  · exact s6Step331Front_branch
  · rfl
  · simpa only [s6Step331FrontPlan,pairEq] using s6Step331HeadBank_checked
  · simpa only [s6Step331FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step331F4_checked
  · exact s6Step331Counter_checked
  · rfl
  · simpa only [s6Step331FrontPlan,headEq] using s6Step331ExitBank_checked

private theorem s6Step331Complete_explicit_checked : compileHmrEarlyStepLog s6Step331EntryFBefore s6Step331FrontBank 105 181 ⟨105,104,181,181⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step331CompleteLog=some s6Step331CompletePlan := by
  let Q := s6Step331EarlyControlPlan
  have hq := s6Step331EarlyControl_plan_checked
  have fv1 : s6Step331CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step331CompleteOut.fv.payload[2]?.getD s6Step331CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step331CompleteOut.fv.payload[3]?.getD s6Step331CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step331CompleteOut.fv.payload[4]?.getD s6Step331CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step331EntryFBefore s6Step331EarlyControlArena s6Step331FrontBank 105 181 ⟨105,104,181,181⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step331CompleteLog s6Step331FrontPlan Q
    s6Step331Front_checked s6Step331Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step331Complete_owned s6Step331Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step331EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 874 s6Step331CompleteOut.fv.second (s6Step331CompleteOut.fv.payload[2]?.getD s6Step331CompleteOut.fv.sign) (s6Step331CompleteOut.fv.payload[3]?.getD s6Step331CompleteOut.fv.sign) (s6Step331CompleteOut.fv.payload[4]?.getD s6Step331CompleteOut.fv.sign) 865 60 s6Step331EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep331Arena : Arena := s6Step331EntryFBefore
def s6PrivateStep331Bank : WindowBank := s6Step331FrontBank
def s6PrivateStep331Spec : HmrSourceWalkStepLog := ⟨105,181,⟨105,104,181,181⟩,60,.early s6Step331CompleteLog⟩
def s6PrivateStep331Plan : HmrSourceStepPlan := .early s6Step331CompletePlan
theorem s6PrivateStep331_source : s6PrivateStep331Spec=s6ObservedLogs320[11] := rfl
theorem s6PrivateStep331_checked : compileHmrSourceStepLog s6PrivateStep331Arena s6PrivateStep331Bank
    s6PrivateStep331Spec.fgWidth s6PrivateStep331Spec.vWidth s6PrivateStep331Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 331 s6PrivateStep331Spec.need none s6PrivateStep331Spec.log=some s6PrivateStep331Plan := by
  change compileHmrSourceStepLog s6Step331EntryFBefore s6Step331FrontBank 105 181 ⟨105,104,181,181⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 331 60 none (.early s6Step331CompleteLog)=some (.early s6Step331CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 331<498)]
  rw [s6Step331Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
