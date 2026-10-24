import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep311
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

private def s6Step313CompleteMoves : List (Wire × Wire) := [(786,113)]

private def s6Step313EarlyControlLog : HmrEarlyControlLog := ⟨[786, 841, 793, 814, 818],[865],[803],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step313FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [863]],[[818], [814], [841], [793]],[[], [], [], []]⟩,[839],[850],[865],[803],[830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 803, 830, 805]⟩

private def s6Step313CompleteLog : HmrEarlyStepLog := ⟨s6Step313FrontLog,s6Step313CompleteMoves,s6Step313EarlyControlLog⟩

private def s6Step313ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369],795⟩

private def s6Step313ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857],776⟩

private def s6Step313ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112],777⟩

private def s6Step313ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩

private def s6Step313FrontOut : WindowBank := ⟨s6Step313ExitFOut,s6Step313ExitGOut,s6Step313ExitFvOut,s6Step313ExitGvOut⟩

private def s6Step313CompleteOut : WindowBank := s6Step313FrontOut.repacked s6Step313CompleteMoves

private def s6Step313EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step313EarlyControlPositiveArena,[865],s6Step313EarlyControlEqualityArena,[803],⟨⟨839,false⟩,[⟨⟨865,false⟩,803⟩]⟩⟩

private def s6Step313EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨772,false⟩,841⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,814⟩,⟨⟨769,false⟩,818⟩]⟩

private def s6Step313EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step313EarlyControlZeroArena,s6Step313EarlyControlZeroPlan,s6Step313EarlyControlClassPlan,s6Step313EarlyControlFlagArena,s6Step313EarlyControlFittedArena,s6Step313EarlyControlHistoryArena,s6Step313EarlyControlSigmaArena,s6Step313EarlyControlOutputArena,s6Step313EarlyControlLog⟩

private def s6Step313CounterWork : List Wire := [865, 803, 830, 805]

private theorem s6Step313Counter_bounded : s6Step313CounterWork.toFinset⊆arenaWires := by norm_num [s6Step313CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step313HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313CounterDuring : Arena := ⟨s6Step313HeadFvAfter.live∪s6Step313CounterWork.toFinset,Finset.union_subset s6Step313HeadFvAfter.bounded s6Step313Counter_bounded⟩

private def s6Step313EntryFFresh : List Wire := []

private def s6Step313EntryFvFresh : List Wire := []

private def s6Step313EntryGFresh : List Wire := []

private def s6Step313EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313EntryGvFresh : List Wire := [863]

private def s6Step313ExitFExtra : List Wire := [814]

private def s6Step313ExitFvExtra : List Wire := [793]

private def s6Step313ExitGExtra : List Wire := [113, 818]

private def s6Step313ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313ExitGvExtra : List Wire := [841]

private def s6Step313Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step313Add0_bounded : s6Step313Add0Work.toFinset⊆arenaWires := by
  have h : s6Step313Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step313Add0During : Arena := ⟨s6Step313Add0Arena.live∪s6Step313Add0Work.toFinset,Finset.union_subset s6Step313Add0Arena.bounded s6Step313Add0_bounded⟩

private def s6Step313Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step313Add1_bounded : s6Step313Add1Work.toFinset⊆arenaWires := by
  have h : s6Step313Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step313Add1During : Arena := ⟨s6Step313Add1Arena.live∪s6Step313Add1Work.toFinset,Finset.union_subset s6Step313Add1Arena.bounded s6Step313Add1_bounded⟩

private def s6Step313F4FlagArena : Arena := ⟨s6Step313HeadFvAfter.live∪{865},Finset.union_subset s6Step313HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step313F4Plan : HmrHybridF4Plan := ⟨s6Step313F4FlagArena,[865],s6Step313Add0Arena,[803],s6Step313Add0During,s6Step313Add0Work,s6Step313Add1During,s6Step313Add1Work⟩

private def s6Step313HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 814],795⟩

private def s6Step313HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 793],776⟩

private def s6Step313HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 818],777⟩

private def s6Step313HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 841],775⟩

private def s6Step313FrontHead : WindowBank := ⟨s6Step313HeadFOut,s6Step313HeadGOut,s6Step313HeadFvOut,s6Step313HeadGvOut⟩

private def s6Step313EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369],795⟩

private def s6Step313EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857],776⟩

private def s6Step313EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],777⟩

private def s6Step313EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩

private def s6Step313FrontPair : WindowBank := ⟨s6Step313EntryFOut,s6Step313EntryGOut,s6Step313EntryFvOut,s6Step313EntryGvOut⟩

private def s6Step313FrontSigmaArena : Arena := ⟨s6Step313EntryGvAfter.live∪{839},Finset.union_subset s6Step313EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step313HeadFFresh : List Wire := [814]

private def s6Step313HeadFvFresh : List Wire := [793]

private def s6Step313HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313HeadGFresh : List Wire := [818]

private def s6Step313HeadGvFresh : List Wire := [841]

private def s6Step313FrontPlan : HmrSourceFront := ⟨s6Step313EntryGvAfter,s6Step313FrontPair,(growRow 795 s6Step313EntryFFresh ++ (growRow 777 s6Step313EntryGFresh ++ (growRow 776 s6Step313EntryFvFresh ++ (growRow 775 s6Step313EntryGvFresh ++ [])))),s6Step313FrontSigmaArena,[839],s6Step313HeadGBefore,[850],
  s6Step313HeadFvAfter,s6Step313FrontHead,(growRow 777 s6Step313HeadGFresh ++ (growRow 795 s6Step313HeadFFresh ++ (growRow 775 s6Step313HeadGvFresh ++ (growRow 776 s6Step313HeadFvFresh ++ [])))),s6Step313F4Plan,s6Step313CounterDuring,s6Step313CounterWork,s6Step313ExitGvAfter,s6Step313FrontOut,(shrinkRow 777 s6Step313ExitGExtra ++ (shrinkRow 795 s6Step313ExitFExtra ++ (shrinkRow 776 s6Step313ExitFvExtra ++ (shrinkRow 775 s6Step313ExitGvExtra ++ []))))⟩

private def s6Step313CompletePlan : HmrEarlyStepPlan := ⟨s6Step313FrontPlan,s6Step313EarlyControlArena,s6Step313EarlyControlPlan,s6Step313CompleteMoves⟩

