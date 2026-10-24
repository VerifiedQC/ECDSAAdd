import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep324
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

private def s6Step326CompleteMoves : List (Wire × Wire) := [(862,107),(903,363)]

private def s6Step326EarlyControlLog : HmrEarlyControlLog := ⟨[903, 862, 843, 793, 880],[841],[865],[860, 805, 817, 812, 915, 906],[]⟩

private def s6Step326FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[880], [793], [843], [891]],[[], [], [], []]⟩,[854],[830],[841],[865],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[841, 865, 860, 805]⟩

private def s6Step326CompleteLog : HmrEarlyStepLog := ⟨s6Step326FrontLog,s6Step326CompleteMoves,s6Step326EarlyControlLog⟩

private def s6Step326ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362],795⟩

private def s6Step326ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891],776⟩

private def s6Step326ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106],777⟩

private def s6Step326ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩

private def s6Step326FrontOut : WindowBank := ⟨s6Step326ExitFOut,s6Step326ExitGOut,s6Step326ExitFvOut,s6Step326ExitGvOut⟩

private def s6Step326CompleteOut : WindowBank := s6Step326FrontOut.repacked s6Step326CompleteMoves

private def s6Step326EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step326EarlyControlPositiveArena,[841],s6Step326EarlyControlEqualityArena,[865],⟨⟨854,false⟩,[⟨⟨841,false⟩,865⟩]⟩⟩

private def s6Step326EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,903⟩,⟨⟨772,false⟩,862⟩,⟨⟨771,false⟩,843⟩,⟨⟨770,false⟩,793⟩,⟨⟨769,false⟩,880⟩]⟩

private def s6Step326EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step326EarlyControlZeroArena,s6Step326EarlyControlZeroPlan,s6Step326EarlyControlClassPlan,s6Step326EarlyControlFlagArena,s6Step326EarlyControlFittedArena,s6Step326EarlyControlHistoryArena,s6Step326EarlyControlSigmaArena,s6Step326EarlyControlOutputArena,s6Step326EarlyControlLog⟩

private def s6Step326CounterWork : List Wire := [841, 865, 860, 805]

private theorem s6Step326Counter_bounded : s6Step326CounterWork.toFinset⊆arenaWires := by norm_num [s6Step326CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step326HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326CounterDuring : Arena := ⟨s6Step326HeadFvAfter.live∪s6Step326CounterWork.toFinset,Finset.union_subset s6Step326HeadFvAfter.bounded s6Step326Counter_bounded⟩

private def s6Step326EntryFFresh : List Wire := []

private def s6Step326EntryFvFresh : List Wire := []

private def s6Step326EntryGFresh : List Wire := []

private def s6Step326EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326EntryGvAfter : Arena := s6Step326EntryFBefore

private def s6Step326EntryGvFresh : List Wire := []

private def s6Step326ExitFExtra : List Wire := [363, 793]

private def s6Step326ExitGExtra : List Wire := [107, 880]

private def s6Step326ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<363) ∨ (364≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326ExitGvExtra : List Wire := [843]

private def s6Step326Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326Add0Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step326Add0_bounded : s6Step326Add0Work.toFinset⊆arenaWires := by
  have h : s6Step326Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step326Add0During : Arena := ⟨s6Step326Add0Arena.live∪s6Step326Add0Work.toFinset,Finset.union_subset s6Step326Add0Arena.bounded s6Step326Add0_bounded⟩

private def s6Step326Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326Add1Work : List Wire := [860, 805, 817, 812, 915, 906, 792, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step326Add1_bounded : s6Step326Add1Work.toFinset⊆arenaWires := by
  have h : s6Step326Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step326Add1During : Arena := ⟨s6Step326Add1Arena.live∪s6Step326Add1Work.toFinset,Finset.union_subset s6Step326Add1Arena.bounded s6Step326Add1_bounded⟩

private def s6Step326F4FlagArena : Arena := ⟨s6Step326HeadFvAfter.live∪{841},Finset.union_subset s6Step326HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step326F4Plan : HmrHybridF4Plan := ⟨s6Step326F4FlagArena,[841],s6Step326Add0Arena,[865],s6Step326Add0During,s6Step326Add0Work,s6Step326Add1During,s6Step326Add1Work⟩

private def s6Step326HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 793],795⟩

private def s6Step326HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891],776⟩

private def s6Step326HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880],777⟩

private def s6Step326HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 843],775⟩

private def s6Step326FrontHead : WindowBank := ⟨s6Step326HeadFOut,s6Step326HeadGOut,s6Step326HeadFvOut,s6Step326HeadGvOut⟩

private def s6Step326EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩

private def s6Step326EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩

private def s6Step326EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩

private def s6Step326EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩

private def s6Step326FrontPair : WindowBank := ⟨s6Step326EntryFOut,s6Step326EntryGOut,s6Step326EntryFvOut,s6Step326EntryGvOut⟩

private def s6Step326FrontSigmaArena : Arena := ⟨s6Step326EntryGvAfter.live∪{854},Finset.union_subset s6Step326EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step326HeadFFresh : List Wire := [793]

private def s6Step326HeadFvFresh : List Wire := [891]

private def s6Step326HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326HeadGFresh : List Wire := [880]

private def s6Step326HeadGvFresh : List Wire := [843]

private def s6Step326FrontPlan : HmrSourceFront := ⟨s6Step326EntryGvAfter,s6Step326FrontPair,(growRow 795 s6Step326EntryFFresh ++ (growRow 777 s6Step326EntryGFresh ++ (growRow 776 s6Step326EntryFvFresh ++ (growRow 775 s6Step326EntryGvFresh ++ [])))),s6Step326FrontSigmaArena,[854],s6Step326HeadGBefore,[830],
  s6Step326HeadFvAfter,s6Step326FrontHead,(growRow 777 s6Step326HeadGFresh ++ (growRow 795 s6Step326HeadFFresh ++ (growRow 775 s6Step326HeadGvFresh ++ (growRow 776 s6Step326HeadFvFresh ++ [])))),s6Step326F4Plan,s6Step326CounterDuring,s6Step326CounterWork,s6Step326ExitGvAfter,s6Step326FrontOut,(shrinkRow 777 s6Step326ExitGExtra ++ (shrinkRow 795 s6Step326ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step326ExitGvExtra ++ []))))⟩

private def s6Step326CompletePlan : HmrEarlyStepPlan := ⟨s6Step326FrontPlan,s6Step326EarlyControlArena,s6Step326EarlyControlPlan,s6Step326CompleteMoves⟩

