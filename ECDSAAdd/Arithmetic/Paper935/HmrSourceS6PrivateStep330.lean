import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep328
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

private def s6Step330CompleteMoves : List (Wire × Wire) := [(874,104)]

private def s6Step330EarlyControlLog : HmrEarlyControlLog := ⟨[874, 865, 794, 859, 841],[854],[903],[843, 860, 805, 817, 812, 915],[]⟩

private def s6Step330FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[859], [794], [865], [862]],[[], [], [], []]⟩,[833],[907],[841],[854],[903, 843, 860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[903, 843, 860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[841, 854, 903, 843]⟩

private def s6Step330CompleteLog : HmrEarlyStepLog := ⟨s6Step330FrontLog,s6Step330CompleteMoves,s6Step330EarlyControlLog⟩

private def s6Step330ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step330ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step330ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103],777⟩

private def s6Step330ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩

private def s6Step330FrontOut : WindowBank := ⟨s6Step330ExitFOut,s6Step330ExitGOut,s6Step330ExitFvOut,s6Step330ExitGvOut⟩

private def s6Step330CompleteOut : WindowBank := s6Step330FrontOut.repacked s6Step330CompleteMoves

private def s6Step330EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step330EarlyControlPositiveArena,[854],s6Step330EarlyControlEqualityArena,[903],⟨⟨833,false⟩,[⟨⟨854,false⟩,903⟩]⟩⟩

private def s6Step330EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,874⟩,⟨⟨772,false⟩,865⟩,⟨⟨771,false⟩,794⟩,⟨⟨770,false⟩,859⟩,⟨⟨769,false⟩,841⟩]⟩

private def s6Step330EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step330EarlyControlZeroArena,s6Step330EarlyControlZeroPlan,s6Step330EarlyControlClassPlan,s6Step330EarlyControlFlagArena,s6Step330EarlyControlFittedArena,s6Step330EarlyControlHistoryArena,s6Step330EarlyControlSigmaArena,s6Step330EarlyControlOutputArena,s6Step330EarlyControlLog⟩

private def s6Step330CounterWork : List Wire := [841, 854, 903, 843]

private theorem s6Step330Counter_bounded : s6Step330CounterWork.toFinset⊆arenaWires := by norm_num [s6Step330CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step330HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330CounterDuring : Arena := ⟨s6Step330HeadFvAfter.live∪s6Step330CounterWork.toFinset,Finset.union_subset s6Step330HeadFvAfter.bounded s6Step330Counter_bounded⟩

private def s6Step330EntryFFresh : List Wire := []

private def s6Step330EntryFvFresh : List Wire := []

private def s6Step330EntryGFresh : List Wire := []

private def s6Step330EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330EntryGvAfter : Arena := s6Step330EntryFBefore

private def s6Step330EntryGvFresh : List Wire := []

private def s6Step330ExitFExtra : List Wire := [794]

private def s6Step330ExitGExtra : List Wire := [104, 859]

private def s6Step330ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330ExitGvExtra : List Wire := [865]

private def s6Step330Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330Add0Work : List Wire := [903, 843, 860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step330Add0_bounded : s6Step330Add0Work.toFinset⊆arenaWires := by
  have h : s6Step330Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step330Add0During : Arena := ⟨s6Step330Add0Arena.live∪s6Step330Add0Work.toFinset,Finset.union_subset s6Step330Add0Arena.bounded s6Step330Add0_bounded⟩

private def s6Step330Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330Add1Work : List Wire := [903, 843, 860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step330Add1_bounded : s6Step330Add1Work.toFinset⊆arenaWires := by
  have h : s6Step330Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step330Add1During : Arena := ⟨s6Step330Add1Arena.live∪s6Step330Add1Work.toFinset,Finset.union_subset s6Step330Add1Arena.bounded s6Step330Add1_bounded⟩

private def s6Step330F4FlagArena : Arena := ⟨s6Step330HeadFvAfter.live∪{841},Finset.union_subset s6Step330HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step330F4Plan : HmrHybridF4Plan := ⟨s6Step330F4FlagArena,[841],s6Step330Add0Arena,[854],s6Step330Add0During,s6Step330Add0Work,s6Step330Add1During,s6Step330Add1Work⟩

private def s6Step330HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 794],795⟩

private def s6Step330HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step330HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 859],777⟩

private def s6Step330HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 865],775⟩

private def s6Step330FrontHead : WindowBank := ⟨s6Step330HeadFOut,s6Step330HeadGOut,s6Step330HeadFvOut,s6Step330HeadGvOut⟩

private def s6Step330EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step330EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step330EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],777⟩

private def s6Step330EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩

private def s6Step330FrontPair : WindowBank := ⟨s6Step330EntryFOut,s6Step330EntryGOut,s6Step330EntryFvOut,s6Step330EntryGvOut⟩

private def s6Step330FrontSigmaArena : Arena := ⟨s6Step330EntryGvAfter.live∪{833},Finset.union_subset s6Step330EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step330HeadFFresh : List Wire := [794]

private def s6Step330HeadFvFresh : List Wire := [862]

private def s6Step330HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330HeadGFresh : List Wire := [859]

private def s6Step330HeadGvFresh : List Wire := [865]

private def s6Step330FrontPlan : HmrSourceFront := ⟨s6Step330EntryGvAfter,s6Step330FrontPair,(growRow 795 s6Step330EntryFFresh ++ (growRow 777 s6Step330EntryGFresh ++ (growRow 776 s6Step330EntryFvFresh ++ (growRow 775 s6Step330EntryGvFresh ++ [])))),s6Step330FrontSigmaArena,[833],s6Step330HeadGBefore,[907],
  s6Step330HeadFvAfter,s6Step330FrontHead,(growRow 777 s6Step330HeadGFresh ++ (growRow 795 s6Step330HeadFFresh ++ (growRow 775 s6Step330HeadGvFresh ++ (growRow 776 s6Step330HeadFvFresh ++ [])))),s6Step330F4Plan,s6Step330CounterDuring,s6Step330CounterWork,s6Step330ExitGvAfter,s6Step330FrontOut,(shrinkRow 777 s6Step330ExitGExtra ++ (shrinkRow 795 s6Step330ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step330ExitGvExtra ++ []))))⟩

private def s6Step330CompletePlan : HmrEarlyStepPlan := ⟨s6Step330FrontPlan,s6Step330EarlyControlArena,s6Step330EarlyControlPlan,s6Step330CompleteMoves⟩