private theorem s6Step313Complete_apart : List.Disjoint (s6Step313CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [839, 850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] := by
  have nd : ((s6Step313CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[839, 850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step313Complete_owned : (s6Step313CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step313EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step313CompleteMoveArena : Arena := ⟨s6Step313ExitGvAfter.live∪{113},Finset.union_subset s6Step313ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step313Complete_repack : s6Step313ExitGvAfter.checkRepack s6Step313CompleteMoves=some s6Step313EarlyControlArena := by
  have owned : 786∈s6Step313ExitGvAfter.live := by norm_num [s6Step313ExitGvAfter,arenaWires]
  have reserve : s6Step313ExitGvAfter.reserve {113}=some s6Step313CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step313ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step313CompleteMoveArena.retireSet {786}=s6Step313EarlyControlArena := by
    unfold Arena.retireSet s6Step313EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step313CompleteMoveArena,s6Step313ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step313CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step313CompleteMoveArena.retireSet {786}).checkRepack []=some s6Step313EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step313EarlyControl_branchOwned : ([850] : List Wire).toFinset⊆s6Step313EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EarlyControl_branch : compileHmrBranchRetirement s6Step313EarlyControlSigmaArena 850=some s6Step313EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step313EarlyControl_branchOwned
  · ext q
    simp [s6Step313EarlyControlOutputArena,s6Step313EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step313EarlyControl_classEqualityBorrow : s6Step313EarlyControlPositiveArena.checkBorrow (([839, 865] : List Wire).length-1) s6Step313EarlyControlLog.classWork=some s6Step313EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step313EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step313EarlyControlEqualityArena,s6Step313EarlyControlPositiveArena,s6Step313EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step313EarlyControl_classEqualityOwned : ([839, 865] : List Wire).toFinset⊆s6Step313EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EarlyControl_classEquality : compileHmrEqualityLog s6Step313EarlyControlPositiveArena [839, 865] 0 s6Step313EarlyControlLog.classWork=some (s6Step313EarlyControlEqualityArena,s6Step313EarlyControlLog.classWork,s6Step313EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step313EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step313EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step313EarlyControl_classOwned : ([769, 818, 839] : List Wire).toFinset⊆s6Step313EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EarlyControl_positiveBorrow : s6Step313EarlyControlZeroArena.checkBorrow (1) s6Step313EarlyControlLog.positiveWork=some s6Step313EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step313EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step313EarlyControlPositiveArena,s6Step313EarlyControlZeroArena,s6Step313EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step313EarlyControl_class : compileHmrSourceClassLog s6Step313EarlyControlZeroArena false 769 s6Step313EarlyControlZeroPlan.top 0 839 s6Step313EarlyControlLog.positiveWork s6Step313EarlyControlLog.classWork=some s6Step313EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step313EarlyControlClassPlan s6Step313EarlyControlZeroArena false 769 s6Step313EarlyControlZeroPlan.top 0 839
  constructor
  · decide +kernel
  · exact s6Step313EarlyControl_classOwned
  · exact s6Step313EarlyControl_positiveBorrow
  · exact s6Step313EarlyControl_classEquality

private theorem s6Step313EarlyControl_entryRecordOwned : ([850, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step313EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EarlyControl_entrySigmaOwned : ([839, 254] : List Wire).toFinset⊆s6Step313EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EarlyControl_fitBorrow : s6Step313EarlyControlFlagArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step313EarlyControlLog.recordFresh=some s6Step313EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step313EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step313EarlyControlFittedArena,s6Step313EarlyControlFlagArena,s6Step313EarlyControlLog,arenaWires]

private theorem s6Step313EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step313EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EarlyControl_fit : compileHmrRecordGrowLog s6Step313EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step313EarlyControlLog.recordFresh=some s6Step313EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step313EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step313EarlyControl_fitBorrow

private theorem s6Step313EarlyControl_flagsBorrow : s6Step313EarlyControlEqualityArena.checkBorrow (6) s6Step313EarlyControlLog.flagWork=some s6Step313EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step313EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step313EarlyControlFlagArena,s6Step313EarlyControlEqualityArena,s6Step313EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step313EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step313EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EarlyControl_flags : compileHmrFlagsLog s6Step313EarlyControlClassPlan.equalityArena s6Step313EarlyControlClassPlan.equality.top 253 252 251 s6Step313EarlyControlLog.flagWork=some s6Step313EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step313EarlyControl_flagsOwned⟩
  · exact s6Step313EarlyControl_flagsBorrow

private theorem s6Step313EarlyControl_historyBorrow : s6Step313EarlyControlArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step313EarlyControlLog.recordFresh=some s6Step313EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step313EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step313EarlyControlHistoryArena,s6Step313EarlyControlArena,s6Step313EarlyControlLog,arenaWires]

private theorem s6Step313EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step313EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EarlyControl_history : compileHmrRecordGrowLog s6Step313EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step313EarlyControlLog.recordFresh=some s6Step313EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step313EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step313EarlyControl_historyBorrow

private theorem s6Step313EarlyControl_sigmaOwned : ([254, 839] : List Wire).toFinset⊆s6Step313EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EarlyControl_sigmaReleaseOwned : ([839] : List Wire).toFinset⊆s6Step313EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EarlyControl_sigmaRelease : s6Step313EarlyControlHistoryArena.release {839} (fun _ => false)=some s6Step313EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step313EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step313EarlyControlSigmaArena,s6Step313EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step313EarlyControl_sigma : compileHmrSigmaDropLog s6Step313EarlyControlHistoryArena false 0 0 254 839 []=some s6Step313EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step313EarlyControl_sigmaOwned⟩
  · exact s6Step313EarlyControl_sigmaRelease

private theorem s6Step313EarlyControl_zeroBorrow : s6Step313EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step313EarlyControlLog.zeroWork=some s6Step313EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step313EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step313EarlyControlZeroArena,s6Step313EarlyControlArena,s6Step313EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step313EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step313EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step313EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EarlyControl_zero : compileHmrEqualityLog s6Step313EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step313EarlyControlLog.zeroWork=some (s6Step313EarlyControlZeroArena,s6Step313EarlyControlLog.zeroWork,s6Step313EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step313EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step313EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step313EarlyControl_logged : s6Step313EarlyControlPlan.Logged s6Step313EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 254 253 252 251 850 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step313EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step313EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step313EarlyControl_zero
  · exact s6Step313EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step313EarlyControl_flags
  · exact s6Step313EarlyControl_fit
  · exact s6Step313EarlyControl_history
  · exact s6Step313EarlyControl_sigma
  · exact s6Step313EarlyControl_branch

private theorem s6Step313EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step313EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 254 253 252 251 850 56 s6Step313EarlyControlLog=some s6Step313EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step313EarlyControlPlan s6Step313EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 254 253 252 251 850 56 s6Step313EarlyControl_logged

private def s6Step313EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369],795⟩

private def s6Step313EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857],776⟩

private def s6Step313EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],777⟩

private def s6Step313EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828],775⟩

private def s6Step313FrontBank : WindowBank := ⟨s6Step313EntryFRow,s6Step313EntryGRow,s6Step313EntryFvRow,s6Step313EntryGvRow⟩

private def s6Step313Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 814, 795]

private def s6Step313Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 818, 777]

private def s6Step313Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 793, 776]

private def s6Step313Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 841, 775]

private theorem s6Step313Counter_apart : Disjoint s6Step313HeadFvAfter.live s6Step313CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step313HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313Counter_borrowed : s6Step313HeadFvAfter.checkBorrow 4 s6Step313CounterWork=some s6Step313CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step313HeadFvAfter s6Step313CounterDuring s6Step313CounterWork.toFinset s6Step313Counter_bounded s6Step313Counter_apart rfl