private theorem s6Step326Complete_apart : List.Disjoint (s6Step326CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [854, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step326CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[854, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step326Complete_owned : (s6Step326CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step326EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step326CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,363),(364,782),(783,790),(791,792),(794,797),(799,800),(801,805),(806,808),(809,812),(813,816),(818,819),(821,832),(833,841),(844,860),(861,862),(863,865),(866,880),(881,896),(897,906),(907,914),(917,918),(919,920),(921,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step326CompleteRelocationMove0Borrowed : Arena := ⟨s6Step326ExitGvAfter.live∪{107},Finset.union_subset s6Step326ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step326CompleteRelocationMove1Borrowed : Arena := ⟨s6Step326CompleteRelocationMove0After.live∪{363},Finset.union_subset s6Step326CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step326CompleteRelocation_move0_owned : 862∈s6Step326ExitGvAfter.live := by norm_num [s6Step326ExitGvAfter,arenaWires]

private theorem s6Step326CompleteRelocation_move0_reserve : s6Step326ExitGvAfter.reserve {107}=some s6Step326CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step326ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step326CompleteRelocation_move0_retire : s6Step326CompleteRelocationMove0Borrowed.retireSet {862}=s6Step326CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step326CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step326CompleteRelocationMove0Borrowed,s6Step326ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step326CompleteRelocation_move1_owned : 903∈s6Step326CompleteRelocationMove0After.live := by norm_num [s6Step326CompleteRelocationMove0After,arenaWires]

private theorem s6Step326CompleteRelocation_move1_reserve : s6Step326CompleteRelocationMove0After.reserve {363}=some s6Step326CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step326CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step326CompleteRelocation_move1_retire : s6Step326CompleteRelocationMove1Borrowed.retireSet {903}=s6Step326EarlyControlArena := by
  unfold Arena.retireSet s6Step326EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step326CompleteRelocationMove1Borrowed,s6Step326CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step326CompleteRelocation_checked : s6Step326ExitGvAfter.checkRepack [(862,107),(903,363)]=some s6Step326EarlyControlArena := by
  have tail2 : s6Step326EarlyControlArena.checkRepack []=some s6Step326EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step326CompleteRelocationMove0After s6Step326CompleteRelocationMove1Borrowed s6Step326EarlyControlArena s6Step326EarlyControlArena 903 363 []
    s6Step326CompleteRelocation_move1_owned s6Step326CompleteRelocation_move1_reserve s6Step326CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step326ExitGvAfter s6Step326CompleteRelocationMove0Borrowed s6Step326CompleteRelocationMove0After s6Step326EarlyControlArena 862 107 [(903,363)]
    s6Step326CompleteRelocation_move0_owned s6Step326CompleteRelocation_move0_reserve s6Step326CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step326Complete_repack : s6Step326ExitGvAfter.checkRepack s6Step326CompleteMoves=some s6Step326EarlyControlArena := by
  simpa only [s6Step326CompleteMoves] using s6Step326CompleteRelocation_checked

private theorem s6Step326EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s6Step326EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EarlyControl_branch : compileHmrBranchRetirement s6Step326EarlyControlSigmaArena 830=some s6Step326EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step326EarlyControl_branchOwned
  · ext q
    simp [s6Step326EarlyControlOutputArena,s6Step326EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step326EarlyControl_classEqualityBorrow : s6Step326EarlyControlPositiveArena.checkBorrow (([854, 841] : List Wire).length-1) s6Step326EarlyControlLog.classWork=some s6Step326EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step326EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step326EarlyControlEqualityArena,s6Step326EarlyControlPositiveArena,s6Step326EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step326EarlyControl_classEqualityOwned : ([854, 841] : List Wire).toFinset⊆s6Step326EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EarlyControl_classEquality : compileHmrEqualityLog s6Step326EarlyControlPositiveArena [854, 841] 0 s6Step326EarlyControlLog.classWork=some (s6Step326EarlyControlEqualityArena,s6Step326EarlyControlLog.classWork,s6Step326EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step326EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step326EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step326EarlyControl_classOwned : ([769, 880, 854] : List Wire).toFinset⊆s6Step326EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EarlyControl_positiveBorrow : s6Step326EarlyControlZeroArena.checkBorrow (1) s6Step326EarlyControlLog.positiveWork=some s6Step326EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step326EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step326EarlyControlPositiveArena,s6Step326EarlyControlZeroArena,s6Step326EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step326EarlyControl_class : compileHmrSourceClassLog s6Step326EarlyControlZeroArena false 769 s6Step326EarlyControlZeroPlan.top 0 854 s6Step326EarlyControlLog.positiveWork s6Step326EarlyControlLog.classWork=some s6Step326EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step326EarlyControlClassPlan s6Step326EarlyControlZeroArena false 769 s6Step326EarlyControlZeroPlan.top 0 854
  constructor
  · decide +kernel
  · exact s6Step326EarlyControl_classOwned
  · exact s6Step326EarlyControl_positiveBorrow
  · exact s6Step326EarlyControl_classEquality

private theorem s6Step326EarlyControl_entryRecordOwned : ([830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step326EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EarlyControl_entrySigmaOwned : ([854, 254] : List Wire).toFinset⊆s6Step326EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EarlyControl_fitBorrow : s6Step326EarlyControlFlagArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step326EarlyControlLog.recordFresh=some s6Step326EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step326EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step326EarlyControlFittedArena,s6Step326EarlyControlFlagArena,s6Step326EarlyControlLog,arenaWires]

private theorem s6Step326EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step326EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EarlyControl_fit : compileHmrRecordGrowLog s6Step326EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step326EarlyControlLog.recordFresh=some s6Step326EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step326EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step326EarlyControl_fitBorrow

private theorem s6Step326EarlyControl_flagsBorrow : s6Step326EarlyControlEqualityArena.checkBorrow (6) s6Step326EarlyControlLog.flagWork=some s6Step326EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step326EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step326EarlyControlFlagArena,s6Step326EarlyControlEqualityArena,s6Step326EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step326EarlyControl_flagsOwned : ([865, 253, 252, 251] : List Wire).toFinset⊆s6Step326EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EarlyControl_flags : compileHmrFlagsLog s6Step326EarlyControlClassPlan.equalityArena s6Step326EarlyControlClassPlan.equality.top 253 252 251 s6Step326EarlyControlLog.flagWork=some s6Step326EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step326EarlyControl_flagsOwned⟩
  · exact s6Step326EarlyControl_flagsBorrow

private theorem s6Step326EarlyControl_historyBorrow : s6Step326EarlyControlArena.checkBorrow ((60-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).length)) s6Step326EarlyControlLog.recordFresh=some s6Step326EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step326EarlyControlHistoryArena,s6Step326EarlyControlArena,s6Step326EarlyControlLog,arenaWires]

private theorem s6Step326EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] : List Wire).toFinset⊆s6Step326EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EarlyControl_history : compileHmrRecordGrowLog s6Step326EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step326EarlyControlLog.recordFresh=some s6Step326EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step326EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step326EarlyControl_historyBorrow

private theorem s6Step326EarlyControl_sigmaOwned : ([254, 854] : List Wire).toFinset⊆s6Step326EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EarlyControl_sigmaReleaseOwned : ([854] : List Wire).toFinset⊆s6Step326EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EarlyControl_sigmaRelease : s6Step326EarlyControlHistoryArena.release {854} (fun _ => false)=some s6Step326EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step326EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step326EarlyControlSigmaArena,s6Step326EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step326EarlyControl_sigma : compileHmrSigmaDropLog s6Step326EarlyControlHistoryArena false 0 0 254 854 []=some s6Step326EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step326EarlyControl_sigmaOwned⟩
  · exact s6Step326EarlyControl_sigmaRelease

private theorem s6Step326EarlyControl_zeroBorrow : s6Step326EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step326EarlyControlLog.zeroWork=some s6Step326EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step326EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step326EarlyControlZeroArena,s6Step326EarlyControlArena,s6Step326EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step326EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step326EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step326EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<862) ∨ (863≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<903) ∨ (904≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EarlyControl_zero : compileHmrEqualityLog s6Step326EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step326EarlyControlLog.zeroWork=some (s6Step326EarlyControlZeroArena,s6Step326EarlyControlLog.zeroWork,s6Step326EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step326EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step326EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step326EarlyControl_logged : s6Step326EarlyControlPlan.Logged s6Step326EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 854 254 253 252 251 830 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step326EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step326EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step326EarlyControl_zero
  · exact s6Step326EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step326EarlyControl_flags
  · exact s6Step326EarlyControl_fit
  · exact s6Step326EarlyControl_history
  · exact s6Step326EarlyControl_sigma
  · exact s6Step326EarlyControl_branch

private theorem s6Step326EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step326EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 854 254 253 252 251 830 60 s6Step326EarlyControlLog=some s6Step326EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step326EarlyControlPlan s6Step326EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 854 254 253 252 251 830 60 s6Step326EarlyControl_logged

private def s6Step326EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩

private def s6Step326EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩

private def s6Step326EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩

private def s6Step326EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩

private def s6Step326FrontBank : WindowBank := ⟨s6Step326EntryFRow,s6Step326EntryGRow,s6Step326EntryFvRow,s6Step326EntryGvRow⟩

private def s6Step326Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 793, 795]

private def s6Step326Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880, 777]

private def s6Step326Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891, 776]

private def s6Step326Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 843, 775]

