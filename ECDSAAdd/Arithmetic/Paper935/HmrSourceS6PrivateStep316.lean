import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep314
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

private def s6Step316CompleteMoves : List (Wire × Wire) := [(860,368)]

private def s6Step316EarlyControlLog : HmrEarlyControlLog := ⟨[860, 793, 841, 843, 850],[865],[803],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step316FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [843], [], [839]],[[850], [841], [793], [814]],[[], [], [], []]⟩,[864],[786],[865],[803],[830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 803, 830, 805]⟩

private def s6Step316CompleteLog : HmrEarlyStepLog := ⟨s6Step316FrontLog,s6Step316CompleteMoves,s6Step316EarlyControlLog⟩

private def s6Step316ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367],795⟩

private def s6Step316ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814],776⟩

private def s6Step316ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩

private def s6Step316ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839],775⟩

private def s6Step316FrontOut : WindowBank := ⟨s6Step316ExitFOut,s6Step316ExitGOut,s6Step316ExitFvOut,s6Step316ExitGvOut⟩

private def s6Step316CompleteOut : WindowBank := s6Step316FrontOut.repacked s6Step316CompleteMoves

private def s6Step316EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step316EarlyControlPositiveArena,[865],s6Step316EarlyControlEqualityArena,[803],⟨⟨864,false⟩,[⟨⟨865,false⟩,803⟩]⟩⟩

private def s6Step316EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,860⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,841⟩,⟨⟨770,false⟩,843⟩,⟨⟨769,false⟩,850⟩]⟩

private def s6Step316EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step316EarlyControlZeroArena,s6Step316EarlyControlZeroPlan,s6Step316EarlyControlClassPlan,s6Step316EarlyControlFlagArena,s6Step316EarlyControlFittedArena,s6Step316EarlyControlHistoryArena,s6Step316EarlyControlSigmaArena,s6Step316EarlyControlOutputArena,s6Step316EarlyControlLog⟩

private def s6Step316CounterWork : List Wire := [865, 803, 830, 805]

private theorem s6Step316Counter_bounded : s6Step316CounterWork.toFinset⊆arenaWires := by norm_num [s6Step316CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step316HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316CounterDuring : Arena := ⟨s6Step316HeadFvAfter.live∪s6Step316CounterWork.toFinset,Finset.union_subset s6Step316HeadFvAfter.bounded s6Step316Counter_bounded⟩

private def s6Step316EntryFFresh : List Wire := []

private def s6Step316EntryFvFresh : List Wire := []

private def s6Step316EntryGFresh : List Wire := [843]

private def s6Step316EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EntryGvFresh : List Wire := [839]

private def s6Step316ExitFExtra : List Wire := [368, 841]

private def s6Step316ExitGExtra : List Wire := [843, 850]

private def s6Step316ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<368) ∨ (369≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316ExitGvExtra : List Wire := [793]

private def s6Step316Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step316Add0_bounded : s6Step316Add0Work.toFinset⊆arenaWires := by
  have h : s6Step316Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step316Add0During : Arena := ⟨s6Step316Add0Arena.live∪s6Step316Add0Work.toFinset,Finset.union_subset s6Step316Add0Arena.bounded s6Step316Add0_bounded⟩

private def s6Step316Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step316Add1_bounded : s6Step316Add1Work.toFinset⊆arenaWires := by
  have h : s6Step316Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step316Add1During : Arena := ⟨s6Step316Add1Arena.live∪s6Step316Add1Work.toFinset,Finset.union_subset s6Step316Add1Arena.bounded s6Step316Add1_bounded⟩

private def s6Step316F4FlagArena : Arena := ⟨s6Step316HeadFvAfter.live∪{865},Finset.union_subset s6Step316HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step316F4Plan : HmrHybridF4Plan := ⟨s6Step316F4FlagArena,[865],s6Step316Add0Arena,[803],s6Step316Add0During,s6Step316Add0Work,s6Step316Add1During,s6Step316Add1Work⟩

private def s6Step316HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 841],795⟩

private def s6Step316HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814],776⟩

private def s6Step316HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 843, 850],777⟩

private def s6Step316HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 793],775⟩

private def s6Step316FrontHead : WindowBank := ⟨s6Step316HeadFOut,s6Step316HeadGOut,s6Step316HeadFvOut,s6Step316HeadGvOut⟩

private def s6Step316EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩

private def s6Step316EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩

private def s6Step316EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 843],777⟩

private def s6Step316EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839],775⟩

private def s6Step316FrontPair : WindowBank := ⟨s6Step316EntryFOut,s6Step316EntryGOut,s6Step316EntryFvOut,s6Step316EntryGvOut⟩

private def s6Step316FrontSigmaArena : Arena := ⟨s6Step316EntryGvAfter.live∪{864},Finset.union_subset s6Step316EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step316HeadFFresh : List Wire := [841]

private def s6Step316HeadFvFresh : List Wire := [814]

private def s6Step316HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316HeadGFresh : List Wire := [850]

private def s6Step316HeadGvFresh : List Wire := [793]

private def s6Step316FrontPlan : HmrSourceFront := ⟨s6Step316EntryGvAfter,s6Step316FrontPair,(growRow 795 s6Step316EntryFFresh ++ (growRow 777 s6Step316EntryGFresh ++ (growRow 776 s6Step316EntryFvFresh ++ (growRow 775 s6Step316EntryGvFresh ++ [])))),s6Step316FrontSigmaArena,[864],s6Step316HeadGBefore,[786],
  s6Step316HeadFvAfter,s6Step316FrontHead,(growRow 777 s6Step316HeadGFresh ++ (growRow 795 s6Step316HeadFFresh ++ (growRow 775 s6Step316HeadGvFresh ++ (growRow 776 s6Step316HeadFvFresh ++ [])))),s6Step316F4Plan,s6Step316CounterDuring,s6Step316CounterWork,s6Step316ExitGvAfter,s6Step316FrontOut,(shrinkRow 777 s6Step316ExitGExtra ++ (shrinkRow 795 s6Step316ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step316ExitGvExtra ++ []))))⟩

private def s6Step316CompletePlan : HmrEarlyStepPlan := ⟨s6Step316FrontPlan,s6Step316EarlyControlArena,s6Step316EarlyControlPlan,s6Step316CompleteMoves⟩

