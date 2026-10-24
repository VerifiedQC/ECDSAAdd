import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep327
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

private def s6Step329CompleteMoves : List (Wire × Wire) := [(794,105),(859,361)]

private def s6Step329EarlyControlLog : HmrEarlyControlLog := ⟨[859, 794, 865, 862, 841],[854],[903],[843, 860, 805, 817, 812, 915],[]⟩

private def s6Step329FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [793]],[[854], [841], [865], [862]],[[], [], [], []]⟩,[907],[833],[903],[843],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[903, 843, 860, 805]⟩

private def s6Step329CompleteLog : HmrEarlyStepLog := ⟨s6Step329FrontLog,s6Step329CompleteMoves,s6Step329EarlyControlLog⟩

private def s6Step329ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360],795⟩

private def s6Step329ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step329ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104],777⟩

private def s6Step329ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩

private def s6Step329FrontOut : WindowBank := ⟨s6Step329ExitFOut,s6Step329ExitGOut,s6Step329ExitFvOut,s6Step329ExitGvOut⟩

private def s6Step329CompleteOut : WindowBank := s6Step329FrontOut.repacked s6Step329CompleteMoves

private def s6Step329EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step329EarlyControlPositiveArena,[854],s6Step329EarlyControlEqualityArena,[903],⟨⟨907,false⟩,[⟨⟨854,false⟩,903⟩]⟩⟩

private def s6Step329EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,859⟩,⟨⟨772,false⟩,794⟩,⟨⟨771,false⟩,865⟩,⟨⟨770,false⟩,862⟩,⟨⟨769,false⟩,841⟩]⟩

private def s6Step329EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step329EarlyControlZeroArena,s6Step329EarlyControlZeroPlan,s6Step329EarlyControlClassPlan,s6Step329EarlyControlFlagArena,s6Step329EarlyControlFittedArena,s6Step329EarlyControlHistoryArena,s6Step329EarlyControlSigmaArena,s6Step329EarlyControlOutputArena,s6Step329EarlyControlLog⟩

private def s6Step329CounterWork : List Wire := [903, 843, 860, 805]

private theorem s6Step329Counter_bounded : s6Step329CounterWork.toFinset⊆arenaWires := by norm_num [s6Step329CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step329HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329CounterDuring : Arena := ⟨s6Step329HeadFvAfter.live∪s6Step329CounterWork.toFinset,Finset.union_subset s6Step329HeadFvAfter.bounded s6Step329Counter_bounded⟩

private def s6Step329EntryFFresh : List Wire := []

private def s6Step329EntryFvFresh : List Wire := []

private def s6Step329EntryGFresh : List Wire := []

private def s6Step329EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329EntryGvFresh : List Wire := [793]

private def s6Step329ExitFExtra : List Wire := [361, 841]

private def s6Step329ExitFvExtra : List Wire := [862]

private def s6Step329ExitGExtra : List Wire := [105, 854]

private def s6Step329ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<361) ∨ (362≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329ExitGvExtra : List Wire := [865]

private def s6Step329Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329Add0Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step329Add0_bounded : s6Step329Add0Work.toFinset⊆arenaWires := by
  have h : s6Step329Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step329Add0During : Arena := ⟨s6Step329Add0Arena.live∪s6Step329Add0Work.toFinset,Finset.union_subset s6Step329Add0Arena.bounded s6Step329Add0_bounded⟩

private def s6Step329Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329Add1Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step329Add1_bounded : s6Step329Add1Work.toFinset⊆arenaWires := by
  have h : s6Step329Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step329Add1During : Arena := ⟨s6Step329Add1Arena.live∪s6Step329Add1Work.toFinset,Finset.union_subset s6Step329Add1Arena.bounded s6Step329Add1_bounded⟩

private def s6Step329F4FlagArena : Arena := ⟨s6Step329HeadFvAfter.live∪{903},Finset.union_subset s6Step329HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step329F4Plan : HmrHybridF4Plan := ⟨s6Step329F4FlagArena,[903],s6Step329Add0Arena,[843],s6Step329Add0During,s6Step329Add0Work,s6Step329Add1During,s6Step329Add1Work⟩

private def s6Step329HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 841],795⟩

private def s6Step329HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step329HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 854],777⟩

private def s6Step329HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 865],775⟩

private def s6Step329FrontHead : WindowBank := ⟨s6Step329HeadFOut,s6Step329HeadGOut,s6Step329HeadFvOut,s6Step329HeadGvOut⟩

private def s6Step329EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361],795⟩

private def s6Step329EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step329EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],777⟩

private def s6Step329EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩

private def s6Step329FrontPair : WindowBank := ⟨s6Step329EntryFOut,s6Step329EntryGOut,s6Step329EntryFvOut,s6Step329EntryGvOut⟩

private def s6Step329FrontSigmaArena : Arena := ⟨s6Step329EntryGvAfter.live∪{907},Finset.union_subset s6Step329EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step329HeadFFresh : List Wire := [841]

private def s6Step329HeadFvFresh : List Wire := [862]

private def s6Step329HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329HeadGFresh : List Wire := [854]

private def s6Step329HeadGvFresh : List Wire := [865]

private def s6Step329FrontPlan : HmrSourceFront := ⟨s6Step329EntryGvAfter,s6Step329FrontPair,(growRow 795 s6Step329EntryFFresh ++ (growRow 777 s6Step329EntryGFresh ++ (growRow 776 s6Step329EntryFvFresh ++ (growRow 775 s6Step329EntryGvFresh ++ [])))),s6Step329FrontSigmaArena,[907],s6Step329HeadGBefore,[833],
  s6Step329HeadFvAfter,s6Step329FrontHead,(growRow 777 s6Step329HeadGFresh ++ (growRow 795 s6Step329HeadFFresh ++ (growRow 775 s6Step329HeadGvFresh ++ (growRow 776 s6Step329HeadFvFresh ++ [])))),s6Step329F4Plan,s6Step329CounterDuring,s6Step329CounterWork,s6Step329ExitGvAfter,s6Step329FrontOut,(shrinkRow 777 s6Step329ExitGExtra ++ (shrinkRow 795 s6Step329ExitFExtra ++ (shrinkRow 776 s6Step329ExitFvExtra ++ (shrinkRow 775 s6Step329ExitGvExtra ++ []))))⟩

private def s6Step329CompletePlan : HmrEarlyStepPlan := ⟨s6Step329FrontPlan,s6Step329EarlyControlArena,s6Step329EarlyControlPlan,s6Step329CompleteMoves⟩