private theorem s6Step326Counter_apart : Disjoint s6Step326HeadFvAfter.live s6Step326CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step326HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326Counter_borrowed : s6Step326HeadFvAfter.checkBorrow 4 s6Step326CounterWork=some s6Step326CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step326HeadFvAfter s6Step326CounterDuring s6Step326CounterWork.toFinset s6Step326Counter_bounded s6Step326Counter_apart rfl

private theorem s6Step326Counter_owned : (854::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step326HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step326HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326Counter_checked : compileHmrCounterStepLog s6Step326HeadFvAfter true 854 [774, 773, 772, 771, 770, 769] s6Step326CounterWork=some s6Step326CounterDuring := by
  have owned : ∀q∈854::[774, 773, 772, 771, 770, 769],q∈s6Step326HeadFvAfter.live := fun q hq => s6Step326Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step326Counter_borrowed

private def s6Step326EntryFAfter : Arena := s6Step326EntryFBefore

private theorem s6Step326EntryBank_incomingDistinct : ([s6Step326EntryFRow,s6Step326EntryGRow,s6Step326EntryFvRow,s6Step326EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326EntryF_Incoming : rowsOwned s6Step326EntryFBefore [s6Step326EntryFRow,s6Step326EntryGRow,s6Step326EntryFvRow,s6Step326EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326EntryFRow,s6Step326EntryGRow,s6Step326EntryFvRow,s6Step326EntryGvRow] 0 s6Step326EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326EntryBank_outgoingOwned : rowsOwned s6Step326EntryGvAfter [s6Step326EntryFOut,s6Step326EntryGOut,s6Step326EntryFvOut,s6Step326EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step326EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326EntryF_Outgoing : rowsOwned s6Step326EntryGvAfter [s6Step326EntryFOut,s6Step326EntryGOut,s6Step326EntryFvOut,s6Step326EntryGvOut] :=
  hmrRows_owned_drop s6Step326EntryGvAfter [s6Step326EntryFOut,s6Step326EntryGOut,s6Step326EntryFvOut,s6Step326EntryGvOut] 0 s6Step326EntryBank_outgoingOwned

private theorem s6Step326EntryF_distinct : (s6Step326EntryFRow.sign::s6Step326EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326EntryF_owned : (s6Step326EntryFRow.sign::s6Step326EntryFRow.payload).toFinset⊆s6Step326EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EntryF_reserved : s6Step326EntryFBefore.reserve s6Step326EntryFFresh.toFinset=some s6Step326EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step326EntryFFresh,arenaWires]
  · norm_num [s6Step326EntryFBefore,s6Step326EntryFFresh,arenaWires]
  · simp only [s6Step326EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step326EntryF_checked : planRowResizeLog s6Step326EntryFBefore s6Step326EntryFRow 108 s6Step326EntryFFresh=
    some (s6Step326EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩,growRow 795 s6Step326EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step326EntryFBefore s6Step326EntryFAfter s6Step326EntryFRow 108 s6Step326EntryFFresh
    s6Step326EntryF_distinct s6Step326EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step326EntryF_reserved
  have rowEq : WindowRow.mk (s6Step326EntryFRow.payload++s6Step326EntryFFresh) s6Step326EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step326EntryFvAfter : Arena := s6Step326EntryFBefore

private def s6Step326EntryFvBefore : Arena := s6Step326EntryFBefore

private theorem s6Step326EntryFv_Incoming : rowsOwned s6Step326EntryFvBefore [s6Step326EntryFvRow,s6Step326EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326EntryFRow,s6Step326EntryGRow,s6Step326EntryFvRow,s6Step326EntryGvRow] 2 s6Step326EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326EntryFv_Outgoing : rowsOwned s6Step326EntryGvAfter [s6Step326EntryFvOut,s6Step326EntryGvOut] :=
  hmrRows_owned_drop s6Step326EntryGvAfter [s6Step326EntryFOut,s6Step326EntryGOut,s6Step326EntryFvOut,s6Step326EntryGvOut] 2 s6Step326EntryBank_outgoingOwned

private theorem s6Step326EntryFv_distinct : (s6Step326EntryFvRow.sign::s6Step326EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326EntryFv_owned : (s6Step326EntryFvRow.sign::s6Step326EntryFvRow.payload).toFinset⊆s6Step326EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EntryFv_reserved : s6Step326EntryFvBefore.reserve s6Step326EntryFvFresh.toFinset=some s6Step326EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step326EntryFvFresh,arenaWires]
  · norm_num [s6Step326EntryFvBefore,s6Step326EntryFBefore,s6Step326EntryFvFresh,arenaWires]
  · simp only [s6Step326EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step326EntryFv_checked : planRowResizeLog s6Step326EntryFvBefore s6Step326EntryFvRow 178 s6Step326EntryFvFresh=
    some (s6Step326EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩,growRow 776 s6Step326EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step326EntryFvBefore s6Step326EntryFvAfter s6Step326EntryFvRow 178 s6Step326EntryFvFresh
    s6Step326EntryFv_distinct s6Step326EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step326EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step326EntryFvRow.payload++s6Step326EntryFvFresh) s6Step326EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step326EntryGAfter : Arena := s6Step326EntryFBefore

private def s6Step326EntryGBefore : Arena := s6Step326EntryFBefore

private theorem s6Step326EntryG_Incoming : rowsOwned s6Step326EntryGBefore [s6Step326EntryGRow,s6Step326EntryFvRow,s6Step326EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326EntryFRow,s6Step326EntryGRow,s6Step326EntryFvRow,s6Step326EntryGvRow] 1 s6Step326EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326EntryG_Outgoing : rowsOwned s6Step326EntryGvAfter [s6Step326EntryGOut,s6Step326EntryFvOut,s6Step326EntryGvOut] :=
  hmrRows_owned_drop s6Step326EntryGvAfter [s6Step326EntryFOut,s6Step326EntryGOut,s6Step326EntryFvOut,s6Step326EntryGvOut] 1 s6Step326EntryBank_outgoingOwned

private theorem s6Step326EntryG_distinct : (s6Step326EntryGRow.sign::s6Step326EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326EntryG_owned : (s6Step326EntryGRow.sign::s6Step326EntryGRow.payload).toFinset⊆s6Step326EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EntryG_reserved : s6Step326EntryGBefore.reserve s6Step326EntryGFresh.toFinset=some s6Step326EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step326EntryGFresh,arenaWires]
  · norm_num [s6Step326EntryGBefore,s6Step326EntryFBefore,s6Step326EntryGFresh,arenaWires]
  · simp only [s6Step326EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step326EntryG_checked : planRowResizeLog s6Step326EntryGBefore s6Step326EntryGRow 108 s6Step326EntryGFresh=
    some (s6Step326EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩,growRow 777 s6Step326EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step326EntryGBefore s6Step326EntryGAfter s6Step326EntryGRow 108 s6Step326EntryGFresh
    s6Step326EntryG_distinct s6Step326EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step326EntryG_reserved
  have rowEq : WindowRow.mk (s6Step326EntryGRow.payload++s6Step326EntryGFresh) s6Step326EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step326EntryGvBefore : Arena := s6Step326EntryFBefore

private theorem s6Step326EntryGv_Incoming : rowsOwned s6Step326EntryGvBefore [s6Step326EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326EntryFRow,s6Step326EntryGRow,s6Step326EntryFvRow,s6Step326EntryGvRow] 3 s6Step326EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326EntryGv_Outgoing : rowsOwned s6Step326EntryGvAfter [s6Step326EntryGvOut] :=
  hmrRows_owned_drop s6Step326EntryGvAfter [s6Step326EntryFOut,s6Step326EntryGOut,s6Step326EntryFvOut,s6Step326EntryGvOut] 3 s6Step326EntryBank_outgoingOwned

private theorem s6Step326EntryGv_distinct : (s6Step326EntryGvRow.sign::s6Step326EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326EntryGv_owned : (s6Step326EntryGvRow.sign::s6Step326EntryGvRow.payload).toFinset⊆s6Step326EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326EntryGv_reserved : s6Step326EntryGvBefore.reserve s6Step326EntryGvFresh.toFinset=some s6Step326EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step326EntryGvFresh,arenaWires]
  · norm_num [s6Step326EntryGvBefore,s6Step326EntryFBefore,s6Step326EntryGvFresh,arenaWires]
  · simp only [s6Step326EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step326EntryGv_checked : planRowResizeLog s6Step326EntryGvBefore s6Step326EntryGvRow 178 s6Step326EntryGvFresh=
    some (s6Step326EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩,growRow 775 s6Step326EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step326EntryGvBefore s6Step326EntryGvAfter s6Step326EntryGvRow 178 s6Step326EntryGvFresh
    s6Step326EntryGv_distinct s6Step326EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step326EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step326EntryGvRow.payload++s6Step326EntryGvFresh) s6Step326EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step326EntryBank_rows : planWindowRowsLog s6Step326EntryFBefore [(s6Step326EntryFRow,108),(s6Step326EntryGRow,108),(s6Step326EntryFvRow,178),(s6Step326EntryGvRow,178)] [s6Step326EntryFFresh,s6Step326EntryGFresh,s6Step326EntryFvFresh,s6Step326EntryGvFresh]=
    some (s6Step326EntryGvAfter,[s6Step326EntryFOut,s6Step326EntryGOut,s6Step326EntryFvOut,s6Step326EntryGvOut],(growRow 795 s6Step326EntryFFresh ++ (growRow 777 s6Step326EntryGFresh ++ (growRow 776 s6Step326EntryFvFresh ++ (growRow 775 s6Step326EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step326EntryGvAfter [] []=some (s6Step326EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step326EntryGvBefore s6Step326EntryGvAfter s6Step326EntryGvAfter
    s6Step326EntryGvRow s6Step326EntryGvOut 178 s6Step326EntryGvFresh [] [] []
    (growRow 775 s6Step326EntryGvFresh) ([]) s6Step326EntryGv_Incoming s6Step326EntryGv_checked h4 s6Step326EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step326EntryFvBefore s6Step326EntryFvAfter s6Step326EntryGvAfter
    s6Step326EntryFvRow s6Step326EntryFvOut 178 s6Step326EntryFvFresh [(s6Step326EntryGvRow,178)] [s6Step326EntryGvFresh] [s6Step326EntryGvOut]
    (growRow 776 s6Step326EntryFvFresh) ((growRow 775 s6Step326EntryGvFresh ++ [])) s6Step326EntryFv_Incoming s6Step326EntryFv_checked h3 s6Step326EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step326EntryGBefore s6Step326EntryGAfter s6Step326EntryGvAfter
    s6Step326EntryGRow s6Step326EntryGOut 108 s6Step326EntryGFresh [(s6Step326EntryFvRow,178),(s6Step326EntryGvRow,178)] [s6Step326EntryFvFresh,s6Step326EntryGvFresh] [s6Step326EntryFvOut,s6Step326EntryGvOut]
    (growRow 777 s6Step326EntryGFresh) ((growRow 776 s6Step326EntryFvFresh ++ (growRow 775 s6Step326EntryGvFresh ++ []))) s6Step326EntryG_Incoming s6Step326EntryG_checked h2 s6Step326EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step326EntryFBefore s6Step326EntryFAfter s6Step326EntryGvAfter
    s6Step326EntryFRow s6Step326EntryFOut 108 s6Step326EntryFFresh [(s6Step326EntryGRow,108),(s6Step326EntryFvRow,178),(s6Step326EntryGvRow,178)] [s6Step326EntryGFresh,s6Step326EntryFvFresh,s6Step326EntryGvFresh] [s6Step326EntryGOut,s6Step326EntryFvOut,s6Step326EntryGvOut]
    (growRow 795 s6Step326EntryFFresh) ((growRow 777 s6Step326EntryGFresh ++ (growRow 776 s6Step326EntryFvFresh ++ (growRow 775 s6Step326EntryGvFresh ++ [])))) s6Step326EntryF_Incoming s6Step326EntryF_checked h1 s6Step326EntryF_Outgoing
  exact h0

private theorem s6Step326EntryBank_checked : compileHmrBankResizeLog .entry s6Step326EntryFBefore ⟨s6Step326EntryFRow,s6Step326EntryGRow,s6Step326EntryFvRow,s6Step326EntryGvRow⟩ ⟨108,108,178,178⟩ [s6Step326EntryFFresh,s6Step326EntryGFresh,s6Step326EntryFvFresh,s6Step326EntryGvFresh]=
    some (s6Step326EntryGvAfter,⟨s6Step326EntryFOut,s6Step326EntryGOut,s6Step326EntryFvOut,s6Step326EntryGvOut⟩,(growRow 795 s6Step326EntryFFresh ++ (growRow 777 s6Step326EntryGFresh ++ (growRow 776 s6Step326EntryFvFresh ++ (growRow 775 s6Step326EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step326EntryBank_rows]
  rfl

private def s6Step326ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<363) ∨ (364≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326ExitFBefore : Arena := s6Step326ExitGAfter

private def s6Step326ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 793],795⟩

private def s6Step326ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891],776⟩

private def s6Step326ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880],777⟩

private def s6Step326ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 843],775⟩

private theorem s6Step326ExitBank_incomingDistinct : ([s6Step326ExitGRow,s6Step326ExitFRow,s6Step326ExitFvRow,s6Step326ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326ExitF_Incoming : rowsOwned s6Step326ExitFBefore [s6Step326ExitFRow,s6Step326ExitFvRow,s6Step326ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326ExitGRow,s6Step326ExitFRow,s6Step326ExitFvRow,s6Step326ExitGvRow] 1 s6Step326ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326ExitFBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326ExitBank_outgoingOwned : rowsOwned s6Step326ExitGvAfter [s6Step326ExitGOut,s6Step326ExitFOut,s6Step326ExitFvOut,s6Step326ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step326ExitGvAfter (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<363) ∨ (364≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326ExitF_Outgoing : rowsOwned s6Step326ExitGvAfter [s6Step326ExitFOut,s6Step326ExitFvOut,s6Step326ExitGvOut] :=
  hmrRows_owned_drop s6Step326ExitGvAfter [s6Step326ExitGOut,s6Step326ExitFOut,s6Step326ExitFvOut,s6Step326ExitGvOut] 1 s6Step326ExitBank_outgoingOwned

private theorem s6Step326ExitF_distinct : (s6Step326ExitFRow.sign::s6Step326ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326ExitF_owned : (s6Step326ExitFRow.sign::s6Step326ExitFRow.payload).toFinset⊆s6Step326ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326ExitFBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326ExitF_retired : s6Step326ExitFBefore.retireSet s6Step326ExitFExtra.toFinset=s6Step326ExitFAfter := by
  unfold Arena.retireSet s6Step326ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step326ExitFBefore,s6Step326ExitGAfter,s6Step326ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step326ExitF_checked : planRowResizeLog s6Step326ExitFBefore s6Step326ExitFRow 107 []=
    some (s6Step326ExitFAfter,s6Step326ExitFOut,shrinkRow 795 s6Step326ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step326ExitFBefore s6Step326ExitFRow 107 s6Step326ExitF_distinct s6Step326ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step326ExitFRow.payload.take 107) s6Step326ExitFRow.sign=s6Step326ExitFOut := by decide +kernel
  have hi : s6Step326ExitFRow.payload.drop 107=s6Step326ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step326ExitF_retired] at result
  exact result

private def s6Step326ExitFvAfter : Arena := s6Step326ExitFAfter

private def s6Step326ExitFvBefore : Arena := s6Step326ExitFAfter

private theorem s6Step326ExitFv_Incoming : rowsOwned s6Step326ExitFvBefore [s6Step326ExitFvRow,s6Step326ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326ExitGRow,s6Step326ExitFRow,s6Step326ExitFvRow,s6Step326ExitGvRow] 2 s6Step326ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326ExitFvBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<363) ∨ (364≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326ExitFv_Outgoing : rowsOwned s6Step326ExitGvAfter [s6Step326ExitFvOut,s6Step326ExitGvOut] :=
  hmrRows_owned_drop s6Step326ExitGvAfter [s6Step326ExitGOut,s6Step326ExitFOut,s6Step326ExitFvOut,s6Step326ExitGvOut] 2 s6Step326ExitBank_outgoingOwned

private theorem s6Step326ExitFv_distinct : (s6Step326ExitFvRow.sign::s6Step326ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326ExitFv_owned : (s6Step326ExitFvRow.sign::s6Step326ExitFvRow.payload).toFinset⊆s6Step326ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326ExitFvBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<363) ∨ (364≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326ExitFv_reserved : s6Step326ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step326ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step326ExitFv_checked : planRowResizeLog s6Step326ExitFvBefore s6Step326ExitFvRow 179 []=
    some (s6Step326ExitFvAfter,s6Step326ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step326ExitFvBefore s6Step326ExitFvAfter s6Step326ExitFvRow 179 []
    s6Step326ExitFv_distinct s6Step326ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step326ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step326ExitFvRow.payload++[]) s6Step326ExitFvRow.sign=s6Step326ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step326ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step326ExitG_Incoming : rowsOwned s6Step326ExitGBefore [s6Step326ExitGRow,s6Step326ExitFRow,s6Step326ExitFvRow,s6Step326ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326ExitGRow,s6Step326ExitFRow,s6Step326ExitFvRow,s6Step326ExitGvRow] 0 s6Step326ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326ExitG_Outgoing : rowsOwned s6Step326ExitGvAfter [s6Step326ExitGOut,s6Step326ExitFOut,s6Step326ExitFvOut,s6Step326ExitGvOut] :=
  hmrRows_owned_drop s6Step326ExitGvAfter [s6Step326ExitGOut,s6Step326ExitFOut,s6Step326ExitFvOut,s6Step326ExitGvOut] 0 s6Step326ExitBank_outgoingOwned

private theorem s6Step326ExitG_distinct : (s6Step326ExitGRow.sign::s6Step326ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326ExitG_owned : (s6Step326ExitGRow.sign::s6Step326ExitGRow.payload).toFinset⊆s6Step326ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326ExitG_retired : s6Step326ExitGBefore.retireSet s6Step326ExitGExtra.toFinset=s6Step326ExitGAfter := by
  unfold Arena.retireSet s6Step326ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step326ExitGBefore,s6Step326ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step326ExitG_checked : planRowResizeLog s6Step326ExitGBefore s6Step326ExitGRow 107 []=
    some (s6Step326ExitGAfter,s6Step326ExitGOut,shrinkRow 777 s6Step326ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step326ExitGBefore s6Step326ExitGRow 107 s6Step326ExitG_distinct s6Step326ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step326ExitGRow.payload.take 107) s6Step326ExitGRow.sign=s6Step326ExitGOut := by decide +kernel
  have hi : s6Step326ExitGRow.payload.drop 107=s6Step326ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step326ExitG_retired] at result
  exact result

private def s6Step326ExitGvBefore : Arena := s6Step326ExitFAfter

private theorem s6Step326ExitGv_Incoming : rowsOwned s6Step326ExitGvBefore [s6Step326ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326ExitGRow,s6Step326ExitFRow,s6Step326ExitFvRow,s6Step326ExitGvRow] 3 s6Step326ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326ExitGvBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<363) ∨ (364≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326ExitGv_Outgoing : rowsOwned s6Step326ExitGvAfter [s6Step326ExitGvOut] :=
  hmrRows_owned_drop s6Step326ExitGvAfter [s6Step326ExitGOut,s6Step326ExitFOut,s6Step326ExitFvOut,s6Step326ExitGvOut] 3 s6Step326ExitBank_outgoingOwned

private theorem s6Step326ExitGv_distinct : (s6Step326ExitGvRow.sign::s6Step326ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326ExitGv_owned : (s6Step326ExitGvRow.sign::s6Step326ExitGvRow.payload).toFinset⊆s6Step326ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326ExitGvBefore (fun q => (0≤q ∧ q<107) ∨ (108≤q ∧ q<363) ∨ (364≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326ExitGv_retired : s6Step326ExitGvBefore.retireSet s6Step326ExitGvExtra.toFinset=s6Step326ExitGvAfter := by
  unfold Arena.retireSet s6Step326ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step326ExitGvBefore,s6Step326ExitFAfter,s6Step326ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step326ExitGv_checked : planRowResizeLog s6Step326ExitGvBefore s6Step326ExitGvRow 178 []=
    some (s6Step326ExitGvAfter,s6Step326ExitGvOut,shrinkRow 775 s6Step326ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step326ExitGvBefore s6Step326ExitGvRow 178 s6Step326ExitGv_distinct s6Step326ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step326ExitGvRow.payload.take 178) s6Step326ExitGvRow.sign=s6Step326ExitGvOut := by decide +kernel
  have hi : s6Step326ExitGvRow.payload.drop 178=s6Step326ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step326ExitGv_retired] at result
  exact result

private theorem s6Step326ExitBank_rows : planWindowRowsLog s6Step326ExitGBefore [(s6Step326ExitGRow,107),(s6Step326ExitFRow,107),(s6Step326ExitFvRow,179),(s6Step326ExitGvRow,178)] [[],[],[],[]]=
    some (s6Step326ExitGvAfter,[s6Step326ExitGOut,s6Step326ExitFOut,s6Step326ExitFvOut,s6Step326ExitGvOut],(shrinkRow 777 s6Step326ExitGExtra ++ (shrinkRow 795 s6Step326ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step326ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step326ExitGvAfter [] []=some (s6Step326ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step326ExitGvBefore s6Step326ExitGvAfter s6Step326ExitGvAfter
    s6Step326ExitGvRow s6Step326ExitGvOut 178 [] [] [] []
    (shrinkRow 775 s6Step326ExitGvExtra) ([]) s6Step326ExitGv_Incoming s6Step326ExitGv_checked h4 s6Step326ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step326ExitFvBefore s6Step326ExitFvAfter s6Step326ExitGvAfter
    s6Step326ExitFvRow s6Step326ExitFvOut 179 [] [(s6Step326ExitGvRow,178)] [[]] [s6Step326ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step326ExitGvExtra ++ [])) s6Step326ExitFv_Incoming s6Step326ExitFv_checked h3 s6Step326ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step326ExitFBefore s6Step326ExitFAfter s6Step326ExitGvAfter
    s6Step326ExitFRow s6Step326ExitFOut 107 [] [(s6Step326ExitFvRow,179),(s6Step326ExitGvRow,178)] [[],[]] [s6Step326ExitFvOut,s6Step326ExitGvOut]
    (shrinkRow 795 s6Step326ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step326ExitGvExtra ++ []))) s6Step326ExitF_Incoming s6Step326ExitF_checked h2 s6Step326ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step326ExitGBefore s6Step326ExitGAfter s6Step326ExitGvAfter
    s6Step326ExitGRow s6Step326ExitGOut 107 [] [(s6Step326ExitFRow,107),(s6Step326ExitFvRow,179),(s6Step326ExitGvRow,178)] [[],[],[]] [s6Step326ExitFOut,s6Step326ExitFvOut,s6Step326ExitGvOut]
    (shrinkRow 777 s6Step326ExitGExtra) ((shrinkRow 795 s6Step326ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step326ExitGvExtra ++ [])))) s6Step326ExitG_Incoming s6Step326ExitG_checked h1 s6Step326ExitG_Outgoing
  exact h0

private theorem s6Step326ExitBank_checked : compileHmrBankResizeLog .exit s6Step326ExitGBefore ⟨s6Step326ExitFRow,s6Step326ExitGRow,s6Step326ExitFvRow,s6Step326ExitGvRow⟩ ⟨107,107,179,178⟩ [[],[],[],[]]=
    some (s6Step326ExitGvAfter,⟨s6Step326ExitFOut,s6Step326ExitGOut,s6Step326ExitFvOut,s6Step326ExitGvOut⟩,(shrinkRow 777 s6Step326ExitGExtra ++ (shrinkRow 795 s6Step326ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step326ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step326ExitBank_rows]
  rfl

private theorem s6Step326Add0_apart : Disjoint s6Step326Add0Arena.live s6Step326Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step326Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326Add0_card : s6Step326Add0Arena.live.card=906 := by
  decide +kernel

private theorem s6Step326Add0_borrowed : s6Step326Add0Arena.checkBorrow (hmrHybridCount s6Step326Add0Arena s6Step326Add0B.length) s6Step326Add0Work=some s6Step326Add0During := by
  have len : s6Step326Add0Work.length=hmrHybridCount s6Step326Add0Arena s6Step326Add0B.length := by
    rw [hmrHybridCount,s6Step326Add0_card]
    decide +kernel
  have nd : s6Step326Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step326Add0Arena s6Step326Add0During s6Step326Add0Work.toFinset s6Step326Add0_bounded s6Step326Add0_apart rfl

private theorem s6Step326Add0_distinct : (841::830::865::(s6Step326Add0A++s6Step326Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326Add0_owned : (841::830::865::(s6Step326Add0A++s6Step326Add0B)).toFinset⊆s6Step326Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step326Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326Add0_checked : compileHmrHybridCinLog s6Step326Add0Arena 830 841 865 s6Step326Add0A s6Step326Add0B s6Step326Add0Work=some s6Step326Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step326Add0Arena s6Step326Add0During 830 841 865 s6Step326Add0A s6Step326Add0B s6Step326Add0Work
    (by decide +kernel) (by decide +kernel) s6Step326Add0_distinct
    (fun q hq => s6Step326Add0_owned (List.mem_toFinset.mpr hq)) s6Step326Add0_borrowed

private theorem s6Step326Add1_apart : Disjoint s6Step326Add1Arena.live s6Step326Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step326Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326Add1_card : s6Step326Add1Arena.live.card=906 := by
  decide +kernel

private theorem s6Step326Add1_borrowed : s6Step326Add1Arena.checkBorrow (hmrHybridCount s6Step326Add1Arena s6Step326Add1B.length) s6Step326Add1Work=some s6Step326Add1During := by
  have len : s6Step326Add1Work.length=hmrHybridCount s6Step326Add1Arena s6Step326Add1B.length := by
    rw [hmrHybridCount,s6Step326Add1_card]
    decide +kernel
  have nd : s6Step326Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step326Add1Arena s6Step326Add1During s6Step326Add1Work.toFinset s6Step326Add1_bounded s6Step326Add1_apart rfl

private theorem s6Step326Add1_distinct : (841::830::865::(s6Step326Add1A++s6Step326Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326Add1_owned : (841::830::865::(s6Step326Add1A++s6Step326Add1B)).toFinset⊆s6Step326Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step326Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326Add1_checked : compileHmrHybridCinLog s6Step326Add1Arena 830 841 865 s6Step326Add1A s6Step326Add1B s6Step326Add1Work=some s6Step326Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step326Add1Arena s6Step326Add1During 830 841 865 s6Step326Add1A s6Step326Add1B s6Step326Add1Work
    (by decide +kernel) (by decide +kernel) s6Step326Add1_distinct
    (fun q hq => s6Step326Add1_owned (List.mem_toFinset.mpr hq)) s6Step326Add1_borrowed

private theorem s6Step326F4_apart : Disjoint (s6Step326Add0A++s6Step326Add0B).toFinset (s6Step326Add1A++s6Step326Add1B).toFinset := by
  have nd : ((s6Step326Add0A++s6Step326Add0B)++(s6Step326Add1A++s6Step326Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step326F4_carry : s6Step326F4FlagArena.checkBorrow 1 [865]=some s6Step326Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step326F4FlagArena,s6Step326HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step326F4FlagArena,s6Step326HeadFvAfter,s6Step326Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step326F4_distinct : (854::830::841::865::((s6Step326Add0A++s6Step326Add1A)++(s6Step326Add0B++s6Step326Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326F4_flag : s6Step326HeadFvAfter.checkBorrow 1 [841]=some s6Step326F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step326HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step326F4_owned : (854::830::((s6Step326Add0A++s6Step326Add1A)++(s6Step326Add0B++s6Step326Add1B))).toFinset⊆s6Step326HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step326HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326F4_checked : compileHmrHybridF4Log s6Step326HeadFvAfter 854 830 s6Step326Add0A s6Step326Add0B s6Step326Add1A s6Step326Add1B [841] [865] s6Step326Add0Work s6Step326Add1Work=some s6Step326F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step326HeadFvAfter s6Step326F4FlagArena s6Step326Add0Arena s6Step326Add0During s6Step326Add1During 854 830
    s6Step326Add0A s6Step326Add0B s6Step326Add1A s6Step326Add1B [841] [865] s6Step326Add0Work s6Step326Add1Work
    (fun q hq => s6Step326F4_owned (List.mem_toFinset.mpr hq)) s6Step326F4_flag s6Step326F4_carry
    s6Step326F4_distinct s6Step326F4_apart s6Step326Add0_checked s6Step326Add1_checked

private theorem s6Step326Front_branch : s6Step326FrontSigmaArena.checkBorrow 1 [830]=some s6Step326HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step326FrontSigmaArena,s6Step326EntryGvAfter,s6Step326EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step326FrontSigmaArena,s6Step326EntryGvAfter,s6Step326EntryFBefore,s6Step326HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step326Front_entry : HmrFrontEntryValid s6Step326EntryFBefore s6Step326FrontBank 108 178 ⟨107,107,179,178⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step326FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step326EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step326EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<854) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step326FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step326Front_sigma : s6Step326EntryGvAfter.checkBorrow 1 [854]=some s6Step326FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step326EntryGvAfter,s6Step326EntryFBefore,arenaWires]
  · rfl

private def s6Step326HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326HeadFBefore : Arena := s6Step326HeadGAfter

private def s6Step326HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363],795⟩

private def s6Step326HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791],776⟩

private def s6Step326HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107],777⟩

private def s6Step326HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810],775⟩

private theorem s6Step326HeadBank_incomingDistinct : ([s6Step326HeadGRow,s6Step326HeadFRow,s6Step326HeadGvRow,s6Step326HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326HeadF_Incoming : rowsOwned s6Step326HeadFBefore [s6Step326HeadFRow,s6Step326HeadGvRow,s6Step326HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326HeadGRow,s6Step326HeadFRow,s6Step326HeadGvRow,s6Step326HeadFvRow] 1 s6Step326HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326HeadBank_outgoingOwned : rowsOwned s6Step326HeadFvAfter [s6Step326HeadGOut,s6Step326HeadFOut,s6Step326HeadGvOut,s6Step326HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step326HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326HeadF_Outgoing : rowsOwned s6Step326HeadFvAfter [s6Step326HeadFOut,s6Step326HeadGvOut,s6Step326HeadFvOut] :=
  hmrRows_owned_drop s6Step326HeadFvAfter [s6Step326HeadGOut,s6Step326HeadFOut,s6Step326HeadGvOut,s6Step326HeadFvOut] 1 s6Step326HeadBank_outgoingOwned

private theorem s6Step326HeadF_distinct : (s6Step326HeadFRow.sign::s6Step326HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326HeadF_owned : (s6Step326HeadFRow.sign::s6Step326HeadFRow.payload).toFinset⊆s6Step326HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326HeadF_reserved : s6Step326HeadFBefore.reserve s6Step326HeadFFresh.toFinset=some s6Step326HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step326HeadFFresh,arenaWires]
  · norm_num [s6Step326HeadFBefore,s6Step326HeadGAfter,s6Step326HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step326HeadFAfter,s6Step326HeadFBefore,s6Step326HeadGAfter,s6Step326HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step326HeadF_checked : planRowResizeLog s6Step326HeadFBefore s6Step326HeadFRow 109 s6Step326HeadFFresh=
    some (s6Step326HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 793],795⟩,growRow 795 s6Step326HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step326HeadFBefore s6Step326HeadFAfter s6Step326HeadFRow 109 s6Step326HeadFFresh
    s6Step326HeadF_distinct s6Step326HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step326HeadF_reserved
  have rowEq : WindowRow.mk (s6Step326HeadFRow.payload++s6Step326HeadFFresh) s6Step326HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 793],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step326HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step326HeadFvBefore : Arena := s6Step326HeadGvAfter

private theorem s6Step326HeadFv_Incoming : rowsOwned s6Step326HeadFvBefore [s6Step326HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326HeadGRow,s6Step326HeadFRow,s6Step326HeadGvRow,s6Step326HeadFvRow] 3 s6Step326HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326HeadFv_Outgoing : rowsOwned s6Step326HeadFvAfter [s6Step326HeadFvOut] :=
  hmrRows_owned_drop s6Step326HeadFvAfter [s6Step326HeadGOut,s6Step326HeadFOut,s6Step326HeadGvOut,s6Step326HeadFvOut] 3 s6Step326HeadBank_outgoingOwned

private theorem s6Step326HeadFv_distinct : (s6Step326HeadFvRow.sign::s6Step326HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326HeadFv_owned : (s6Step326HeadFvRow.sign::s6Step326HeadFvRow.payload).toFinset⊆s6Step326HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326HeadFv_reserved : s6Step326HeadFvBefore.reserve s6Step326HeadFvFresh.toFinset=some s6Step326HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step326HeadFvFresh,arenaWires]
  · norm_num [s6Step326HeadFvBefore,s6Step326HeadGvAfter,s6Step326HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step326HeadFvAfter,s6Step326HeadFvBefore,s6Step326HeadGvAfter,s6Step326HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step326HeadFv_checked : planRowResizeLog s6Step326HeadFvBefore s6Step326HeadFvRow 179 s6Step326HeadFvFresh=
    some (s6Step326HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891],776⟩,growRow 776 s6Step326HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step326HeadFvBefore s6Step326HeadFvAfter s6Step326HeadFvRow 179 s6Step326HeadFvFresh
    s6Step326HeadFv_distinct s6Step326HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step326HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step326HeadFvRow.payload++s6Step326HeadFvFresh) s6Step326HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 850, 803, 822, 791, 891],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step326HeadG_Incoming : rowsOwned s6Step326HeadGBefore [s6Step326HeadGRow,s6Step326HeadFRow,s6Step326HeadGvRow,s6Step326HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326HeadGRow,s6Step326HeadFRow,s6Step326HeadGvRow,s6Step326HeadFvRow] 0 s6Step326HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326HeadG_Outgoing : rowsOwned s6Step326HeadFvAfter [s6Step326HeadGOut,s6Step326HeadFOut,s6Step326HeadGvOut,s6Step326HeadFvOut] :=
  hmrRows_owned_drop s6Step326HeadFvAfter [s6Step326HeadGOut,s6Step326HeadFOut,s6Step326HeadGvOut,s6Step326HeadFvOut] 0 s6Step326HeadBank_outgoingOwned

private theorem s6Step326HeadG_distinct : (s6Step326HeadGRow.sign::s6Step326HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326HeadG_owned : (s6Step326HeadGRow.sign::s6Step326HeadGRow.payload).toFinset⊆s6Step326HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326HeadG_reserved : s6Step326HeadGBefore.reserve s6Step326HeadGFresh.toFinset=some s6Step326HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step326HeadGFresh,arenaWires]
  · norm_num [s6Step326HeadGBefore,s6Step326HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step326HeadGAfter,s6Step326HeadGBefore,s6Step326HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step326HeadG_checked : planRowResizeLog s6Step326HeadGBefore s6Step326HeadGRow 109 s6Step326HeadGFresh=
    some (s6Step326HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880],777⟩,growRow 777 s6Step326HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step326HeadGBefore s6Step326HeadGAfter s6Step326HeadGRow 109 s6Step326HeadGFresh
    s6Step326HeadG_distinct s6Step326HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step326HeadG_reserved
  have rowEq : WindowRow.mk (s6Step326HeadGRow.payload++s6Step326HeadGFresh) s6Step326HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 880],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step326HeadGvBefore : Arena := s6Step326HeadFAfter

private theorem s6Step326HeadGv_Incoming : rowsOwned s6Step326HeadGvBefore [s6Step326HeadGvRow,s6Step326HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step326HeadGRow,s6Step326HeadFRow,s6Step326HeadGvRow,s6Step326HeadFvRow] 2 s6Step326HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step326HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step326HeadGv_Outgoing : rowsOwned s6Step326HeadFvAfter [s6Step326HeadGvOut,s6Step326HeadFvOut] :=
  hmrRows_owned_drop s6Step326HeadFvAfter [s6Step326HeadGOut,s6Step326HeadFOut,s6Step326HeadGvOut,s6Step326HeadFvOut] 2 s6Step326HeadBank_outgoingOwned

private theorem s6Step326HeadGv_distinct : (s6Step326HeadGvRow.sign::s6Step326HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step326HeadGv_owned : (s6Step326HeadGvRow.sign::s6Step326HeadGvRow.payload).toFinset⊆s6Step326HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step326HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step326HeadGv_reserved : s6Step326HeadGvBefore.reserve s6Step326HeadGvFresh.toFinset=some s6Step326HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step326HeadGvFresh,arenaWires]
  · norm_num [s6Step326HeadGvBefore,s6Step326HeadFAfter,s6Step326HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step326HeadGvAfter,s6Step326HeadGvBefore,s6Step326HeadFAfter,s6Step326HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step326HeadGv_checked : planRowResizeLog s6Step326HeadGvBefore s6Step326HeadGvRow 179 s6Step326HeadGvFresh=
    some (s6Step326HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 843],775⟩,growRow 775 s6Step326HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step326HeadGvBefore s6Step326HeadGvAfter s6Step326HeadGvRow 179 s6Step326HeadGvFresh
    s6Step326HeadGv_distinct s6Step326HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step326HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step326HeadGvRow.payload++s6Step326HeadGvFresh) s6Step326HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 786, 864, 868, 853, 810, 843],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step326HeadBank_rows : planWindowRowsLog s6Step326HeadGBefore [(s6Step326HeadGRow,109),(s6Step326HeadFRow,109),(s6Step326HeadGvRow,179),(s6Step326HeadFvRow,179)] [s6Step326HeadGFresh,s6Step326HeadFFresh,s6Step326HeadGvFresh,s6Step326HeadFvFresh]=
    some (s6Step326HeadFvAfter,[s6Step326HeadGOut,s6Step326HeadFOut,s6Step326HeadGvOut,s6Step326HeadFvOut],(growRow 777 s6Step326HeadGFresh ++ (growRow 795 s6Step326HeadFFresh ++ (growRow 775 s6Step326HeadGvFresh ++ (growRow 776 s6Step326HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step326HeadFvAfter [] []=some (s6Step326HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step326HeadFvBefore s6Step326HeadFvAfter s6Step326HeadFvAfter
    s6Step326HeadFvRow s6Step326HeadFvOut 179 s6Step326HeadFvFresh [] [] []
    (growRow 776 s6Step326HeadFvFresh) ([]) s6Step326HeadFv_Incoming s6Step326HeadFv_checked h4 s6Step326HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step326HeadGvBefore s6Step326HeadGvAfter s6Step326HeadFvAfter
    s6Step326HeadGvRow s6Step326HeadGvOut 179 s6Step326HeadGvFresh [(s6Step326HeadFvRow,179)] [s6Step326HeadFvFresh] [s6Step326HeadFvOut]
    (growRow 775 s6Step326HeadGvFresh) ((growRow 776 s6Step326HeadFvFresh ++ [])) s6Step326HeadGv_Incoming s6Step326HeadGv_checked h3 s6Step326HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step326HeadFBefore s6Step326HeadFAfter s6Step326HeadFvAfter
    s6Step326HeadFRow s6Step326HeadFOut 109 s6Step326HeadFFresh [(s6Step326HeadGvRow,179),(s6Step326HeadFvRow,179)] [s6Step326HeadGvFresh,s6Step326HeadFvFresh] [s6Step326HeadGvOut,s6Step326HeadFvOut]
    (growRow 795 s6Step326HeadFFresh) ((growRow 775 s6Step326HeadGvFresh ++ (growRow 776 s6Step326HeadFvFresh ++ []))) s6Step326HeadF_Incoming s6Step326HeadF_checked h2 s6Step326HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step326HeadGBefore s6Step326HeadGAfter s6Step326HeadFvAfter
    s6Step326HeadGRow s6Step326HeadGOut 109 s6Step326HeadGFresh [(s6Step326HeadFRow,109),(s6Step326HeadGvRow,179),(s6Step326HeadFvRow,179)] [s6Step326HeadFFresh,s6Step326HeadGvFresh,s6Step326HeadFvFresh] [s6Step326HeadFOut,s6Step326HeadGvOut,s6Step326HeadFvOut]
    (growRow 777 s6Step326HeadGFresh) ((growRow 795 s6Step326HeadFFresh ++ (growRow 775 s6Step326HeadGvFresh ++ (growRow 776 s6Step326HeadFvFresh ++ [])))) s6Step326HeadG_Incoming s6Step326HeadG_checked h1 s6Step326HeadG_Outgoing
  exact h0

private theorem s6Step326HeadBank_checked : compileHmrBankResizeLog .headroom s6Step326HeadGBefore ⟨s6Step326HeadFRow,s6Step326HeadGRow,s6Step326HeadFvRow,s6Step326HeadGvRow⟩ ⟨109,109,179,179⟩ [s6Step326HeadGFresh,s6Step326HeadFFresh,s6Step326HeadGvFresh,s6Step326HeadFvFresh]=
    some (s6Step326HeadFvAfter,⟨s6Step326HeadFOut,s6Step326HeadGOut,s6Step326HeadFvOut,s6Step326HeadGvOut⟩,(growRow 777 s6Step326HeadGFresh ++ (growRow 795 s6Step326HeadFFresh ++ (growRow 775 s6Step326HeadGvFresh ++ (growRow 776 s6Step326HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step326HeadBank_rows]
  rfl

private theorem s6Step326Front_checked : compileHmrSourceFrontLog s6Step326EntryFBefore s6Step326FrontBank 108 178 ⟨107,107,179,178⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step326FrontLog=some s6Step326FrontPlan := by
  have pairEq : s6Step326FrontPair=⟨s6Step326HeadFRow,s6Step326HeadGRow,s6Step326HeadFvRow,s6Step326HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step326FrontHead=⟨s6Step326ExitFRow,s6Step326ExitGRow,s6Step326ExitFvRow,s6Step326ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step326Add0A=s6Step326FrontHead.f.wires := by decide +kernel
  have gEq : s6Step326Add0B=s6Step326FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step326Add1A=s6Step326FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step326Add1B=s6Step326FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step326EntryFBefore s6Step326FrontBank 108 178 ⟨107,107,179,178⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step326FrontLog s6Step326FrontPlan
  · exact s6Step326Front_entry
  · exact s6Step326EntryBank_checked
  · exact s6Step326Front_sigma
  · rfl
  · exact s6Step326Front_branch
  · rfl
  · simpa only [s6Step326FrontPlan,pairEq] using s6Step326HeadBank_checked
  · simpa only [s6Step326FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step326F4_checked
  · exact s6Step326Counter_checked
  · rfl
  · simpa only [s6Step326FrontPlan,headEq] using s6Step326ExitBank_checked

private theorem s6Step326Complete_explicit_checked : compileHmrEarlyStepLog s6Step326EntryFBefore s6Step326FrontBank 108 178 ⟨107,107,179,178⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step326CompleteLog=some s6Step326CompletePlan := by
  let Q := s6Step326EarlyControlPlan
  have hq := s6Step326EarlyControl_plan_checked
  have fv1 : s6Step326CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step326CompleteOut.fv.payload[2]?.getD s6Step326CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step326CompleteOut.fv.payload[3]?.getD s6Step326CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step326CompleteOut.fv.payload[4]?.getD s6Step326CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step326EntryFBefore s6Step326EarlyControlArena s6Step326FrontBank 108 178 ⟨107,107,179,178⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 60 s6Step326CompleteLog s6Step326FrontPlan Q
    s6Step326Front_checked s6Step326Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step326Complete_owned s6Step326Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step326EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 769 854 s6Step326CompleteOut.fv.second (s6Step326CompleteOut.fv.payload[2]?.getD s6Step326CompleteOut.fv.sign) (s6Step326CompleteOut.fv.payload[3]?.getD s6Step326CompleteOut.fv.sign) (s6Step326CompleteOut.fv.payload[4]?.getD s6Step326CompleteOut.fv.sign) 830 60 s6Step326EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep326Arena : Arena := s6Step326EntryFBefore
def s6PrivateStep326Bank : WindowBank := s6Step326FrontBank
def s6PrivateStep326Spec : HmrSourceWalkStepLog := ⟨108,178,⟨107,107,179,178⟩,60,.early s6Step326CompleteLog⟩
def s6PrivateStep326Plan : HmrSourceStepPlan := .early s6Step326CompletePlan
theorem s6PrivateStep326_source : s6PrivateStep326Spec=s6ObservedLogs320[6] := rfl
theorem s6PrivateStep326_checked : compileHmrSourceStepLog s6PrivateStep326Arena s6PrivateStep326Bank
    s6PrivateStep326Spec.fgWidth s6PrivateStep326Spec.vWidth s6PrivateStep326Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
    6 498 326 s6PrivateStep326Spec.need none s6PrivateStep326Spec.log=some s6PrivateStep326Plan := by
  change compileHmrSourceStepLog s6Step326EntryFBefore s6Step326FrontBank 108 178 ⟨107,107,179,178⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 326 60 none (.early s6Step326CompleteLog)=some (.early s6Step326CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 326<498)]
  rw [s6Step326Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