private theorem s6Step330Complete_apart : List.Disjoint (s6Step330CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [833, 907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step330CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[833, 907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step330Complete_owned : (s6Step330CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step330EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step330CompleteMoveArena : Arena := ⟨s6Step330ExitGvAfter.live∪{104},Finset.union_subset s6Step330ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step330Complete_repack : s6Step330ExitGvAfter.checkRepack s6Step330CompleteMoves=some s6Step330EarlyControlArena := by
  have owned : 874∈s6Step330ExitGvAfter.live := by norm_num [s6Step330ExitGvAfter,arenaWires]
  have reserve : s6Step330ExitGvAfter.reserve {104}=some s6Step330CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step330ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step330CompleteMoveArena.retireSet {874}=s6Step330EarlyControlArena := by
    unfold Arena.retireSet s6Step330EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step330CompleteMoveArena,s6Step330ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step330CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step330CompleteMoveArena.retireSet {874}).checkRepack []=some s6Step330EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step330EarlyControl_branchOwned : ([907] : List Wire).toFinset⊆s6Step330EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EarlyControl_branch : compileHmrBranchRetirement s6Step330EarlyControlSigmaArena 907=some s6Step330EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step330EarlyControl_branchOwned
  · ext q
    simp [s6Step330EarlyControlOutputArena,s6Step330EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step330EarlyControl_classEqualityBorrow : s6Step330EarlyControlPositiveArena.checkBorrow (([833, 854] : List Wire).length-1) s6Step330EarlyControlLog.classWork=some s6Step330EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step330EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step330EarlyControlEqualityArena,s6Step330EarlyControlPositiveArena,s6Step330EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step330EarlyControl_classEqualityOwned : ([833, 854] : List Wire).toFinset⊆s6Step330EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EarlyControl_classEquality : compileHmrEqualityLog s6Step330EarlyControlPositiveArena [833, 854] 0 s6Step330EarlyControlLog.classWork=some (s6Step330EarlyControlEqualityArena,s6Step330EarlyControlLog.classWork,s6Step330EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step330EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step330EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step330EarlyControl_classOwned : ([769, 841, 833] : List Wire).toFinset⊆s6Step330EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EarlyControl_positiveBorrow : s6Step330EarlyControlZeroArena.checkBorrow (1) s6Step330EarlyControlLog.positiveWork=some s6Step330EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step330EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step330EarlyControlPositiveArena,s6Step330EarlyControlZeroArena,s6Step330EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step330EarlyControl_class : compileHmrSourceClassLog s6Step330EarlyControlZeroArena false 769 s6Step330EarlyControlZeroPlan.top 0 833 s6Step330EarlyControlLog.positiveWork s6Step330EarlyControlLog.classWork=some s6Step330EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step330EarlyControlClassPlan s6Step330EarlyControlZeroArena false 769 s6Step330EarlyControlZeroPlan.top 0 833
  constructor
  · decide +kernel
  · exact s6Step330EarlyControl_classOwned
  · exact s6Step330EarlyControl_positiveBorrow
  · exact s6Step330EarlyControl_classEquality

private theorem s6Step330EarlyControl_entryRecordOwned : ([907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step330EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EarlyControl_entrySigmaOwned : ([833, 254] : List Wire).toFinset⊆s6Step330EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EarlyControl_fitBorrow : s6Step330EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step330EarlyControlLog.recordFresh=some s6Step330EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step330EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step330EarlyControlFittedArena,s6Step330EarlyControlFlagArena,s6Step330EarlyControlLog,arenaWires]

private theorem s6Step330EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step330EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EarlyControl_fit : compileHmrRecordGrowLog s6Step330EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step330EarlyControlLog.recordFresh=some s6Step330EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step330EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step330EarlyControl_fitBorrow

private theorem s6Step330EarlyControl_flagsBorrow : s6Step330EarlyControlEqualityArena.checkBorrow (6) s6Step330EarlyControlLog.flagWork=some s6Step330EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step330EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step330EarlyControlFlagArena,s6Step330EarlyControlEqualityArena,s6Step330EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step330EarlyControl_flagsOwned : ([903, 253, 252, 251] : List Wire).toFinset⊆s6Step330EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EarlyControl_flags : compileHmrFlagsLog s6Step330EarlyControlClassPlan.equalityArena s6Step330EarlyControlClassPlan.equality.top 253 252 251 s6Step330EarlyControlLog.flagWork=some s6Step330EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step330EarlyControl_flagsOwned⟩
  · exact s6Step330EarlyControl_flagsBorrow

private theorem s6Step330EarlyControl_historyBorrow : s6Step330EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step330EarlyControlLog.recordFresh=some s6Step330EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step330EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step330EarlyControlHistoryArena,s6Step330EarlyControlArena,s6Step330EarlyControlLog,arenaWires]

private theorem s6Step330EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step330EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EarlyControl_history : compileHmrRecordGrowLog s6Step330EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step330EarlyControlLog.recordFresh=some s6Step330EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step330EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step330EarlyControl_historyBorrow

private theorem s6Step330EarlyControl_sigmaOwned : ([254, 833] : List Wire).toFinset⊆s6Step330EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EarlyControl_sigmaReleaseOwned : ([833] : List Wire).toFinset⊆s6Step330EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EarlyControl_sigmaRelease : s6Step330EarlyControlHistoryArena.release {833} (fun _ => false)=some s6Step330EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step330EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step330EarlyControlSigmaArena,s6Step330EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step330EarlyControl_sigma : compileHmrSigmaDropLog s6Step330EarlyControlHistoryArena false 0 0 254 833 []=some s6Step330EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step330EarlyControl_sigmaOwned⟩
  · exact s6Step330EarlyControl_sigmaRelease

private theorem s6Step330EarlyControl_zeroBorrow : s6Step330EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step330EarlyControlLog.zeroWork=some s6Step330EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step330EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step330EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step330EarlyControlZeroArena,s6Step330EarlyControlArena,s6Step330EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step330EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step330EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step330EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EarlyControl_zero : compileHmrEqualityLog s6Step330EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step330EarlyControlLog.zeroWork=some (s6Step330EarlyControlZeroArena,s6Step330EarlyControlLog.zeroWork,s6Step330EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step330EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step330EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step330EarlyControl_logged : s6Step330EarlyControlPlan.Logged s6Step330EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 833 254 253 252 251 907 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step330EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step330EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step330EarlyControl_zero
  · exact s6Step330EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step330EarlyControl_flags
  · exact s6Step330EarlyControl_fit
  · exact s6Step330EarlyControl_history
  · exact s6Step330EarlyControl_sigma
  · exact s6Step330EarlyControl_branch

private theorem s6Step330EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step330EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 833 254 253 252 251 907 60 s6Step330EarlyControlLog=some s6Step330EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step330EarlyControlPlan s6Step330EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 833 254 253 252 251 907 60 s6Step330EarlyControl_logged

private def s6Step330EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step330EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step330EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],777⟩

private def s6Step330EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩

private def s6Step330FrontBank : WindowBank := ⟨s6Step330EntryFRow,s6Step330EntryGRow,s6Step330EntryFvRow,s6Step330EntryGvRow⟩

private def s6Step330Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 794, 795]

private def s6Step330Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 859, 777]

private def s6Step330Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 776]

private def s6Step330Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 865, 775]

private theorem s6Step330Counter_apart : Disjoint s6Step330HeadFvAfter.live s6Step330CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step330HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330Counter_borrowed : s6Step330HeadFvAfter.checkBorrow 4 s6Step330CounterWork=some s6Step330CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step330HeadFvAfter s6Step330CounterDuring s6Step330CounterWork.toFinset s6Step330Counter_bounded s6Step330Counter_apart rfl

private theorem s6Step330Counter_owned : (833::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step330HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step330HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330Counter_checked : compileHmrCounterStepLog s6Step330HeadFvAfter true 833 [774, 773, 772, 771, 770, 769] s6Step330CounterWork=some s6Step330CounterDuring := by
  have owned : ∀q∈833::[774, 773, 772, 771, 770, 769],q∈s6Step330HeadFvAfter.live := fun q hq => s6Step330Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step330Counter_borrowed

private def s6Step330EntryFAfter : Arena := s6Step330EntryFBefore

private theorem s6Step330EntryBank_incomingDistinct : ([s6Step330EntryFRow,s6Step330EntryGRow,s6Step330EntryFvRow,s6Step330EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330EntryF_Incoming : rowsOwned s6Step330EntryFBefore [s6Step330EntryFRow,s6Step330EntryGRow,s6Step330EntryFvRow,s6Step330EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330EntryFRow,s6Step330EntryGRow,s6Step330EntryFvRow,s6Step330EntryGvRow] 0 s6Step330EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330EntryBank_outgoingOwned : rowsOwned s6Step330EntryGvAfter [s6Step330EntryFOut,s6Step330EntryGOut,s6Step330EntryFvOut,s6Step330EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step330EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330EntryF_Outgoing : rowsOwned s6Step330EntryGvAfter [s6Step330EntryFOut,s6Step330EntryGOut,s6Step330EntryFvOut,s6Step330EntryGvOut] :=
  hmrRows_owned_drop s6Step330EntryGvAfter [s6Step330EntryFOut,s6Step330EntryGOut,s6Step330EntryFvOut,s6Step330EntryGvOut] 0 s6Step330EntryBank_outgoingOwned

private theorem s6Step330EntryF_distinct : (s6Step330EntryFRow.sign::s6Step330EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330EntryF_owned : (s6Step330EntryFRow.sign::s6Step330EntryFRow.payload).toFinset⊆s6Step330EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EntryF_reserved : s6Step330EntryFBefore.reserve s6Step330EntryFFresh.toFinset=some s6Step330EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step330EntryFFresh,arenaWires]
  · norm_num [s6Step330EntryFBefore,s6Step330EntryFFresh,arenaWires]
  · simp only [s6Step330EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step330EntryF_checked : planRowResizeLog s6Step330EntryFBefore s6Step330EntryFRow 105 s6Step330EntryFFresh=
    some (s6Step330EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩,growRow 795 s6Step330EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step330EntryFBefore s6Step330EntryFAfter s6Step330EntryFRow 105 s6Step330EntryFFresh
    s6Step330EntryF_distinct s6Step330EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step330EntryF_reserved
  have rowEq : WindowRow.mk (s6Step330EntryFRow.payload++s6Step330EntryFFresh) s6Step330EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step330EntryFvAfter : Arena := s6Step330EntryFBefore

private def s6Step330EntryFvBefore : Arena := s6Step330EntryFBefore

private theorem s6Step330EntryFv_Incoming : rowsOwned s6Step330EntryFvBefore [s6Step330EntryFvRow,s6Step330EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330EntryFRow,s6Step330EntryGRow,s6Step330EntryFvRow,s6Step330EntryGvRow] 2 s6Step330EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330EntryFv_Outgoing : rowsOwned s6Step330EntryGvAfter [s6Step330EntryFvOut,s6Step330EntryGvOut] :=
  hmrRows_owned_drop s6Step330EntryGvAfter [s6Step330EntryFOut,s6Step330EntryGOut,s6Step330EntryFvOut,s6Step330EntryGvOut] 2 s6Step330EntryBank_outgoingOwned

private theorem s6Step330EntryFv_distinct : (s6Step330EntryFvRow.sign::s6Step330EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330EntryFv_owned : (s6Step330EntryFvRow.sign::s6Step330EntryFvRow.payload).toFinset⊆s6Step330EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EntryFv_reserved : s6Step330EntryFvBefore.reserve s6Step330EntryFvFresh.toFinset=some s6Step330EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step330EntryFvFresh,arenaWires]
  · norm_num [s6Step330EntryFvBefore,s6Step330EntryFBefore,s6Step330EntryFvFresh,arenaWires]
  · simp only [s6Step330EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step330EntryFv_checked : planRowResizeLog s6Step330EntryFvBefore s6Step330EntryFvRow 180 s6Step330EntryFvFresh=
    some (s6Step330EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩,growRow 776 s6Step330EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step330EntryFvBefore s6Step330EntryFvAfter s6Step330EntryFvRow 180 s6Step330EntryFvFresh
    s6Step330EntryFv_distinct s6Step330EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step330EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step330EntryFvRow.payload++s6Step330EntryFvFresh) s6Step330EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step330EntryGAfter : Arena := s6Step330EntryFBefore

private def s6Step330EntryGBefore : Arena := s6Step330EntryFBefore

private theorem s6Step330EntryG_Incoming : rowsOwned s6Step330EntryGBefore [s6Step330EntryGRow,s6Step330EntryFvRow,s6Step330EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330EntryFRow,s6Step330EntryGRow,s6Step330EntryFvRow,s6Step330EntryGvRow] 1 s6Step330EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330EntryG_Outgoing : rowsOwned s6Step330EntryGvAfter [s6Step330EntryGOut,s6Step330EntryFvOut,s6Step330EntryGvOut] :=
  hmrRows_owned_drop s6Step330EntryGvAfter [s6Step330EntryFOut,s6Step330EntryGOut,s6Step330EntryFvOut,s6Step330EntryGvOut] 1 s6Step330EntryBank_outgoingOwned

private theorem s6Step330EntryG_distinct : (s6Step330EntryGRow.sign::s6Step330EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330EntryG_owned : (s6Step330EntryGRow.sign::s6Step330EntryGRow.payload).toFinset⊆s6Step330EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EntryG_reserved : s6Step330EntryGBefore.reserve s6Step330EntryGFresh.toFinset=some s6Step330EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step330EntryGFresh,arenaWires]
  · norm_num [s6Step330EntryGBefore,s6Step330EntryFBefore,s6Step330EntryGFresh,arenaWires]
  · simp only [s6Step330EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step330EntryG_checked : planRowResizeLog s6Step330EntryGBefore s6Step330EntryGRow 105 s6Step330EntryGFresh=
    some (s6Step330EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],777⟩,growRow 777 s6Step330EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step330EntryGBefore s6Step330EntryGAfter s6Step330EntryGRow 105 s6Step330EntryGFresh
    s6Step330EntryG_distinct s6Step330EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step330EntryG_reserved
  have rowEq : WindowRow.mk (s6Step330EntryGRow.payload++s6Step330EntryGFresh) s6Step330EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step330EntryGvBefore : Arena := s6Step330EntryFBefore

private theorem s6Step330EntryGv_Incoming : rowsOwned s6Step330EntryGvBefore [s6Step330EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330EntryFRow,s6Step330EntryGRow,s6Step330EntryFvRow,s6Step330EntryGvRow] 3 s6Step330EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330EntryGv_Outgoing : rowsOwned s6Step330EntryGvAfter [s6Step330EntryGvOut] :=
  hmrRows_owned_drop s6Step330EntryGvAfter [s6Step330EntryFOut,s6Step330EntryGOut,s6Step330EntryFvOut,s6Step330EntryGvOut] 3 s6Step330EntryBank_outgoingOwned

private theorem s6Step330EntryGv_distinct : (s6Step330EntryGvRow.sign::s6Step330EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330EntryGv_owned : (s6Step330EntryGvRow.sign::s6Step330EntryGvRow.payload).toFinset⊆s6Step330EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330EntryGv_reserved : s6Step330EntryGvBefore.reserve s6Step330EntryGvFresh.toFinset=some s6Step330EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step330EntryGvFresh,arenaWires]
  · norm_num [s6Step330EntryGvBefore,s6Step330EntryFBefore,s6Step330EntryGvFresh,arenaWires]
  · simp only [s6Step330EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step330EntryGv_checked : planRowResizeLog s6Step330EntryGvBefore s6Step330EntryGvRow 180 s6Step330EntryGvFresh=
    some (s6Step330EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩,growRow 775 s6Step330EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step330EntryGvBefore s6Step330EntryGvAfter s6Step330EntryGvRow 180 s6Step330EntryGvFresh
    s6Step330EntryGv_distinct s6Step330EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step330EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step330EntryGvRow.payload++s6Step330EntryGvFresh) s6Step330EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step330EntryBank_rows : planWindowRowsLog s6Step330EntryFBefore [(s6Step330EntryFRow,105),(s6Step330EntryGRow,105),(s6Step330EntryFvRow,180),(s6Step330EntryGvRow,180)] [s6Step330EntryFFresh,s6Step330EntryGFresh,s6Step330EntryFvFresh,s6Step330EntryGvFresh]=
    some (s6Step330EntryGvAfter,[s6Step330EntryFOut,s6Step330EntryGOut,s6Step330EntryFvOut,s6Step330EntryGvOut],(growRow 795 s6Step330EntryFFresh ++ (growRow 777 s6Step330EntryGFresh ++ (growRow 776 s6Step330EntryFvFresh ++ (growRow 775 s6Step330EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step330EntryGvAfter [] []=some (s6Step330EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step330EntryGvBefore s6Step330EntryGvAfter s6Step330EntryGvAfter
    s6Step330EntryGvRow s6Step330EntryGvOut 180 s6Step330EntryGvFresh [] [] []
    (growRow 775 s6Step330EntryGvFresh) ([]) s6Step330EntryGv_Incoming s6Step330EntryGv_checked h4 s6Step330EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step330EntryFvBefore s6Step330EntryFvAfter s6Step330EntryGvAfter
    s6Step330EntryFvRow s6Step330EntryFvOut 180 s6Step330EntryFvFresh [(s6Step330EntryGvRow,180)] [s6Step330EntryGvFresh] [s6Step330EntryGvOut]
    (growRow 776 s6Step330EntryFvFresh) ((growRow 775 s6Step330EntryGvFresh ++ [])) s6Step330EntryFv_Incoming s6Step330EntryFv_checked h3 s6Step330EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step330EntryGBefore s6Step330EntryGAfter s6Step330EntryGvAfter
    s6Step330EntryGRow s6Step330EntryGOut 105 s6Step330EntryGFresh [(s6Step330EntryFvRow,180),(s6Step330EntryGvRow,180)] [s6Step330EntryFvFresh,s6Step330EntryGvFresh] [s6Step330EntryFvOut,s6Step330EntryGvOut]
    (growRow 777 s6Step330EntryGFresh) ((growRow 776 s6Step330EntryFvFresh ++ (growRow 775 s6Step330EntryGvFresh ++ []))) s6Step330EntryG_Incoming s6Step330EntryG_checked h2 s6Step330EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step330EntryFBefore s6Step330EntryFAfter s6Step330EntryGvAfter
    s6Step330EntryFRow s6Step330EntryFOut 105 s6Step330EntryFFresh [(s6Step330EntryGRow,105),(s6Step330EntryFvRow,180),(s6Step330EntryGvRow,180)] [s6Step330EntryGFresh,s6Step330EntryFvFresh,s6Step330EntryGvFresh] [s6Step330EntryGOut,s6Step330EntryFvOut,s6Step330EntryGvOut]
    (growRow 795 s6Step330EntryFFresh) ((growRow 777 s6Step330EntryGFresh ++ (growRow 776 s6Step330EntryFvFresh ++ (growRow 775 s6Step330EntryGvFresh ++ [])))) s6Step330EntryF_Incoming s6Step330EntryF_checked h1 s6Step330EntryF_Outgoing
  exact h0

private theorem s6Step330EntryBank_checked : compileHmrBankResizeLog .entry s6Step330EntryFBefore ⟨s6Step330EntryFRow,s6Step330EntryGRow,s6Step330EntryFvRow,s6Step330EntryGvRow⟩ ⟨105,105,180,180⟩ [s6Step330EntryFFresh,s6Step330EntryGFresh,s6Step330EntryFvFresh,s6Step330EntryGvFresh]=
    some (s6Step330EntryGvAfter,⟨s6Step330EntryFOut,s6Step330EntryGOut,s6Step330EntryFvOut,s6Step330EntryGvOut⟩,(growRow 795 s6Step330EntryFFresh ++ (growRow 777 s6Step330EntryGFresh ++ (growRow 776 s6Step330EntryFvFresh ++ (growRow 775 s6Step330EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step330EntryBank_rows]
  rfl

private def s6Step330ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330ExitFBefore : Arena := s6Step330ExitGAfter

private def s6Step330ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 794],795⟩

private def s6Step330ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step330ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 859],777⟩

private def s6Step330ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 865],775⟩

private theorem s6Step330ExitBank_incomingDistinct : ([s6Step330ExitGRow,s6Step330ExitFRow,s6Step330ExitFvRow,s6Step330ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330ExitF_Incoming : rowsOwned s6Step330ExitFBefore [s6Step330ExitFRow,s6Step330ExitFvRow,s6Step330ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330ExitGRow,s6Step330ExitFRow,s6Step330ExitFvRow,s6Step330ExitGvRow] 1 s6Step330ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330ExitFBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330ExitBank_outgoingOwned : rowsOwned s6Step330ExitGvAfter [s6Step330ExitGOut,s6Step330ExitFOut,s6Step330ExitFvOut,s6Step330ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step330ExitGvAfter (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330ExitF_Outgoing : rowsOwned s6Step330ExitGvAfter [s6Step330ExitFOut,s6Step330ExitFvOut,s6Step330ExitGvOut] :=
  hmrRows_owned_drop s6Step330ExitGvAfter [s6Step330ExitGOut,s6Step330ExitFOut,s6Step330ExitFvOut,s6Step330ExitGvOut] 1 s6Step330ExitBank_outgoingOwned

private theorem s6Step330ExitF_distinct : (s6Step330ExitFRow.sign::s6Step330ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330ExitF_owned : (s6Step330ExitFRow.sign::s6Step330ExitFRow.payload).toFinset⊆s6Step330ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330ExitFBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330ExitF_retired : s6Step330ExitFBefore.retireSet s6Step330ExitFExtra.toFinset=s6Step330ExitFAfter := by
  unfold Arena.retireSet s6Step330ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step330ExitFBefore,s6Step330ExitGAfter,s6Step330ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step330ExitF_checked : planRowResizeLog s6Step330ExitFBefore s6Step330ExitFRow 105 []=
    some (s6Step330ExitFAfter,s6Step330ExitFOut,shrinkRow 795 s6Step330ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step330ExitFBefore s6Step330ExitFRow 105 s6Step330ExitF_distinct s6Step330ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step330ExitFRow.payload.take 105) s6Step330ExitFRow.sign=s6Step330ExitFOut := by decide +kernel
  have hi : s6Step330ExitFRow.payload.drop 105=s6Step330ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step330ExitF_retired] at result
  exact result

private def s6Step330ExitFvAfter : Arena := s6Step330ExitFAfter

private def s6Step330ExitFvBefore : Arena := s6Step330ExitFAfter

private theorem s6Step330ExitFv_Incoming : rowsOwned s6Step330ExitFvBefore [s6Step330ExitFvRow,s6Step330ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330ExitGRow,s6Step330ExitFRow,s6Step330ExitFvRow,s6Step330ExitGvRow] 2 s6Step330ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330ExitFvBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330ExitFv_Outgoing : rowsOwned s6Step330ExitGvAfter [s6Step330ExitFvOut,s6Step330ExitGvOut] :=
  hmrRows_owned_drop s6Step330ExitGvAfter [s6Step330ExitGOut,s6Step330ExitFOut,s6Step330ExitFvOut,s6Step330ExitGvOut] 2 s6Step330ExitBank_outgoingOwned

private theorem s6Step330ExitFv_distinct : (s6Step330ExitFvRow.sign::s6Step330ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330ExitFv_owned : (s6Step330ExitFvRow.sign::s6Step330ExitFvRow.payload).toFinset⊆s6Step330ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330ExitFvBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330ExitFv_reserved : s6Step330ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step330ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step330ExitFv_checked : planRowResizeLog s6Step330ExitFvBefore s6Step330ExitFvRow 181 []=
    some (s6Step330ExitFvAfter,s6Step330ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step330ExitFvBefore s6Step330ExitFvAfter s6Step330ExitFvRow 181 []
    s6Step330ExitFv_distinct s6Step330ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step330ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step330ExitFvRow.payload++[]) s6Step330ExitFvRow.sign=s6Step330ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step330ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step330ExitG_Incoming : rowsOwned s6Step330ExitGBefore [s6Step330ExitGRow,s6Step330ExitFRow,s6Step330ExitFvRow,s6Step330ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330ExitGRow,s6Step330ExitFRow,s6Step330ExitFvRow,s6Step330ExitGvRow] 0 s6Step330ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330ExitG_Outgoing : rowsOwned s6Step330ExitGvAfter [s6Step330ExitGOut,s6Step330ExitFOut,s6Step330ExitFvOut,s6Step330ExitGvOut] :=
  hmrRows_owned_drop s6Step330ExitGvAfter [s6Step330ExitGOut,s6Step330ExitFOut,s6Step330ExitFvOut,s6Step330ExitGvOut] 0 s6Step330ExitBank_outgoingOwned

private theorem s6Step330ExitG_distinct : (s6Step330ExitGRow.sign::s6Step330ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330ExitG_owned : (s6Step330ExitGRow.sign::s6Step330ExitGRow.payload).toFinset⊆s6Step330ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330ExitG_retired : s6Step330ExitGBefore.retireSet s6Step330ExitGExtra.toFinset=s6Step330ExitGAfter := by
  unfold Arena.retireSet s6Step330ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step330ExitGBefore,s6Step330ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step330ExitG_checked : planRowResizeLog s6Step330ExitGBefore s6Step330ExitGRow 104 []=
    some (s6Step330ExitGAfter,s6Step330ExitGOut,shrinkRow 777 s6Step330ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step330ExitGBefore s6Step330ExitGRow 104 s6Step330ExitG_distinct s6Step330ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step330ExitGRow.payload.take 104) s6Step330ExitGRow.sign=s6Step330ExitGOut := by decide +kernel
  have hi : s6Step330ExitGRow.payload.drop 104=s6Step330ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step330ExitG_retired] at result
  exact result

private def s6Step330ExitGvBefore : Arena := s6Step330ExitFAfter

private theorem s6Step330ExitGv_Incoming : rowsOwned s6Step330ExitGvBefore [s6Step330ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330ExitGRow,s6Step330ExitFRow,s6Step330ExitFvRow,s6Step330ExitGvRow] 3 s6Step330ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330ExitGvBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330ExitGv_Outgoing : rowsOwned s6Step330ExitGvAfter [s6Step330ExitGvOut] :=
  hmrRows_owned_drop s6Step330ExitGvAfter [s6Step330ExitGOut,s6Step330ExitFOut,s6Step330ExitFvOut,s6Step330ExitGvOut] 3 s6Step330ExitBank_outgoingOwned

private theorem s6Step330ExitGv_distinct : (s6Step330ExitGvRow.sign::s6Step330ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330ExitGv_owned : (s6Step330ExitGvRow.sign::s6Step330ExitGvRow.payload).toFinset⊆s6Step330ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330ExitGvBefore (fun q => (0≤q ∧ q<104) ∨ (105≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330ExitGv_retired : s6Step330ExitGvBefore.retireSet s6Step330ExitGvExtra.toFinset=s6Step330ExitGvAfter := by
  unfold Arena.retireSet s6Step330ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step330ExitGvBefore,s6Step330ExitFAfter,s6Step330ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step330ExitGv_checked : planRowResizeLog s6Step330ExitGvBefore s6Step330ExitGvRow 180 []=
    some (s6Step330ExitGvAfter,s6Step330ExitGvOut,shrinkRow 775 s6Step330ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step330ExitGvBefore s6Step330ExitGvRow 180 s6Step330ExitGv_distinct s6Step330ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step330ExitGvRow.payload.take 180) s6Step330ExitGvRow.sign=s6Step330ExitGvOut := by decide +kernel
  have hi : s6Step330ExitGvRow.payload.drop 180=s6Step330ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step330ExitGv_retired] at result
  exact result

private theorem s6Step330ExitBank_rows : planWindowRowsLog s6Step330ExitGBefore [(s6Step330ExitGRow,104),(s6Step330ExitFRow,105),(s6Step330ExitFvRow,181),(s6Step330ExitGvRow,180)] [[],[],[],[]]=
    some (s6Step330ExitGvAfter,[s6Step330ExitGOut,s6Step330ExitFOut,s6Step330ExitFvOut,s6Step330ExitGvOut],(shrinkRow 777 s6Step330ExitGExtra ++ (shrinkRow 795 s6Step330ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step330ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step330ExitGvAfter [] []=some (s6Step330ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step330ExitGvBefore s6Step330ExitGvAfter s6Step330ExitGvAfter
    s6Step330ExitGvRow s6Step330ExitGvOut 180 [] [] [] []
    (shrinkRow 775 s6Step330ExitGvExtra) ([]) s6Step330ExitGv_Incoming s6Step330ExitGv_checked h4 s6Step330ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step330ExitFvBefore s6Step330ExitFvAfter s6Step330ExitGvAfter
    s6Step330ExitFvRow s6Step330ExitFvOut 181 [] [(s6Step330ExitGvRow,180)] [[]] [s6Step330ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step330ExitGvExtra ++ [])) s6Step330ExitFv_Incoming s6Step330ExitFv_checked h3 s6Step330ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step330ExitFBefore s6Step330ExitFAfter s6Step330ExitGvAfter
    s6Step330ExitFRow s6Step330ExitFOut 105 [] [(s6Step330ExitFvRow,181),(s6Step330ExitGvRow,180)] [[],[]] [s6Step330ExitFvOut,s6Step330ExitGvOut]
    (shrinkRow 795 s6Step330ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step330ExitGvExtra ++ []))) s6Step330ExitF_Incoming s6Step330ExitF_checked h2 s6Step330ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step330ExitGBefore s6Step330ExitGAfter s6Step330ExitGvAfter
    s6Step330ExitGRow s6Step330ExitGOut 104 [] [(s6Step330ExitFRow,105),(s6Step330ExitFvRow,181),(s6Step330ExitGvRow,180)] [[],[],[]] [s6Step330ExitFOut,s6Step330ExitFvOut,s6Step330ExitGvOut]
    (shrinkRow 777 s6Step330ExitGExtra) ((shrinkRow 795 s6Step330ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step330ExitGvExtra ++ [])))) s6Step330ExitG_Incoming s6Step330ExitG_checked h1 s6Step330ExitG_Outgoing
  exact h0

private theorem s6Step330ExitBank_checked : compileHmrBankResizeLog .exit s6Step330ExitGBefore ⟨s6Step330ExitFRow,s6Step330ExitGRow,s6Step330ExitFvRow,s6Step330ExitGvRow⟩ ⟨105,104,181,180⟩ [[],[],[],[]]=
    some (s6Step330ExitGvAfter,⟨s6Step330ExitFOut,s6Step330ExitGOut,s6Step330ExitFvOut,s6Step330ExitGvOut⟩,(shrinkRow 777 s6Step330ExitGExtra ++ (shrinkRow 795 s6Step330ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step330ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step330ExitBank_rows]
  rfl

private theorem s6Step330Add0_apart : Disjoint s6Step330Add0Arena.live s6Step330Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step330Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330Add0_card : s6Step330Add0Arena.live.card=904 := by
  decide +kernel

private theorem s6Step330Add0_borrowed : s6Step330Add0Arena.checkBorrow (hmrHybridCount s6Step330Add0Arena s6Step330Add0B.length) s6Step330Add0Work=some s6Step330Add0During := by
  have len : s6Step330Add0Work.length=hmrHybridCount s6Step330Add0Arena s6Step330Add0B.length := by
    rw [hmrHybridCount,s6Step330Add0_card]
    decide +kernel
  have nd : s6Step330Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step330Add0Arena s6Step330Add0During s6Step330Add0Work.toFinset s6Step330Add0_bounded s6Step330Add0_apart rfl

private theorem s6Step330Add0_distinct : (841::907::854::(s6Step330Add0A++s6Step330Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330Add0_owned : (841::907::854::(s6Step330Add0A++s6Step330Add0B)).toFinset⊆s6Step330Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step330Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330Add0_checked : compileHmrHybridCinLog s6Step330Add0Arena 907 841 854 s6Step330Add0A s6Step330Add0B s6Step330Add0Work=some s6Step330Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step330Add0Arena s6Step330Add0During 907 841 854 s6Step330Add0A s6Step330Add0B s6Step330Add0Work
    (by decide +kernel) (by decide +kernel) s6Step330Add0_distinct
    (fun q hq => s6Step330Add0_owned (List.mem_toFinset.mpr hq)) s6Step330Add0_borrowed

private theorem s6Step330Add1_apart : Disjoint s6Step330Add1Arena.live s6Step330Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step330Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330Add1_card : s6Step330Add1Arena.live.card=904 := by
  decide +kernel

private theorem s6Step330Add1_borrowed : s6Step330Add1Arena.checkBorrow (hmrHybridCount s6Step330Add1Arena s6Step330Add1B.length) s6Step330Add1Work=some s6Step330Add1During := by
  have len : s6Step330Add1Work.length=hmrHybridCount s6Step330Add1Arena s6Step330Add1B.length := by
    rw [hmrHybridCount,s6Step330Add1_card]
    decide +kernel
  have nd : s6Step330Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step330Add1Arena s6Step330Add1During s6Step330Add1Work.toFinset s6Step330Add1_bounded s6Step330Add1_apart rfl

private theorem s6Step330Add1_distinct : (841::907::854::(s6Step330Add1A++s6Step330Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330Add1_owned : (841::907::854::(s6Step330Add1A++s6Step330Add1B)).toFinset⊆s6Step330Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step330Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330Add1_checked : compileHmrHybridCinLog s6Step330Add1Arena 907 841 854 s6Step330Add1A s6Step330Add1B s6Step330Add1Work=some s6Step330Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step330Add1Arena s6Step330Add1During 907 841 854 s6Step330Add1A s6Step330Add1B s6Step330Add1Work
    (by decide +kernel) (by decide +kernel) s6Step330Add1_distinct
    (fun q hq => s6Step330Add1_owned (List.mem_toFinset.mpr hq)) s6Step330Add1_borrowed

private theorem s6Step330F4_apart : Disjoint (s6Step330Add0A++s6Step330Add0B).toFinset (s6Step330Add1A++s6Step330Add1B).toFinset := by
  have nd : ((s6Step330Add0A++s6Step330Add0B)++(s6Step330Add1A++s6Step330Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step330F4_carry : s6Step330F4FlagArena.checkBorrow 1 [854]=some s6Step330Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step330F4FlagArena,s6Step330HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step330F4FlagArena,s6Step330HeadFvAfter,s6Step330Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step330F4_distinct : (833::907::841::854::((s6Step330Add0A++s6Step330Add1A)++(s6Step330Add0B++s6Step330Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330F4_flag : s6Step330HeadFvAfter.checkBorrow 1 [841]=some s6Step330F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step330HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step330F4_owned : (833::907::((s6Step330Add0A++s6Step330Add1A)++(s6Step330Add0B++s6Step330Add1B))).toFinset⊆s6Step330HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step330HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330F4_checked : compileHmrHybridF4Log s6Step330HeadFvAfter 833 907 s6Step330Add0A s6Step330Add0B s6Step330Add1A s6Step330Add1B [841] [854] s6Step330Add0Work s6Step330Add1Work=some s6Step330F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step330HeadFvAfter s6Step330F4FlagArena s6Step330Add0Arena s6Step330Add0During s6Step330Add1During 833 907
    s6Step330Add0A s6Step330Add0B s6Step330Add1A s6Step330Add1B [841] [854] s6Step330Add0Work s6Step330Add1Work
    (fun q hq => s6Step330F4_owned (List.mem_toFinset.mpr hq)) s6Step330F4_flag s6Step330F4_carry
    s6Step330F4_distinct s6Step330F4_apart s6Step330Add0_checked s6Step330Add1_checked

private theorem s6Step330Front_branch : s6Step330FrontSigmaArena.checkBorrow 1 [907]=some s6Step330HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step330FrontSigmaArena,s6Step330EntryGvAfter,s6Step330EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step330FrontSigmaArena,s6Step330EntryGvAfter,s6Step330EntryFBefore,s6Step330HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step330Front_entry : HmrFrontEntryValid s6Step330EntryFBefore s6Step330FrontBank 105 180 ⟨105,104,181,180⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step330FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step330EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step330EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step330FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step330Front_sigma : s6Step330EntryGvAfter.checkBorrow 1 [833]=some s6Step330FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step330EntryGvAfter,s6Step330EntryFBefore,arenaWires]
  · rfl

private def s6Step330HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330HeadFBefore : Arena := s6Step330HeadGAfter

private def s6Step330HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step330HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step330HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],777⟩

private def s6Step330HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩

private theorem s6Step330HeadBank_incomingDistinct : ([s6Step330HeadGRow,s6Step330HeadFRow,s6Step330HeadGvRow,s6Step330HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330HeadF_Incoming : rowsOwned s6Step330HeadFBefore [s6Step330HeadFRow,s6Step330HeadGvRow,s6Step330HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330HeadGRow,s6Step330HeadFRow,s6Step330HeadGvRow,s6Step330HeadFvRow] 1 s6Step330HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330HeadBank_outgoingOwned : rowsOwned s6Step330HeadFvAfter [s6Step330HeadGOut,s6Step330HeadFOut,s6Step330HeadGvOut,s6Step330HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step330HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330HeadF_Outgoing : rowsOwned s6Step330HeadFvAfter [s6Step330HeadFOut,s6Step330HeadGvOut,s6Step330HeadFvOut] :=
  hmrRows_owned_drop s6Step330HeadFvAfter [s6Step330HeadGOut,s6Step330HeadFOut,s6Step330HeadGvOut,s6Step330HeadFvOut] 1 s6Step330HeadBank_outgoingOwned

private theorem s6Step330HeadF_distinct : (s6Step330HeadFRow.sign::s6Step330HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330HeadF_owned : (s6Step330HeadFRow.sign::s6Step330HeadFRow.payload).toFinset⊆s6Step330HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330HeadF_reserved : s6Step330HeadFBefore.reserve s6Step330HeadFFresh.toFinset=some s6Step330HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step330HeadFFresh,arenaWires]
  · norm_num [s6Step330HeadFBefore,s6Step330HeadGAfter,s6Step330HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step330HeadFAfter,s6Step330HeadFBefore,s6Step330HeadGAfter,s6Step330HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step330HeadF_checked : planRowResizeLog s6Step330HeadFBefore s6Step330HeadFRow 106 s6Step330HeadFFresh=
    some (s6Step330HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 794],795⟩,growRow 795 s6Step330HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step330HeadFBefore s6Step330HeadFAfter s6Step330HeadFRow 106 s6Step330HeadFFresh
    s6Step330HeadF_distinct s6Step330HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step330HeadF_reserved
  have rowEq : WindowRow.mk (s6Step330HeadFRow.payload++s6Step330HeadFFresh) s6Step330HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 794],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step330HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step330HeadFvBefore : Arena := s6Step330HeadGvAfter

private theorem s6Step330HeadFv_Incoming : rowsOwned s6Step330HeadFvBefore [s6Step330HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330HeadGRow,s6Step330HeadFRow,s6Step330HeadGvRow,s6Step330HeadFvRow] 3 s6Step330HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330HeadFv_Outgoing : rowsOwned s6Step330HeadFvAfter [s6Step330HeadFvOut] :=
  hmrRows_owned_drop s6Step330HeadFvAfter [s6Step330HeadGOut,s6Step330HeadFOut,s6Step330HeadGvOut,s6Step330HeadFvOut] 3 s6Step330HeadBank_outgoingOwned

private theorem s6Step330HeadFv_distinct : (s6Step330HeadFvRow.sign::s6Step330HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330HeadFv_owned : (s6Step330HeadFvRow.sign::s6Step330HeadFvRow.payload).toFinset⊆s6Step330HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330HeadFv_reserved : s6Step330HeadFvBefore.reserve s6Step330HeadFvFresh.toFinset=some s6Step330HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step330HeadFvFresh,arenaWires]
  · norm_num [s6Step330HeadFvBefore,s6Step330HeadGvAfter,s6Step330HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step330HeadFvAfter,s6Step330HeadFvBefore,s6Step330HeadGvAfter,s6Step330HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step330HeadFv_checked : planRowResizeLog s6Step330HeadFvBefore s6Step330HeadFvRow 181 s6Step330HeadFvFresh=
    some (s6Step330HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩,growRow 776 s6Step330HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step330HeadFvBefore s6Step330HeadFvAfter s6Step330HeadFvRow 181 s6Step330HeadFvFresh
    s6Step330HeadFv_distinct s6Step330HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step330HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step330HeadFvRow.payload++s6Step330HeadFvFresh) s6Step330HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step330HeadG_Incoming : rowsOwned s6Step330HeadGBefore [s6Step330HeadGRow,s6Step330HeadFRow,s6Step330HeadGvRow,s6Step330HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330HeadGRow,s6Step330HeadFRow,s6Step330HeadGvRow,s6Step330HeadFvRow] 0 s6Step330HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330HeadG_Outgoing : rowsOwned s6Step330HeadFvAfter [s6Step330HeadGOut,s6Step330HeadFOut,s6Step330HeadGvOut,s6Step330HeadFvOut] :=
  hmrRows_owned_drop s6Step330HeadFvAfter [s6Step330HeadGOut,s6Step330HeadFOut,s6Step330HeadGvOut,s6Step330HeadFvOut] 0 s6Step330HeadBank_outgoingOwned

private theorem s6Step330HeadG_distinct : (s6Step330HeadGRow.sign::s6Step330HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330HeadG_owned : (s6Step330HeadGRow.sign::s6Step330HeadGRow.payload).toFinset⊆s6Step330HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330HeadG_reserved : s6Step330HeadGBefore.reserve s6Step330HeadGFresh.toFinset=some s6Step330HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step330HeadGFresh,arenaWires]
  · norm_num [s6Step330HeadGBefore,s6Step330HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step330HeadGAfter,s6Step330HeadGBefore,s6Step330HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step330HeadG_checked : planRowResizeLog s6Step330HeadGBefore s6Step330HeadGRow 106 s6Step330HeadGFresh=
    some (s6Step330HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 859],777⟩,growRow 777 s6Step330HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step330HeadGBefore s6Step330HeadGAfter s6Step330HeadGRow 106 s6Step330HeadGFresh
    s6Step330HeadG_distinct s6Step330HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step330HeadG_reserved
  have rowEq : WindowRow.mk (s6Step330HeadGRow.payload++s6Step330HeadGFresh) s6Step330HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 859],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step330HeadGvBefore : Arena := s6Step330HeadFAfter

private theorem s6Step330HeadGv_Incoming : rowsOwned s6Step330HeadGvBefore [s6Step330HeadGvRow,s6Step330HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step330HeadGRow,s6Step330HeadFRow,s6Step330HeadGvRow,s6Step330HeadFvRow] 2 s6Step330HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step330HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step330HeadGv_Outgoing : rowsOwned s6Step330HeadFvAfter [s6Step330HeadGvOut,s6Step330HeadFvOut] :=
  hmrRows_owned_drop s6Step330HeadFvAfter [s6Step330HeadGOut,s6Step330HeadFOut,s6Step330HeadGvOut,s6Step330HeadFvOut] 2 s6Step330HeadBank_outgoingOwned

private theorem s6Step330HeadGv_distinct : (s6Step330HeadGvRow.sign::s6Step330HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step330HeadGv_owned : (s6Step330HeadGvRow.sign::s6Step330HeadGvRow.payload).toFinset⊆s6Step330HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step330HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step330HeadGv_reserved : s6Step330HeadGvBefore.reserve s6Step330HeadGvFresh.toFinset=some s6Step330HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step330HeadGvFresh,arenaWires]
  · norm_num [s6Step330HeadGvBefore,s6Step330HeadFAfter,s6Step330HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step330HeadGvAfter,s6Step330HeadGvBefore,s6Step330HeadFAfter,s6Step330HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step330HeadGv_checked : planRowResizeLog s6Step330HeadGvBefore s6Step330HeadGvRow 181 s6Step330HeadGvFresh=
    some (s6Step330HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 865],775⟩,growRow 775 s6Step330HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step330HeadGvBefore s6Step330HeadGvAfter s6Step330HeadGvRow 181 s6Step330HeadGvFresh
    s6Step330HeadGv_distinct s6Step330HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step330HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step330HeadGvRow.payload++s6Step330HeadGvFresh) s6Step330HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 865],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step330HeadBank_rows : planWindowRowsLog s6Step330HeadGBefore [(s6Step330HeadGRow,106),(s6Step330HeadFRow,106),(s6Step330HeadGvRow,181),(s6Step330HeadFvRow,181)] [s6Step330HeadGFresh,s6Step330HeadFFresh,s6Step330HeadGvFresh,s6Step330HeadFvFresh]=
    some (s6Step330HeadFvAfter,[s6Step330HeadGOut,s6Step330HeadFOut,s6Step330HeadGvOut,s6Step330HeadFvOut],(growRow 777 s6Step330HeadGFresh ++ (growRow 795 s6Step330HeadFFresh ++ (growRow 775 s6Step330HeadGvFresh ++ (growRow 776 s6Step330HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step330HeadFvAfter [] []=some (s6Step330HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step330HeadFvBefore s6Step330HeadFvAfter s6Step330HeadFvAfter
    s6Step330HeadFvRow s6Step330HeadFvOut 181 s6Step330HeadFvFresh [] [] []
    (growRow 776 s6Step330HeadFvFresh) ([]) s6Step330HeadFv_Incoming s6Step330HeadFv_checked h4 s6Step330HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step330HeadGvBefore s6Step330HeadGvAfter s6Step330HeadFvAfter
    s6Step330HeadGvRow s6Step330HeadGvOut 181 s6Step330HeadGvFresh [(s6Step330HeadFvRow,181)] [s6Step330HeadFvFresh] [s6Step330HeadFvOut]
    (growRow 775 s6Step330HeadGvFresh) ((growRow 776 s6Step330HeadFvFresh ++ [])) s6Step330HeadGv_Incoming s6Step330HeadGv_checked h3 s6Step330HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step330HeadFBefore s6Step330HeadFAfter s6Step330HeadFvAfter
    s6Step330HeadFRow s6Step330HeadFOut 106 s6Step330HeadFFresh [(s6Step330HeadGvRow,181),(s6Step330HeadFvRow,181)] [s6Step330HeadGvFresh,s6Step330HeadFvFresh] [s6Step330HeadGvOut,s6Step330HeadFvOut]
    (growRow 795 s6Step330HeadFFresh) ((growRow 775 s6Step330HeadGvFresh ++ (growRow 776 s6Step330HeadFvFresh ++ []))) s6Step330HeadF_Incoming s6Step330HeadF_checked h2 s6Step330HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step330HeadGBefore s6Step330HeadGAfter s6Step330HeadFvAfter
    s6Step330HeadGRow s6Step330HeadGOut 106 s6Step330HeadGFresh [(s6Step330HeadFRow,106),(s6Step330HeadGvRow,181),(s6Step330HeadFvRow,181)] [s6Step330HeadFFresh,s6Step330HeadGvFresh,s6Step330HeadFvFresh] [s6Step330HeadFOut,s6Step330HeadGvOut,s6Step330HeadFvOut]
    (growRow 777 s6Step330HeadGFresh) ((growRow 795 s6Step330HeadFFresh ++ (growRow 775 s6Step330HeadGvFresh ++ (growRow 776 s6Step330HeadFvFresh ++ [])))) s6Step330HeadG_Incoming s6Step330HeadG_checked h1 s6Step330HeadG_Outgoing
  exact h0

private theorem s6Step330HeadBank_checked : compileHmrBankResizeLog .headroom s6Step330HeadGBefore ⟨s6Step330HeadFRow,s6Step330HeadGRow,s6Step330HeadFvRow,s6Step330HeadGvRow⟩ ⟨106,106,181,181⟩ [s6Step330HeadGFresh,s6Step330HeadFFresh,s6Step330HeadGvFresh,s6Step330HeadFvFresh]=
    some (s6Step330HeadFvAfter,⟨s6Step330HeadFOut,s6Step330HeadGOut,s6Step330HeadFvOut,s6Step330HeadGvOut⟩,(growRow 777 s6Step330HeadGFresh ++ (growRow 795 s6Step330HeadFFresh ++ (growRow 775 s6Step330HeadGvFresh ++ (growRow 776 s6Step330HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step330HeadBank_rows]
  rfl

private theorem s6Step330Front_checked : compileHmrSourceFrontLog s6Step330EntryFBefore s6Step330FrontBank 105 180 ⟨105,104,181,180⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step330FrontLog=some s6Step330FrontPlan := by
  have pairEq : s6Step330FrontPair=⟨s6Step330HeadFRow,s6Step330HeadGRow,s6Step330HeadFvRow,s6Step330HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step330FrontHead=⟨s6Step330ExitFRow,s6Step330ExitGRow,s6Step330ExitFvRow,s6Step330ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step330Add0A=s6Step330FrontHead.f.wires := by decide +kernel
  have gEq : s6Step330Add0B=s6Step330FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step330Add1A=s6Step330FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step330Add1B=s6Step330FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step330EntryFBefore s6Step330FrontBank 105 180 ⟨105,104,181,180⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step330FrontLog s6Step330FrontPlan
  · exact s6Step330Front_entry
  · exact s6Step330EntryBank_checked
  · exact s6Step330Front_sigma
  · rfl
  · exact s6Step330Front_branch
  · rfl
  · simpa only [s6Step330FrontPlan,pairEq] using s6Step330HeadBank_checked
  · simpa only [s6Step330FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step330F4_checked
  · exact s6Step330Counter_checked
  · rfl
  · simpa only [s6Step330FrontPlan,headEq] using s6Step330ExitBank_checked

private theorem s6Step330Complete_explicit_checked : compileHmrEarlyStepLog s6Step330EntryFBefore s6Step330FrontBank 105 180 ⟨105,104,181,180⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step330CompleteLog=some s6Step330CompletePlan := by
  let Q := s6Step330EarlyControlPlan
  have hq := s6Step330EarlyControl_plan_checked
  have fv1 : s6Step330CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step330CompleteOut.fv.payload[2]?.getD s6Step330CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step330CompleteOut.fv.payload[3]?.getD s6Step330CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step330CompleteOut.fv.payload[4]?.getD s6Step330CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step330EntryFBefore s6Step330EarlyControlArena s6Step330FrontBank 105 180 ⟨105,104,181,180⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step330CompleteLog s6Step330FrontPlan Q
    s6Step330Front_checked s6Step330Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step330Complete_owned s6Step330Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step330EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 833 s6Step330CompleteOut.fv.second (s6Step330CompleteOut.fv.payload[2]?.getD s6Step330CompleteOut.fv.sign) (s6Step330CompleteOut.fv.payload[3]?.getD s6Step330CompleteOut.fv.sign) (s6Step330CompleteOut.fv.payload[4]?.getD s6Step330CompleteOut.fv.sign) 907 60 s6Step330EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep330Arena : Arena := s6Step330EntryFBefore
def s6PrivateStep330Bank : WindowBank := s6Step330FrontBank
def s6PrivateStep330Spec : HmrSourceWalkStepLog := ⟨105,180,⟨105,104,181,180⟩,60,.early s6Step330CompleteLog⟩
def s6PrivateStep330Plan : HmrSourceStepPlan := .early s6Step330CompletePlan
theorem s6PrivateStep330_source : s6PrivateStep330Spec=s6ObservedLogs320[10] := rfl
theorem s6PrivateStep330_checked : compileHmrSourceStepLog s6PrivateStep330Arena s6PrivateStep330Bank
    s6PrivateStep330Spec.fgWidth s6PrivateStep330Spec.vWidth s6PrivateStep330Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 330 s6PrivateStep330Spec.need none s6PrivateStep330Spec.log=some s6PrivateStep330Plan := by
  change compileHmrSourceStepLog s6Step330EntryFBefore s6Step330FrontBank 105 180 ⟨105,104,181,180⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 330 60 none (.early s6Step330CompleteLog)=some (.early s6Step330CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 330<498)]
  rw [s6Step330Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
