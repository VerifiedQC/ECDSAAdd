import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep307
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

private def s6Step309CompleteMoves : List (Wire × Wire) := [(818,115),(863,371)]

private def s6Step309EarlyControlLog : HmrEarlyControlLog := ⟨[863, 818, 857, 841, 821],[793],[814],[865, 803, 830, 805, 817, 812],[]⟩

private def s6Step309FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[821], [841], [857], [796]],[[], [], [], []]⟩,[828],[890],[793],[814],[865, 803, 830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 803, 830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[793, 814, 865, 803]⟩

private def s6Step309CompleteLog : HmrEarlyStepLog := ⟨s6Step309FrontLog,s6Step309CompleteMoves,s6Step309EarlyControlLog⟩

private def s6Step309ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370],795⟩

private def s6Step309ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796],776⟩

private def s6Step309ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],777⟩

private def s6Step309ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩

private def s6Step309FrontOut : WindowBank := ⟨s6Step309ExitFOut,s6Step309ExitGOut,s6Step309ExitFvOut,s6Step309ExitGvOut⟩

private def s6Step309CompleteOut : WindowBank := s6Step309FrontOut.repacked s6Step309CompleteMoves

private def s6Step309EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step309EarlyControlPositiveArena,[793],s6Step309EarlyControlEqualityArena,[814],⟨⟨828,false⟩,[⟨⟨793,false⟩,814⟩]⟩⟩

private def s6Step309EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,863⟩,⟨⟨772,false⟩,818⟩,⟨⟨771,false⟩,857⟩,⟨⟨770,false⟩,841⟩,⟨⟨769,false⟩,821⟩]⟩

private def s6Step309EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step309EarlyControlZeroArena,s6Step309EarlyControlZeroPlan,s6Step309EarlyControlClassPlan,s6Step309EarlyControlFlagArena,s6Step309EarlyControlFittedArena,s6Step309EarlyControlHistoryArena,s6Step309EarlyControlSigmaArena,s6Step309EarlyControlOutputArena,s6Step309EarlyControlLog⟩

private def s6Step309CounterWork : List Wire := [793, 814, 865, 803]

private theorem s6Step309Counter_bounded : s6Step309CounterWork.toFinset⊆arenaWires := by norm_num [s6Step309CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step309HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309CounterDuring : Arena := ⟨s6Step309HeadFvAfter.live∪s6Step309CounterWork.toFinset,Finset.union_subset s6Step309HeadFvAfter.bounded s6Step309Counter_bounded⟩

private def s6Step309EntryFFresh : List Wire := []

private def s6Step309EntryFvFresh : List Wire := []

private def s6Step309EntryGFresh : List Wire := []

private def s6Step309EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309EntryGvAfter : Arena := s6Step309EntryFBefore

private def s6Step309EntryGvFresh : List Wire := []

private def s6Step309ExitFExtra : List Wire := [371, 841]

private def s6Step309ExitGExtra : List Wire := [115, 821]

private def s6Step309ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<371) ∨ (372≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309ExitGvExtra : List Wire := [857]

private def s6Step309Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309Add0Work : List Wire := [865, 803, 830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step309Add0_bounded : s6Step309Add0Work.toFinset⊆arenaWires := by
  have h : s6Step309Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step309Add0During : Arena := ⟨s6Step309Add0Arena.live∪s6Step309Add0Work.toFinset,Finset.union_subset s6Step309Add0Arena.bounded s6Step309Add0_bounded⟩

private def s6Step309Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309Add1Work : List Wire := [865, 803, 830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step309Add1_bounded : s6Step309Add1Work.toFinset⊆arenaWires := by
  have h : s6Step309Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step309Add1During : Arena := ⟨s6Step309Add1Arena.live∪s6Step309Add1Work.toFinset,Finset.union_subset s6Step309Add1Arena.bounded s6Step309Add1_bounded⟩

private def s6Step309F4FlagArena : Arena := ⟨s6Step309HeadFvAfter.live∪{793},Finset.union_subset s6Step309HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step309F4Plan : HmrHybridF4Plan := ⟨s6Step309F4FlagArena,[793],s6Step309Add0Arena,[814],s6Step309Add0During,s6Step309Add0Work,s6Step309Add1During,s6Step309Add1Work⟩

private def s6Step309HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 841],795⟩

private def s6Step309HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796],776⟩

private def s6Step309HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 821],777⟩

private def s6Step309HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 857],775⟩

private def s6Step309FrontHead : WindowBank := ⟨s6Step309HeadFOut,s6Step309HeadGOut,s6Step309HeadFvOut,s6Step309HeadGvOut⟩

private def s6Step309EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371],795⟩

private def s6Step309EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩

private def s6Step309EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115],777⟩

private def s6Step309EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩

private def s6Step309FrontPair : WindowBank := ⟨s6Step309EntryFOut,s6Step309EntryGOut,s6Step309EntryFvOut,s6Step309EntryGvOut⟩

private def s6Step309FrontSigmaArena : Arena := ⟨s6Step309EntryGvAfter.live∪{828},Finset.union_subset s6Step309EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step309HeadFFresh : List Wire := [841]

private def s6Step309HeadFvFresh : List Wire := [796]

private def s6Step309HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309HeadGFresh : List Wire := [821]

private def s6Step309HeadGvFresh : List Wire := [857]

private def s6Step309FrontPlan : HmrSourceFront := ⟨s6Step309EntryGvAfter,s6Step309FrontPair,(growRow 795 s6Step309EntryFFresh ++ (growRow 777 s6Step309EntryGFresh ++ (growRow 776 s6Step309EntryFvFresh ++ (growRow 775 s6Step309EntryGvFresh ++ [])))),s6Step309FrontSigmaArena,[828],s6Step309HeadGBefore,[890],
  s6Step309HeadFvAfter,s6Step309FrontHead,(growRow 777 s6Step309HeadGFresh ++ (growRow 795 s6Step309HeadFFresh ++ (growRow 775 s6Step309HeadGvFresh ++ (growRow 776 s6Step309HeadFvFresh ++ [])))),s6Step309F4Plan,s6Step309CounterDuring,s6Step309CounterWork,s6Step309ExitGvAfter,s6Step309FrontOut,(shrinkRow 777 s6Step309ExitGExtra ++ (shrinkRow 795 s6Step309ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step309ExitGvExtra ++ []))))⟩

private def s6Step309CompletePlan : HmrEarlyStepPlan := ⟨s6Step309FrontPlan,s6Step309EarlyControlArena,s6Step309EarlyControlPlan,s6Step309CompleteMoves⟩