private theorem s6Step329Complete_apart : List.Disjoint (s6Step329CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [907, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step329CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[907, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step329Complete_owned : (s6Step329CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step329EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step329CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,361),(362,782),(783,790),(791,792),(793,794),(795,797),(799,800),(801,805),(806,808),(809,812),(813,816),(818,819),(821,832),(833,841),(844,854),(855,860),(861,862),(863,865),(866,896),(897,903),(904,906),(907,914),(917,918),(919,920),(921,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step329CompleteRelocationMove0Borrowed : Arena := ⟨s6Step329ExitGvAfter.live∪{105},Finset.union_subset s6Step329ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step329CompleteRelocationMove1Borrowed : Arena := ⟨s6Step329CompleteRelocationMove0After.live∪{361},Finset.union_subset s6Step329CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step329CompleteRelocation_move0_owned : 794∈s6Step329ExitGvAfter.live := by norm_num [s6Step329ExitGvAfter,arenaWires]

private theorem s6Step329CompleteRelocation_move0_reserve : s6Step329ExitGvAfter.reserve {105}=some s6Step329CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step329ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step329CompleteRelocation_move0_retire : s6Step329CompleteRelocationMove0Borrowed.retireSet {794}=s6Step329CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step329CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step329CompleteRelocationMove0Borrowed,s6Step329ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step329CompleteRelocation_move1_owned : 859∈s6Step329CompleteRelocationMove0After.live := by norm_num [s6Step329CompleteRelocationMove0After,arenaWires]

private theorem s6Step329CompleteRelocation_move1_reserve : s6Step329CompleteRelocationMove0After.reserve {361}=some s6Step329CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step329CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step329CompleteRelocation_move1_retire : s6Step329CompleteRelocationMove1Borrowed.retireSet {859}=s6Step329EarlyControlArena := by
  unfold Arena.retireSet s6Step329EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step329CompleteRelocationMove1Borrowed,s6Step329CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step329CompleteRelocation_checked : s6Step329ExitGvAfter.checkRepack [(794,105),(859,361)]=some s6Step329EarlyControlArena := by
  have tail2 : s6Step329EarlyControlArena.checkRepack []=some s6Step329EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step329CompleteRelocationMove0After s6Step329CompleteRelocationMove1Borrowed s6Step329EarlyControlArena s6Step329EarlyControlArena 859 361 []
    s6Step329CompleteRelocation_move1_owned s6Step329CompleteRelocation_move1_reserve s6Step329CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step329ExitGvAfter s6Step329CompleteRelocationMove0Borrowed s6Step329CompleteRelocationMove0After s6Step329EarlyControlArena 794 105 [(859,361)]
    s6Step329CompleteRelocation_move0_owned s6Step329CompleteRelocation_move0_reserve s6Step329CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step329Complete_repack : s6Step329ExitGvAfter.checkRepack s6Step329CompleteMoves=some s6Step329EarlyControlArena := by
  simpa only [s6Step329CompleteMoves] using s6Step329CompleteRelocation_checked

private theorem s6Step329EarlyControl_branchOwned : ([833] : List Wire).toFinset⊆s6Step329EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EarlyControl_branch : compileHmrBranchRetirement s6Step329EarlyControlSigmaArena 833=some s6Step329EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step329EarlyControl_branchOwned
  · ext q
    simp [s6Step329EarlyControlOutputArena,s6Step329EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step329EarlyControl_classEqualityBorrow : s6Step329EarlyControlPositiveArena.checkBorrow (([907, 854] : List Wire).length-1) s6Step329EarlyControlLog.classWork=some s6Step329EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step329EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step329EarlyControlEqualityArena,s6Step329EarlyControlPositiveArena,s6Step329EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step329EarlyControl_classEqualityOwned : ([907, 854] : List Wire).toFinset⊆s6Step329EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EarlyControl_classEquality : compileHmrEqualityLog s6Step329EarlyControlPositiveArena [907, 854] 0 s6Step329EarlyControlLog.classWork=some (s6Step329EarlyControlEqualityArena,s6Step329EarlyControlLog.classWork,s6Step329EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step329EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step329EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step329EarlyControl_classOwned : ([769, 841, 907] : List Wire).toFinset⊆s6Step329EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EarlyControl_positiveBorrow : s6Step329EarlyControlZeroArena.checkBorrow (1) s6Step329EarlyControlLog.positiveWork=some s6Step329EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step329EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step329EarlyControlPositiveArena,s6Step329EarlyControlZeroArena,s6Step329EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step329EarlyControl_class : compileHmrSourceClassLog s6Step329EarlyControlZeroArena false 769 s6Step329EarlyControlZeroPlan.top 0 907 s6Step329EarlyControlLog.positiveWork s6Step329EarlyControlLog.classWork=some s6Step329EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step329EarlyControlClassPlan s6Step329EarlyControlZeroArena false 769 s6Step329EarlyControlZeroPlan.top 0 907
  constructor
  · decide +kernel
  · exact s6Step329EarlyControl_classOwned
  · exact s6Step329EarlyControl_positiveBorrow
  · exact s6Step329EarlyControl_classEquality

private theorem s6Step329EarlyControl_entryRecordOwned : ([833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step329EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EarlyControl_entrySigmaOwned : ([907, 254] : List Wire).toFinset⊆s6Step329EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EarlyControl_fitBorrow : s6Step329EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step329EarlyControlLog.recordFresh=some s6Step329EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step329EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step329EarlyControlFittedArena,s6Step329EarlyControlFlagArena,s6Step329EarlyControlLog,arenaWires]

private theorem s6Step329EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step329EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EarlyControl_fit : compileHmrRecordGrowLog s6Step329EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step329EarlyControlLog.recordFresh=some s6Step329EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step329EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step329EarlyControl_fitBorrow

private theorem s6Step329EarlyControl_flagsBorrow : s6Step329EarlyControlEqualityArena.checkBorrow (6) s6Step329EarlyControlLog.flagWork=some s6Step329EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step329EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step329EarlyControlFlagArena,s6Step329EarlyControlEqualityArena,s6Step329EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step329EarlyControl_flagsOwned : ([903, 253, 252, 251] : List Wire).toFinset⊆s6Step329EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EarlyControl_flags : compileHmrFlagsLog s6Step329EarlyControlClassPlan.equalityArena s6Step329EarlyControlClassPlan.equality.top 253 252 251 s6Step329EarlyControlLog.flagWork=some s6Step329EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step329EarlyControl_flagsOwned⟩
  · exact s6Step329EarlyControl_flagsBorrow

private theorem s6Step329EarlyControl_historyBorrow : s6Step329EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step329EarlyControlLog.recordFresh=some s6Step329EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step329EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step329EarlyControlHistoryArena,s6Step329EarlyControlArena,s6Step329EarlyControlLog,arenaWires]

private theorem s6Step329EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step329EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EarlyControl_history : compileHmrRecordGrowLog s6Step329EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step329EarlyControlLog.recordFresh=some s6Step329EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step329EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step329EarlyControl_historyBorrow

private theorem s6Step329EarlyControl_sigmaOwned : ([254, 907] : List Wire).toFinset⊆s6Step329EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EarlyControl_sigmaReleaseOwned : ([907] : List Wire).toFinset⊆s6Step329EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EarlyControl_sigmaRelease : s6Step329EarlyControlHistoryArena.release {907} (fun _ => false)=some s6Step329EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step329EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step329EarlyControlSigmaArena,s6Step329EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step329EarlyControl_sigma : compileHmrSigmaDropLog s6Step329EarlyControlHistoryArena false 0 0 254 907 []=some s6Step329EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step329EarlyControl_sigmaOwned⟩
  · exact s6Step329EarlyControl_sigmaRelease

private theorem s6Step329EarlyControl_zeroBorrow : s6Step329EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step329EarlyControlLog.zeroWork=some s6Step329EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step329EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step329EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step329EarlyControlZeroArena,s6Step329EarlyControlArena,s6Step329EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step329EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step329EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step329EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<859) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EarlyControl_zero : compileHmrEqualityLog s6Step329EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step329EarlyControlLog.zeroWork=some (s6Step329EarlyControlZeroArena,s6Step329EarlyControlLog.zeroWork,s6Step329EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step329EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step329EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step329EarlyControl_logged : s6Step329EarlyControlPlan.Logged s6Step329EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 833 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step329EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step329EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step329EarlyControl_zero
  · exact s6Step329EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step329EarlyControl_flags
  · exact s6Step329EarlyControl_fit
  · exact s6Step329EarlyControl_history
  · exact s6Step329EarlyControl_sigma
  · exact s6Step329EarlyControl_branch

private theorem s6Step329EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step329EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 833 60 s6Step329EarlyControlLog=some s6Step329EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step329EarlyControlPlan s6Step329EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 254 253 252 251 833 60 s6Step329EarlyControl_logged

private def s6Step329EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361],795⟩

private def s6Step329EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step329EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],777⟩

private def s6Step329EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830],775⟩

private def s6Step329FrontBank : WindowBank := ⟨s6Step329EntryFRow,s6Step329EntryGRow,s6Step329EntryFvRow,s6Step329EntryGvRow⟩

private def s6Step329Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 841, 795]

private def s6Step329Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 854, 777]

private def s6Step329Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862, 776]