private theorem s6Step316Complete_apart : List.Disjoint (s6Step316CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [864, 786, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] := by
  have nd : ((s6Step316CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[864, 786, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step316Complete_owned : (s6Step316CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step316EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step316CompleteMoveArena : Arena := ⟨s6Step316ExitGvAfter.live∪{368},Finset.union_subset s6Step316ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step316Complete_repack : s6Step316ExitGvAfter.checkRepack s6Step316CompleteMoves=some s6Step316EarlyControlArena := by
  have owned : 860∈s6Step316ExitGvAfter.live := by norm_num [s6Step316ExitGvAfter,arenaWires]
  have reserve : s6Step316ExitGvAfter.reserve {368}=some s6Step316CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step316ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step316CompleteMoveArena.retireSet {860}=s6Step316EarlyControlArena := by
    unfold Arena.retireSet s6Step316EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step316CompleteMoveArena,s6Step316ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step316CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step316CompleteMoveArena.retireSet {860}).checkRepack []=some s6Step316EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step316EarlyControl_branchOwned : ([786] : List Wire).toFinset⊆s6Step316EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EarlyControl_branch : compileHmrBranchRetirement s6Step316EarlyControlSigmaArena 786=some s6Step316EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step316EarlyControl_branchOwned
  · ext q
    simp [s6Step316EarlyControlOutputArena,s6Step316EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step316EarlyControl_classEqualityBorrow : s6Step316EarlyControlPositiveArena.checkBorrow (([864, 865] : List Wire).length-1) s6Step316EarlyControlLog.classWork=some s6Step316EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step316EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step316EarlyControlEqualityArena,s6Step316EarlyControlPositiveArena,s6Step316EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step316EarlyControl_classEqualityOwned : ([864, 865] : List Wire).toFinset⊆s6Step316EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EarlyControl_classEquality : compileHmrEqualityLog s6Step316EarlyControlPositiveArena [864, 865] 0 s6Step316EarlyControlLog.classWork=some (s6Step316EarlyControlEqualityArena,s6Step316EarlyControlLog.classWork,s6Step316EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step316EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step316EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step316EarlyControl_classOwned : ([769, 850, 864] : List Wire).toFinset⊆s6Step316EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EarlyControl_positiveBorrow : s6Step316EarlyControlZeroArena.checkBorrow (1) s6Step316EarlyControlLog.positiveWork=some s6Step316EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step316EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step316EarlyControlPositiveArena,s6Step316EarlyControlZeroArena,s6Step316EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step316EarlyControl_class : compileHmrSourceClassLog s6Step316EarlyControlZeroArena false 769 s6Step316EarlyControlZeroPlan.top 0 864 s6Step316EarlyControlLog.positiveWork s6Step316EarlyControlLog.classWork=some s6Step316EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step316EarlyControlClassPlan s6Step316EarlyControlZeroArena false 769 s6Step316EarlyControlZeroPlan.top 0 864
  constructor
  · decide +kernel
  · exact s6Step316EarlyControl_classOwned
  · exact s6Step316EarlyControl_positiveBorrow
  · exact s6Step316EarlyControl_classEquality

private theorem s6Step316EarlyControl_entryRecordOwned : ([786, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step316EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EarlyControl_entrySigmaOwned : ([864, 254] : List Wire).toFinset⊆s6Step316EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EarlyControl_fitBorrow : s6Step316EarlyControlFlagArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step316EarlyControlLog.recordFresh=some s6Step316EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step316EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step316EarlyControlFittedArena,s6Step316EarlyControlFlagArena,s6Step316EarlyControlLog,arenaWires]

private theorem s6Step316EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step316EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EarlyControl_fit : compileHmrRecordGrowLog s6Step316EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step316EarlyControlLog.recordFresh=some s6Step316EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step316EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step316EarlyControl_fitBorrow

private theorem s6Step316EarlyControl_flagsBorrow : s6Step316EarlyControlEqualityArena.checkBorrow (6) s6Step316EarlyControlLog.flagWork=some s6Step316EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step316EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step316EarlyControlFlagArena,s6Step316EarlyControlEqualityArena,s6Step316EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step316EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step316EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EarlyControl_flags : compileHmrFlagsLog s6Step316EarlyControlClassPlan.equalityArena s6Step316EarlyControlClassPlan.equality.top 253 252 251 s6Step316EarlyControlLog.flagWork=some s6Step316EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step316EarlyControl_flagsOwned⟩
  · exact s6Step316EarlyControl_flagsBorrow

private theorem s6Step316EarlyControl_historyBorrow : s6Step316EarlyControlArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step316EarlyControlLog.recordFresh=some s6Step316EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step316EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step316EarlyControlHistoryArena,s6Step316EarlyControlArena,s6Step316EarlyControlLog,arenaWires]

private theorem s6Step316EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step316EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EarlyControl_history : compileHmrRecordGrowLog s6Step316EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step316EarlyControlLog.recordFresh=some s6Step316EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step316EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step316EarlyControl_historyBorrow

private theorem s6Step316EarlyControl_sigmaOwned : ([254, 864] : List Wire).toFinset⊆s6Step316EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EarlyControl_sigmaReleaseOwned : ([864] : List Wire).toFinset⊆s6Step316EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EarlyControl_sigmaRelease : s6Step316EarlyControlHistoryArena.release {864} (fun _ => false)=some s6Step316EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step316EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step316EarlyControlSigmaArena,s6Step316EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step316EarlyControl_sigma : compileHmrSigmaDropLog s6Step316EarlyControlHistoryArena false 0 0 254 864 []=some s6Step316EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step316EarlyControl_sigmaOwned⟩
  · exact s6Step316EarlyControl_sigmaRelease

private theorem s6Step316EarlyControl_zeroBorrow : s6Step316EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step316EarlyControlLog.zeroWork=some s6Step316EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step316EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step316EarlyControlZeroArena,s6Step316EarlyControlArena,s6Step316EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step316EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step316EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step316EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<860) ∨ (861≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EarlyControl_zero : compileHmrEqualityLog s6Step316EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step316EarlyControlLog.zeroWork=some (s6Step316EarlyControlZeroArena,s6Step316EarlyControlLog.zeroWork,s6Step316EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step316EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step316EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step316EarlyControl_logged : s6Step316EarlyControlPlan.Logged s6Step316EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 254 253 252 251 786 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step316EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step316EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step316EarlyControl_zero
  · exact s6Step316EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step316EarlyControl_flags
  · exact s6Step316EarlyControl_fit
  · exact s6Step316EarlyControl_history
  · exact s6Step316EarlyControl_sigma
  · exact s6Step316EarlyControl_branch

private theorem s6Step316EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step316EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 254 253 252 251 786 56 s6Step316EarlyControlLog=some s6Step316EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step316EarlyControlPlan s6Step316EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 254 253 252 251 786 56 s6Step316EarlyControl_logged

private def s6Step316EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩

private def s6Step316EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩

private def s6Step316EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩

private def s6Step316EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩

private def s6Step316FrontBank : WindowBank := ⟨s6Step316EntryFRow,s6Step316EntryGRow,s6Step316EntryFvRow,s6Step316EntryGvRow⟩

private def s6Step316Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 841, 795]

private def s6Step316Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 843, 850, 777]

private def s6Step316Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814, 776]

private def s6Step316Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 793, 775]

private theorem s6Step316Counter_apart : Disjoint s6Step316HeadFvAfter.live s6Step316CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step316HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316Counter_borrowed : s6Step316HeadFvAfter.checkBorrow 4 s6Step316CounterWork=some s6Step316CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step316HeadFvAfter s6Step316CounterDuring s6Step316CounterWork.toFinset s6Step316Counter_bounded s6Step316Counter_apart rfl

private theorem s6Step316Counter_owned : (864::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step316HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step316HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316Counter_checked : compileHmrCounterStepLog s6Step316HeadFvAfter true 864 [774, 773, 772, 771, 770, 769] s6Step316CounterWork=some s6Step316CounterDuring := by
  have owned : ∀q∈864::[774, 773, 772, 771, 770, 769],q∈s6Step316HeadFvAfter.live := fun q hq => s6Step316Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step316Counter_borrowed

private def s6Step316EntryFAfter : Arena := s6Step316EntryFBefore

private theorem s6Step316EntryBank_incomingDistinct : ([s6Step316EntryFRow,s6Step316EntryGRow,s6Step316EntryFvRow,s6Step316EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316EntryF_Incoming : rowsOwned s6Step316EntryFBefore [s6Step316EntryFRow,s6Step316EntryGRow,s6Step316EntryFvRow,s6Step316EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316EntryFRow,s6Step316EntryGRow,s6Step316EntryFvRow,s6Step316EntryGvRow] 0 s6Step316EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316EntryBank_outgoingOwned : rowsOwned s6Step316EntryGvAfter [s6Step316EntryFOut,s6Step316EntryGOut,s6Step316EntryFvOut,s6Step316EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step316EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316EntryF_Outgoing : rowsOwned s6Step316EntryGvAfter [s6Step316EntryFOut,s6Step316EntryGOut,s6Step316EntryFvOut,s6Step316EntryGvOut] :=
  hmrRows_owned_drop s6Step316EntryGvAfter [s6Step316EntryFOut,s6Step316EntryGOut,s6Step316EntryFvOut,s6Step316EntryGvOut] 0 s6Step316EntryBank_outgoingOwned

private theorem s6Step316EntryF_distinct : (s6Step316EntryFRow.sign::s6Step316EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316EntryF_owned : (s6Step316EntryFRow.sign::s6Step316EntryFRow.payload).toFinset⊆s6Step316EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EntryF_reserved : s6Step316EntryFBefore.reserve s6Step316EntryFFresh.toFinset=some s6Step316EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step316EntryFFresh,arenaWires]
  · norm_num [s6Step316EntryFBefore,s6Step316EntryFFresh,arenaWires]
  · simp only [s6Step316EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step316EntryF_checked : planRowResizeLog s6Step316EntryFBefore s6Step316EntryFRow 113 s6Step316EntryFFresh=
    some (s6Step316EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩,growRow 795 s6Step316EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step316EntryFBefore s6Step316EntryFAfter s6Step316EntryFRow 113 s6Step316EntryFFresh
    s6Step316EntryF_distinct s6Step316EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step316EntryF_reserved
  have rowEq : WindowRow.mk (s6Step316EntryFRow.payload++s6Step316EntryFFresh) s6Step316EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step316EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316EntryFvAfter : Arena := s6Step316EntryGAfter

private def s6Step316EntryFvBefore : Arena := s6Step316EntryGAfter

private theorem s6Step316EntryFv_Incoming : rowsOwned s6Step316EntryFvBefore [s6Step316EntryFvRow,s6Step316EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316EntryFRow,s6Step316EntryGRow,s6Step316EntryFvRow,s6Step316EntryGvRow] 2 s6Step316EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316EntryFv_Outgoing : rowsOwned s6Step316EntryGvAfter [s6Step316EntryFvOut,s6Step316EntryGvOut] :=
  hmrRows_owned_drop s6Step316EntryGvAfter [s6Step316EntryFOut,s6Step316EntryGOut,s6Step316EntryFvOut,s6Step316EntryGvOut] 2 s6Step316EntryBank_outgoingOwned

private theorem s6Step316EntryFv_distinct : (s6Step316EntryFvRow.sign::s6Step316EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316EntryFv_owned : (s6Step316EntryFvRow.sign::s6Step316EntryFvRow.payload).toFinset⊆s6Step316EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EntryFv_reserved : s6Step316EntryFvBefore.reserve s6Step316EntryFvFresh.toFinset=some s6Step316EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step316EntryFvFresh,arenaWires]
  · norm_num [s6Step316EntryFvBefore,s6Step316EntryGAfter,s6Step316EntryFvFresh,arenaWires]
  · simp only [s6Step316EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step316EntryFv_checked : planRowResizeLog s6Step316EntryFvBefore s6Step316EntryFvRow 173 s6Step316EntryFvFresh=
    some (s6Step316EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩,growRow 776 s6Step316EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step316EntryFvBefore s6Step316EntryFvAfter s6Step316EntryFvRow 173 s6Step316EntryFvFresh
    s6Step316EntryFv_distinct s6Step316EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step316EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step316EntryFvRow.payload++s6Step316EntryFvFresh) s6Step316EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step316EntryGBefore : Arena := s6Step316EntryFBefore

private theorem s6Step316EntryG_Incoming : rowsOwned s6Step316EntryGBefore [s6Step316EntryGRow,s6Step316EntryFvRow,s6Step316EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316EntryFRow,s6Step316EntryGRow,s6Step316EntryFvRow,s6Step316EntryGvRow] 1 s6Step316EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316EntryG_Outgoing : rowsOwned s6Step316EntryGvAfter [s6Step316EntryGOut,s6Step316EntryFvOut,s6Step316EntryGvOut] :=
  hmrRows_owned_drop s6Step316EntryGvAfter [s6Step316EntryFOut,s6Step316EntryGOut,s6Step316EntryFvOut,s6Step316EntryGvOut] 1 s6Step316EntryBank_outgoingOwned

private theorem s6Step316EntryG_distinct : (s6Step316EntryGRow.sign::s6Step316EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316EntryG_owned : (s6Step316EntryGRow.sign::s6Step316EntryGRow.payload).toFinset⊆s6Step316EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EntryG_reserved : s6Step316EntryGBefore.reserve s6Step316EntryGFresh.toFinset=some s6Step316EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step316EntryGFresh,arenaWires]
  · norm_num [s6Step316EntryGBefore,s6Step316EntryFBefore,s6Step316EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step316EntryGAfter,s6Step316EntryGBefore,s6Step316EntryFBefore,s6Step316EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step316EntryG_checked : planRowResizeLog s6Step316EntryGBefore s6Step316EntryGRow 113 s6Step316EntryGFresh=
    some (s6Step316EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 843],777⟩,growRow 777 s6Step316EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step316EntryGBefore s6Step316EntryGAfter s6Step316EntryGRow 113 s6Step316EntryGFresh
    s6Step316EntryG_distinct s6Step316EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step316EntryG_reserved
  have rowEq : WindowRow.mk (s6Step316EntryGRow.payload++s6Step316EntryGFresh) s6Step316EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 843],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step316EntryGvBefore : Arena := s6Step316EntryGAfter

private theorem s6Step316EntryGv_Incoming : rowsOwned s6Step316EntryGvBefore [s6Step316EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316EntryFRow,s6Step316EntryGRow,s6Step316EntryFvRow,s6Step316EntryGvRow] 3 s6Step316EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316EntryGv_Outgoing : rowsOwned s6Step316EntryGvAfter [s6Step316EntryGvOut] :=
  hmrRows_owned_drop s6Step316EntryGvAfter [s6Step316EntryFOut,s6Step316EntryGOut,s6Step316EntryFvOut,s6Step316EntryGvOut] 3 s6Step316EntryBank_outgoingOwned

private theorem s6Step316EntryGv_distinct : (s6Step316EntryGvRow.sign::s6Step316EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316EntryGv_owned : (s6Step316EntryGvRow.sign::s6Step316EntryGvRow.payload).toFinset⊆s6Step316EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316EntryGv_reserved : s6Step316EntryGvBefore.reserve s6Step316EntryGvFresh.toFinset=some s6Step316EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step316EntryGvFresh,arenaWires]
  · norm_num [s6Step316EntryGvBefore,s6Step316EntryGAfter,s6Step316EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step316EntryGvAfter,s6Step316EntryGvBefore,s6Step316EntryGAfter,s6Step316EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step316EntryGv_checked : planRowResizeLog s6Step316EntryGvBefore s6Step316EntryGvRow 173 s6Step316EntryGvFresh=
    some (s6Step316EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839],775⟩,growRow 775 s6Step316EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step316EntryGvBefore s6Step316EntryGvAfter s6Step316EntryGvRow 173 s6Step316EntryGvFresh
    s6Step316EntryGv_distinct s6Step316EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step316EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step316EntryGvRow.payload++s6Step316EntryGvFresh) s6Step316EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step316EntryBank_rows : planWindowRowsLog s6Step316EntryFBefore [(s6Step316EntryFRow,113),(s6Step316EntryGRow,113),(s6Step316EntryFvRow,173),(s6Step316EntryGvRow,173)] [s6Step316EntryFFresh,s6Step316EntryGFresh,s6Step316EntryFvFresh,s6Step316EntryGvFresh]=
    some (s6Step316EntryGvAfter,[s6Step316EntryFOut,s6Step316EntryGOut,s6Step316EntryFvOut,s6Step316EntryGvOut],(growRow 795 s6Step316EntryFFresh ++ (growRow 777 s6Step316EntryGFresh ++ (growRow 776 s6Step316EntryFvFresh ++ (growRow 775 s6Step316EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step316EntryGvAfter [] []=some (s6Step316EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step316EntryGvBefore s6Step316EntryGvAfter s6Step316EntryGvAfter
    s6Step316EntryGvRow s6Step316EntryGvOut 173 s6Step316EntryGvFresh [] [] []
    (growRow 775 s6Step316EntryGvFresh) ([]) s6Step316EntryGv_Incoming s6Step316EntryGv_checked h4 s6Step316EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step316EntryFvBefore s6Step316EntryFvAfter s6Step316EntryGvAfter
    s6Step316EntryFvRow s6Step316EntryFvOut 173 s6Step316EntryFvFresh [(s6Step316EntryGvRow,173)] [s6Step316EntryGvFresh] [s6Step316EntryGvOut]
    (growRow 776 s6Step316EntryFvFresh) ((growRow 775 s6Step316EntryGvFresh ++ [])) s6Step316EntryFv_Incoming s6Step316EntryFv_checked h3 s6Step316EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step316EntryGBefore s6Step316EntryGAfter s6Step316EntryGvAfter
    s6Step316EntryGRow s6Step316EntryGOut 113 s6Step316EntryGFresh [(s6Step316EntryFvRow,173),(s6Step316EntryGvRow,173)] [s6Step316EntryFvFresh,s6Step316EntryGvFresh] [s6Step316EntryFvOut,s6Step316EntryGvOut]
    (growRow 777 s6Step316EntryGFresh) ((growRow 776 s6Step316EntryFvFresh ++ (growRow 775 s6Step316EntryGvFresh ++ []))) s6Step316EntryG_Incoming s6Step316EntryG_checked h2 s6Step316EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step316EntryFBefore s6Step316EntryFAfter s6Step316EntryGvAfter
    s6Step316EntryFRow s6Step316EntryFOut 113 s6Step316EntryFFresh [(s6Step316EntryGRow,113),(s6Step316EntryFvRow,173),(s6Step316EntryGvRow,173)] [s6Step316EntryGFresh,s6Step316EntryFvFresh,s6Step316EntryGvFresh] [s6Step316EntryGOut,s6Step316EntryFvOut,s6Step316EntryGvOut]
    (growRow 795 s6Step316EntryFFresh) ((growRow 777 s6Step316EntryGFresh ++ (growRow 776 s6Step316EntryFvFresh ++ (growRow 775 s6Step316EntryGvFresh ++ [])))) s6Step316EntryF_Incoming s6Step316EntryF_checked h1 s6Step316EntryF_Outgoing
  exact h0

private theorem s6Step316EntryBank_checked : compileHmrBankResizeLog .entry s6Step316EntryFBefore ⟨s6Step316EntryFRow,s6Step316EntryGRow,s6Step316EntryFvRow,s6Step316EntryGvRow⟩ ⟨113,113,173,173⟩ [s6Step316EntryFFresh,s6Step316EntryGFresh,s6Step316EntryFvFresh,s6Step316EntryGvFresh]=
    some (s6Step316EntryGvAfter,⟨s6Step316EntryFOut,s6Step316EntryGOut,s6Step316EntryFvOut,s6Step316EntryGvOut⟩,(growRow 795 s6Step316EntryFFresh ++ (growRow 777 s6Step316EntryGFresh ++ (growRow 776 s6Step316EntryFvFresh ++ (growRow 775 s6Step316EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step316EntryBank_rows]
  rfl

private def s6Step316ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<368) ∨ (369≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316ExitFBefore : Arena := s6Step316ExitGAfter

private def s6Step316ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 841],795⟩

private def s6Step316ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814],776⟩

private def s6Step316ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 843, 850],777⟩

private def s6Step316ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 793],775⟩

private theorem s6Step316ExitBank_incomingDistinct : ([s6Step316ExitGRow,s6Step316ExitFRow,s6Step316ExitFvRow,s6Step316ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316ExitF_Incoming : rowsOwned s6Step316ExitFBefore [s6Step316ExitFRow,s6Step316ExitFvRow,s6Step316ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316ExitGRow,s6Step316ExitFRow,s6Step316ExitFvRow,s6Step316ExitGvRow] 1 s6Step316ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316ExitBank_outgoingOwned : rowsOwned s6Step316ExitGvAfter [s6Step316ExitGOut,s6Step316ExitFOut,s6Step316ExitFvOut,s6Step316ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step316ExitGvAfter (fun q => (0≤q ∧ q<368) ∨ (369≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316ExitF_Outgoing : rowsOwned s6Step316ExitGvAfter [s6Step316ExitFOut,s6Step316ExitFvOut,s6Step316ExitGvOut] :=
  hmrRows_owned_drop s6Step316ExitGvAfter [s6Step316ExitGOut,s6Step316ExitFOut,s6Step316ExitFvOut,s6Step316ExitGvOut] 1 s6Step316ExitBank_outgoingOwned

private theorem s6Step316ExitF_distinct : (s6Step316ExitFRow.sign::s6Step316ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316ExitF_owned : (s6Step316ExitFRow.sign::s6Step316ExitFRow.payload).toFinset⊆s6Step316ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316ExitF_retired : s6Step316ExitFBefore.retireSet s6Step316ExitFExtra.toFinset=s6Step316ExitFAfter := by
  unfold Arena.retireSet s6Step316ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step316ExitFBefore,s6Step316ExitGAfter,s6Step316ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step316ExitF_checked : planRowResizeLog s6Step316ExitFBefore s6Step316ExitFRow 112 []=
    some (s6Step316ExitFAfter,s6Step316ExitFOut,shrinkRow 795 s6Step316ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step316ExitFBefore s6Step316ExitFRow 112 s6Step316ExitF_distinct s6Step316ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step316ExitFRow.payload.take 112) s6Step316ExitFRow.sign=s6Step316ExitFOut := by decide +kernel
  have hi : s6Step316ExitFRow.payload.drop 112=s6Step316ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step316ExitF_retired] at result
  exact result

private def s6Step316ExitFvAfter : Arena := s6Step316ExitFAfter

private def s6Step316ExitFvBefore : Arena := s6Step316ExitFAfter

private theorem s6Step316ExitFv_Incoming : rowsOwned s6Step316ExitFvBefore [s6Step316ExitFvRow,s6Step316ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316ExitGRow,s6Step316ExitFRow,s6Step316ExitFvRow,s6Step316ExitGvRow] 2 s6Step316ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316ExitFvBefore (fun q => (0≤q ∧ q<368) ∨ (369≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316ExitFv_Outgoing : rowsOwned s6Step316ExitGvAfter [s6Step316ExitFvOut,s6Step316ExitGvOut] :=
  hmrRows_owned_drop s6Step316ExitGvAfter [s6Step316ExitGOut,s6Step316ExitFOut,s6Step316ExitFvOut,s6Step316ExitGvOut] 2 s6Step316ExitBank_outgoingOwned

private theorem s6Step316ExitFv_distinct : (s6Step316ExitFvRow.sign::s6Step316ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316ExitFv_owned : (s6Step316ExitFvRow.sign::s6Step316ExitFvRow.payload).toFinset⊆s6Step316ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316ExitFvBefore (fun q => (0≤q ∧ q<368) ∨ (369≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316ExitFv_reserved : s6Step316ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step316ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step316ExitFv_checked : planRowResizeLog s6Step316ExitFvBefore s6Step316ExitFvRow 174 []=
    some (s6Step316ExitFvAfter,s6Step316ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step316ExitFvBefore s6Step316ExitFvAfter s6Step316ExitFvRow 174 []
    s6Step316ExitFv_distinct s6Step316ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step316ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step316ExitFvRow.payload++[]) s6Step316ExitFvRow.sign=s6Step316ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step316ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step316ExitG_Incoming : rowsOwned s6Step316ExitGBefore [s6Step316ExitGRow,s6Step316ExitFRow,s6Step316ExitFvRow,s6Step316ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316ExitGRow,s6Step316ExitFRow,s6Step316ExitFvRow,s6Step316ExitGvRow] 0 s6Step316ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316ExitG_Outgoing : rowsOwned s6Step316ExitGvAfter [s6Step316ExitGOut,s6Step316ExitFOut,s6Step316ExitFvOut,s6Step316ExitGvOut] :=
  hmrRows_owned_drop s6Step316ExitGvAfter [s6Step316ExitGOut,s6Step316ExitFOut,s6Step316ExitFvOut,s6Step316ExitGvOut] 0 s6Step316ExitBank_outgoingOwned

private theorem s6Step316ExitG_distinct : (s6Step316ExitGRow.sign::s6Step316ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316ExitG_owned : (s6Step316ExitGRow.sign::s6Step316ExitGRow.payload).toFinset⊆s6Step316ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316ExitG_retired : s6Step316ExitGBefore.retireSet s6Step316ExitGExtra.toFinset=s6Step316ExitGAfter := by
  unfold Arena.retireSet s6Step316ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step316ExitGBefore,s6Step316ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step316ExitG_checked : planRowResizeLog s6Step316ExitGBefore s6Step316ExitGRow 112 []=
    some (s6Step316ExitGAfter,s6Step316ExitGOut,shrinkRow 777 s6Step316ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step316ExitGBefore s6Step316ExitGRow 112 s6Step316ExitG_distinct s6Step316ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step316ExitGRow.payload.take 112) s6Step316ExitGRow.sign=s6Step316ExitGOut := by decide +kernel
  have hi : s6Step316ExitGRow.payload.drop 112=s6Step316ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step316ExitG_retired] at result
  exact result

private def s6Step316ExitGvBefore : Arena := s6Step316ExitFAfter

private theorem s6Step316ExitGv_Incoming : rowsOwned s6Step316ExitGvBefore [s6Step316ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316ExitGRow,s6Step316ExitFRow,s6Step316ExitFvRow,s6Step316ExitGvRow] 3 s6Step316ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316ExitGvBefore (fun q => (0≤q ∧ q<368) ∨ (369≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316ExitGv_Outgoing : rowsOwned s6Step316ExitGvAfter [s6Step316ExitGvOut] :=
  hmrRows_owned_drop s6Step316ExitGvAfter [s6Step316ExitGOut,s6Step316ExitFOut,s6Step316ExitFvOut,s6Step316ExitGvOut] 3 s6Step316ExitBank_outgoingOwned

private theorem s6Step316ExitGv_distinct : (s6Step316ExitGvRow.sign::s6Step316ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316ExitGv_owned : (s6Step316ExitGvRow.sign::s6Step316ExitGvRow.payload).toFinset⊆s6Step316ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316ExitGvBefore (fun q => (0≤q ∧ q<368) ∨ (369≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316ExitGv_retired : s6Step316ExitGvBefore.retireSet s6Step316ExitGvExtra.toFinset=s6Step316ExitGvAfter := by
  unfold Arena.retireSet s6Step316ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step316ExitGvBefore,s6Step316ExitFAfter,s6Step316ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step316ExitGv_checked : planRowResizeLog s6Step316ExitGvBefore s6Step316ExitGvRow 173 []=
    some (s6Step316ExitGvAfter,s6Step316ExitGvOut,shrinkRow 775 s6Step316ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step316ExitGvBefore s6Step316ExitGvRow 173 s6Step316ExitGv_distinct s6Step316ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step316ExitGvRow.payload.take 173) s6Step316ExitGvRow.sign=s6Step316ExitGvOut := by decide +kernel
  have hi : s6Step316ExitGvRow.payload.drop 173=s6Step316ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step316ExitGv_retired] at result
  exact result

private theorem s6Step316ExitBank_rows : planWindowRowsLog s6Step316ExitGBefore [(s6Step316ExitGRow,112),(s6Step316ExitFRow,112),(s6Step316ExitFvRow,174),(s6Step316ExitGvRow,173)] [[],[],[],[]]=
    some (s6Step316ExitGvAfter,[s6Step316ExitGOut,s6Step316ExitFOut,s6Step316ExitFvOut,s6Step316ExitGvOut],(shrinkRow 777 s6Step316ExitGExtra ++ (shrinkRow 795 s6Step316ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step316ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step316ExitGvAfter [] []=some (s6Step316ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step316ExitGvBefore s6Step316ExitGvAfter s6Step316ExitGvAfter
    s6Step316ExitGvRow s6Step316ExitGvOut 173 [] [] [] []
    (shrinkRow 775 s6Step316ExitGvExtra) ([]) s6Step316ExitGv_Incoming s6Step316ExitGv_checked h4 s6Step316ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step316ExitFvBefore s6Step316ExitFvAfter s6Step316ExitGvAfter
    s6Step316ExitFvRow s6Step316ExitFvOut 174 [] [(s6Step316ExitGvRow,173)] [[]] [s6Step316ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step316ExitGvExtra ++ [])) s6Step316ExitFv_Incoming s6Step316ExitFv_checked h3 s6Step316ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step316ExitFBefore s6Step316ExitFAfter s6Step316ExitGvAfter
    s6Step316ExitFRow s6Step316ExitFOut 112 [] [(s6Step316ExitFvRow,174),(s6Step316ExitGvRow,173)] [[],[]] [s6Step316ExitFvOut,s6Step316ExitGvOut]
    (shrinkRow 795 s6Step316ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step316ExitGvExtra ++ []))) s6Step316ExitF_Incoming s6Step316ExitF_checked h2 s6Step316ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step316ExitGBefore s6Step316ExitGAfter s6Step316ExitGvAfter
    s6Step316ExitGRow s6Step316ExitGOut 112 [] [(s6Step316ExitFRow,112),(s6Step316ExitFvRow,174),(s6Step316ExitGvRow,173)] [[],[],[]] [s6Step316ExitFOut,s6Step316ExitFvOut,s6Step316ExitGvOut]
    (shrinkRow 777 s6Step316ExitGExtra) ((shrinkRow 795 s6Step316ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step316ExitGvExtra ++ [])))) s6Step316ExitG_Incoming s6Step316ExitG_checked h1 s6Step316ExitG_Outgoing
  exact h0

private theorem s6Step316ExitBank_checked : compileHmrBankResizeLog .exit s6Step316ExitGBefore ⟨s6Step316ExitFRow,s6Step316ExitGRow,s6Step316ExitFvRow,s6Step316ExitGvRow⟩ ⟨112,112,174,173⟩ [[],[],[],[]]=
    some (s6Step316ExitGvAfter,⟨s6Step316ExitFOut,s6Step316ExitGOut,s6Step316ExitFvOut,s6Step316ExitGvOut⟩,(shrinkRow 777 s6Step316ExitGExtra ++ (shrinkRow 795 s6Step316ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step316ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step316ExitBank_rows]
  rfl

private theorem s6Step316Add0_apart : Disjoint s6Step316Add0Arena.live s6Step316Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step316Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316Add0_card : s6Step316Add0Arena.live.card=902 := by
  decide +kernel

private theorem s6Step316Add0_borrowed : s6Step316Add0Arena.checkBorrow (hmrHybridCount s6Step316Add0Arena s6Step316Add0B.length) s6Step316Add0Work=some s6Step316Add0During := by
  have len : s6Step316Add0Work.length=hmrHybridCount s6Step316Add0Arena s6Step316Add0B.length := by
    rw [hmrHybridCount,s6Step316Add0_card]
    decide +kernel
  have nd : s6Step316Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step316Add0Arena s6Step316Add0During s6Step316Add0Work.toFinset s6Step316Add0_bounded s6Step316Add0_apart rfl

private theorem s6Step316Add0_distinct : (865::786::803::(s6Step316Add0A++s6Step316Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316Add0_owned : (865::786::803::(s6Step316Add0A++s6Step316Add0B)).toFinset⊆s6Step316Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step316Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316Add0_checked : compileHmrHybridCinLog s6Step316Add0Arena 786 865 803 s6Step316Add0A s6Step316Add0B s6Step316Add0Work=some s6Step316Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step316Add0Arena s6Step316Add0During 786 865 803 s6Step316Add0A s6Step316Add0B s6Step316Add0Work
    (by decide +kernel) (by decide +kernel) s6Step316Add0_distinct
    (fun q hq => s6Step316Add0_owned (List.mem_toFinset.mpr hq)) s6Step316Add0_borrowed

private theorem s6Step316Add1_apart : Disjoint s6Step316Add1Arena.live s6Step316Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step316Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316Add1_card : s6Step316Add1Arena.live.card=902 := by
  decide +kernel

private theorem s6Step316Add1_borrowed : s6Step316Add1Arena.checkBorrow (hmrHybridCount s6Step316Add1Arena s6Step316Add1B.length) s6Step316Add1Work=some s6Step316Add1During := by
  have len : s6Step316Add1Work.length=hmrHybridCount s6Step316Add1Arena s6Step316Add1B.length := by
    rw [hmrHybridCount,s6Step316Add1_card]
    decide +kernel
  have nd : s6Step316Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step316Add1Arena s6Step316Add1During s6Step316Add1Work.toFinset s6Step316Add1_bounded s6Step316Add1_apart rfl

private theorem s6Step316Add1_distinct : (865::786::803::(s6Step316Add1A++s6Step316Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316Add1_owned : (865::786::803::(s6Step316Add1A++s6Step316Add1B)).toFinset⊆s6Step316Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step316Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316Add1_checked : compileHmrHybridCinLog s6Step316Add1Arena 786 865 803 s6Step316Add1A s6Step316Add1B s6Step316Add1Work=some s6Step316Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step316Add1Arena s6Step316Add1During 786 865 803 s6Step316Add1A s6Step316Add1B s6Step316Add1Work
    (by decide +kernel) (by decide +kernel) s6Step316Add1_distinct
    (fun q hq => s6Step316Add1_owned (List.mem_toFinset.mpr hq)) s6Step316Add1_borrowed

private theorem s6Step316F4_apart : Disjoint (s6Step316Add0A++s6Step316Add0B).toFinset (s6Step316Add1A++s6Step316Add1B).toFinset := by
  have nd : ((s6Step316Add0A++s6Step316Add0B)++(s6Step316Add1A++s6Step316Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step316F4_carry : s6Step316F4FlagArena.checkBorrow 1 [803]=some s6Step316Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step316F4FlagArena,s6Step316HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step316F4FlagArena,s6Step316HeadFvAfter,s6Step316Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step316F4_distinct : (864::786::865::803::((s6Step316Add0A++s6Step316Add1A)++(s6Step316Add0B++s6Step316Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316F4_flag : s6Step316HeadFvAfter.checkBorrow 1 [865]=some s6Step316F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step316HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step316F4_owned : (864::786::((s6Step316Add0A++s6Step316Add1A)++(s6Step316Add0B++s6Step316Add1B))).toFinset⊆s6Step316HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step316HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316F4_checked : compileHmrHybridF4Log s6Step316HeadFvAfter 864 786 s6Step316Add0A s6Step316Add0B s6Step316Add1A s6Step316Add1B [865] [803] s6Step316Add0Work s6Step316Add1Work=some s6Step316F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step316HeadFvAfter s6Step316F4FlagArena s6Step316Add0Arena s6Step316Add0During s6Step316Add1During 864 786
    s6Step316Add0A s6Step316Add0B s6Step316Add1A s6Step316Add1B [865] [803] s6Step316Add0Work s6Step316Add1Work
    (fun q hq => s6Step316F4_owned (List.mem_toFinset.mpr hq)) s6Step316F4_flag s6Step316F4_carry
    s6Step316F4_distinct s6Step316F4_apart s6Step316Add0_checked s6Step316Add1_checked

private theorem s6Step316Front_branch : s6Step316FrontSigmaArena.checkBorrow 1 [786]=some s6Step316HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step316FrontSigmaArena,s6Step316EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step316FrontSigmaArena,s6Step316EntryGvAfter,s6Step316HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step316Front_entry : HmrFrontEntryValid s6Step316EntryFBefore s6Step316FrontBank 113 173 ⟨112,112,174,173⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step316FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step316EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step316EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step316FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step316Front_sigma : s6Step316EntryGvAfter.checkBorrow 1 [864]=some s6Step316FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step316EntryGvAfter,arenaWires]
  · rfl

private def s6Step316HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316HeadFBefore : Arena := s6Step316HeadGAfter

private def s6Step316HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩

private def s6Step316HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩

private def s6Step316HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 843],777⟩

private def s6Step316HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839],775⟩

private theorem s6Step316HeadBank_incomingDistinct : ([s6Step316HeadGRow,s6Step316HeadFRow,s6Step316HeadGvRow,s6Step316HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316HeadF_Incoming : rowsOwned s6Step316HeadFBefore [s6Step316HeadFRow,s6Step316HeadGvRow,s6Step316HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316HeadGRow,s6Step316HeadFRow,s6Step316HeadGvRow,s6Step316HeadFvRow] 1 s6Step316HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316HeadBank_outgoingOwned : rowsOwned s6Step316HeadFvAfter [s6Step316HeadGOut,s6Step316HeadFOut,s6Step316HeadGvOut,s6Step316HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step316HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316HeadF_Outgoing : rowsOwned s6Step316HeadFvAfter [s6Step316HeadFOut,s6Step316HeadGvOut,s6Step316HeadFvOut] :=
  hmrRows_owned_drop s6Step316HeadFvAfter [s6Step316HeadGOut,s6Step316HeadFOut,s6Step316HeadGvOut,s6Step316HeadFvOut] 1 s6Step316HeadBank_outgoingOwned

private theorem s6Step316HeadF_distinct : (s6Step316HeadFRow.sign::s6Step316HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316HeadF_owned : (s6Step316HeadFRow.sign::s6Step316HeadFRow.payload).toFinset⊆s6Step316HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316HeadF_reserved : s6Step316HeadFBefore.reserve s6Step316HeadFFresh.toFinset=some s6Step316HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step316HeadFFresh,arenaWires]
  · norm_num [s6Step316HeadFBefore,s6Step316HeadGAfter,s6Step316HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step316HeadFAfter,s6Step316HeadFBefore,s6Step316HeadGAfter,s6Step316HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step316HeadF_checked : planRowResizeLog s6Step316HeadFBefore s6Step316HeadFRow 114 s6Step316HeadFFresh=
    some (s6Step316HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 841],795⟩,growRow 795 s6Step316HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step316HeadFBefore s6Step316HeadFAfter s6Step316HeadFRow 114 s6Step316HeadFFresh
    s6Step316HeadF_distinct s6Step316HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step316HeadF_reserved
  have rowEq : WindowRow.mk (s6Step316HeadFRow.payload++s6Step316HeadFFresh) s6Step316HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 841],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step316HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step316HeadFvBefore : Arena := s6Step316HeadGvAfter

private theorem s6Step316HeadFv_Incoming : rowsOwned s6Step316HeadFvBefore [s6Step316HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316HeadGRow,s6Step316HeadFRow,s6Step316HeadGvRow,s6Step316HeadFvRow] 3 s6Step316HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316HeadFv_Outgoing : rowsOwned s6Step316HeadFvAfter [s6Step316HeadFvOut] :=
  hmrRows_owned_drop s6Step316HeadFvAfter [s6Step316HeadGOut,s6Step316HeadFOut,s6Step316HeadGvOut,s6Step316HeadFvOut] 3 s6Step316HeadBank_outgoingOwned

private theorem s6Step316HeadFv_distinct : (s6Step316HeadFvRow.sign::s6Step316HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316HeadFv_owned : (s6Step316HeadFvRow.sign::s6Step316HeadFvRow.payload).toFinset⊆s6Step316HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316HeadFv_reserved : s6Step316HeadFvBefore.reserve s6Step316HeadFvFresh.toFinset=some s6Step316HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step316HeadFvFresh,arenaWires]
  · norm_num [s6Step316HeadFvBefore,s6Step316HeadGvAfter,s6Step316HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step316HeadFvAfter,s6Step316HeadFvBefore,s6Step316HeadGvAfter,s6Step316HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step316HeadFv_checked : planRowResizeLog s6Step316HeadFvBefore s6Step316HeadFvRow 174 s6Step316HeadFvFresh=
    some (s6Step316HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814],776⟩,growRow 776 s6Step316HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step316HeadFvBefore s6Step316HeadFvAfter s6Step316HeadFvRow 174 s6Step316HeadFvFresh
    s6Step316HeadFv_distinct s6Step316HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step316HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step316HeadFvRow.payload++s6Step316HeadFvFresh) s6Step316HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 814],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step316HeadG_Incoming : rowsOwned s6Step316HeadGBefore [s6Step316HeadGRow,s6Step316HeadFRow,s6Step316HeadGvRow,s6Step316HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316HeadGRow,s6Step316HeadFRow,s6Step316HeadGvRow,s6Step316HeadFvRow] 0 s6Step316HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316HeadG_Outgoing : rowsOwned s6Step316HeadFvAfter [s6Step316HeadGOut,s6Step316HeadFOut,s6Step316HeadGvOut,s6Step316HeadFvOut] :=
  hmrRows_owned_drop s6Step316HeadFvAfter [s6Step316HeadGOut,s6Step316HeadFOut,s6Step316HeadGvOut,s6Step316HeadFvOut] 0 s6Step316HeadBank_outgoingOwned

private theorem s6Step316HeadG_distinct : (s6Step316HeadGRow.sign::s6Step316HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316HeadG_owned : (s6Step316HeadGRow.sign::s6Step316HeadGRow.payload).toFinset⊆s6Step316HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316HeadG_reserved : s6Step316HeadGBefore.reserve s6Step316HeadGFresh.toFinset=some s6Step316HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step316HeadGFresh,arenaWires]
  · norm_num [s6Step316HeadGBefore,s6Step316HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step316HeadGAfter,s6Step316HeadGBefore,s6Step316HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step316HeadG_checked : planRowResizeLog s6Step316HeadGBefore s6Step316HeadGRow 114 s6Step316HeadGFresh=
    some (s6Step316HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 843, 850],777⟩,growRow 777 s6Step316HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step316HeadGBefore s6Step316HeadGAfter s6Step316HeadGRow 114 s6Step316HeadGFresh
    s6Step316HeadG_distinct s6Step316HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step316HeadG_reserved
  have rowEq : WindowRow.mk (s6Step316HeadGRow.payload++s6Step316HeadGFresh) s6Step316HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 843, 850],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step316HeadGvBefore : Arena := s6Step316HeadFAfter

private theorem s6Step316HeadGv_Incoming : rowsOwned s6Step316HeadGvBefore [s6Step316HeadGvRow,s6Step316HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step316HeadGRow,s6Step316HeadFRow,s6Step316HeadGvRow,s6Step316HeadFvRow] 2 s6Step316HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step316HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step316HeadGv_Outgoing : rowsOwned s6Step316HeadFvAfter [s6Step316HeadGvOut,s6Step316HeadFvOut] :=
  hmrRows_owned_drop s6Step316HeadFvAfter [s6Step316HeadGOut,s6Step316HeadFOut,s6Step316HeadGvOut,s6Step316HeadFvOut] 2 s6Step316HeadBank_outgoingOwned

private theorem s6Step316HeadGv_distinct : (s6Step316HeadGvRow.sign::s6Step316HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step316HeadGv_owned : (s6Step316HeadGvRow.sign::s6Step316HeadGvRow.payload).toFinset⊆s6Step316HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step316HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step316HeadGv_reserved : s6Step316HeadGvBefore.reserve s6Step316HeadGvFresh.toFinset=some s6Step316HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step316HeadGvFresh,arenaWires]
  · norm_num [s6Step316HeadGvBefore,s6Step316HeadFAfter,s6Step316HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step316HeadGvAfter,s6Step316HeadGvBefore,s6Step316HeadFAfter,s6Step316HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step316HeadGv_checked : planRowResizeLog s6Step316HeadGvBefore s6Step316HeadGvRow 174 s6Step316HeadGvFresh=
    some (s6Step316HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 793],775⟩,growRow 775 s6Step316HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step316HeadGvBefore s6Step316HeadGvAfter s6Step316HeadGvRow 174 s6Step316HeadGvFresh
    s6Step316HeadGv_distinct s6Step316HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step316HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step316HeadGvRow.payload++s6Step316HeadGvFresh) s6Step316HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 839, 793],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step316HeadBank_rows : planWindowRowsLog s6Step316HeadGBefore [(s6Step316HeadGRow,114),(s6Step316HeadFRow,114),(s6Step316HeadGvRow,174),(s6Step316HeadFvRow,174)] [s6Step316HeadGFresh,s6Step316HeadFFresh,s6Step316HeadGvFresh,s6Step316HeadFvFresh]=
    some (s6Step316HeadFvAfter,[s6Step316HeadGOut,s6Step316HeadFOut,s6Step316HeadGvOut,s6Step316HeadFvOut],(growRow 777 s6Step316HeadGFresh ++ (growRow 795 s6Step316HeadFFresh ++ (growRow 775 s6Step316HeadGvFresh ++ (growRow 776 s6Step316HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step316HeadFvAfter [] []=some (s6Step316HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step316HeadFvBefore s6Step316HeadFvAfter s6Step316HeadFvAfter
    s6Step316HeadFvRow s6Step316HeadFvOut 174 s6Step316HeadFvFresh [] [] []
    (growRow 776 s6Step316HeadFvFresh) ([]) s6Step316HeadFv_Incoming s6Step316HeadFv_checked h4 s6Step316HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step316HeadGvBefore s6Step316HeadGvAfter s6Step316HeadFvAfter
    s6Step316HeadGvRow s6Step316HeadGvOut 174 s6Step316HeadGvFresh [(s6Step316HeadFvRow,174)] [s6Step316HeadFvFresh] [s6Step316HeadFvOut]
    (growRow 775 s6Step316HeadGvFresh) ((growRow 776 s6Step316HeadFvFresh ++ [])) s6Step316HeadGv_Incoming s6Step316HeadGv_checked h3 s6Step316HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step316HeadFBefore s6Step316HeadFAfter s6Step316HeadFvAfter
    s6Step316HeadFRow s6Step316HeadFOut 114 s6Step316HeadFFresh [(s6Step316HeadGvRow,174),(s6Step316HeadFvRow,174)] [s6Step316HeadGvFresh,s6Step316HeadFvFresh] [s6Step316HeadGvOut,s6Step316HeadFvOut]
    (growRow 795 s6Step316HeadFFresh) ((growRow 775 s6Step316HeadGvFresh ++ (growRow 776 s6Step316HeadFvFresh ++ []))) s6Step316HeadF_Incoming s6Step316HeadF_checked h2 s6Step316HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step316HeadGBefore s6Step316HeadGAfter s6Step316HeadFvAfter
    s6Step316HeadGRow s6Step316HeadGOut 114 s6Step316HeadGFresh [(s6Step316HeadFRow,114),(s6Step316HeadGvRow,174),(s6Step316HeadFvRow,174)] [s6Step316HeadFFresh,s6Step316HeadGvFresh,s6Step316HeadFvFresh] [s6Step316HeadFOut,s6Step316HeadGvOut,s6Step316HeadFvOut]
    (growRow 777 s6Step316HeadGFresh) ((growRow 795 s6Step316HeadFFresh ++ (growRow 775 s6Step316HeadGvFresh ++ (growRow 776 s6Step316HeadFvFresh ++ [])))) s6Step316HeadG_Incoming s6Step316HeadG_checked h1 s6Step316HeadG_Outgoing
  exact h0

private theorem s6Step316HeadBank_checked : compileHmrBankResizeLog .headroom s6Step316HeadGBefore ⟨s6Step316HeadFRow,s6Step316HeadGRow,s6Step316HeadFvRow,s6Step316HeadGvRow⟩ ⟨114,114,174,174⟩ [s6Step316HeadGFresh,s6Step316HeadFFresh,s6Step316HeadGvFresh,s6Step316HeadFvFresh]=
    some (s6Step316HeadFvAfter,⟨s6Step316HeadFOut,s6Step316HeadGOut,s6Step316HeadFvOut,s6Step316HeadGvOut⟩,(growRow 777 s6Step316HeadGFresh ++ (growRow 795 s6Step316HeadFFresh ++ (growRow 775 s6Step316HeadGvFresh ++ (growRow 776 s6Step316HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step316HeadBank_rows]
  rfl

private theorem s6Step316Front_checked : compileHmrSourceFrontLog s6Step316EntryFBefore s6Step316FrontBank 113 173 ⟨112,112,174,173⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step316FrontLog=some s6Step316FrontPlan := by
  have pairEq : s6Step316FrontPair=⟨s6Step316HeadFRow,s6Step316HeadGRow,s6Step316HeadFvRow,s6Step316HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step316FrontHead=⟨s6Step316ExitFRow,s6Step316ExitGRow,s6Step316ExitFvRow,s6Step316ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step316Add0A=s6Step316FrontHead.f.wires := by decide +kernel
  have gEq : s6Step316Add0B=s6Step316FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step316Add1A=s6Step316FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step316Add1B=s6Step316FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step316EntryFBefore s6Step316FrontBank 113 173 ⟨112,112,174,173⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step316FrontLog s6Step316FrontPlan
  · exact s6Step316Front_entry
  · exact s6Step316EntryBank_checked
  · exact s6Step316Front_sigma
  · rfl
  · exact s6Step316Front_branch
  · rfl
  · simpa only [s6Step316FrontPlan,pairEq] using s6Step316HeadBank_checked
  · simpa only [s6Step316FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step316F4_checked
  · exact s6Step316Counter_checked
  · rfl
  · simpa only [s6Step316FrontPlan,headEq] using s6Step316ExitBank_checked

private theorem s6Step316Complete_explicit_checked : compileHmrEarlyStepLog s6Step316EntryFBefore s6Step316FrontBank 113 173 ⟨112,112,174,173⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step316CompleteLog=some s6Step316CompletePlan := by
  let Q := s6Step316EarlyControlPlan
  have hq := s6Step316EarlyControl_plan_checked
  have fv1 : s6Step316CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step316CompleteOut.fv.payload[2]?.getD s6Step316CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step316CompleteOut.fv.payload[3]?.getD s6Step316CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step316CompleteOut.fv.payload[4]?.getD s6Step316CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step316EntryFBefore s6Step316EarlyControlArena s6Step316FrontBank 113 173 ⟨112,112,174,173⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step316CompleteLog s6Step316FrontPlan Q
    s6Step316Front_checked s6Step316Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step316Complete_owned s6Step316Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step316EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 864 s6Step316CompleteOut.fv.second (s6Step316CompleteOut.fv.payload[2]?.getD s6Step316CompleteOut.fv.sign) (s6Step316CompleteOut.fv.payload[3]?.getD s6Step316CompleteOut.fv.sign) (s6Step316CompleteOut.fv.payload[4]?.getD s6Step316CompleteOut.fv.sign) 786 56 s6Step316EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep316Arena : Arena := s6Step316EntryFBefore
def s6PrivateStep316Bank : WindowBank := s6Step316FrontBank
def s6PrivateStep316Spec : HmrSourceWalkStepLog := ⟨113,173,⟨112,112,174,173⟩,56,.early s6Step316CompleteLog⟩
def s6PrivateStep316Plan : HmrSourceStepPlan := .early s6Step316CompletePlan
theorem s6PrivateStep316_source : s6PrivateStep316Spec=s6ObservedLogs304[12] := rfl
theorem s6PrivateStep316_checked : compileHmrSourceStepLog s6PrivateStep316Arena s6PrivateStep316Bank
    s6PrivateStep316Spec.fgWidth s6PrivateStep316Spec.vWidth s6PrivateStep316Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]
    6 498 316 s6PrivateStep316Spec.need none s6PrivateStep316Spec.log=some s6PrivateStep316Plan := by
  change compileHmrSourceStepLog s6Step316EntryFBefore s6Step316FrontBank 113 173 ⟨112,112,174,173⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 6 498 316 56 none (.early s6Step316CompleteLog)=some (.early s6Step316CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 316<498)]
  rw [s6Step316Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