private theorem s6Step313Counter_owned : (839::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step313HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step313HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313Counter_checked : compileHmrCounterStepLog s6Step313HeadFvAfter true 839 [774, 773, 772, 771, 770, 769] s6Step313CounterWork=some s6Step313CounterDuring := by
  have owned : ∀q∈839::[774, 773, 772, 771, 770, 769],q∈s6Step313HeadFvAfter.live := fun q hq => s6Step313Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step313Counter_borrowed

private def s6Step313EntryFAfter : Arena := s6Step313EntryFBefore

private theorem s6Step313EntryBank_incomingDistinct : ([s6Step313EntryFRow,s6Step313EntryGRow,s6Step313EntryFvRow,s6Step313EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313EntryF_Incoming : rowsOwned s6Step313EntryFBefore [s6Step313EntryFRow,s6Step313EntryGRow,s6Step313EntryFvRow,s6Step313EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313EntryFRow,s6Step313EntryGRow,s6Step313EntryFvRow,s6Step313EntryGvRow] 0 s6Step313EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313EntryBank_outgoingOwned : rowsOwned s6Step313EntryGvAfter [s6Step313EntryFOut,s6Step313EntryGOut,s6Step313EntryFvOut,s6Step313EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step313EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313EntryF_Outgoing : rowsOwned s6Step313EntryGvAfter [s6Step313EntryFOut,s6Step313EntryGOut,s6Step313EntryFvOut,s6Step313EntryGvOut] :=
  hmrRows_owned_drop s6Step313EntryGvAfter [s6Step313EntryFOut,s6Step313EntryGOut,s6Step313EntryFvOut,s6Step313EntryGvOut] 0 s6Step313EntryBank_outgoingOwned

private theorem s6Step313EntryF_distinct : (s6Step313EntryFRow.sign::s6Step313EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313EntryF_owned : (s6Step313EntryFRow.sign::s6Step313EntryFRow.payload).toFinset⊆s6Step313EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EntryF_reserved : s6Step313EntryFBefore.reserve s6Step313EntryFFresh.toFinset=some s6Step313EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step313EntryFFresh,arenaWires]
  · norm_num [s6Step313EntryFBefore,s6Step313EntryFFresh,arenaWires]
  · simp only [s6Step313EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step313EntryF_checked : planRowResizeLog s6Step313EntryFBefore s6Step313EntryFRow 114 s6Step313EntryFFresh=
    some (s6Step313EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369],795⟩,growRow 795 s6Step313EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step313EntryFBefore s6Step313EntryFAfter s6Step313EntryFRow 114 s6Step313EntryFFresh
    s6Step313EntryF_distinct s6Step313EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step313EntryF_reserved
  have rowEq : WindowRow.mk (s6Step313EntryFRow.payload++s6Step313EntryFFresh) s6Step313EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step313EntryFvAfter : Arena := s6Step313EntryFBefore

private def s6Step313EntryFvBefore : Arena := s6Step313EntryFBefore

private theorem s6Step313EntryFv_Incoming : rowsOwned s6Step313EntryFvBefore [s6Step313EntryFvRow,s6Step313EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313EntryFRow,s6Step313EntryGRow,s6Step313EntryFvRow,s6Step313EntryGvRow] 2 s6Step313EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313EntryFv_Outgoing : rowsOwned s6Step313EntryGvAfter [s6Step313EntryFvOut,s6Step313EntryGvOut] :=
  hmrRows_owned_drop s6Step313EntryGvAfter [s6Step313EntryFOut,s6Step313EntryGOut,s6Step313EntryFvOut,s6Step313EntryGvOut] 2 s6Step313EntryBank_outgoingOwned

private theorem s6Step313EntryFv_distinct : (s6Step313EntryFvRow.sign::s6Step313EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313EntryFv_owned : (s6Step313EntryFvRow.sign::s6Step313EntryFvRow.payload).toFinset⊆s6Step313EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EntryFv_reserved : s6Step313EntryFvBefore.reserve s6Step313EntryFvFresh.toFinset=some s6Step313EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step313EntryFvFresh,arenaWires]
  · norm_num [s6Step313EntryFvBefore,s6Step313EntryFBefore,s6Step313EntryFvFresh,arenaWires]
  · simp only [s6Step313EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step313EntryFv_checked : planRowResizeLog s6Step313EntryFvBefore s6Step313EntryFvRow 172 s6Step313EntryFvFresh=
    some (s6Step313EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857],776⟩,growRow 776 s6Step313EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step313EntryFvBefore s6Step313EntryFvAfter s6Step313EntryFvRow 172 s6Step313EntryFvFresh
    s6Step313EntryFv_distinct s6Step313EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step313EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step313EntryFvRow.payload++s6Step313EntryFvFresh) s6Step313EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step313EntryGAfter : Arena := s6Step313EntryFBefore

private def s6Step313EntryGBefore : Arena := s6Step313EntryFBefore

private theorem s6Step313EntryG_Incoming : rowsOwned s6Step313EntryGBefore [s6Step313EntryGRow,s6Step313EntryFvRow,s6Step313EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313EntryFRow,s6Step313EntryGRow,s6Step313EntryFvRow,s6Step313EntryGvRow] 1 s6Step313EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313EntryG_Outgoing : rowsOwned s6Step313EntryGvAfter [s6Step313EntryGOut,s6Step313EntryFvOut,s6Step313EntryGvOut] :=
  hmrRows_owned_drop s6Step313EntryGvAfter [s6Step313EntryFOut,s6Step313EntryGOut,s6Step313EntryFvOut,s6Step313EntryGvOut] 1 s6Step313EntryBank_outgoingOwned

private theorem s6Step313EntryG_distinct : (s6Step313EntryGRow.sign::s6Step313EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313EntryG_owned : (s6Step313EntryGRow.sign::s6Step313EntryGRow.payload).toFinset⊆s6Step313EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EntryG_reserved : s6Step313EntryGBefore.reserve s6Step313EntryGFresh.toFinset=some s6Step313EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step313EntryGFresh,arenaWires]
  · norm_num [s6Step313EntryGBefore,s6Step313EntryFBefore,s6Step313EntryGFresh,arenaWires]
  · simp only [s6Step313EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step313EntryG_checked : planRowResizeLog s6Step313EntryGBefore s6Step313EntryGRow 114 s6Step313EntryGFresh=
    some (s6Step313EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],777⟩,growRow 777 s6Step313EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step313EntryGBefore s6Step313EntryGAfter s6Step313EntryGRow 114 s6Step313EntryGFresh
    s6Step313EntryG_distinct s6Step313EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step313EntryG_reserved
  have rowEq : WindowRow.mk (s6Step313EntryGRow.payload++s6Step313EntryGFresh) s6Step313EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step313EntryGvBefore : Arena := s6Step313EntryFBefore

private theorem s6Step313EntryGv_Incoming : rowsOwned s6Step313EntryGvBefore [s6Step313EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313EntryFRow,s6Step313EntryGRow,s6Step313EntryFvRow,s6Step313EntryGvRow] 3 s6Step313EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313EntryGv_Outgoing : rowsOwned s6Step313EntryGvAfter [s6Step313EntryGvOut] :=
  hmrRows_owned_drop s6Step313EntryGvAfter [s6Step313EntryFOut,s6Step313EntryGOut,s6Step313EntryFvOut,s6Step313EntryGvOut] 3 s6Step313EntryBank_outgoingOwned

private theorem s6Step313EntryGv_distinct : (s6Step313EntryGvRow.sign::s6Step313EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313EntryGv_owned : (s6Step313EntryGvRow.sign::s6Step313EntryGvRow.payload).toFinset⊆s6Step313EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313EntryGv_reserved : s6Step313EntryGvBefore.reserve s6Step313EntryGvFresh.toFinset=some s6Step313EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step313EntryGvFresh,arenaWires]
  · norm_num [s6Step313EntryGvBefore,s6Step313EntryFBefore,s6Step313EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step313EntryGvAfter,s6Step313EntryGvBefore,s6Step313EntryFBefore,s6Step313EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step313EntryGv_checked : planRowResizeLog s6Step313EntryGvBefore s6Step313EntryGvRow 172 s6Step313EntryGvFresh=
    some (s6Step313EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩,growRow 775 s6Step313EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step313EntryGvBefore s6Step313EntryGvAfter s6Step313EntryGvRow 172 s6Step313EntryGvFresh
    s6Step313EntryGv_distinct s6Step313EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step313EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step313EntryGvRow.payload++s6Step313EntryGvFresh) s6Step313EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step313EntryBank_rows : planWindowRowsLog s6Step313EntryFBefore [(s6Step313EntryFRow,114),(s6Step313EntryGRow,114),(s6Step313EntryFvRow,172),(s6Step313EntryGvRow,172)] [s6Step313EntryFFresh,s6Step313EntryGFresh,s6Step313EntryFvFresh,s6Step313EntryGvFresh]=
    some (s6Step313EntryGvAfter,[s6Step313EntryFOut,s6Step313EntryGOut,s6Step313EntryFvOut,s6Step313EntryGvOut],(growRow 795 s6Step313EntryFFresh ++ (growRow 777 s6Step313EntryGFresh ++ (growRow 776 s6Step313EntryFvFresh ++ (growRow 775 s6Step313EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step313EntryGvAfter [] []=some (s6Step313EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step313EntryGvBefore s6Step313EntryGvAfter s6Step313EntryGvAfter
    s6Step313EntryGvRow s6Step313EntryGvOut 172 s6Step313EntryGvFresh [] [] []
    (growRow 775 s6Step313EntryGvFresh) ([]) s6Step313EntryGv_Incoming s6Step313EntryGv_checked h4 s6Step313EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step313EntryFvBefore s6Step313EntryFvAfter s6Step313EntryGvAfter
    s6Step313EntryFvRow s6Step313EntryFvOut 172 s6Step313EntryFvFresh [(s6Step313EntryGvRow,172)] [s6Step313EntryGvFresh] [s6Step313EntryGvOut]
    (growRow 776 s6Step313EntryFvFresh) ((growRow 775 s6Step313EntryGvFresh ++ [])) s6Step313EntryFv_Incoming s6Step313EntryFv_checked h3 s6Step313EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step313EntryGBefore s6Step313EntryGAfter s6Step313EntryGvAfter
    s6Step313EntryGRow s6Step313EntryGOut 114 s6Step313EntryGFresh [(s6Step313EntryFvRow,172),(s6Step313EntryGvRow,172)] [s6Step313EntryFvFresh,s6Step313EntryGvFresh] [s6Step313EntryFvOut,s6Step313EntryGvOut]
    (growRow 777 s6Step313EntryGFresh) ((growRow 776 s6Step313EntryFvFresh ++ (growRow 775 s6Step313EntryGvFresh ++ []))) s6Step313EntryG_Incoming s6Step313EntryG_checked h2 s6Step313EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step313EntryFBefore s6Step313EntryFAfter s6Step313EntryGvAfter
    s6Step313EntryFRow s6Step313EntryFOut 114 s6Step313EntryFFresh [(s6Step313EntryGRow,114),(s6Step313EntryFvRow,172),(s6Step313EntryGvRow,172)] [s6Step313EntryGFresh,s6Step313EntryFvFresh,s6Step313EntryGvFresh] [s6Step313EntryGOut,s6Step313EntryFvOut,s6Step313EntryGvOut]
    (growRow 795 s6Step313EntryFFresh) ((growRow 777 s6Step313EntryGFresh ++ (growRow 776 s6Step313EntryFvFresh ++ (growRow 775 s6Step313EntryGvFresh ++ [])))) s6Step313EntryF_Incoming s6Step313EntryF_checked h1 s6Step313EntryF_Outgoing
  exact h0

private theorem s6Step313EntryBank_checked : compileHmrBankResizeLog .entry s6Step313EntryFBefore ⟨s6Step313EntryFRow,s6Step313EntryGRow,s6Step313EntryFvRow,s6Step313EntryGvRow⟩ ⟨114,114,172,172⟩ [s6Step313EntryFFresh,s6Step313EntryGFresh,s6Step313EntryFvFresh,s6Step313EntryGvFresh]=
    some (s6Step313EntryGvAfter,⟨s6Step313EntryFOut,s6Step313EntryGOut,s6Step313EntryFvOut,s6Step313EntryGvOut⟩,(growRow 795 s6Step313EntryFFresh ++ (growRow 777 s6Step313EntryGFresh ++ (growRow 776 s6Step313EntryFvFresh ++ (growRow 775 s6Step313EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step313EntryBank_rows]
  rfl

private def s6Step313ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313ExitFBefore : Arena := s6Step313ExitGAfter

private def s6Step313ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 814],795⟩

private def s6Step313ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 793],776⟩

private def s6Step313ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 818],777⟩

private def s6Step313ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 841],775⟩

private theorem s6Step313ExitBank_incomingDistinct : ([s6Step313ExitGRow,s6Step313ExitFRow,s6Step313ExitFvRow,s6Step313ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313ExitF_Incoming : rowsOwned s6Step313ExitFBefore [s6Step313ExitFRow,s6Step313ExitFvRow,s6Step313ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313ExitGRow,s6Step313ExitFRow,s6Step313ExitFvRow,s6Step313ExitGvRow] 1 s6Step313ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313ExitFBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313ExitBank_outgoingOwned : rowsOwned s6Step313ExitGvAfter [s6Step313ExitGOut,s6Step313ExitFOut,s6Step313ExitFvOut,s6Step313ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step313ExitGvAfter (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313ExitF_Outgoing : rowsOwned s6Step313ExitGvAfter [s6Step313ExitFOut,s6Step313ExitFvOut,s6Step313ExitGvOut] :=
  hmrRows_owned_drop s6Step313ExitGvAfter [s6Step313ExitGOut,s6Step313ExitFOut,s6Step313ExitFvOut,s6Step313ExitGvOut] 1 s6Step313ExitBank_outgoingOwned

private theorem s6Step313ExitF_distinct : (s6Step313ExitFRow.sign::s6Step313ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313ExitF_owned : (s6Step313ExitFRow.sign::s6Step313ExitFRow.payload).toFinset⊆s6Step313ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313ExitFBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313ExitF_retired : s6Step313ExitFBefore.retireSet s6Step313ExitFExtra.toFinset=s6Step313ExitFAfter := by
  unfold Arena.retireSet s6Step313ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step313ExitFBefore,s6Step313ExitGAfter,s6Step313ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step313ExitF_checked : planRowResizeLog s6Step313ExitFBefore s6Step313ExitFRow 114 []=
    some (s6Step313ExitFAfter,s6Step313ExitFOut,shrinkRow 795 s6Step313ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step313ExitFBefore s6Step313ExitFRow 114 s6Step313ExitF_distinct s6Step313ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step313ExitFRow.payload.take 114) s6Step313ExitFRow.sign=s6Step313ExitFOut := by decide +kernel
  have hi : s6Step313ExitFRow.payload.drop 114=s6Step313ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step313ExitF_retired] at result
  exact result

private def s6Step313ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313ExitFvBefore : Arena := s6Step313ExitFAfter

private theorem s6Step313ExitFv_Incoming : rowsOwned s6Step313ExitFvBefore [s6Step313ExitFvRow,s6Step313ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313ExitGRow,s6Step313ExitFRow,s6Step313ExitFvRow,s6Step313ExitGvRow] 2 s6Step313ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313ExitFvBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313ExitFv_Outgoing : rowsOwned s6Step313ExitGvAfter [s6Step313ExitFvOut,s6Step313ExitGvOut] :=
  hmrRows_owned_drop s6Step313ExitGvAfter [s6Step313ExitGOut,s6Step313ExitFOut,s6Step313ExitFvOut,s6Step313ExitGvOut] 2 s6Step313ExitBank_outgoingOwned

private theorem s6Step313ExitFv_distinct : (s6Step313ExitFvRow.sign::s6Step313ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313ExitFv_owned : (s6Step313ExitFvRow.sign::s6Step313ExitFvRow.payload).toFinset⊆s6Step313ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313ExitFvBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313ExitFv_retired : s6Step313ExitFvBefore.retireSet s6Step313ExitFvExtra.toFinset=s6Step313ExitFvAfter := by
  unfold Arena.retireSet s6Step313ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step313ExitFvBefore,s6Step313ExitFAfter,s6Step313ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step313ExitFv_checked : planRowResizeLog s6Step313ExitFvBefore s6Step313ExitFvRow 172 []=
    some (s6Step313ExitFvAfter,s6Step313ExitFvOut,shrinkRow 776 s6Step313ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step313ExitFvBefore s6Step313ExitFvRow 172 s6Step313ExitFv_distinct s6Step313ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step313ExitFvRow.payload.take 172) s6Step313ExitFvRow.sign=s6Step313ExitFvOut := by decide +kernel
  have hi : s6Step313ExitFvRow.payload.drop 172=s6Step313ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step313ExitFv_retired] at result
  exact result

private def s6Step313ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step313ExitG_Incoming : rowsOwned s6Step313ExitGBefore [s6Step313ExitGRow,s6Step313ExitFRow,s6Step313ExitFvRow,s6Step313ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313ExitGRow,s6Step313ExitFRow,s6Step313ExitFvRow,s6Step313ExitGvRow] 0 s6Step313ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313ExitG_Outgoing : rowsOwned s6Step313ExitGvAfter [s6Step313ExitGOut,s6Step313ExitFOut,s6Step313ExitFvOut,s6Step313ExitGvOut] :=
  hmrRows_owned_drop s6Step313ExitGvAfter [s6Step313ExitGOut,s6Step313ExitFOut,s6Step313ExitFvOut,s6Step313ExitGvOut] 0 s6Step313ExitBank_outgoingOwned

private theorem s6Step313ExitG_distinct : (s6Step313ExitGRow.sign::s6Step313ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313ExitG_owned : (s6Step313ExitGRow.sign::s6Step313ExitGRow.payload).toFinset⊆s6Step313ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313ExitG_retired : s6Step313ExitGBefore.retireSet s6Step313ExitGExtra.toFinset=s6Step313ExitGAfter := by
  unfold Arena.retireSet s6Step313ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step313ExitGBefore,s6Step313ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step313ExitG_checked : planRowResizeLog s6Step313ExitGBefore s6Step313ExitGRow 113 []=
    some (s6Step313ExitGAfter,s6Step313ExitGOut,shrinkRow 777 s6Step313ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step313ExitGBefore s6Step313ExitGRow 113 s6Step313ExitG_distinct s6Step313ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step313ExitGRow.payload.take 113) s6Step313ExitGRow.sign=s6Step313ExitGOut := by decide +kernel
  have hi : s6Step313ExitGRow.payload.drop 113=s6Step313ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step313ExitG_retired] at result
  exact result

private def s6Step313ExitGvBefore : Arena := s6Step313ExitFvAfter

private theorem s6Step313ExitGv_Incoming : rowsOwned s6Step313ExitGvBefore [s6Step313ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313ExitGRow,s6Step313ExitFRow,s6Step313ExitFvRow,s6Step313ExitGvRow] 3 s6Step313ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313ExitGvBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313ExitGv_Outgoing : rowsOwned s6Step313ExitGvAfter [s6Step313ExitGvOut] :=
  hmrRows_owned_drop s6Step313ExitGvAfter [s6Step313ExitGOut,s6Step313ExitFOut,s6Step313ExitFvOut,s6Step313ExitGvOut] 3 s6Step313ExitBank_outgoingOwned

private theorem s6Step313ExitGv_distinct : (s6Step313ExitGvRow.sign::s6Step313ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313ExitGv_owned : (s6Step313ExitGvRow.sign::s6Step313ExitGvRow.payload).toFinset⊆s6Step313ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313ExitGvBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313ExitGv_retired : s6Step313ExitGvBefore.retireSet s6Step313ExitGvExtra.toFinset=s6Step313ExitGvAfter := by
  unfold Arena.retireSet s6Step313ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step313ExitGvBefore,s6Step313ExitFvAfter,s6Step313ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step313ExitGv_checked : planRowResizeLog s6Step313ExitGvBefore s6Step313ExitGvRow 172 []=
    some (s6Step313ExitGvAfter,s6Step313ExitGvOut,shrinkRow 775 s6Step313ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step313ExitGvBefore s6Step313ExitGvRow 172 s6Step313ExitGv_distinct s6Step313ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step313ExitGvRow.payload.take 172) s6Step313ExitGvRow.sign=s6Step313ExitGvOut := by decide +kernel
  have hi : s6Step313ExitGvRow.payload.drop 172=s6Step313ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step313ExitGv_retired] at result
  exact result

private theorem s6Step313ExitBank_rows : planWindowRowsLog s6Step313ExitGBefore [(s6Step313ExitGRow,113),(s6Step313ExitFRow,114),(s6Step313ExitFvRow,172),(s6Step313ExitGvRow,172)] [[],[],[],[]]=
    some (s6Step313ExitGvAfter,[s6Step313ExitGOut,s6Step313ExitFOut,s6Step313ExitFvOut,s6Step313ExitGvOut],(shrinkRow 777 s6Step313ExitGExtra ++ (shrinkRow 795 s6Step313ExitFExtra ++ (shrinkRow 776 s6Step313ExitFvExtra ++ (shrinkRow 775 s6Step313ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step313ExitGvAfter [] []=some (s6Step313ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step313ExitGvBefore s6Step313ExitGvAfter s6Step313ExitGvAfter
    s6Step313ExitGvRow s6Step313ExitGvOut 172 [] [] [] []
    (shrinkRow 775 s6Step313ExitGvExtra) ([]) s6Step313ExitGv_Incoming s6Step313ExitGv_checked h4 s6Step313ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step313ExitFvBefore s6Step313ExitFvAfter s6Step313ExitGvAfter
    s6Step313ExitFvRow s6Step313ExitFvOut 172 [] [(s6Step313ExitGvRow,172)] [[]] [s6Step313ExitGvOut]
    (shrinkRow 776 s6Step313ExitFvExtra) ((shrinkRow 775 s6Step313ExitGvExtra ++ [])) s6Step313ExitFv_Incoming s6Step313ExitFv_checked h3 s6Step313ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step313ExitFBefore s6Step313ExitFAfter s6Step313ExitGvAfter
    s6Step313ExitFRow s6Step313ExitFOut 114 [] [(s6Step313ExitFvRow,172),(s6Step313ExitGvRow,172)] [[],[]] [s6Step313ExitFvOut,s6Step313ExitGvOut]
    (shrinkRow 795 s6Step313ExitFExtra) ((shrinkRow 776 s6Step313ExitFvExtra ++ (shrinkRow 775 s6Step313ExitGvExtra ++ []))) s6Step313ExitF_Incoming s6Step313ExitF_checked h2 s6Step313ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step313ExitGBefore s6Step313ExitGAfter s6Step313ExitGvAfter
    s6Step313ExitGRow s6Step313ExitGOut 113 [] [(s6Step313ExitFRow,114),(s6Step313ExitFvRow,172),(s6Step313ExitGvRow,172)] [[],[],[]] [s6Step313ExitFOut,s6Step313ExitFvOut,s6Step313ExitGvOut]
    (shrinkRow 777 s6Step313ExitGExtra) ((shrinkRow 795 s6Step313ExitFExtra ++ (shrinkRow 776 s6Step313ExitFvExtra ++ (shrinkRow 775 s6Step313ExitGvExtra ++ [])))) s6Step313ExitG_Incoming s6Step313ExitG_checked h1 s6Step313ExitG_Outgoing
  exact h0

private theorem s6Step313ExitBank_checked : compileHmrBankResizeLog .exit s6Step313ExitGBefore ⟨s6Step313ExitFRow,s6Step313ExitGRow,s6Step313ExitFvRow,s6Step313ExitGvRow⟩ ⟨114,113,172,172⟩ [[],[],[],[]]=
    some (s6Step313ExitGvAfter,⟨s6Step313ExitFOut,s6Step313ExitGOut,s6Step313ExitFvOut,s6Step313ExitGvOut⟩,(shrinkRow 777 s6Step313ExitGExtra ++ (shrinkRow 795 s6Step313ExitFExtra ++ (shrinkRow 776 s6Step313ExitFvExtra ++ (shrinkRow 775 s6Step313ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step313ExitBank_rows]
  rfl

private theorem s6Step313Add0_apart : Disjoint s6Step313Add0Arena.live s6Step313Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step313Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313Add0_card : s6Step313Add0Arena.live.card=902 := by
  decide +kernel

private theorem s6Step313Add0_borrowed : s6Step313Add0Arena.checkBorrow (hmrHybridCount s6Step313Add0Arena s6Step313Add0B.length) s6Step313Add0Work=some s6Step313Add0During := by
  have len : s6Step313Add0Work.length=hmrHybridCount s6Step313Add0Arena s6Step313Add0B.length := by
    rw [hmrHybridCount,s6Step313Add0_card]
    decide +kernel
  have nd : s6Step313Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step313Add0Arena s6Step313Add0During s6Step313Add0Work.toFinset s6Step313Add0_bounded s6Step313Add0_apart rfl

private theorem s6Step313Add0_distinct : (865::850::803::(s6Step313Add0A++s6Step313Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313Add0_owned : (865::850::803::(s6Step313Add0A++s6Step313Add0B)).toFinset⊆s6Step313Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step313Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313Add0_checked : compileHmrHybridCinLog s6Step313Add0Arena 850 865 803 s6Step313Add0A s6Step313Add0B s6Step313Add0Work=some s6Step313Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step313Add0Arena s6Step313Add0During 850 865 803 s6Step313Add0A s6Step313Add0B s6Step313Add0Work
    (by decide +kernel) (by decide +kernel) s6Step313Add0_distinct
    (fun q hq => s6Step313Add0_owned (List.mem_toFinset.mpr hq)) s6Step313Add0_borrowed

private theorem s6Step313Add1_apart : Disjoint s6Step313Add1Arena.live s6Step313Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step313Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313Add1_card : s6Step313Add1Arena.live.card=902 := by
  decide +kernel

private theorem s6Step313Add1_borrowed : s6Step313Add1Arena.checkBorrow (hmrHybridCount s6Step313Add1Arena s6Step313Add1B.length) s6Step313Add1Work=some s6Step313Add1During := by
  have len : s6Step313Add1Work.length=hmrHybridCount s6Step313Add1Arena s6Step313Add1B.length := by
    rw [hmrHybridCount,s6Step313Add1_card]
    decide +kernel
  have nd : s6Step313Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step313Add1Arena s6Step313Add1During s6Step313Add1Work.toFinset s6Step313Add1_bounded s6Step313Add1_apart rfl

private theorem s6Step313Add1_distinct : (865::850::803::(s6Step313Add1A++s6Step313Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313Add1_owned : (865::850::803::(s6Step313Add1A++s6Step313Add1B)).toFinset⊆s6Step313Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step313Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313Add1_checked : compileHmrHybridCinLog s6Step313Add1Arena 850 865 803 s6Step313Add1A s6Step313Add1B s6Step313Add1Work=some s6Step313Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step313Add1Arena s6Step313Add1During 850 865 803 s6Step313Add1A s6Step313Add1B s6Step313Add1Work
    (by decide +kernel) (by decide +kernel) s6Step313Add1_distinct
    (fun q hq => s6Step313Add1_owned (List.mem_toFinset.mpr hq)) s6Step313Add1_borrowed

private theorem s6Step313F4_apart : Disjoint (s6Step313Add0A++s6Step313Add0B).toFinset (s6Step313Add1A++s6Step313Add1B).toFinset := by
  have nd : ((s6Step313Add0A++s6Step313Add0B)++(s6Step313Add1A++s6Step313Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step313F4_carry : s6Step313F4FlagArena.checkBorrow 1 [803]=some s6Step313Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step313F4FlagArena,s6Step313HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step313F4FlagArena,s6Step313HeadFvAfter,s6Step313Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step313F4_distinct : (839::850::865::803::((s6Step313Add0A++s6Step313Add1A)++(s6Step313Add0B++s6Step313Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313F4_flag : s6Step313HeadFvAfter.checkBorrow 1 [865]=some s6Step313F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step313HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step313F4_owned : (839::850::((s6Step313Add0A++s6Step313Add1A)++(s6Step313Add0B++s6Step313Add1B))).toFinset⊆s6Step313HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step313HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313F4_checked : compileHmrHybridF4Log s6Step313HeadFvAfter 839 850 s6Step313Add0A s6Step313Add0B s6Step313Add1A s6Step313Add1B [865] [803] s6Step313Add0Work s6Step313Add1Work=some s6Step313F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step313HeadFvAfter s6Step313F4FlagArena s6Step313Add0Arena s6Step313Add0During s6Step313Add1During 839 850
    s6Step313Add0A s6Step313Add0B s6Step313Add1A s6Step313Add1B [865] [803] s6Step313Add0Work s6Step313Add1Work
    (fun q hq => s6Step313F4_owned (List.mem_toFinset.mpr hq)) s6Step313F4_flag s6Step313F4_carry
    s6Step313F4_distinct s6Step313F4_apart s6Step313Add0_checked s6Step313Add1_checked

private theorem s6Step313Front_branch : s6Step313FrontSigmaArena.checkBorrow 1 [850]=some s6Step313HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step313FrontSigmaArena,s6Step313EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step313FrontSigmaArena,s6Step313EntryGvAfter,s6Step313HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step313Front_entry : HmrFrontEntryValid s6Step313EntryFBefore s6Step313FrontBank 114 172 ⟨114,113,172,172⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step313FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step313EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step313EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step313FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step313Front_sigma : s6Step313EntryGvAfter.checkBorrow 1 [839]=some s6Step313FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step313EntryGvAfter,arenaWires]
  · rfl

private def s6Step313HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313HeadFBefore : Arena := s6Step313HeadGAfter

private def s6Step313HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369],795⟩

private def s6Step313HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857],776⟩

private def s6Step313HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],777⟩

private def s6Step313HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩

private theorem s6Step313HeadBank_incomingDistinct : ([s6Step313HeadGRow,s6Step313HeadFRow,s6Step313HeadGvRow,s6Step313HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313HeadF_Incoming : rowsOwned s6Step313HeadFBefore [s6Step313HeadFRow,s6Step313HeadGvRow,s6Step313HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313HeadGRow,s6Step313HeadFRow,s6Step313HeadGvRow,s6Step313HeadFvRow] 1 s6Step313HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313HeadBank_outgoingOwned : rowsOwned s6Step313HeadFvAfter [s6Step313HeadGOut,s6Step313HeadFOut,s6Step313HeadGvOut,s6Step313HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step313HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313HeadF_Outgoing : rowsOwned s6Step313HeadFvAfter [s6Step313HeadFOut,s6Step313HeadGvOut,s6Step313HeadFvOut] :=
  hmrRows_owned_drop s6Step313HeadFvAfter [s6Step313HeadGOut,s6Step313HeadFOut,s6Step313HeadGvOut,s6Step313HeadFvOut] 1 s6Step313HeadBank_outgoingOwned

private theorem s6Step313HeadF_distinct : (s6Step313HeadFRow.sign::s6Step313HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313HeadF_owned : (s6Step313HeadFRow.sign::s6Step313HeadFRow.payload).toFinset⊆s6Step313HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313HeadF_reserved : s6Step313HeadFBefore.reserve s6Step313HeadFFresh.toFinset=some s6Step313HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step313HeadFFresh,arenaWires]
  · norm_num [s6Step313HeadFBefore,s6Step313HeadGAfter,s6Step313HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step313HeadFAfter,s6Step313HeadFBefore,s6Step313HeadGAfter,s6Step313HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step313HeadF_checked : planRowResizeLog s6Step313HeadFBefore s6Step313HeadFRow 115 s6Step313HeadFFresh=
    some (s6Step313HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 814],795⟩,growRow 795 s6Step313HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step313HeadFBefore s6Step313HeadFAfter s6Step313HeadFRow 115 s6Step313HeadFFresh
    s6Step313HeadF_distinct s6Step313HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step313HeadF_reserved
  have rowEq : WindowRow.mk (s6Step313HeadFRow.payload++s6Step313HeadFFresh) s6Step313HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 814],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step313HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step313HeadFvBefore : Arena := s6Step313HeadGvAfter

private theorem s6Step313HeadFv_Incoming : rowsOwned s6Step313HeadFvBefore [s6Step313HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313HeadGRow,s6Step313HeadFRow,s6Step313HeadGvRow,s6Step313HeadFvRow] 3 s6Step313HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313HeadFv_Outgoing : rowsOwned s6Step313HeadFvAfter [s6Step313HeadFvOut] :=
  hmrRows_owned_drop s6Step313HeadFvAfter [s6Step313HeadGOut,s6Step313HeadFOut,s6Step313HeadGvOut,s6Step313HeadFvOut] 3 s6Step313HeadBank_outgoingOwned

private theorem s6Step313HeadFv_distinct : (s6Step313HeadFvRow.sign::s6Step313HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313HeadFv_owned : (s6Step313HeadFvRow.sign::s6Step313HeadFvRow.payload).toFinset⊆s6Step313HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313HeadFv_reserved : s6Step313HeadFvBefore.reserve s6Step313HeadFvFresh.toFinset=some s6Step313HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step313HeadFvFresh,arenaWires]
  · norm_num [s6Step313HeadFvBefore,s6Step313HeadGvAfter,s6Step313HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step313HeadFvAfter,s6Step313HeadFvBefore,s6Step313HeadGvAfter,s6Step313HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step313HeadFv_checked : planRowResizeLog s6Step313HeadFvBefore s6Step313HeadFvRow 173 s6Step313HeadFvFresh=
    some (s6Step313HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 793],776⟩,growRow 776 s6Step313HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step313HeadFvBefore s6Step313HeadFvAfter s6Step313HeadFvRow 173 s6Step313HeadFvFresh
    s6Step313HeadFv_distinct s6Step313HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step313HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step313HeadFvRow.payload++s6Step313HeadFvFresh) s6Step313HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 793],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step313HeadG_Incoming : rowsOwned s6Step313HeadGBefore [s6Step313HeadGRow,s6Step313HeadFRow,s6Step313HeadGvRow,s6Step313HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313HeadGRow,s6Step313HeadFRow,s6Step313HeadGvRow,s6Step313HeadFvRow] 0 s6Step313HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313HeadG_Outgoing : rowsOwned s6Step313HeadFvAfter [s6Step313HeadGOut,s6Step313HeadFOut,s6Step313HeadGvOut,s6Step313HeadFvOut] :=
  hmrRows_owned_drop s6Step313HeadFvAfter [s6Step313HeadGOut,s6Step313HeadFOut,s6Step313HeadGvOut,s6Step313HeadFvOut] 0 s6Step313HeadBank_outgoingOwned

private theorem s6Step313HeadG_distinct : (s6Step313HeadGRow.sign::s6Step313HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313HeadG_owned : (s6Step313HeadGRow.sign::s6Step313HeadGRow.payload).toFinset⊆s6Step313HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313HeadG_reserved : s6Step313HeadGBefore.reserve s6Step313HeadGFresh.toFinset=some s6Step313HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step313HeadGFresh,arenaWires]
  · norm_num [s6Step313HeadGBefore,s6Step313HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step313HeadGAfter,s6Step313HeadGBefore,s6Step313HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step313HeadG_checked : planRowResizeLog s6Step313HeadGBefore s6Step313HeadGRow 115 s6Step313HeadGFresh=
    some (s6Step313HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 818],777⟩,growRow 777 s6Step313HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step313HeadGBefore s6Step313HeadGAfter s6Step313HeadGRow 115 s6Step313HeadGFresh
    s6Step313HeadG_distinct s6Step313HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step313HeadG_reserved
  have rowEq : WindowRow.mk (s6Step313HeadGRow.payload++s6Step313HeadGFresh) s6Step313HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 818],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step313HeadGvBefore : Arena := s6Step313HeadFAfter

private theorem s6Step313HeadGv_Incoming : rowsOwned s6Step313HeadGvBefore [s6Step313HeadGvRow,s6Step313HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step313HeadGRow,s6Step313HeadFRow,s6Step313HeadGvRow,s6Step313HeadFvRow] 2 s6Step313HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step313HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step313HeadGv_Outgoing : rowsOwned s6Step313HeadFvAfter [s6Step313HeadGvOut,s6Step313HeadFvOut] :=
  hmrRows_owned_drop s6Step313HeadFvAfter [s6Step313HeadGOut,s6Step313HeadFOut,s6Step313HeadGvOut,s6Step313HeadFvOut] 2 s6Step313HeadBank_outgoingOwned

private theorem s6Step313HeadGv_distinct : (s6Step313HeadGvRow.sign::s6Step313HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step313HeadGv_owned : (s6Step313HeadGvRow.sign::s6Step313HeadGvRow.payload).toFinset⊆s6Step313HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step313HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step313HeadGv_reserved : s6Step313HeadGvBefore.reserve s6Step313HeadGvFresh.toFinset=some s6Step313HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step313HeadGvFresh,arenaWires]
  · norm_num [s6Step313HeadGvBefore,s6Step313HeadFAfter,s6Step313HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step313HeadGvAfter,s6Step313HeadGvBefore,s6Step313HeadFAfter,s6Step313HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step313HeadGv_checked : planRowResizeLog s6Step313HeadGvBefore s6Step313HeadGvRow 173 s6Step313HeadGvFresh=
    some (s6Step313HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 841],775⟩,growRow 775 s6Step313HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step313HeadGvBefore s6Step313HeadGvAfter s6Step313HeadGvRow 173 s6Step313HeadGvFresh
    s6Step313HeadGv_distinct s6Step313HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step313HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step313HeadGvRow.payload++s6Step313HeadGvFresh) s6Step313HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 841],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step313HeadBank_rows : planWindowRowsLog s6Step313HeadGBefore [(s6Step313HeadGRow,115),(s6Step313HeadFRow,115),(s6Step313HeadGvRow,173),(s6Step313HeadFvRow,173)] [s6Step313HeadGFresh,s6Step313HeadFFresh,s6Step313HeadGvFresh,s6Step313HeadFvFresh]=
    some (s6Step313HeadFvAfter,[s6Step313HeadGOut,s6Step313HeadFOut,s6Step313HeadGvOut,s6Step313HeadFvOut],(growRow 777 s6Step313HeadGFresh ++ (growRow 795 s6Step313HeadFFresh ++ (growRow 775 s6Step313HeadGvFresh ++ (growRow 776 s6Step313HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step313HeadFvAfter [] []=some (s6Step313HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step313HeadFvBefore s6Step313HeadFvAfter s6Step313HeadFvAfter
    s6Step313HeadFvRow s6Step313HeadFvOut 173 s6Step313HeadFvFresh [] [] []
    (growRow 776 s6Step313HeadFvFresh) ([]) s6Step313HeadFv_Incoming s6Step313HeadFv_checked h4 s6Step313HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step313HeadGvBefore s6Step313HeadGvAfter s6Step313HeadFvAfter
    s6Step313HeadGvRow s6Step313HeadGvOut 173 s6Step313HeadGvFresh [(s6Step313HeadFvRow,173)] [s6Step313HeadFvFresh] [s6Step313HeadFvOut]
    (growRow 775 s6Step313HeadGvFresh) ((growRow 776 s6Step313HeadFvFresh ++ [])) s6Step313HeadGv_Incoming s6Step313HeadGv_checked h3 s6Step313HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step313HeadFBefore s6Step313HeadFAfter s6Step313HeadFvAfter
    s6Step313HeadFRow s6Step313HeadFOut 115 s6Step313HeadFFresh [(s6Step313HeadGvRow,173),(s6Step313HeadFvRow,173)] [s6Step313HeadGvFresh,s6Step313HeadFvFresh] [s6Step313HeadGvOut,s6Step313HeadFvOut]
    (growRow 795 s6Step313HeadFFresh) ((growRow 775 s6Step313HeadGvFresh ++ (growRow 776 s6Step313HeadFvFresh ++ []))) s6Step313HeadF_Incoming s6Step313HeadF_checked h2 s6Step313HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step313HeadGBefore s6Step313HeadGAfter s6Step313HeadFvAfter
    s6Step313HeadGRow s6Step313HeadGOut 115 s6Step313HeadGFresh [(s6Step313HeadFRow,115),(s6Step313HeadGvRow,173),(s6Step313HeadFvRow,173)] [s6Step313HeadFFresh,s6Step313HeadGvFresh,s6Step313HeadFvFresh] [s6Step313HeadFOut,s6Step313HeadGvOut,s6Step313HeadFvOut]
    (growRow 777 s6Step313HeadGFresh) ((growRow 795 s6Step313HeadFFresh ++ (growRow 775 s6Step313HeadGvFresh ++ (growRow 776 s6Step313HeadFvFresh ++ [])))) s6Step313HeadG_Incoming s6Step313HeadG_checked h1 s6Step313HeadG_Outgoing
  exact h0

private theorem s6Step313HeadBank_checked : compileHmrBankResizeLog .headroom s6Step313HeadGBefore ⟨s6Step313HeadFRow,s6Step313HeadGRow,s6Step313HeadFvRow,s6Step313HeadGvRow⟩ ⟨115,115,173,173⟩ [s6Step313HeadGFresh,s6Step313HeadFFresh,s6Step313HeadGvFresh,s6Step313HeadFvFresh]=
    some (s6Step313HeadFvAfter,⟨s6Step313HeadFOut,s6Step313HeadGOut,s6Step313HeadFvOut,s6Step313HeadGvOut⟩,(growRow 777 s6Step313HeadGFresh ++ (growRow 795 s6Step313HeadFFresh ++ (growRow 775 s6Step313HeadGvFresh ++ (growRow 776 s6Step313HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step313HeadBank_rows]
  rfl

private theorem s6Step313Front_checked : compileHmrSourceFrontLog s6Step313EntryFBefore s6Step313FrontBank 114 172 ⟨114,113,172,172⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step313FrontLog=some s6Step313FrontPlan := by
  have pairEq : s6Step313FrontPair=⟨s6Step313HeadFRow,s6Step313HeadGRow,s6Step313HeadFvRow,s6Step313HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step313FrontHead=⟨s6Step313ExitFRow,s6Step313ExitGRow,s6Step313ExitFvRow,s6Step313ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step313Add0A=s6Step313FrontHead.f.wires := by decide +kernel
  have gEq : s6Step313Add0B=s6Step313FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step313Add1A=s6Step313FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step313Add1B=s6Step313FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step313EntryFBefore s6Step313FrontBank 114 172 ⟨114,113,172,172⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step313FrontLog s6Step313FrontPlan
  · exact s6Step313Front_entry
  · exact s6Step313EntryBank_checked
  · exact s6Step313Front_sigma
  · rfl
  · exact s6Step313Front_branch
  · rfl
  · simpa only [s6Step313FrontPlan,pairEq] using s6Step313HeadBank_checked
  · simpa only [s6Step313FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step313F4_checked
  · exact s6Step313Counter_checked
  · rfl
  · simpa only [s6Step313FrontPlan,headEq] using s6Step313ExitBank_checked

private theorem s6Step313Complete_explicit_checked : compileHmrEarlyStepLog s6Step313EntryFBefore s6Step313FrontBank 114 172 ⟨114,113,172,172⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step313CompleteLog=some s6Step313CompletePlan := by
  let Q := s6Step313EarlyControlPlan
  have hq := s6Step313EarlyControl_plan_checked
  have fv1 : s6Step313CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step313CompleteOut.fv.payload[2]?.getD s6Step313CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step313CompleteOut.fv.payload[3]?.getD s6Step313CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step313CompleteOut.fv.payload[4]?.getD s6Step313CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step313EntryFBefore s6Step313EarlyControlArena s6Step313FrontBank 114 172 ⟨114,113,172,172⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step313CompleteLog s6Step313FrontPlan Q
    s6Step313Front_checked s6Step313Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step313Complete_owned s6Step313Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step313EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 s6Step313CompleteOut.fv.second (s6Step313CompleteOut.fv.payload[2]?.getD s6Step313CompleteOut.fv.sign) (s6Step313CompleteOut.fv.payload[3]?.getD s6Step313CompleteOut.fv.sign) (s6Step313CompleteOut.fv.payload[4]?.getD s6Step313CompleteOut.fv.sign) 850 56 s6Step313EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep313Arena : Arena := s6Step313EntryFBefore
def s6PrivateStep313Bank : WindowBank := s6Step313FrontBank
def s6PrivateStep313Spec : HmrSourceWalkStepLog := ⟨114,172,⟨114,113,172,172⟩,56,.early s6Step313CompleteLog⟩
def s6PrivateStep313Plan : HmrSourceStepPlan := .early s6Step313CompletePlan
theorem s6PrivateStep313_source : s6PrivateStep313Spec=s6ObservedLogs304[9] := rfl
theorem s6PrivateStep313_checked : compileHmrSourceStepLog s6PrivateStep313Arena s6PrivateStep313Bank
    s6PrivateStep313Spec.fgWidth s6PrivateStep313Spec.vWidth s6PrivateStep313Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]
    6 498 313 s6PrivateStep313Spec.need none s6PrivateStep313Spec.log=some s6PrivateStep313Plan := by
  change compileHmrSourceStepLog s6Step313EntryFBefore s6Step313FrontBank 114 172 ⟨114,113,172,172⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 6 498 313 56 none (.early s6Step313CompleteLog)=some (.early s6Step313CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 313<498)]
  rw [s6Step313Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