private theorem s6Step309Complete_apart : List.Disjoint (s6Step309CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [828, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] := by
  have nd : ((s6Step309CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[828, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step309Complete_owned : (s6Step309CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step309EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step309CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,371),(372,782),(783,790),(791,792),(794,797),(799,800),(802,803),(804,805),(806,808),(809,812),(813,814),(822,830),(831,832),(833,841),(843,849),(850,857),(858,865),(866,896),(897,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step309CompleteRelocationMove0Borrowed : Arena := ⟨s6Step309ExitGvAfter.live∪{115},Finset.union_subset s6Step309ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step309CompleteRelocationMove1Borrowed : Arena := ⟨s6Step309CompleteRelocationMove0After.live∪{371},Finset.union_subset s6Step309CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step309CompleteRelocation_move0_owned : 818∈s6Step309ExitGvAfter.live := by norm_num [s6Step309ExitGvAfter,arenaWires]

private theorem s6Step309CompleteRelocation_move0_reserve : s6Step309ExitGvAfter.reserve {115}=some s6Step309CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step309ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step309CompleteRelocation_move0_retire : s6Step309CompleteRelocationMove0Borrowed.retireSet {818}=s6Step309CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step309CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step309CompleteRelocationMove0Borrowed,s6Step309ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step309CompleteRelocation_move1_owned : 863∈s6Step309CompleteRelocationMove0After.live := by norm_num [s6Step309CompleteRelocationMove0After,arenaWires]

private theorem s6Step309CompleteRelocation_move1_reserve : s6Step309CompleteRelocationMove0After.reserve {371}=some s6Step309CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step309CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step309CompleteRelocation_move1_retire : s6Step309CompleteRelocationMove1Borrowed.retireSet {863}=s6Step309EarlyControlArena := by
  unfold Arena.retireSet s6Step309EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step309CompleteRelocationMove1Borrowed,s6Step309CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step309CompleteRelocation_checked : s6Step309ExitGvAfter.checkRepack [(818,115),(863,371)]=some s6Step309EarlyControlArena := by
  have tail2 : s6Step309EarlyControlArena.checkRepack []=some s6Step309EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step309CompleteRelocationMove0After s6Step309CompleteRelocationMove1Borrowed s6Step309EarlyControlArena s6Step309EarlyControlArena 863 371 []
    s6Step309CompleteRelocation_move1_owned s6Step309CompleteRelocation_move1_reserve s6Step309CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step309ExitGvAfter s6Step309CompleteRelocationMove0Borrowed s6Step309CompleteRelocationMove0After s6Step309EarlyControlArena 818 115 [(863,371)]
    s6Step309CompleteRelocation_move0_owned s6Step309CompleteRelocation_move0_reserve s6Step309CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step309Complete_repack : s6Step309ExitGvAfter.checkRepack s6Step309CompleteMoves=some s6Step309EarlyControlArena := by
  simpa only [s6Step309CompleteMoves] using s6Step309CompleteRelocation_checked

private theorem s6Step309EarlyControl_branchOwned : ([890] : List Wire).toFinset⊆s6Step309EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EarlyControl_branch : compileHmrBranchRetirement s6Step309EarlyControlSigmaArena 890=some s6Step309EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step309EarlyControl_branchOwned
  · ext q
    simp [s6Step309EarlyControlOutputArena,s6Step309EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step309EarlyControl_classEqualityBorrow : s6Step309EarlyControlPositiveArena.checkBorrow (([828, 793] : List Wire).length-1) s6Step309EarlyControlLog.classWork=some s6Step309EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step309EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step309EarlyControlEqualityArena,s6Step309EarlyControlPositiveArena,s6Step309EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step309EarlyControl_classEqualityOwned : ([828, 793] : List Wire).toFinset⊆s6Step309EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EarlyControl_classEquality : compileHmrEqualityLog s6Step309EarlyControlPositiveArena [828, 793] 0 s6Step309EarlyControlLog.classWork=some (s6Step309EarlyControlEqualityArena,s6Step309EarlyControlLog.classWork,s6Step309EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step309EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step309EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step309EarlyControl_classOwned : ([769, 821, 828] : List Wire).toFinset⊆s6Step309EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EarlyControl_positiveBorrow : s6Step309EarlyControlZeroArena.checkBorrow (1) s6Step309EarlyControlLog.positiveWork=some s6Step309EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step309EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step309EarlyControlPositiveArena,s6Step309EarlyControlZeroArena,s6Step309EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step309EarlyControl_class : compileHmrSourceClassLog s6Step309EarlyControlZeroArena false 769 s6Step309EarlyControlZeroPlan.top 0 828 s6Step309EarlyControlLog.positiveWork s6Step309EarlyControlLog.classWork=some s6Step309EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step309EarlyControlClassPlan s6Step309EarlyControlZeroArena false 769 s6Step309EarlyControlZeroPlan.top 0 828
  constructor
  · decide +kernel
  · exact s6Step309EarlyControl_classOwned
  · exact s6Step309EarlyControl_positiveBorrow
  · exact s6Step309EarlyControl_classEquality

private theorem s6Step309EarlyControl_entryRecordOwned : ([890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step309EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EarlyControl_entrySigmaOwned : ([828, 254] : List Wire).toFinset⊆s6Step309EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EarlyControl_fitBorrow : s6Step309EarlyControlFlagArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step309EarlyControlLog.recordFresh=some s6Step309EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step309EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step309EarlyControlFittedArena,s6Step309EarlyControlFlagArena,s6Step309EarlyControlLog,arenaWires]

private theorem s6Step309EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step309EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EarlyControl_fit : compileHmrRecordGrowLog s6Step309EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step309EarlyControlLog.recordFresh=some s6Step309EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step309EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step309EarlyControl_fitBorrow

private theorem s6Step309EarlyControl_flagsBorrow : s6Step309EarlyControlEqualityArena.checkBorrow (6) s6Step309EarlyControlLog.flagWork=some s6Step309EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step309EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step309EarlyControlFlagArena,s6Step309EarlyControlEqualityArena,s6Step309EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step309EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s6Step309EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EarlyControl_flags : compileHmrFlagsLog s6Step309EarlyControlClassPlan.equalityArena s6Step309EarlyControlClassPlan.equality.top 253 252 251 s6Step309EarlyControlLog.flagWork=some s6Step309EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step309EarlyControl_flagsOwned⟩
  · exact s6Step309EarlyControl_flagsBorrow

private theorem s6Step309EarlyControl_historyBorrow : s6Step309EarlyControlArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step309EarlyControlLog.recordFresh=some s6Step309EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step309EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step309EarlyControlHistoryArena,s6Step309EarlyControlArena,s6Step309EarlyControlLog,arenaWires]

private theorem s6Step309EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step309EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EarlyControl_history : compileHmrRecordGrowLog s6Step309EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step309EarlyControlLog.recordFresh=some s6Step309EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step309EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step309EarlyControl_historyBorrow

private theorem s6Step309EarlyControl_sigmaOwned : ([254, 828] : List Wire).toFinset⊆s6Step309EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EarlyControl_sigmaReleaseOwned : ([828] : List Wire).toFinset⊆s6Step309EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EarlyControl_sigmaRelease : s6Step309EarlyControlHistoryArena.release {828} (fun _ => false)=some s6Step309EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step309EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step309EarlyControlSigmaArena,s6Step309EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step309EarlyControl_sigma : compileHmrSigmaDropLog s6Step309EarlyControlHistoryArena false 0 0 254 828 []=some s6Step309EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step309EarlyControl_sigmaOwned⟩
  · exact s6Step309EarlyControl_sigmaRelease

private theorem s6Step309EarlyControl_zeroBorrow : s6Step309EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step309EarlyControlLog.zeroWork=some s6Step309EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step309EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step309EarlyControlZeroArena,s6Step309EarlyControlArena,s6Step309EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step309EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step309EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step309EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EarlyControl_zero : compileHmrEqualityLog s6Step309EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step309EarlyControlLog.zeroWork=some (s6Step309EarlyControlZeroArena,s6Step309EarlyControlLog.zeroWork,s6Step309EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step309EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step309EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step309EarlyControl_logged : s6Step309EarlyControlPlan.Logged s6Step309EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 828 254 253 252 251 890 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step309EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step309EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step309EarlyControl_zero
  · exact s6Step309EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step309EarlyControl_flags
  · exact s6Step309EarlyControl_fit
  · exact s6Step309EarlyControl_history
  · exact s6Step309EarlyControl_sigma
  · exact s6Step309EarlyControl_branch

private theorem s6Step309EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step309EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 828 254 253 252 251 890 56 s6Step309EarlyControlLog=some s6Step309EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step309EarlyControlPlan s6Step309EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 828 254 253 252 251 890 56 s6Step309EarlyControl_logged

private def s6Step309EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371],795⟩

private def s6Step309EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩

private def s6Step309EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115],777⟩

private def s6Step309EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩

private def s6Step309FrontBank : WindowBank := ⟨s6Step309EntryFRow,s6Step309EntryGRow,s6Step309EntryFvRow,s6Step309EntryGvRow⟩

private def s6Step309Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 841, 795]

private def s6Step309Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 821, 777]

private def s6Step309Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 776]

private def s6Step309Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 857, 775]

private theorem s6Step309Counter_apart : Disjoint s6Step309HeadFvAfter.live s6Step309CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step309HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309Counter_borrowed : s6Step309HeadFvAfter.checkBorrow 4 s6Step309CounterWork=some s6Step309CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step309HeadFvAfter s6Step309CounterDuring s6Step309CounterWork.toFinset s6Step309Counter_bounded s6Step309Counter_apart rfl

private theorem s6Step309Counter_owned : (828::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step309HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step309HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309Counter_checked : compileHmrCounterStepLog s6Step309HeadFvAfter true 828 [774, 773, 772, 771, 770, 769] s6Step309CounterWork=some s6Step309CounterDuring := by
  have owned : ∀q∈828::[774, 773, 772, 771, 770, 769],q∈s6Step309HeadFvAfter.live := fun q hq => s6Step309Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step309Counter_borrowed

private def s6Step309EntryFAfter : Arena := s6Step309EntryFBefore

private theorem s6Step309EntryBank_incomingDistinct : ([s6Step309EntryFRow,s6Step309EntryGRow,s6Step309EntryFvRow,s6Step309EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309EntryF_Incoming : rowsOwned s6Step309EntryFBefore [s6Step309EntryFRow,s6Step309EntryGRow,s6Step309EntryFvRow,s6Step309EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309EntryFRow,s6Step309EntryGRow,s6Step309EntryFvRow,s6Step309EntryGvRow] 0 s6Step309EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309EntryBank_outgoingOwned : rowsOwned s6Step309EntryGvAfter [s6Step309EntryFOut,s6Step309EntryGOut,s6Step309EntryFvOut,s6Step309EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step309EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309EntryF_Outgoing : rowsOwned s6Step309EntryGvAfter [s6Step309EntryFOut,s6Step309EntryGOut,s6Step309EntryFvOut,s6Step309EntryGvOut] :=
  hmrRows_owned_drop s6Step309EntryGvAfter [s6Step309EntryFOut,s6Step309EntryGOut,s6Step309EntryFvOut,s6Step309EntryGvOut] 0 s6Step309EntryBank_outgoingOwned

private theorem s6Step309EntryF_distinct : (s6Step309EntryFRow.sign::s6Step309EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309EntryF_owned : (s6Step309EntryFRow.sign::s6Step309EntryFRow.payload).toFinset⊆s6Step309EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EntryF_reserved : s6Step309EntryFBefore.reserve s6Step309EntryFFresh.toFinset=some s6Step309EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step309EntryFFresh,arenaWires]
  · norm_num [s6Step309EntryFBefore,s6Step309EntryFFresh,arenaWires]
  · simp only [s6Step309EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step309EntryF_checked : planRowResizeLog s6Step309EntryFBefore s6Step309EntryFRow 116 s6Step309EntryFFresh=
    some (s6Step309EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371],795⟩,growRow 795 s6Step309EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step309EntryFBefore s6Step309EntryFAfter s6Step309EntryFRow 116 s6Step309EntryFFresh
    s6Step309EntryF_distinct s6Step309EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step309EntryF_reserved
  have rowEq : WindowRow.mk (s6Step309EntryFRow.payload++s6Step309EntryFFresh) s6Step309EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step309EntryFvAfter : Arena := s6Step309EntryFBefore

private def s6Step309EntryFvBefore : Arena := s6Step309EntryFBefore

private theorem s6Step309EntryFv_Incoming : rowsOwned s6Step309EntryFvBefore [s6Step309EntryFvRow,s6Step309EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309EntryFRow,s6Step309EntryGRow,s6Step309EntryFvRow,s6Step309EntryGvRow] 2 s6Step309EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309EntryFv_Outgoing : rowsOwned s6Step309EntryGvAfter [s6Step309EntryFvOut,s6Step309EntryGvOut] :=
  hmrRows_owned_drop s6Step309EntryGvAfter [s6Step309EntryFOut,s6Step309EntryGOut,s6Step309EntryFvOut,s6Step309EntryGvOut] 2 s6Step309EntryBank_outgoingOwned

private theorem s6Step309EntryFv_distinct : (s6Step309EntryFvRow.sign::s6Step309EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309EntryFv_owned : (s6Step309EntryFvRow.sign::s6Step309EntryFvRow.payload).toFinset⊆s6Step309EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EntryFv_reserved : s6Step309EntryFvBefore.reserve s6Step309EntryFvFresh.toFinset=some s6Step309EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step309EntryFvFresh,arenaWires]
  · norm_num [s6Step309EntryFvBefore,s6Step309EntryFBefore,s6Step309EntryFvFresh,arenaWires]
  · simp only [s6Step309EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step309EntryFv_checked : planRowResizeLog s6Step309EntryFvBefore s6Step309EntryFvRow 169 s6Step309EntryFvFresh=
    some (s6Step309EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩,growRow 776 s6Step309EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step309EntryFvBefore s6Step309EntryFvAfter s6Step309EntryFvRow 169 s6Step309EntryFvFresh
    s6Step309EntryFv_distinct s6Step309EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step309EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step309EntryFvRow.payload++s6Step309EntryFvFresh) s6Step309EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step309EntryGAfter : Arena := s6Step309EntryFBefore

private def s6Step309EntryGBefore : Arena := s6Step309EntryFBefore

private theorem s6Step309EntryG_Incoming : rowsOwned s6Step309EntryGBefore [s6Step309EntryGRow,s6Step309EntryFvRow,s6Step309EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309EntryFRow,s6Step309EntryGRow,s6Step309EntryFvRow,s6Step309EntryGvRow] 1 s6Step309EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309EntryG_Outgoing : rowsOwned s6Step309EntryGvAfter [s6Step309EntryGOut,s6Step309EntryFvOut,s6Step309EntryGvOut] :=
  hmrRows_owned_drop s6Step309EntryGvAfter [s6Step309EntryFOut,s6Step309EntryGOut,s6Step309EntryFvOut,s6Step309EntryGvOut] 1 s6Step309EntryBank_outgoingOwned

private theorem s6Step309EntryG_distinct : (s6Step309EntryGRow.sign::s6Step309EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309EntryG_owned : (s6Step309EntryGRow.sign::s6Step309EntryGRow.payload).toFinset⊆s6Step309EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EntryG_reserved : s6Step309EntryGBefore.reserve s6Step309EntryGFresh.toFinset=some s6Step309EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step309EntryGFresh,arenaWires]
  · norm_num [s6Step309EntryGBefore,s6Step309EntryFBefore,s6Step309EntryGFresh,arenaWires]
  · simp only [s6Step309EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step309EntryG_checked : planRowResizeLog s6Step309EntryGBefore s6Step309EntryGRow 116 s6Step309EntryGFresh=
    some (s6Step309EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115],777⟩,growRow 777 s6Step309EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step309EntryGBefore s6Step309EntryGAfter s6Step309EntryGRow 116 s6Step309EntryGFresh
    s6Step309EntryG_distinct s6Step309EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step309EntryG_reserved
  have rowEq : WindowRow.mk (s6Step309EntryGRow.payload++s6Step309EntryGFresh) s6Step309EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step309EntryGvBefore : Arena := s6Step309EntryFBefore

private theorem s6Step309EntryGv_Incoming : rowsOwned s6Step309EntryGvBefore [s6Step309EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309EntryFRow,s6Step309EntryGRow,s6Step309EntryFvRow,s6Step309EntryGvRow] 3 s6Step309EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309EntryGv_Outgoing : rowsOwned s6Step309EntryGvAfter [s6Step309EntryGvOut] :=
  hmrRows_owned_drop s6Step309EntryGvAfter [s6Step309EntryFOut,s6Step309EntryGOut,s6Step309EntryFvOut,s6Step309EntryGvOut] 3 s6Step309EntryBank_outgoingOwned

private theorem s6Step309EntryGv_distinct : (s6Step309EntryGvRow.sign::s6Step309EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309EntryGv_owned : (s6Step309EntryGvRow.sign::s6Step309EntryGvRow.payload).toFinset⊆s6Step309EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309EntryGv_reserved : s6Step309EntryGvBefore.reserve s6Step309EntryGvFresh.toFinset=some s6Step309EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step309EntryGvFresh,arenaWires]
  · norm_num [s6Step309EntryGvBefore,s6Step309EntryFBefore,s6Step309EntryGvFresh,arenaWires]
  · simp only [s6Step309EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step309EntryGv_checked : planRowResizeLog s6Step309EntryGvBefore s6Step309EntryGvRow 169 s6Step309EntryGvFresh=
    some (s6Step309EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩,growRow 775 s6Step309EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step309EntryGvBefore s6Step309EntryGvAfter s6Step309EntryGvRow 169 s6Step309EntryGvFresh
    s6Step309EntryGv_distinct s6Step309EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step309EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step309EntryGvRow.payload++s6Step309EntryGvFresh) s6Step309EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step309EntryBank_rows : planWindowRowsLog s6Step309EntryFBefore [(s6Step309EntryFRow,116),(s6Step309EntryGRow,116),(s6Step309EntryFvRow,169),(s6Step309EntryGvRow,169)] [s6Step309EntryFFresh,s6Step309EntryGFresh,s6Step309EntryFvFresh,s6Step309EntryGvFresh]=
    some (s6Step309EntryGvAfter,[s6Step309EntryFOut,s6Step309EntryGOut,s6Step309EntryFvOut,s6Step309EntryGvOut],(growRow 795 s6Step309EntryFFresh ++ (growRow 777 s6Step309EntryGFresh ++ (growRow 776 s6Step309EntryFvFresh ++ (growRow 775 s6Step309EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step309EntryGvAfter [] []=some (s6Step309EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step309EntryGvBefore s6Step309EntryGvAfter s6Step309EntryGvAfter
    s6Step309EntryGvRow s6Step309EntryGvOut 169 s6Step309EntryGvFresh [] [] []
    (growRow 775 s6Step309EntryGvFresh) ([]) s6Step309EntryGv_Incoming s6Step309EntryGv_checked h4 s6Step309EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step309EntryFvBefore s6Step309EntryFvAfter s6Step309EntryGvAfter
    s6Step309EntryFvRow s6Step309EntryFvOut 169 s6Step309EntryFvFresh [(s6Step309EntryGvRow,169)] [s6Step309EntryGvFresh] [s6Step309EntryGvOut]
    (growRow 776 s6Step309EntryFvFresh) ((growRow 775 s6Step309EntryGvFresh ++ [])) s6Step309EntryFv_Incoming s6Step309EntryFv_checked h3 s6Step309EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step309EntryGBefore s6Step309EntryGAfter s6Step309EntryGvAfter
    s6Step309EntryGRow s6Step309EntryGOut 116 s6Step309EntryGFresh [(s6Step309EntryFvRow,169),(s6Step309EntryGvRow,169)] [s6Step309EntryFvFresh,s6Step309EntryGvFresh] [s6Step309EntryFvOut,s6Step309EntryGvOut]
    (growRow 777 s6Step309EntryGFresh) ((growRow 776 s6Step309EntryFvFresh ++ (growRow 775 s6Step309EntryGvFresh ++ []))) s6Step309EntryG_Incoming s6Step309EntryG_checked h2 s6Step309EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step309EntryFBefore s6Step309EntryFAfter s6Step309EntryGvAfter
    s6Step309EntryFRow s6Step309EntryFOut 116 s6Step309EntryFFresh [(s6Step309EntryGRow,116),(s6Step309EntryFvRow,169),(s6Step309EntryGvRow,169)] [s6Step309EntryGFresh,s6Step309EntryFvFresh,s6Step309EntryGvFresh] [s6Step309EntryGOut,s6Step309EntryFvOut,s6Step309EntryGvOut]
    (growRow 795 s6Step309EntryFFresh) ((growRow 777 s6Step309EntryGFresh ++ (growRow 776 s6Step309EntryFvFresh ++ (growRow 775 s6Step309EntryGvFresh ++ [])))) s6Step309EntryF_Incoming s6Step309EntryF_checked h1 s6Step309EntryF_Outgoing
  exact h0

private theorem s6Step309EntryBank_checked : compileHmrBankResizeLog .entry s6Step309EntryFBefore ⟨s6Step309EntryFRow,s6Step309EntryGRow,s6Step309EntryFvRow,s6Step309EntryGvRow⟩ ⟨116,116,169,169⟩ [s6Step309EntryFFresh,s6Step309EntryGFresh,s6Step309EntryFvFresh,s6Step309EntryGvFresh]=
    some (s6Step309EntryGvAfter,⟨s6Step309EntryFOut,s6Step309EntryGOut,s6Step309EntryFvOut,s6Step309EntryGvOut⟩,(growRow 795 s6Step309EntryFFresh ++ (growRow 777 s6Step309EntryGFresh ++ (growRow 776 s6Step309EntryFvFresh ++ (growRow 775 s6Step309EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step309EntryBank_rows]
  rfl

private def s6Step309ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<371) ∨ (372≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309ExitFBefore : Arena := s6Step309ExitGAfter

private def s6Step309ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 841],795⟩

private def s6Step309ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796],776⟩

private def s6Step309ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 821],777⟩

private def s6Step309ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 857],775⟩

private theorem s6Step309ExitBank_incomingDistinct : ([s6Step309ExitGRow,s6Step309ExitFRow,s6Step309ExitFvRow,s6Step309ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309ExitF_Incoming : rowsOwned s6Step309ExitFBefore [s6Step309ExitFRow,s6Step309ExitFvRow,s6Step309ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309ExitGRow,s6Step309ExitFRow,s6Step309ExitFvRow,s6Step309ExitGvRow] 1 s6Step309ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309ExitFBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309ExitBank_outgoingOwned : rowsOwned s6Step309ExitGvAfter [s6Step309ExitGOut,s6Step309ExitFOut,s6Step309ExitFvOut,s6Step309ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step309ExitGvAfter (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<371) ∨ (372≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309ExitF_Outgoing : rowsOwned s6Step309ExitGvAfter [s6Step309ExitFOut,s6Step309ExitFvOut,s6Step309ExitGvOut] :=
  hmrRows_owned_drop s6Step309ExitGvAfter [s6Step309ExitGOut,s6Step309ExitFOut,s6Step309ExitFvOut,s6Step309ExitGvOut] 1 s6Step309ExitBank_outgoingOwned

private theorem s6Step309ExitF_distinct : (s6Step309ExitFRow.sign::s6Step309ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309ExitF_owned : (s6Step309ExitFRow.sign::s6Step309ExitFRow.payload).toFinset⊆s6Step309ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309ExitFBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309ExitF_retired : s6Step309ExitFBefore.retireSet s6Step309ExitFExtra.toFinset=s6Step309ExitFAfter := by
  unfold Arena.retireSet s6Step309ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step309ExitFBefore,s6Step309ExitGAfter,s6Step309ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step309ExitF_checked : planRowResizeLog s6Step309ExitFBefore s6Step309ExitFRow 115 []=
    some (s6Step309ExitFAfter,s6Step309ExitFOut,shrinkRow 795 s6Step309ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step309ExitFBefore s6Step309ExitFRow 115 s6Step309ExitF_distinct s6Step309ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step309ExitFRow.payload.take 115) s6Step309ExitFRow.sign=s6Step309ExitFOut := by decide +kernel
  have hi : s6Step309ExitFRow.payload.drop 115=s6Step309ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step309ExitF_retired] at result
  exact result

private def s6Step309ExitFvAfter : Arena := s6Step309ExitFAfter

private def s6Step309ExitFvBefore : Arena := s6Step309ExitFAfter

private theorem s6Step309ExitFv_Incoming : rowsOwned s6Step309ExitFvBefore [s6Step309ExitFvRow,s6Step309ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309ExitGRow,s6Step309ExitFRow,s6Step309ExitFvRow,s6Step309ExitGvRow] 2 s6Step309ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309ExitFvBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<371) ∨ (372≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309ExitFv_Outgoing : rowsOwned s6Step309ExitGvAfter [s6Step309ExitFvOut,s6Step309ExitGvOut] :=
  hmrRows_owned_drop s6Step309ExitGvAfter [s6Step309ExitGOut,s6Step309ExitFOut,s6Step309ExitFvOut,s6Step309ExitGvOut] 2 s6Step309ExitBank_outgoingOwned

private theorem s6Step309ExitFv_distinct : (s6Step309ExitFvRow.sign::s6Step309ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309ExitFv_owned : (s6Step309ExitFvRow.sign::s6Step309ExitFvRow.payload).toFinset⊆s6Step309ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309ExitFvBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<371) ∨ (372≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309ExitFv_reserved : s6Step309ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step309ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step309ExitFv_checked : planRowResizeLog s6Step309ExitFvBefore s6Step309ExitFvRow 170 []=
    some (s6Step309ExitFvAfter,s6Step309ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step309ExitFvBefore s6Step309ExitFvAfter s6Step309ExitFvRow 170 []
    s6Step309ExitFv_distinct s6Step309ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step309ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step309ExitFvRow.payload++[]) s6Step309ExitFvRow.sign=s6Step309ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step309ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step309ExitG_Incoming : rowsOwned s6Step309ExitGBefore [s6Step309ExitGRow,s6Step309ExitFRow,s6Step309ExitFvRow,s6Step309ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309ExitGRow,s6Step309ExitFRow,s6Step309ExitFvRow,s6Step309ExitGvRow] 0 s6Step309ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309ExitG_Outgoing : rowsOwned s6Step309ExitGvAfter [s6Step309ExitGOut,s6Step309ExitFOut,s6Step309ExitFvOut,s6Step309ExitGvOut] :=
  hmrRows_owned_drop s6Step309ExitGvAfter [s6Step309ExitGOut,s6Step309ExitFOut,s6Step309ExitFvOut,s6Step309ExitGvOut] 0 s6Step309ExitBank_outgoingOwned

private theorem s6Step309ExitG_distinct : (s6Step309ExitGRow.sign::s6Step309ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309ExitG_owned : (s6Step309ExitGRow.sign::s6Step309ExitGRow.payload).toFinset⊆s6Step309ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309ExitG_retired : s6Step309ExitGBefore.retireSet s6Step309ExitGExtra.toFinset=s6Step309ExitGAfter := by
  unfold Arena.retireSet s6Step309ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step309ExitGBefore,s6Step309ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step309ExitG_checked : planRowResizeLog s6Step309ExitGBefore s6Step309ExitGRow 115 []=
    some (s6Step309ExitGAfter,s6Step309ExitGOut,shrinkRow 777 s6Step309ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step309ExitGBefore s6Step309ExitGRow 115 s6Step309ExitG_distinct s6Step309ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step309ExitGRow.payload.take 115) s6Step309ExitGRow.sign=s6Step309ExitGOut := by decide +kernel
  have hi : s6Step309ExitGRow.payload.drop 115=s6Step309ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step309ExitG_retired] at result
  exact result

private def s6Step309ExitGvBefore : Arena := s6Step309ExitFAfter

private theorem s6Step309ExitGv_Incoming : rowsOwned s6Step309ExitGvBefore [s6Step309ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309ExitGRow,s6Step309ExitFRow,s6Step309ExitFvRow,s6Step309ExitGvRow] 3 s6Step309ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309ExitGvBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<371) ∨ (372≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309ExitGv_Outgoing : rowsOwned s6Step309ExitGvAfter [s6Step309ExitGvOut] :=
  hmrRows_owned_drop s6Step309ExitGvAfter [s6Step309ExitGOut,s6Step309ExitFOut,s6Step309ExitFvOut,s6Step309ExitGvOut] 3 s6Step309ExitBank_outgoingOwned

private theorem s6Step309ExitGv_distinct : (s6Step309ExitGvRow.sign::s6Step309ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309ExitGv_owned : (s6Step309ExitGvRow.sign::s6Step309ExitGvRow.payload).toFinset⊆s6Step309ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309ExitGvBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<371) ∨ (372≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309ExitGv_retired : s6Step309ExitGvBefore.retireSet s6Step309ExitGvExtra.toFinset=s6Step309ExitGvAfter := by
  unfold Arena.retireSet s6Step309ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step309ExitGvBefore,s6Step309ExitFAfter,s6Step309ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step309ExitGv_checked : planRowResizeLog s6Step309ExitGvBefore s6Step309ExitGvRow 169 []=
    some (s6Step309ExitGvAfter,s6Step309ExitGvOut,shrinkRow 775 s6Step309ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step309ExitGvBefore s6Step309ExitGvRow 169 s6Step309ExitGv_distinct s6Step309ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step309ExitGvRow.payload.take 169) s6Step309ExitGvRow.sign=s6Step309ExitGvOut := by decide +kernel
  have hi : s6Step309ExitGvRow.payload.drop 169=s6Step309ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step309ExitGv_retired] at result
  exact result

private theorem s6Step309ExitBank_rows : planWindowRowsLog s6Step309ExitGBefore [(s6Step309ExitGRow,115),(s6Step309ExitFRow,115),(s6Step309ExitFvRow,170),(s6Step309ExitGvRow,169)] [[],[],[],[]]=
    some (s6Step309ExitGvAfter,[s6Step309ExitGOut,s6Step309ExitFOut,s6Step309ExitFvOut,s6Step309ExitGvOut],(shrinkRow 777 s6Step309ExitGExtra ++ (shrinkRow 795 s6Step309ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step309ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step309ExitGvAfter [] []=some (s6Step309ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step309ExitGvBefore s6Step309ExitGvAfter s6Step309ExitGvAfter
    s6Step309ExitGvRow s6Step309ExitGvOut 169 [] [] [] []
    (shrinkRow 775 s6Step309ExitGvExtra) ([]) s6Step309ExitGv_Incoming s6Step309ExitGv_checked h4 s6Step309ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step309ExitFvBefore s6Step309ExitFvAfter s6Step309ExitGvAfter
    s6Step309ExitFvRow s6Step309ExitFvOut 170 [] [(s6Step309ExitGvRow,169)] [[]] [s6Step309ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step309ExitGvExtra ++ [])) s6Step309ExitFv_Incoming s6Step309ExitFv_checked h3 s6Step309ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step309ExitFBefore s6Step309ExitFAfter s6Step309ExitGvAfter
    s6Step309ExitFRow s6Step309ExitFOut 115 [] [(s6Step309ExitFvRow,170),(s6Step309ExitGvRow,169)] [[],[]] [s6Step309ExitFvOut,s6Step309ExitGvOut]
    (shrinkRow 795 s6Step309ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step309ExitGvExtra ++ []))) s6Step309ExitF_Incoming s6Step309ExitF_checked h2 s6Step309ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step309ExitGBefore s6Step309ExitGAfter s6Step309ExitGvAfter
    s6Step309ExitGRow s6Step309ExitGOut 115 [] [(s6Step309ExitFRow,115),(s6Step309ExitFvRow,170),(s6Step309ExitGvRow,169)] [[],[],[]] [s6Step309ExitFOut,s6Step309ExitFvOut,s6Step309ExitGvOut]
    (shrinkRow 777 s6Step309ExitGExtra) ((shrinkRow 795 s6Step309ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step309ExitGvExtra ++ [])))) s6Step309ExitG_Incoming s6Step309ExitG_checked h1 s6Step309ExitG_Outgoing
  exact h0

private theorem s6Step309ExitBank_checked : compileHmrBankResizeLog .exit s6Step309ExitGBefore ⟨s6Step309ExitFRow,s6Step309ExitGRow,s6Step309ExitFvRow,s6Step309ExitGvRow⟩ ⟨115,115,170,169⟩ [[],[],[],[]]=
    some (s6Step309ExitGvAfter,⟨s6Step309ExitFOut,s6Step309ExitGOut,s6Step309ExitFvOut,s6Step309ExitGvOut⟩,(shrinkRow 777 s6Step309ExitGExtra ++ (shrinkRow 795 s6Step309ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step309ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step309ExitBank_rows]
  rfl

private theorem s6Step309Add0_apart : Disjoint s6Step309Add0Arena.live s6Step309Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step309Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309Add0_card : s6Step309Add0Arena.live.card=900 := by
  decide +kernel

private theorem s6Step309Add0_borrowed : s6Step309Add0Arena.checkBorrow (hmrHybridCount s6Step309Add0Arena s6Step309Add0B.length) s6Step309Add0Work=some s6Step309Add0During := by
  have len : s6Step309Add0Work.length=hmrHybridCount s6Step309Add0Arena s6Step309Add0B.length := by
    rw [hmrHybridCount,s6Step309Add0_card]
    decide +kernel
  have nd : s6Step309Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step309Add0Arena s6Step309Add0During s6Step309Add0Work.toFinset s6Step309Add0_bounded s6Step309Add0_apart rfl

private theorem s6Step309Add0_distinct : (793::890::814::(s6Step309Add0A++s6Step309Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309Add0_owned : (793::890::814::(s6Step309Add0A++s6Step309Add0B)).toFinset⊆s6Step309Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step309Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309Add0_checked : compileHmrHybridCinLog s6Step309Add0Arena 890 793 814 s6Step309Add0A s6Step309Add0B s6Step309Add0Work=some s6Step309Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step309Add0Arena s6Step309Add0During 890 793 814 s6Step309Add0A s6Step309Add0B s6Step309Add0Work
    (by decide +kernel) (by decide +kernel) s6Step309Add0_distinct
    (fun q hq => s6Step309Add0_owned (List.mem_toFinset.mpr hq)) s6Step309Add0_borrowed

private theorem s6Step309Add1_apart : Disjoint s6Step309Add1Arena.live s6Step309Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step309Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309Add1_card : s6Step309Add1Arena.live.card=900 := by
  decide +kernel

private theorem s6Step309Add1_borrowed : s6Step309Add1Arena.checkBorrow (hmrHybridCount s6Step309Add1Arena s6Step309Add1B.length) s6Step309Add1Work=some s6Step309Add1During := by
  have len : s6Step309Add1Work.length=hmrHybridCount s6Step309Add1Arena s6Step309Add1B.length := by
    rw [hmrHybridCount,s6Step309Add1_card]
    decide +kernel
  have nd : s6Step309Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step309Add1Arena s6Step309Add1During s6Step309Add1Work.toFinset s6Step309Add1_bounded s6Step309Add1_apart rfl

private theorem s6Step309Add1_distinct : (793::890::814::(s6Step309Add1A++s6Step309Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309Add1_owned : (793::890::814::(s6Step309Add1A++s6Step309Add1B)).toFinset⊆s6Step309Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step309Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309Add1_checked : compileHmrHybridCinLog s6Step309Add1Arena 890 793 814 s6Step309Add1A s6Step309Add1B s6Step309Add1Work=some s6Step309Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step309Add1Arena s6Step309Add1During 890 793 814 s6Step309Add1A s6Step309Add1B s6Step309Add1Work
    (by decide +kernel) (by decide +kernel) s6Step309Add1_distinct
    (fun q hq => s6Step309Add1_owned (List.mem_toFinset.mpr hq)) s6Step309Add1_borrowed

private theorem s6Step309F4_apart : Disjoint (s6Step309Add0A++s6Step309Add0B).toFinset (s6Step309Add1A++s6Step309Add1B).toFinset := by
  have nd : ((s6Step309Add0A++s6Step309Add0B)++(s6Step309Add1A++s6Step309Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step309F4_carry : s6Step309F4FlagArena.checkBorrow 1 [814]=some s6Step309Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step309F4FlagArena,s6Step309HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step309F4FlagArena,s6Step309HeadFvAfter,s6Step309Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step309F4_distinct : (828::890::793::814::((s6Step309Add0A++s6Step309Add1A)++(s6Step309Add0B++s6Step309Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309F4_flag : s6Step309HeadFvAfter.checkBorrow 1 [793]=some s6Step309F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step309HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step309F4_owned : (828::890::((s6Step309Add0A++s6Step309Add1A)++(s6Step309Add0B++s6Step309Add1B))).toFinset⊆s6Step309HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step309HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309F4_checked : compileHmrHybridF4Log s6Step309HeadFvAfter 828 890 s6Step309Add0A s6Step309Add0B s6Step309Add1A s6Step309Add1B [793] [814] s6Step309Add0Work s6Step309Add1Work=some s6Step309F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step309HeadFvAfter s6Step309F4FlagArena s6Step309Add0Arena s6Step309Add0During s6Step309Add1During 828 890
    s6Step309Add0A s6Step309Add0B s6Step309Add1A s6Step309Add1B [793] [814] s6Step309Add0Work s6Step309Add1Work
    (fun q hq => s6Step309F4_owned (List.mem_toFinset.mpr hq)) s6Step309F4_flag s6Step309F4_carry
    s6Step309F4_distinct s6Step309F4_apart s6Step309Add0_checked s6Step309Add1_checked

private theorem s6Step309Front_branch : s6Step309FrontSigmaArena.checkBorrow 1 [890]=some s6Step309HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step309FrontSigmaArena,s6Step309EntryGvAfter,s6Step309EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step309FrontSigmaArena,s6Step309EntryGvAfter,s6Step309EntryFBefore,s6Step309HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step309Front_entry : HmrFrontEntryValid s6Step309EntryFBefore s6Step309FrontBank 116 169 ⟨115,115,170,169⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step309FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step309EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step309EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (891≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step309FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step309Front_sigma : s6Step309EntryGvAfter.checkBorrow 1 [828]=some s6Step309FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step309EntryGvAfter,s6Step309EntryFBefore,arenaWires]
  · rfl

private def s6Step309HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309HeadFBefore : Arena := s6Step309HeadGAfter

private def s6Step309HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371],795⟩

private def s6Step309HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823],776⟩

private def s6Step309HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115],777⟩

private def s6Step309HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869],775⟩

private theorem s6Step309HeadBank_incomingDistinct : ([s6Step309HeadGRow,s6Step309HeadFRow,s6Step309HeadGvRow,s6Step309HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309HeadF_Incoming : rowsOwned s6Step309HeadFBefore [s6Step309HeadFRow,s6Step309HeadGvRow,s6Step309HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309HeadGRow,s6Step309HeadFRow,s6Step309HeadGvRow,s6Step309HeadFvRow] 1 s6Step309HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309HeadBank_outgoingOwned : rowsOwned s6Step309HeadFvAfter [s6Step309HeadGOut,s6Step309HeadFOut,s6Step309HeadGvOut,s6Step309HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step309HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309HeadF_Outgoing : rowsOwned s6Step309HeadFvAfter [s6Step309HeadFOut,s6Step309HeadGvOut,s6Step309HeadFvOut] :=
  hmrRows_owned_drop s6Step309HeadFvAfter [s6Step309HeadGOut,s6Step309HeadFOut,s6Step309HeadGvOut,s6Step309HeadFvOut] 1 s6Step309HeadBank_outgoingOwned

private theorem s6Step309HeadF_distinct : (s6Step309HeadFRow.sign::s6Step309HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309HeadF_owned : (s6Step309HeadFRow.sign::s6Step309HeadFRow.payload).toFinset⊆s6Step309HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309HeadF_reserved : s6Step309HeadFBefore.reserve s6Step309HeadFFresh.toFinset=some s6Step309HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step309HeadFFresh,arenaWires]
  · norm_num [s6Step309HeadFBefore,s6Step309HeadGAfter,s6Step309HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step309HeadFAfter,s6Step309HeadFBefore,s6Step309HeadGAfter,s6Step309HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step309HeadF_checked : planRowResizeLog s6Step309HeadFBefore s6Step309HeadFRow 117 s6Step309HeadFFresh=
    some (s6Step309HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 841],795⟩,growRow 795 s6Step309HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step309HeadFBefore s6Step309HeadFAfter s6Step309HeadFRow 117 s6Step309HeadFFresh
    s6Step309HeadF_distinct s6Step309HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step309HeadF_reserved
  have rowEq : WindowRow.mk (s6Step309HeadFRow.payload++s6Step309HeadFFresh) s6Step309HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 841],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step309HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step309HeadFvBefore : Arena := s6Step309HeadGvAfter

private theorem s6Step309HeadFv_Incoming : rowsOwned s6Step309HeadFvBefore [s6Step309HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309HeadGRow,s6Step309HeadFRow,s6Step309HeadGvRow,s6Step309HeadFvRow] 3 s6Step309HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309HeadFv_Outgoing : rowsOwned s6Step309HeadFvAfter [s6Step309HeadFvOut] :=
  hmrRows_owned_drop s6Step309HeadFvAfter [s6Step309HeadGOut,s6Step309HeadFOut,s6Step309HeadGvOut,s6Step309HeadFvOut] 3 s6Step309HeadBank_outgoingOwned

private theorem s6Step309HeadFv_distinct : (s6Step309HeadFvRow.sign::s6Step309HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309HeadFv_owned : (s6Step309HeadFvRow.sign::s6Step309HeadFvRow.payload).toFinset⊆s6Step309HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309HeadFv_reserved : s6Step309HeadFvBefore.reserve s6Step309HeadFvFresh.toFinset=some s6Step309HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step309HeadFvFresh,arenaWires]
  · norm_num [s6Step309HeadFvBefore,s6Step309HeadGvAfter,s6Step309HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step309HeadFvAfter,s6Step309HeadFvBefore,s6Step309HeadGvAfter,s6Step309HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step309HeadFv_checked : planRowResizeLog s6Step309HeadFvBefore s6Step309HeadFvRow 170 s6Step309HeadFvFresh=
    some (s6Step309HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796],776⟩,growRow 776 s6Step309HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step309HeadFvBefore s6Step309HeadFvAfter s6Step309HeadFvRow 170 s6Step309HeadFvFresh
    s6Step309HeadFv_distinct s6Step309HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step309HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step309HeadFvRow.payload++s6Step309HeadFvFresh) s6Step309HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step309HeadG_Incoming : rowsOwned s6Step309HeadGBefore [s6Step309HeadGRow,s6Step309HeadFRow,s6Step309HeadGvRow,s6Step309HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309HeadGRow,s6Step309HeadFRow,s6Step309HeadGvRow,s6Step309HeadFvRow] 0 s6Step309HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309HeadG_Outgoing : rowsOwned s6Step309HeadFvAfter [s6Step309HeadGOut,s6Step309HeadFOut,s6Step309HeadGvOut,s6Step309HeadFvOut] :=
  hmrRows_owned_drop s6Step309HeadFvAfter [s6Step309HeadGOut,s6Step309HeadFOut,s6Step309HeadGvOut,s6Step309HeadFvOut] 0 s6Step309HeadBank_outgoingOwned

private theorem s6Step309HeadG_distinct : (s6Step309HeadGRow.sign::s6Step309HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309HeadG_owned : (s6Step309HeadGRow.sign::s6Step309HeadGRow.payload).toFinset⊆s6Step309HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309HeadG_reserved : s6Step309HeadGBefore.reserve s6Step309HeadGFresh.toFinset=some s6Step309HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step309HeadGFresh,arenaWires]
  · norm_num [s6Step309HeadGBefore,s6Step309HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step309HeadGAfter,s6Step309HeadGBefore,s6Step309HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step309HeadG_checked : planRowResizeLog s6Step309HeadGBefore s6Step309HeadGRow 117 s6Step309HeadGFresh=
    some (s6Step309HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 821],777⟩,growRow 777 s6Step309HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step309HeadGBefore s6Step309HeadGAfter s6Step309HeadGRow 117 s6Step309HeadGFresh
    s6Step309HeadG_distinct s6Step309HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step309HeadG_reserved
  have rowEq : WindowRow.mk (s6Step309HeadGRow.payload++s6Step309HeadGFresh) s6Step309HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 821],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step309HeadGvBefore : Arena := s6Step309HeadFAfter

private theorem s6Step309HeadGv_Incoming : rowsOwned s6Step309HeadGvBefore [s6Step309HeadGvRow,s6Step309HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step309HeadGRow,s6Step309HeadFRow,s6Step309HeadGvRow,s6Step309HeadFvRow] 2 s6Step309HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step309HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step309HeadGv_Outgoing : rowsOwned s6Step309HeadFvAfter [s6Step309HeadGvOut,s6Step309HeadFvOut] :=
  hmrRows_owned_drop s6Step309HeadFvAfter [s6Step309HeadGOut,s6Step309HeadFOut,s6Step309HeadGvOut,s6Step309HeadFvOut] 2 s6Step309HeadBank_outgoingOwned

private theorem s6Step309HeadGv_distinct : (s6Step309HeadGvRow.sign::s6Step309HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step309HeadGv_owned : (s6Step309HeadGvRow.sign::s6Step309HeadGvRow.payload).toFinset⊆s6Step309HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step309HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step309HeadGv_reserved : s6Step309HeadGvBefore.reserve s6Step309HeadGvFresh.toFinset=some s6Step309HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step309HeadGvFresh,arenaWires]
  · norm_num [s6Step309HeadGvBefore,s6Step309HeadFAfter,s6Step309HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step309HeadGvAfter,s6Step309HeadGvBefore,s6Step309HeadFAfter,s6Step309HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step309HeadGv_checked : planRowResizeLog s6Step309HeadGvBefore s6Step309HeadGvRow 170 s6Step309HeadGvFresh=
    some (s6Step309HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 857],775⟩,growRow 775 s6Step309HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step309HeadGvBefore s6Step309HeadGvAfter s6Step309HeadGvRow 170 s6Step309HeadGvFresh
    s6Step309HeadGv_distinct s6Step309HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step309HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step309HeadGvRow.payload++s6Step309HeadGvFresh) s6Step309HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 857],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step309HeadBank_rows : planWindowRowsLog s6Step309HeadGBefore [(s6Step309HeadGRow,117),(s6Step309HeadFRow,117),(s6Step309HeadGvRow,170),(s6Step309HeadFvRow,170)] [s6Step309HeadGFresh,s6Step309HeadFFresh,s6Step309HeadGvFresh,s6Step309HeadFvFresh]=
    some (s6Step309HeadFvAfter,[s6Step309HeadGOut,s6Step309HeadFOut,s6Step309HeadGvOut,s6Step309HeadFvOut],(growRow 777 s6Step309HeadGFresh ++ (growRow 795 s6Step309HeadFFresh ++ (growRow 775 s6Step309HeadGvFresh ++ (growRow 776 s6Step309HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step309HeadFvAfter [] []=some (s6Step309HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step309HeadFvBefore s6Step309HeadFvAfter s6Step309HeadFvAfter
    s6Step309HeadFvRow s6Step309HeadFvOut 170 s6Step309HeadFvFresh [] [] []
    (growRow 776 s6Step309HeadFvFresh) ([]) s6Step309HeadFv_Incoming s6Step309HeadFv_checked h4 s6Step309HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step309HeadGvBefore s6Step309HeadGvAfter s6Step309HeadFvAfter
    s6Step309HeadGvRow s6Step309HeadGvOut 170 s6Step309HeadGvFresh [(s6Step309HeadFvRow,170)] [s6Step309HeadFvFresh] [s6Step309HeadFvOut]
    (growRow 775 s6Step309HeadGvFresh) ((growRow 776 s6Step309HeadFvFresh ++ [])) s6Step309HeadGv_Incoming s6Step309HeadGv_checked h3 s6Step309HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step309HeadFBefore s6Step309HeadFAfter s6Step309HeadFvAfter
    s6Step309HeadFRow s6Step309HeadFOut 117 s6Step309HeadFFresh [(s6Step309HeadGvRow,170),(s6Step309HeadFvRow,170)] [s6Step309HeadGvFresh,s6Step309HeadFvFresh] [s6Step309HeadGvOut,s6Step309HeadFvOut]
    (growRow 795 s6Step309HeadFFresh) ((growRow 775 s6Step309HeadGvFresh ++ (growRow 776 s6Step309HeadFvFresh ++ []))) s6Step309HeadF_Incoming s6Step309HeadF_checked h2 s6Step309HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step309HeadGBefore s6Step309HeadGAfter s6Step309HeadFvAfter
    s6Step309HeadGRow s6Step309HeadGOut 117 s6Step309HeadGFresh [(s6Step309HeadFRow,117),(s6Step309HeadGvRow,170),(s6Step309HeadFvRow,170)] [s6Step309HeadFFresh,s6Step309HeadGvFresh,s6Step309HeadFvFresh] [s6Step309HeadFOut,s6Step309HeadGvOut,s6Step309HeadFvOut]
    (growRow 777 s6Step309HeadGFresh) ((growRow 795 s6Step309HeadFFresh ++ (growRow 775 s6Step309HeadGvFresh ++ (growRow 776 s6Step309HeadFvFresh ++ [])))) s6Step309HeadG_Incoming s6Step309HeadG_checked h1 s6Step309HeadG_Outgoing
  exact h0

private theorem s6Step309HeadBank_checked : compileHmrBankResizeLog .headroom s6Step309HeadGBefore ⟨s6Step309HeadFRow,s6Step309HeadGRow,s6Step309HeadFvRow,s6Step309HeadGvRow⟩ ⟨117,117,170,170⟩ [s6Step309HeadGFresh,s6Step309HeadFFresh,s6Step309HeadGvFresh,s6Step309HeadFvFresh]=
    some (s6Step309HeadFvAfter,⟨s6Step309HeadFOut,s6Step309HeadGOut,s6Step309HeadFvOut,s6Step309HeadGvOut⟩,(growRow 777 s6Step309HeadGFresh ++ (growRow 795 s6Step309HeadFFresh ++ (growRow 775 s6Step309HeadGvFresh ++ (growRow 776 s6Step309HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step309HeadBank_rows]
  rfl

private theorem s6Step309Front_checked : compileHmrSourceFrontLog s6Step309EntryFBefore s6Step309FrontBank 116 169 ⟨115,115,170,169⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step309FrontLog=some s6Step309FrontPlan := by
  have pairEq : s6Step309FrontPair=⟨s6Step309HeadFRow,s6Step309HeadGRow,s6Step309HeadFvRow,s6Step309HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step309FrontHead=⟨s6Step309ExitFRow,s6Step309ExitGRow,s6Step309ExitFvRow,s6Step309ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step309Add0A=s6Step309FrontHead.f.wires := by decide +kernel
  have gEq : s6Step309Add0B=s6Step309FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step309Add1A=s6Step309FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step309Add1B=s6Step309FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step309EntryFBefore s6Step309FrontBank 116 169 ⟨115,115,170,169⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step309FrontLog s6Step309FrontPlan
  · exact s6Step309Front_entry
  · exact s6Step309EntryBank_checked
  · exact s6Step309Front_sigma
  · rfl
  · exact s6Step309Front_branch
  · rfl
  · simpa only [s6Step309FrontPlan,pairEq] using s6Step309HeadBank_checked
  · simpa only [s6Step309FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step309F4_checked
  · exact s6Step309Counter_checked
  · rfl
  · simpa only [s6Step309FrontPlan,headEq] using s6Step309ExitBank_checked

private theorem s6Step309Complete_explicit_checked : compileHmrEarlyStepLog s6Step309EntryFBefore s6Step309FrontBank 116 169 ⟨115,115,170,169⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step309CompleteLog=some s6Step309CompletePlan := by
  let Q := s6Step309EarlyControlPlan
  have hq := s6Step309EarlyControl_plan_checked
  have fv1 : s6Step309CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step309CompleteOut.fv.payload[2]?.getD s6Step309CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step309CompleteOut.fv.payload[3]?.getD s6Step309CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step309CompleteOut.fv.payload[4]?.getD s6Step309CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step309EntryFBefore s6Step309EarlyControlArena s6Step309FrontBank 116 169 ⟨115,115,170,169⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step309CompleteLog s6Step309FrontPlan Q
    s6Step309Front_checked s6Step309Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step309Complete_owned s6Step309Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step309EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 828 s6Step309CompleteOut.fv.second (s6Step309CompleteOut.fv.payload[2]?.getD s6Step309CompleteOut.fv.sign) (s6Step309CompleteOut.fv.payload[3]?.getD s6Step309CompleteOut.fv.sign) (s6Step309CompleteOut.fv.payload[4]?.getD s6Step309CompleteOut.fv.sign) 890 56 s6Step309EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep309Arena : Arena := s6Step309EntryFBefore
def s6PrivateStep309Bank : WindowBank := s6Step309FrontBank
def s6PrivateStep309Spec : HmrSourceWalkStepLog := ⟨116,169,⟨115,115,170,169⟩,56,.early s6Step309CompleteLog⟩
def s6PrivateStep309Plan : HmrSourceStepPlan := .early s6Step309CompletePlan
theorem s6PrivateStep309_source : s6PrivateStep309Spec=s6ObservedLogs304[5] := rfl
theorem s6PrivateStep309_checked : compileHmrSourceStepLog s6PrivateStep309Arena s6PrivateStep309Bank
    s6PrivateStep309Spec.fgWidth s6PrivateStep309Spec.vWidth s6PrivateStep309Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]
    6 498 309 s6PrivateStep309Spec.need none s6PrivateStep309Spec.log=some s6PrivateStep309Plan := by
  change compileHmrSourceStepLog s6Step309EntryFBefore s6Step309FrontBank 116 169 ⟨115,115,170,169⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 6 498 309 56 none (.early s6Step309CompleteLog)=some (.early s6Step309CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 309<498)]
  rw [s6Step309Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