private def s6Step329Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 865, 775]

private theorem s6Step329Counter_apart : Disjoint s6Step329HeadFvAfter.live s6Step329CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step329HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329Counter_borrowed : s6Step329HeadFvAfter.checkBorrow 4 s6Step329CounterWork=some s6Step329CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step329HeadFvAfter s6Step329CounterDuring s6Step329CounterWork.toFinset s6Step329Counter_bounded s6Step329Counter_apart rfl

private theorem s6Step329Counter_owned : (907::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step329HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step329HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329Counter_checked : compileHmrCounterStepLog s6Step329HeadFvAfter true 907 [774, 773, 772, 771, 770, 769] s6Step329CounterWork=some s6Step329CounterDuring := by
  have owned : ∀q∈907::[774, 773, 772, 771, 770, 769],q∈s6Step329HeadFvAfter.live := fun q hq => s6Step329Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step329Counter_borrowed

private def s6Step329EntryFAfter : Arena := s6Step329EntryFBefore

private theorem s6Step329EntryBank_incomingDistinct : ([s6Step329EntryFRow,s6Step329EntryGRow,s6Step329EntryFvRow,s6Step329EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329EntryF_Incoming : rowsOwned s6Step329EntryFBefore [s6Step329EntryFRow,s6Step329EntryGRow,s6Step329EntryFvRow,s6Step329EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329EntryFRow,s6Step329EntryGRow,s6Step329EntryFvRow,s6Step329EntryGvRow] 0 s6Step329EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329EntryBank_outgoingOwned : rowsOwned s6Step329EntryGvAfter [s6Step329EntryFOut,s6Step329EntryGOut,s6Step329EntryFvOut,s6Step329EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step329EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329EntryF_Outgoing : rowsOwned s6Step329EntryGvAfter [s6Step329EntryFOut,s6Step329EntryGOut,s6Step329EntryFvOut,s6Step329EntryGvOut] :=
  hmrRows_owned_drop s6Step329EntryGvAfter [s6Step329EntryFOut,s6Step329EntryGOut,s6Step329EntryFvOut,s6Step329EntryGvOut] 0 s6Step329EntryBank_outgoingOwned

private theorem s6Step329EntryF_distinct : (s6Step329EntryFRow.sign::s6Step329EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329EntryF_owned : (s6Step329EntryFRow.sign::s6Step329EntryFRow.payload).toFinset⊆s6Step329EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EntryF_reserved : s6Step329EntryFBefore.reserve s6Step329EntryFFresh.toFinset=some s6Step329EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step329EntryFFresh,arenaWires]
  · norm_num [s6Step329EntryFBefore,s6Step329EntryFFresh,arenaWires]
  · simp only [s6Step329EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step329EntryF_checked : planRowResizeLog s6Step329EntryFBefore s6Step329EntryFRow 106 s6Step329EntryFFresh=
    some (s6Step329EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361],795⟩,growRow 795 s6Step329EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step329EntryFBefore s6Step329EntryFAfter s6Step329EntryFRow 106 s6Step329EntryFFresh
    s6Step329EntryF_distinct s6Step329EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step329EntryF_reserved
  have rowEq : WindowRow.mk (s6Step329EntryFRow.payload++s6Step329EntryFFresh) s6Step329EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step329EntryFvAfter : Arena := s6Step329EntryFBefore

private def s6Step329EntryFvBefore : Arena := s6Step329EntryFBefore

private theorem s6Step329EntryFv_Incoming : rowsOwned s6Step329EntryFvBefore [s6Step329EntryFvRow,s6Step329EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329EntryFRow,s6Step329EntryGRow,s6Step329EntryFvRow,s6Step329EntryGvRow] 2 s6Step329EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329EntryFv_Outgoing : rowsOwned s6Step329EntryGvAfter [s6Step329EntryFvOut,s6Step329EntryGvOut] :=
  hmrRows_owned_drop s6Step329EntryGvAfter [s6Step329EntryFOut,s6Step329EntryGOut,s6Step329EntryFvOut,s6Step329EntryGvOut] 2 s6Step329EntryBank_outgoingOwned

private theorem s6Step329EntryFv_distinct : (s6Step329EntryFvRow.sign::s6Step329EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329EntryFv_owned : (s6Step329EntryFvRow.sign::s6Step329EntryFvRow.payload).toFinset⊆s6Step329EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EntryFv_reserved : s6Step329EntryFvBefore.reserve s6Step329EntryFvFresh.toFinset=some s6Step329EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step329EntryFvFresh,arenaWires]
  · norm_num [s6Step329EntryFvBefore,s6Step329EntryFBefore,s6Step329EntryFvFresh,arenaWires]
  · simp only [s6Step329EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step329EntryFv_checked : planRowResizeLog s6Step329EntryFvBefore s6Step329EntryFvRow 180 s6Step329EntryFvFresh=
    some (s6Step329EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩,growRow 776 s6Step329EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step329EntryFvBefore s6Step329EntryFvAfter s6Step329EntryFvRow 180 s6Step329EntryFvFresh
    s6Step329EntryFv_distinct s6Step329EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step329EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step329EntryFvRow.payload++s6Step329EntryFvFresh) s6Step329EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step329EntryGAfter : Arena := s6Step329EntryFBefore

private def s6Step329EntryGBefore : Arena := s6Step329EntryFBefore

private theorem s6Step329EntryG_Incoming : rowsOwned s6Step329EntryGBefore [s6Step329EntryGRow,s6Step329EntryFvRow,s6Step329EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329EntryFRow,s6Step329EntryGRow,s6Step329EntryFvRow,s6Step329EntryGvRow] 1 s6Step329EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329EntryG_Outgoing : rowsOwned s6Step329EntryGvAfter [s6Step329EntryGOut,s6Step329EntryFvOut,s6Step329EntryGvOut] :=
  hmrRows_owned_drop s6Step329EntryGvAfter [s6Step329EntryFOut,s6Step329EntryGOut,s6Step329EntryFvOut,s6Step329EntryGvOut] 1 s6Step329EntryBank_outgoingOwned

private theorem s6Step329EntryG_distinct : (s6Step329EntryGRow.sign::s6Step329EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329EntryG_owned : (s6Step329EntryGRow.sign::s6Step329EntryGRow.payload).toFinset⊆s6Step329EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EntryG_reserved : s6Step329EntryGBefore.reserve s6Step329EntryGFresh.toFinset=some s6Step329EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step329EntryGFresh,arenaWires]
  · norm_num [s6Step329EntryGBefore,s6Step329EntryFBefore,s6Step329EntryGFresh,arenaWires]
  · simp only [s6Step329EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step329EntryG_checked : planRowResizeLog s6Step329EntryGBefore s6Step329EntryGRow 106 s6Step329EntryGFresh=
    some (s6Step329EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],777⟩,growRow 777 s6Step329EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step329EntryGBefore s6Step329EntryGAfter s6Step329EntryGRow 106 s6Step329EntryGFresh
    s6Step329EntryG_distinct s6Step329EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step329EntryG_reserved
  have rowEq : WindowRow.mk (s6Step329EntryGRow.payload++s6Step329EntryGFresh) s6Step329EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step329EntryGvBefore : Arena := s6Step329EntryFBefore

private theorem s6Step329EntryGv_Incoming : rowsOwned s6Step329EntryGvBefore [s6Step329EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329EntryFRow,s6Step329EntryGRow,s6Step329EntryFvRow,s6Step329EntryGvRow] 3 s6Step329EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329EntryGv_Outgoing : rowsOwned s6Step329EntryGvAfter [s6Step329EntryGvOut] :=
  hmrRows_owned_drop s6Step329EntryGvAfter [s6Step329EntryFOut,s6Step329EntryGOut,s6Step329EntryFvOut,s6Step329EntryGvOut] 3 s6Step329EntryBank_outgoingOwned

private theorem s6Step329EntryGv_distinct : (s6Step329EntryGvRow.sign::s6Step329EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329EntryGv_owned : (s6Step329EntryGvRow.sign::s6Step329EntryGvRow.payload).toFinset⊆s6Step329EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329EntryGv_reserved : s6Step329EntryGvBefore.reserve s6Step329EntryGvFresh.toFinset=some s6Step329EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step329EntryGvFresh,arenaWires]
  · norm_num [s6Step329EntryGvBefore,s6Step329EntryFBefore,s6Step329EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step329EntryGvAfter,s6Step329EntryGvBefore,s6Step329EntryFBefore,s6Step329EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step329EntryGv_checked : planRowResizeLog s6Step329EntryGvBefore s6Step329EntryGvRow 180 s6Step329EntryGvFresh=
    some (s6Step329EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩,growRow 775 s6Step329EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step329EntryGvBefore s6Step329EntryGvAfter s6Step329EntryGvRow 180 s6Step329EntryGvFresh
    s6Step329EntryGv_distinct s6Step329EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step329EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step329EntryGvRow.payload++s6Step329EntryGvFresh) s6Step329EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step329EntryBank_rows : planWindowRowsLog s6Step329EntryFBefore [(s6Step329EntryFRow,106),(s6Step329EntryGRow,106),(s6Step329EntryFvRow,180),(s6Step329EntryGvRow,180)] [s6Step329EntryFFresh,s6Step329EntryGFresh,s6Step329EntryFvFresh,s6Step329EntryGvFresh]=
    some (s6Step329EntryGvAfter,[s6Step329EntryFOut,s6Step329EntryGOut,s6Step329EntryFvOut,s6Step329EntryGvOut],(growRow 795 s6Step329EntryFFresh ++ (growRow 777 s6Step329EntryGFresh ++ (growRow 776 s6Step329EntryFvFresh ++ (growRow 775 s6Step329EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step329EntryGvAfter [] []=some (s6Step329EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step329EntryGvBefore s6Step329EntryGvAfter s6Step329EntryGvAfter
    s6Step329EntryGvRow s6Step329EntryGvOut 180 s6Step329EntryGvFresh [] [] []
    (growRow 775 s6Step329EntryGvFresh) ([]) s6Step329EntryGv_Incoming s6Step329EntryGv_checked h4 s6Step329EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step329EntryFvBefore s6Step329EntryFvAfter s6Step329EntryGvAfter
    s6Step329EntryFvRow s6Step329EntryFvOut 180 s6Step329EntryFvFresh [(s6Step329EntryGvRow,180)] [s6Step329EntryGvFresh] [s6Step329EntryGvOut]
    (growRow 776 s6Step329EntryFvFresh) ((growRow 775 s6Step329EntryGvFresh ++ [])) s6Step329EntryFv_Incoming s6Step329EntryFv_checked h3 s6Step329EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step329EntryGBefore s6Step329EntryGAfter s6Step329EntryGvAfter
    s6Step329EntryGRow s6Step329EntryGOut 106 s6Step329EntryGFresh [(s6Step329EntryFvRow,180),(s6Step329EntryGvRow,180)] [s6Step329EntryFvFresh,s6Step329EntryGvFresh] [s6Step329EntryFvOut,s6Step329EntryGvOut]
    (growRow 777 s6Step329EntryGFresh) ((growRow 776 s6Step329EntryFvFresh ++ (growRow 775 s6Step329EntryGvFresh ++ []))) s6Step329EntryG_Incoming s6Step329EntryG_checked h2 s6Step329EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step329EntryFBefore s6Step329EntryFAfter s6Step329EntryGvAfter
    s6Step329EntryFRow s6Step329EntryFOut 106 s6Step329EntryFFresh [(s6Step329EntryGRow,106),(s6Step329EntryFvRow,180),(s6Step329EntryGvRow,180)] [s6Step329EntryGFresh,s6Step329EntryFvFresh,s6Step329EntryGvFresh] [s6Step329EntryGOut,s6Step329EntryFvOut,s6Step329EntryGvOut]
    (growRow 795 s6Step329EntryFFresh) ((growRow 777 s6Step329EntryGFresh ++ (growRow 776 s6Step329EntryFvFresh ++ (growRow 775 s6Step329EntryGvFresh ++ [])))) s6Step329EntryF_Incoming s6Step329EntryF_checked h1 s6Step329EntryF_Outgoing
  exact h0

private theorem s6Step329EntryBank_checked : compileHmrBankResizeLog .entry s6Step329EntryFBefore ⟨s6Step329EntryFRow,s6Step329EntryGRow,s6Step329EntryFvRow,s6Step329EntryGvRow⟩ ⟨106,106,180,180⟩ [s6Step329EntryFFresh,s6Step329EntryGFresh,s6Step329EntryFvFresh,s6Step329EntryGvFresh]=
    some (s6Step329EntryGvAfter,⟨s6Step329EntryFOut,s6Step329EntryGOut,s6Step329EntryFvOut,s6Step329EntryGvOut⟩,(growRow 795 s6Step329EntryFFresh ++ (growRow 777 s6Step329EntryGFresh ++ (growRow 776 s6Step329EntryFvFresh ++ (growRow 775 s6Step329EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step329EntryBank_rows]
  rfl

private def s6Step329ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<361) ∨ (362≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329ExitFBefore : Arena := s6Step329ExitGAfter

private def s6Step329ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 841],795⟩

private def s6Step329ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩

private def s6Step329ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 854],777⟩

private def s6Step329ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 865],775⟩

private theorem s6Step329ExitBank_incomingDistinct : ([s6Step329ExitGRow,s6Step329ExitFRow,s6Step329ExitFvRow,s6Step329ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329ExitF_Incoming : rowsOwned s6Step329ExitFBefore [s6Step329ExitFRow,s6Step329ExitFvRow,s6Step329ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329ExitGRow,s6Step329ExitFRow,s6Step329ExitFvRow,s6Step329ExitGvRow] 1 s6Step329ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329ExitFBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329ExitBank_outgoingOwned : rowsOwned s6Step329ExitGvAfter [s6Step329ExitGOut,s6Step329ExitFOut,s6Step329ExitFvOut,s6Step329ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step329ExitGvAfter (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<361) ∨ (362≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329ExitF_Outgoing : rowsOwned s6Step329ExitGvAfter [s6Step329ExitFOut,s6Step329ExitFvOut,s6Step329ExitGvOut] :=
  hmrRows_owned_drop s6Step329ExitGvAfter [s6Step329ExitGOut,s6Step329ExitFOut,s6Step329ExitFvOut,s6Step329ExitGvOut] 1 s6Step329ExitBank_outgoingOwned

private theorem s6Step329ExitF_distinct : (s6Step329ExitFRow.sign::s6Step329ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329ExitF_owned : (s6Step329ExitFRow.sign::s6Step329ExitFRow.payload).toFinset⊆s6Step329ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329ExitFBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329ExitF_retired : s6Step329ExitFBefore.retireSet s6Step329ExitFExtra.toFinset=s6Step329ExitFAfter := by
  unfold Arena.retireSet s6Step329ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step329ExitFBefore,s6Step329ExitGAfter,s6Step329ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step329ExitF_checked : planRowResizeLog s6Step329ExitFBefore s6Step329ExitFRow 105 []=
    some (s6Step329ExitFAfter,s6Step329ExitFOut,shrinkRow 795 s6Step329ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step329ExitFBefore s6Step329ExitFRow 105 s6Step329ExitF_distinct s6Step329ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step329ExitFRow.payload.take 105) s6Step329ExitFRow.sign=s6Step329ExitFOut := by decide +kernel
  have hi : s6Step329ExitFRow.payload.drop 105=s6Step329ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step329ExitF_retired] at result
  exact result

private def s6Step329ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<361) ∨ (362≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329ExitFvBefore : Arena := s6Step329ExitFAfter

private theorem s6Step329ExitFv_Incoming : rowsOwned s6Step329ExitFvBefore [s6Step329ExitFvRow,s6Step329ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329ExitGRow,s6Step329ExitFRow,s6Step329ExitFvRow,s6Step329ExitGvRow] 2 s6Step329ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329ExitFvBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<361) ∨ (362≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329ExitFv_Outgoing : rowsOwned s6Step329ExitGvAfter [s6Step329ExitFvOut,s6Step329ExitGvOut] :=
  hmrRows_owned_drop s6Step329ExitGvAfter [s6Step329ExitGOut,s6Step329ExitFOut,s6Step329ExitFvOut,s6Step329ExitGvOut] 2 s6Step329ExitBank_outgoingOwned

private theorem s6Step329ExitFv_distinct : (s6Step329ExitFvRow.sign::s6Step329ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329ExitFv_owned : (s6Step329ExitFvRow.sign::s6Step329ExitFvRow.payload).toFinset⊆s6Step329ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329ExitFvBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<361) ∨ (362≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329ExitFv_retired : s6Step329ExitFvBefore.retireSet s6Step329ExitFvExtra.toFinset=s6Step329ExitFvAfter := by
  unfold Arena.retireSet s6Step329ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step329ExitFvBefore,s6Step329ExitFAfter,s6Step329ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step329ExitFv_checked : planRowResizeLog s6Step329ExitFvBefore s6Step329ExitFvRow 180 []=
    some (s6Step329ExitFvAfter,s6Step329ExitFvOut,shrinkRow 776 s6Step329ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step329ExitFvBefore s6Step329ExitFvRow 180 s6Step329ExitFv_distinct s6Step329ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step329ExitFvRow.payload.take 180) s6Step329ExitFvRow.sign=s6Step329ExitFvOut := by decide +kernel
  have hi : s6Step329ExitFvRow.payload.drop 180=s6Step329ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step329ExitFv_retired] at result
  exact result

private def s6Step329ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step329ExitG_Incoming : rowsOwned s6Step329ExitGBefore [s6Step329ExitGRow,s6Step329ExitFRow,s6Step329ExitFvRow,s6Step329ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329ExitGRow,s6Step329ExitFRow,s6Step329ExitFvRow,s6Step329ExitGvRow] 0 s6Step329ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329ExitG_Outgoing : rowsOwned s6Step329ExitGvAfter [s6Step329ExitGOut,s6Step329ExitFOut,s6Step329ExitFvOut,s6Step329ExitGvOut] :=
  hmrRows_owned_drop s6Step329ExitGvAfter [s6Step329ExitGOut,s6Step329ExitFOut,s6Step329ExitFvOut,s6Step329ExitGvOut] 0 s6Step329ExitBank_outgoingOwned

private theorem s6Step329ExitG_distinct : (s6Step329ExitGRow.sign::s6Step329ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329ExitG_owned : (s6Step329ExitGRow.sign::s6Step329ExitGRow.payload).toFinset⊆s6Step329ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329ExitG_retired : s6Step329ExitGBefore.retireSet s6Step329ExitGExtra.toFinset=s6Step329ExitGAfter := by
  unfold Arena.retireSet s6Step329ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step329ExitGBefore,s6Step329ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step329ExitG_checked : planRowResizeLog s6Step329ExitGBefore s6Step329ExitGRow 105 []=
    some (s6Step329ExitGAfter,s6Step329ExitGOut,shrinkRow 777 s6Step329ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step329ExitGBefore s6Step329ExitGRow 105 s6Step329ExitG_distinct s6Step329ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step329ExitGRow.payload.take 105) s6Step329ExitGRow.sign=s6Step329ExitGOut := by decide +kernel
  have hi : s6Step329ExitGRow.payload.drop 105=s6Step329ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step329ExitG_retired] at result
  exact result

private def s6Step329ExitGvBefore : Arena := s6Step329ExitFvAfter

private theorem s6Step329ExitGv_Incoming : rowsOwned s6Step329ExitGvBefore [s6Step329ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329ExitGRow,s6Step329ExitFRow,s6Step329ExitFvRow,s6Step329ExitGvRow] 3 s6Step329ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329ExitGvBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<361) ∨ (362≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329ExitGv_Outgoing : rowsOwned s6Step329ExitGvAfter [s6Step329ExitGvOut] :=
  hmrRows_owned_drop s6Step329ExitGvAfter [s6Step329ExitGOut,s6Step329ExitFOut,s6Step329ExitFvOut,s6Step329ExitGvOut] 3 s6Step329ExitBank_outgoingOwned

private theorem s6Step329ExitGv_distinct : (s6Step329ExitGvRow.sign::s6Step329ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329ExitGv_owned : (s6Step329ExitGvRow.sign::s6Step329ExitGvRow.payload).toFinset⊆s6Step329ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329ExitGvBefore (fun q => (0≤q ∧ q<105) ∨ (106≤q ∧ q<361) ∨ (362≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329ExitGv_retired : s6Step329ExitGvBefore.retireSet s6Step329ExitGvExtra.toFinset=s6Step329ExitGvAfter := by
  unfold Arena.retireSet s6Step329ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step329ExitGvBefore,s6Step329ExitFvAfter,s6Step329ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step329ExitGv_checked : planRowResizeLog s6Step329ExitGvBefore s6Step329ExitGvRow 180 []=
    some (s6Step329ExitGvAfter,s6Step329ExitGvOut,shrinkRow 775 s6Step329ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step329ExitGvBefore s6Step329ExitGvRow 180 s6Step329ExitGv_distinct s6Step329ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step329ExitGvRow.payload.take 180) s6Step329ExitGvRow.sign=s6Step329ExitGvOut := by decide +kernel
  have hi : s6Step329ExitGvRow.payload.drop 180=s6Step329ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step329ExitGv_retired] at result
  exact result

private theorem s6Step329ExitBank_rows : planWindowRowsLog s6Step329ExitGBefore [(s6Step329ExitGRow,105),(s6Step329ExitFRow,105),(s6Step329ExitFvRow,180),(s6Step329ExitGvRow,180)] [[],[],[],[]]=
    some (s6Step329ExitGvAfter,[s6Step329ExitGOut,s6Step329ExitFOut,s6Step329ExitFvOut,s6Step329ExitGvOut],(shrinkRow 777 s6Step329ExitGExtra ++ (shrinkRow 795 s6Step329ExitFExtra ++ (shrinkRow 776 s6Step329ExitFvExtra ++ (shrinkRow 775 s6Step329ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step329ExitGvAfter [] []=some (s6Step329ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step329ExitGvBefore s6Step329ExitGvAfter s6Step329ExitGvAfter
    s6Step329ExitGvRow s6Step329ExitGvOut 180 [] [] [] []
    (shrinkRow 775 s6Step329ExitGvExtra) ([]) s6Step329ExitGv_Incoming s6Step329ExitGv_checked h4 s6Step329ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step329ExitFvBefore s6Step329ExitFvAfter s6Step329ExitGvAfter
    s6Step329ExitFvRow s6Step329ExitFvOut 180 [] [(s6Step329ExitGvRow,180)] [[]] [s6Step329ExitGvOut]
    (shrinkRow 776 s6Step329ExitFvExtra) ((shrinkRow 775 s6Step329ExitGvExtra ++ [])) s6Step329ExitFv_Incoming s6Step329ExitFv_checked h3 s6Step329ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step329ExitFBefore s6Step329ExitFAfter s6Step329ExitGvAfter
    s6Step329ExitFRow s6Step329ExitFOut 105 [] [(s6Step329ExitFvRow,180),(s6Step329ExitGvRow,180)] [[],[]] [s6Step329ExitFvOut,s6Step329ExitGvOut]
    (shrinkRow 795 s6Step329ExitFExtra) ((shrinkRow 776 s6Step329ExitFvExtra ++ (shrinkRow 775 s6Step329ExitGvExtra ++ []))) s6Step329ExitF_Incoming s6Step329ExitF_checked h2 s6Step329ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step329ExitGBefore s6Step329ExitGAfter s6Step329ExitGvAfter
    s6Step329ExitGRow s6Step329ExitGOut 105 [] [(s6Step329ExitFRow,105),(s6Step329ExitFvRow,180),(s6Step329ExitGvRow,180)] [[],[],[]] [s6Step329ExitFOut,s6Step329ExitFvOut,s6Step329ExitGvOut]
    (shrinkRow 777 s6Step329ExitGExtra) ((shrinkRow 795 s6Step329ExitFExtra ++ (shrinkRow 776 s6Step329ExitFvExtra ++ (shrinkRow 775 s6Step329ExitGvExtra ++ [])))) s6Step329ExitG_Incoming s6Step329ExitG_checked h1 s6Step329ExitG_Outgoing
  exact h0

private theorem s6Step329ExitBank_checked : compileHmrBankResizeLog .exit s6Step329ExitGBefore ⟨s6Step329ExitFRow,s6Step329ExitGRow,s6Step329ExitFvRow,s6Step329ExitGvRow⟩ ⟨105,105,180,180⟩ [[],[],[],[]]=
    some (s6Step329ExitGvAfter,⟨s6Step329ExitFOut,s6Step329ExitGOut,s6Step329ExitFvOut,s6Step329ExitGvOut⟩,(shrinkRow 777 s6Step329ExitGExtra ++ (shrinkRow 795 s6Step329ExitFExtra ++ (shrinkRow 776 s6Step329ExitFvExtra ++ (shrinkRow 775 s6Step329ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step329ExitBank_rows]
  rfl

private theorem s6Step329Add0_apart : Disjoint s6Step329Add0Arena.live s6Step329Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step329Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329Add0_card : s6Step329Add0Arena.live.card=906 := by
  decide +kernel

private theorem s6Step329Add0_borrowed : s6Step329Add0Arena.checkBorrow (hmrHybridCount s6Step329Add0Arena s6Step329Add0B.length) s6Step329Add0Work=some s6Step329Add0During := by
  have len : s6Step329Add0Work.length=hmrHybridCount s6Step329Add0Arena s6Step329Add0B.length := by
    rw [hmrHybridCount,s6Step329Add0_card]
    decide +kernel
  have nd : s6Step329Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step329Add0Arena s6Step329Add0During s6Step329Add0Work.toFinset s6Step329Add0_bounded s6Step329Add0_apart rfl

private theorem s6Step329Add0_distinct : (903::833::843::(s6Step329Add0A++s6Step329Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329Add0_owned : (903::833::843::(s6Step329Add0A++s6Step329Add0B)).toFinset⊆s6Step329Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step329Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329Add0_checked : compileHmrHybridCinLog s6Step329Add0Arena 833 903 843 s6Step329Add0A s6Step329Add0B s6Step329Add0Work=some s6Step329Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step329Add0Arena s6Step329Add0During 833 903 843 s6Step329Add0A s6Step329Add0B s6Step329Add0Work
    (by decide +kernel) (by decide +kernel) s6Step329Add0_distinct
    (fun q hq => s6Step329Add0_owned (List.mem_toFinset.mpr hq)) s6Step329Add0_borrowed

private theorem s6Step329Add1_apart : Disjoint s6Step329Add1Arena.live s6Step329Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step329Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329Add1_card : s6Step329Add1Arena.live.card=906 := by
  decide +kernel

private theorem s6Step329Add1_borrowed : s6Step329Add1Arena.checkBorrow (hmrHybridCount s6Step329Add1Arena s6Step329Add1B.length) s6Step329Add1Work=some s6Step329Add1During := by
  have len : s6Step329Add1Work.length=hmrHybridCount s6Step329Add1Arena s6Step329Add1B.length := by
    rw [hmrHybridCount,s6Step329Add1_card]
    decide +kernel
  have nd : s6Step329Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step329Add1Arena s6Step329Add1During s6Step329Add1Work.toFinset s6Step329Add1_bounded s6Step329Add1_apart rfl

private theorem s6Step329Add1_distinct : (903::833::843::(s6Step329Add1A++s6Step329Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329Add1_owned : (903::833::843::(s6Step329Add1A++s6Step329Add1B)).toFinset⊆s6Step329Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step329Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329Add1_checked : compileHmrHybridCinLog s6Step329Add1Arena 833 903 843 s6Step329Add1A s6Step329Add1B s6Step329Add1Work=some s6Step329Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step329Add1Arena s6Step329Add1During 833 903 843 s6Step329Add1A s6Step329Add1B s6Step329Add1Work
    (by decide +kernel) (by decide +kernel) s6Step329Add1_distinct
    (fun q hq => s6Step329Add1_owned (List.mem_toFinset.mpr hq)) s6Step329Add1_borrowed

private theorem s6Step329F4_apart : Disjoint (s6Step329Add0A++s6Step329Add0B).toFinset (s6Step329Add1A++s6Step329Add1B).toFinset := by
  have nd : ((s6Step329Add0A++s6Step329Add0B)++(s6Step329Add1A++s6Step329Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step329F4_carry : s6Step329F4FlagArena.checkBorrow 1 [843]=some s6Step329Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step329F4FlagArena,s6Step329HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step329F4FlagArena,s6Step329HeadFvAfter,s6Step329Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step329F4_distinct : (907::833::903::843::((s6Step329Add0A++s6Step329Add1A)++(s6Step329Add0B++s6Step329Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329F4_flag : s6Step329HeadFvAfter.checkBorrow 1 [903]=some s6Step329F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step329HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step329F4_owned : (907::833::((s6Step329Add0A++s6Step329Add1A)++(s6Step329Add0B++s6Step329Add1B))).toFinset⊆s6Step329HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step329HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329F4_checked : compileHmrHybridF4Log s6Step329HeadFvAfter 907 833 s6Step329Add0A s6Step329Add0B s6Step329Add1A s6Step329Add1B [903] [843] s6Step329Add0Work s6Step329Add1Work=some s6Step329F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step329HeadFvAfter s6Step329F4FlagArena s6Step329Add0Arena s6Step329Add0During s6Step329Add1During 907 833
    s6Step329Add0A s6Step329Add0B s6Step329Add1A s6Step329Add1B [903] [843] s6Step329Add0Work s6Step329Add1Work
    (fun q hq => s6Step329F4_owned (List.mem_toFinset.mpr hq)) s6Step329F4_flag s6Step329F4_carry
    s6Step329F4_distinct s6Step329F4_apart s6Step329Add0_checked s6Step329Add1_checked

private theorem s6Step329Front_branch : s6Step329FrontSigmaArena.checkBorrow 1 [833]=some s6Step329HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step329FrontSigmaArena,s6Step329EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step329FrontSigmaArena,s6Step329EntryGvAfter,s6Step329HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step329Front_entry : HmrFrontEntryValid s6Step329EntryFBefore s6Step329FrontBank 106 180 ⟨105,105,180,180⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step329FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step329EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step329EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (834≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (908≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step329FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step329Front_sigma : s6Step329EntryGvAfter.checkBorrow 1 [907]=some s6Step329FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step329EntryGvAfter,arenaWires]
  · rfl

private def s6Step329HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329HeadFBefore : Arena := s6Step329HeadGAfter

private def s6Step329HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361],795⟩

private def s6Step329HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880],776⟩

private def s6Step329HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105],777⟩

private def s6Step329HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793],775⟩

private theorem s6Step329HeadBank_incomingDistinct : ([s6Step329HeadGRow,s6Step329HeadFRow,s6Step329HeadGvRow,s6Step329HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329HeadF_Incoming : rowsOwned s6Step329HeadFBefore [s6Step329HeadFRow,s6Step329HeadGvRow,s6Step329HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329HeadGRow,s6Step329HeadFRow,s6Step329HeadGvRow,s6Step329HeadFvRow] 1 s6Step329HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329HeadBank_outgoingOwned : rowsOwned s6Step329HeadFvAfter [s6Step329HeadGOut,s6Step329HeadFOut,s6Step329HeadGvOut,s6Step329HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step329HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329HeadF_Outgoing : rowsOwned s6Step329HeadFvAfter [s6Step329HeadFOut,s6Step329HeadGvOut,s6Step329HeadFvOut] :=
  hmrRows_owned_drop s6Step329HeadFvAfter [s6Step329HeadGOut,s6Step329HeadFOut,s6Step329HeadGvOut,s6Step329HeadFvOut] 1 s6Step329HeadBank_outgoingOwned

private theorem s6Step329HeadF_distinct : (s6Step329HeadFRow.sign::s6Step329HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329HeadF_owned : (s6Step329HeadFRow.sign::s6Step329HeadFRow.payload).toFinset⊆s6Step329HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329HeadF_reserved : s6Step329HeadFBefore.reserve s6Step329HeadFFresh.toFinset=some s6Step329HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step329HeadFFresh,arenaWires]
  · norm_num [s6Step329HeadFBefore,s6Step329HeadGAfter,s6Step329HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step329HeadFAfter,s6Step329HeadFBefore,s6Step329HeadGAfter,s6Step329HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step329HeadF_checked : planRowResizeLog s6Step329HeadFBefore s6Step329HeadFRow 107 s6Step329HeadFFresh=
    some (s6Step329HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 841],795⟩,growRow 795 s6Step329HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step329HeadFBefore s6Step329HeadFAfter s6Step329HeadFRow 107 s6Step329HeadFFresh
    s6Step329HeadF_distinct s6Step329HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step329HeadF_reserved
  have rowEq : WindowRow.mk (s6Step329HeadFRow.payload++s6Step329HeadFFresh) s6Step329HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 841],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step329HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step329HeadFvBefore : Arena := s6Step329HeadGvAfter

private theorem s6Step329HeadFv_Incoming : rowsOwned s6Step329HeadFvBefore [s6Step329HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329HeadGRow,s6Step329HeadFRow,s6Step329HeadGvRow,s6Step329HeadFvRow] 3 s6Step329HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329HeadFv_Outgoing : rowsOwned s6Step329HeadFvAfter [s6Step329HeadFvOut] :=
  hmrRows_owned_drop s6Step329HeadFvAfter [s6Step329HeadGOut,s6Step329HeadFOut,s6Step329HeadGvOut,s6Step329HeadFvOut] 3 s6Step329HeadBank_outgoingOwned

private theorem s6Step329HeadFv_distinct : (s6Step329HeadFvRow.sign::s6Step329HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329HeadFv_owned : (s6Step329HeadFvRow.sign::s6Step329HeadFvRow.payload).toFinset⊆s6Step329HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329HeadFv_reserved : s6Step329HeadFvBefore.reserve s6Step329HeadFvFresh.toFinset=some s6Step329HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step329HeadFvFresh,arenaWires]
  · norm_num [s6Step329HeadFvBefore,s6Step329HeadGvAfter,s6Step329HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step329HeadFvAfter,s6Step329HeadFvBefore,s6Step329HeadGvAfter,s6Step329HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step329HeadFv_checked : planRowResizeLog s6Step329HeadFvBefore s6Step329HeadFvRow 181 s6Step329HeadFvFresh=
    some (s6Step329HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩,growRow 776 s6Step329HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step329HeadFvBefore s6Step329HeadFvAfter s6Step329HeadFvRow 181 s6Step329HeadFvFresh
    s6Step329HeadFv_distinct s6Step329HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step329HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step329HeadFvRow.payload++s6Step329HeadFvFresh) s6Step329HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 880, 862],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step329HeadG_Incoming : rowsOwned s6Step329HeadGBefore [s6Step329HeadGRow,s6Step329HeadFRow,s6Step329HeadGvRow,s6Step329HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329HeadGRow,s6Step329HeadFRow,s6Step329HeadGvRow,s6Step329HeadFvRow] 0 s6Step329HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329HeadG_Outgoing : rowsOwned s6Step329HeadFvAfter [s6Step329HeadGOut,s6Step329HeadFOut,s6Step329HeadGvOut,s6Step329HeadFvOut] :=
  hmrRows_owned_drop s6Step329HeadFvAfter [s6Step329HeadGOut,s6Step329HeadFOut,s6Step329HeadGvOut,s6Step329HeadFvOut] 0 s6Step329HeadBank_outgoingOwned

private theorem s6Step329HeadG_distinct : (s6Step329HeadGRow.sign::s6Step329HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329HeadG_owned : (s6Step329HeadGRow.sign::s6Step329HeadGRow.payload).toFinset⊆s6Step329HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329HeadG_reserved : s6Step329HeadGBefore.reserve s6Step329HeadGFresh.toFinset=some s6Step329HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step329HeadGFresh,arenaWires]
  · norm_num [s6Step329HeadGBefore,s6Step329HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step329HeadGAfter,s6Step329HeadGBefore,s6Step329HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step329HeadG_checked : planRowResizeLog s6Step329HeadGBefore s6Step329HeadGRow 107 s6Step329HeadGFresh=
    some (s6Step329HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 854],777⟩,growRow 777 s6Step329HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step329HeadGBefore s6Step329HeadGAfter s6Step329HeadGRow 107 s6Step329HeadGFresh
    s6Step329HeadG_distinct s6Step329HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step329HeadG_reserved
  have rowEq : WindowRow.mk (s6Step329HeadGRow.payload++s6Step329HeadGFresh) s6Step329HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 854],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step329HeadGvBefore : Arena := s6Step329HeadFAfter

private theorem s6Step329HeadGv_Incoming : rowsOwned s6Step329HeadGvBefore [s6Step329HeadGvRow,s6Step329HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step329HeadGRow,s6Step329HeadFRow,s6Step329HeadGvRow,s6Step329HeadFvRow] 2 s6Step329HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step329HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step329HeadGv_Outgoing : rowsOwned s6Step329HeadFvAfter [s6Step329HeadGvOut,s6Step329HeadFvOut] :=
  hmrRows_owned_drop s6Step329HeadFvAfter [s6Step329HeadGOut,s6Step329HeadFOut,s6Step329HeadGvOut,s6Step329HeadFvOut] 2 s6Step329HeadBank_outgoingOwned

private theorem s6Step329HeadGv_distinct : (s6Step329HeadGvRow.sign::s6Step329HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step329HeadGv_owned : (s6Step329HeadGvRow.sign::s6Step329HeadGvRow.payload).toFinset⊆s6Step329HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step329HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step329HeadGv_reserved : s6Step329HeadGvBefore.reserve s6Step329HeadGvFresh.toFinset=some s6Step329HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step329HeadGvFresh,arenaWires]
  · norm_num [s6Step329HeadGvBefore,s6Step329HeadFAfter,s6Step329HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step329HeadGvAfter,s6Step329HeadGvBefore,s6Step329HeadFAfter,s6Step329HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step329HeadGv_checked : planRowResizeLog s6Step329HeadGvBefore s6Step329HeadGvRow 181 s6Step329HeadGvFresh=
    some (s6Step329HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 865],775⟩,growRow 775 s6Step329HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step329HeadGvBefore s6Step329HeadGvAfter s6Step329HeadGvRow 181 s6Step329HeadGvFresh
    s6Step329HeadGv_distinct s6Step329HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step329HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step329HeadGvRow.payload++s6Step329HeadGvFresh) s6Step329HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 830, 793, 865],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step329HeadBank_rows : planWindowRowsLog s6Step329HeadGBefore [(s6Step329HeadGRow,107),(s6Step329HeadFRow,107),(s6Step329HeadGvRow,181),(s6Step329HeadFvRow,181)] [s6Step329HeadGFresh,s6Step329HeadFFresh,s6Step329HeadGvFresh,s6Step329HeadFvFresh]=
    some (s6Step329HeadFvAfter,[s6Step329HeadGOut,s6Step329HeadFOut,s6Step329HeadGvOut,s6Step329HeadFvOut],(growRow 777 s6Step329HeadGFresh ++ (growRow 795 s6Step329HeadFFresh ++ (growRow 775 s6Step329HeadGvFresh ++ (growRow 776 s6Step329HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step329HeadFvAfter [] []=some (s6Step329HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step329HeadFvBefore s6Step329HeadFvAfter s6Step329HeadFvAfter
    s6Step329HeadFvRow s6Step329HeadFvOut 181 s6Step329HeadFvFresh [] [] []
    (growRow 776 s6Step329HeadFvFresh) ([]) s6Step329HeadFv_Incoming s6Step329HeadFv_checked h4 s6Step329HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step329HeadGvBefore s6Step329HeadGvAfter s6Step329HeadFvAfter
    s6Step329HeadGvRow s6Step329HeadGvOut 181 s6Step329HeadGvFresh [(s6Step329HeadFvRow,181)] [s6Step329HeadFvFresh] [s6Step329HeadFvOut]
    (growRow 775 s6Step329HeadGvFresh) ((growRow 776 s6Step329HeadFvFresh ++ [])) s6Step329HeadGv_Incoming s6Step329HeadGv_checked h3 s6Step329HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step329HeadFBefore s6Step329HeadFAfter s6Step329HeadFvAfter
    s6Step329HeadFRow s6Step329HeadFOut 107 s6Step329HeadFFresh [(s6Step329HeadGvRow,181),(s6Step329HeadFvRow,181)] [s6Step329HeadGvFresh,s6Step329HeadFvFresh] [s6Step329HeadGvOut,s6Step329HeadFvOut]
    (growRow 795 s6Step329HeadFFresh) ((growRow 775 s6Step329HeadGvFresh ++ (growRow 776 s6Step329HeadFvFresh ++ []))) s6Step329HeadF_Incoming s6Step329HeadF_checked h2 s6Step329HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step329HeadGBefore s6Step329HeadGAfter s6Step329HeadFvAfter
    s6Step329HeadGRow s6Step329HeadGOut 107 s6Step329HeadGFresh [(s6Step329HeadFRow,107),(s6Step329HeadGvRow,181),(s6Step329HeadFvRow,181)] [s6Step329HeadFFresh,s6Step329HeadGvFresh,s6Step329HeadFvFresh] [s6Step329HeadFOut,s6Step329HeadGvOut,s6Step329HeadFvOut]
    (growRow 777 s6Step329HeadGFresh) ((growRow 795 s6Step329HeadFFresh ++ (growRow 775 s6Step329HeadGvFresh ++ (growRow 776 s6Step329HeadFvFresh ++ [])))) s6Step329HeadG_Incoming s6Step329HeadG_checked h1 s6Step329HeadG_Outgoing
  exact h0

private theorem s6Step329HeadBank_checked : compileHmrBankResizeLog .headroom s6Step329HeadGBefore ⟨s6Step329HeadFRow,s6Step329HeadGRow,s6Step329HeadFvRow,s6Step329HeadGvRow⟩ ⟨107,107,181,181⟩ [s6Step329HeadGFresh,s6Step329HeadFFresh,s6Step329HeadGvFresh,s6Step329HeadFvFresh]=
    some (s6Step329HeadFvAfter,⟨s6Step329HeadFOut,s6Step329HeadGOut,s6Step329HeadFvOut,s6Step329HeadGvOut⟩,(growRow 777 s6Step329HeadGFresh ++ (growRow 795 s6Step329HeadFFresh ++ (growRow 775 s6Step329HeadGvFresh ++ (growRow 776 s6Step329HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step329HeadBank_rows]
  rfl

private theorem s6Step329Front_checked : compileHmrSourceFrontLog s6Step329EntryFBefore s6Step329FrontBank 106 180 ⟨105,105,180,180⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step329FrontLog=some s6Step329FrontPlan := by
  have pairEq : s6Step329FrontPair=⟨s6Step329HeadFRow,s6Step329HeadGRow,s6Step329HeadFvRow,s6Step329HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step329FrontHead=⟨s6Step329ExitFRow,s6Step329ExitGRow,s6Step329ExitFvRow,s6Step329ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step329Add0A=s6Step329FrontHead.f.wires := by decide +kernel
  have gEq : s6Step329Add0B=s6Step329FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step329Add1A=s6Step329FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step329Add1B=s6Step329FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step329EntryFBefore s6Step329FrontBank 106 180 ⟨105,105,180,180⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step329FrontLog s6Step329FrontPlan
  · exact s6Step329Front_entry
  · exact s6Step329EntryBank_checked
  · exact s6Step329Front_sigma
  · rfl
  · exact s6Step329Front_branch
  · rfl
  · simpa only [s6Step329FrontPlan,pairEq] using s6Step329HeadBank_checked
  · simpa only [s6Step329FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step329F4_checked
  · exact s6Step329Counter_checked
  · rfl
  · simpa only [s6Step329FrontPlan,headEq] using s6Step329ExitBank_checked

private theorem s6Step329Complete_explicit_checked : compileHmrEarlyStepLog s6Step329EntryFBefore s6Step329FrontBank 106 180 ⟨105,105,180,180⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step329CompleteLog=some s6Step329CompletePlan := by
  let Q := s6Step329EarlyControlPlan
  have hq := s6Step329EarlyControl_plan_checked
  have fv1 : s6Step329CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step329CompleteOut.fv.payload[2]?.getD s6Step329CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step329CompleteOut.fv.payload[3]?.getD s6Step329CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step329CompleteOut.fv.payload[4]?.getD s6Step329CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step329EntryFBefore s6Step329EarlyControlArena s6Step329FrontBank 106 180 ⟨105,105,180,180⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step329CompleteLog s6Step329FrontPlan Q
    s6Step329Front_checked s6Step329Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step329Complete_owned s6Step329Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step329EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 907 s6Step329CompleteOut.fv.second (s6Step329CompleteOut.fv.payload[2]?.getD s6Step329CompleteOut.fv.sign) (s6Step329CompleteOut.fv.payload[3]?.getD s6Step329CompleteOut.fv.sign) (s6Step329CompleteOut.fv.payload[4]?.getD s6Step329CompleteOut.fv.sign) 833 60 s6Step329EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep329Arena : Arena := s6Step329EntryFBefore
def s6PrivateStep329Bank : WindowBank := s6Step329FrontBank
def s6PrivateStep329Spec : HmrSourceWalkStepLog := ⟨106,180,⟨105,105,180,180⟩,60,.early s6Step329CompleteLog⟩
def s6PrivateStep329Plan : HmrSourceStepPlan := .early s6Step329CompletePlan
theorem s6PrivateStep329_source : s6PrivateStep329Spec=s6ObservedLogs320[9] := rfl
theorem s6PrivateStep329_checked : compileHmrSourceStepLog s6PrivateStep329Arena s6PrivateStep329Bank
    s6PrivateStep329Spec.fgWidth s6PrivateStep329Spec.vWidth s6PrivateStep329Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 329 s6PrivateStep329Spec.need none s6PrivateStep329Spec.log=some s6PrivateStep329Plan := by
  change compileHmrSourceStepLog s6Step329EntryFBefore s6Step329FrontBank 106 180 ⟨105,105,180,180⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 329 60 none (.early s6Step329CompleteLog)=some (.early s6Step329CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 329<498)]
  rw [s6Step329Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
