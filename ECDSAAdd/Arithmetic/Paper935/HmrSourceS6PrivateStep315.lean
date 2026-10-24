import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep313
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

private def s6Step315CompleteMoves : List (Wire × Wire) := [(864,112)]

private def s6Step315EarlyControlLog : HmrEarlyControlLog := ⟨[864, 786, 850, 841, 793],[814],[865],[803, 830, 805, 817, 812, 915],[]⟩

private def s6Step315FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [786]],[[814], [793], [850], [841]],[[], [], [], []]⟩,[839],[843],[865],[803],[830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 803, 830, 805]⟩

private def s6Step315CompleteLog : HmrEarlyStepLog := ⟨s6Step315FrontLog,s6Step315CompleteMoves,s6Step315EarlyControlLog⟩

private def s6Step315ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩

private def s6Step315ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩

private def s6Step315ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],777⟩

private def s6Step315ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩

private def s6Step315FrontOut : WindowBank := ⟨s6Step315ExitFOut,s6Step315ExitGOut,s6Step315ExitFvOut,s6Step315ExitGvOut⟩

private def s6Step315CompleteOut : WindowBank := s6Step315FrontOut.repacked s6Step315CompleteMoves

private def s6Step315EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step315EarlyControlPositiveArena,[814],s6Step315EarlyControlEqualityArena,[865],⟨⟨839,false⟩,[⟨⟨814,false⟩,865⟩]⟩⟩

private def s6Step315EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,864⟩,⟨⟨772,false⟩,786⟩,⟨⟨771,false⟩,850⟩,⟨⟨770,false⟩,841⟩,⟨⟨769,false⟩,793⟩]⟩

private def s6Step315EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step315EarlyControlZeroArena,s6Step315EarlyControlZeroPlan,s6Step315EarlyControlClassPlan,s6Step315EarlyControlFlagArena,s6Step315EarlyControlFittedArena,s6Step315EarlyControlHistoryArena,s6Step315EarlyControlSigmaArena,s6Step315EarlyControlOutputArena,s6Step315EarlyControlLog⟩

private def s6Step315CounterWork : List Wire := [865, 803, 830, 805]

private theorem s6Step315Counter_bounded : s6Step315CounterWork.toFinset⊆arenaWires := by norm_num [s6Step315CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step315HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315CounterDuring : Arena := ⟨s6Step315HeadFvAfter.live∪s6Step315CounterWork.toFinset,Finset.union_subset s6Step315HeadFvAfter.bounded s6Step315Counter_bounded⟩

private def s6Step315EntryFFresh : List Wire := []

private def s6Step315EntryFvFresh : List Wire := []

private def s6Step315EntryGFresh : List Wire := []

private def s6Step315EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315EntryGvFresh : List Wire := [786]

private def s6Step315ExitFExtra : List Wire := [793]

private def s6Step315ExitFvExtra : List Wire := [841]

private def s6Step315ExitGExtra : List Wire := [112, 814]

private def s6Step315ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<112) ∨ (113≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315ExitGvExtra : List Wire := [786, 850]

private def s6Step315Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step315Add0_bounded : s6Step315Add0Work.toFinset⊆arenaWires := by
  have h : s6Step315Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step315Add0During : Arena := ⟨s6Step315Add0Arena.live∪s6Step315Add0Work.toFinset,Finset.union_subset s6Step315Add0Arena.bounded s6Step315Add0_bounded⟩

private def s6Step315Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step315Add1_bounded : s6Step315Add1Work.toFinset⊆arenaWires := by
  have h : s6Step315Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step315Add1During : Arena := ⟨s6Step315Add1Arena.live∪s6Step315Add1Work.toFinset,Finset.union_subset s6Step315Add1Arena.bounded s6Step315Add1_bounded⟩

private def s6Step315F4FlagArena : Arena := ⟨s6Step315HeadFvAfter.live∪{865},Finset.union_subset s6Step315HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step315F4Plan : HmrHybridF4Plan := ⟨s6Step315F4FlagArena,[865],s6Step315Add0Arena,[803],s6Step315Add0During,s6Step315Add0Work,s6Step315Add1During,s6Step315Add1Work⟩

private def s6Step315HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 793],795⟩

private def s6Step315HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 841],776⟩

private def s6Step315HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 814],777⟩

private def s6Step315HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 786, 850],775⟩

private def s6Step315FrontHead : WindowBank := ⟨s6Step315HeadFOut,s6Step315HeadGOut,s6Step315HeadFvOut,s6Step315HeadGvOut⟩

private def s6Step315EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩

private def s6Step315EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩

private def s6Step315EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112],777⟩

private def s6Step315EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 786],775⟩

private def s6Step315FrontPair : WindowBank := ⟨s6Step315EntryFOut,s6Step315EntryGOut,s6Step315EntryFvOut,s6Step315EntryGvOut⟩

private def s6Step315FrontSigmaArena : Arena := ⟨s6Step315EntryGvAfter.live∪{839},Finset.union_subset s6Step315EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step315HeadFFresh : List Wire := [793]

private def s6Step315HeadFvFresh : List Wire := [841]

private def s6Step315HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315HeadGFresh : List Wire := [814]

private def s6Step315HeadGvFresh : List Wire := [850]

private def s6Step315FrontPlan : HmrSourceFront := ⟨s6Step315EntryGvAfter,s6Step315FrontPair,(growRow 795 s6Step315EntryFFresh ++ (growRow 777 s6Step315EntryGFresh ++ (growRow 776 s6Step315EntryFvFresh ++ (growRow 775 s6Step315EntryGvFresh ++ [])))),s6Step315FrontSigmaArena,[839],s6Step315HeadGBefore,[843],
  s6Step315HeadFvAfter,s6Step315FrontHead,(growRow 777 s6Step315HeadGFresh ++ (growRow 795 s6Step315HeadFFresh ++ (growRow 775 s6Step315HeadGvFresh ++ (growRow 776 s6Step315HeadFvFresh ++ [])))),s6Step315F4Plan,s6Step315CounterDuring,s6Step315CounterWork,s6Step315ExitGvAfter,s6Step315FrontOut,(shrinkRow 777 s6Step315ExitGExtra ++ (shrinkRow 795 s6Step315ExitFExtra ++ (shrinkRow 776 s6Step315ExitFvExtra ++ (shrinkRow 775 s6Step315ExitGvExtra ++ []))))⟩

private def s6Step315CompletePlan : HmrEarlyStepPlan := ⟨s6Step315FrontPlan,s6Step315EarlyControlArena,s6Step315EarlyControlPlan,s6Step315CompleteMoves⟩

private theorem s6Step315Complete_apart : List.Disjoint (s6Step315CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [839, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] := by
  have nd : ((s6Step315CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[839, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step315Complete_owned : (s6Step315CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step315EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step315CompleteMoveArena : Arena := ⟨s6Step315ExitGvAfter.live∪{112},Finset.union_subset s6Step315ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step315Complete_repack : s6Step315ExitGvAfter.checkRepack s6Step315CompleteMoves=some s6Step315EarlyControlArena := by
  have owned : 864∈s6Step315ExitGvAfter.live := by norm_num [s6Step315ExitGvAfter,arenaWires]
  have reserve : s6Step315ExitGvAfter.reserve {112}=some s6Step315CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step315ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step315CompleteMoveArena.retireSet {864}=s6Step315EarlyControlArena := by
    unfold Arena.retireSet s6Step315EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step315CompleteMoveArena,s6Step315ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step315CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step315CompleteMoveArena.retireSet {864}).checkRepack []=some s6Step315EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step315EarlyControl_branchOwned : ([843] : List Wire).toFinset⊆s6Step315EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EarlyControl_branch : compileHmrBranchRetirement s6Step315EarlyControlSigmaArena 843=some s6Step315EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step315EarlyControl_branchOwned
  · ext q
    simp [s6Step315EarlyControlOutputArena,s6Step315EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step315EarlyControl_classEqualityBorrow : s6Step315EarlyControlPositiveArena.checkBorrow (([839, 814] : List Wire).length-1) s6Step315EarlyControlLog.classWork=some s6Step315EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step315EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step315EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step315EarlyControlEqualityArena,s6Step315EarlyControlPositiveArena,s6Step315EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step315EarlyControl_classEqualityOwned : ([839, 814] : List Wire).toFinset⊆s6Step315EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EarlyControl_classEquality : compileHmrEqualityLog s6Step315EarlyControlPositiveArena [839, 814] 0 s6Step315EarlyControlLog.classWork=some (s6Step315EarlyControlEqualityArena,s6Step315EarlyControlLog.classWork,s6Step315EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step315EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step315EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step315EarlyControl_classOwned : ([769, 793, 839] : List Wire).toFinset⊆s6Step315EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EarlyControl_positiveBorrow : s6Step315EarlyControlZeroArena.checkBorrow (1) s6Step315EarlyControlLog.positiveWork=some s6Step315EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step315EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step315EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step315EarlyControlPositiveArena,s6Step315EarlyControlZeroArena,s6Step315EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step315EarlyControl_class : compileHmrSourceClassLog s6Step315EarlyControlZeroArena false 769 s6Step315EarlyControlZeroPlan.top 0 839 s6Step315EarlyControlLog.positiveWork s6Step315EarlyControlLog.classWork=some s6Step315EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step315EarlyControlClassPlan s6Step315EarlyControlZeroArena false 769 s6Step315EarlyControlZeroPlan.top 0 839
  constructor
  · decide +kernel
  · exact s6Step315EarlyControl_classOwned
  · exact s6Step315EarlyControl_positiveBorrow
  · exact s6Step315EarlyControl_classEquality

private theorem s6Step315EarlyControl_entryRecordOwned : ([843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step315EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EarlyControl_entrySigmaOwned : ([839, 254] : List Wire).toFinset⊆s6Step315EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EarlyControl_fitBorrow : s6Step315EarlyControlFlagArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step315EarlyControlLog.recordFresh=some s6Step315EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step315EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step315EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step315EarlyControlFittedArena,s6Step315EarlyControlFlagArena,s6Step315EarlyControlLog,arenaWires]

private theorem s6Step315EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step315EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EarlyControl_fit : compileHmrRecordGrowLog s6Step315EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step315EarlyControlLog.recordFresh=some s6Step315EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step315EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step315EarlyControl_fitBorrow

private theorem s6Step315EarlyControl_flagsBorrow : s6Step315EarlyControlEqualityArena.checkBorrow (6) s6Step315EarlyControlLog.flagWork=some s6Step315EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step315EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step315EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step315EarlyControlFlagArena,s6Step315EarlyControlEqualityArena,s6Step315EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step315EarlyControl_flagsOwned : ([865, 253, 252, 251] : List Wire).toFinset⊆s6Step315EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EarlyControl_flags : compileHmrFlagsLog s6Step315EarlyControlClassPlan.equalityArena s6Step315EarlyControlClassPlan.equality.top 253 252 251 s6Step315EarlyControlLog.flagWork=some s6Step315EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step315EarlyControl_flagsOwned⟩
  · exact s6Step315EarlyControl_flagsBorrow

private theorem s6Step315EarlyControl_historyBorrow : s6Step315EarlyControlArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step315EarlyControlLog.recordFresh=some s6Step315EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step315EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step315EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step315EarlyControlHistoryArena,s6Step315EarlyControlArena,s6Step315EarlyControlLog,arenaWires]

private theorem s6Step315EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step315EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EarlyControl_history : compileHmrRecordGrowLog s6Step315EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step315EarlyControlLog.recordFresh=some s6Step315EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step315EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step315EarlyControl_historyBorrow

private theorem s6Step315EarlyControl_sigmaOwned : ([254, 839] : List Wire).toFinset⊆s6Step315EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EarlyControl_sigmaReleaseOwned : ([839] : List Wire).toFinset⊆s6Step315EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EarlyControl_sigmaRelease : s6Step315EarlyControlHistoryArena.release {839} (fun _ => false)=some s6Step315EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step315EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step315EarlyControlSigmaArena,s6Step315EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step315EarlyControl_sigma : compileHmrSigmaDropLog s6Step315EarlyControlHistoryArena false 0 0 254 839 []=some s6Step315EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step315EarlyControl_sigmaOwned⟩
  · exact s6Step315EarlyControl_sigmaRelease

private theorem s6Step315EarlyControl_zeroBorrow : s6Step315EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step315EarlyControlLog.zeroWork=some s6Step315EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step315EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step315EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step315EarlyControlZeroArena,s6Step315EarlyControlArena,s6Step315EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step315EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step315EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step315EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<864) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EarlyControl_zero : compileHmrEqualityLog s6Step315EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step315EarlyControlLog.zeroWork=some (s6Step315EarlyControlZeroArena,s6Step315EarlyControlLog.zeroWork,s6Step315EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step315EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step315EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step315EarlyControl_logged : s6Step315EarlyControlPlan.Logged s6Step315EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 254 253 252 251 843 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step315EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step315EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step315EarlyControl_zero
  · exact s6Step315EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step315EarlyControl_flags
  · exact s6Step315EarlyControl_fit
  · exact s6Step315EarlyControl_history
  · exact s6Step315EarlyControl_sigma
  · exact s6Step315EarlyControl_branch

private theorem s6Step315EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step315EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 254 253 252 251 843 56 s6Step315EarlyControlLog=some s6Step315EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step315EarlyControlPlan s6Step315EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 254 253 252 251 843 56 s6Step315EarlyControl_logged

private def s6Step315EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩

private def s6Step315EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩

private def s6Step315EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112],777⟩

private def s6Step315EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩

private def s6Step315FrontBank : WindowBank := ⟨s6Step315EntryFRow,s6Step315EntryGRow,s6Step315EntryFvRow,s6Step315EntryGvRow⟩

private def s6Step315Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 793, 795]

private def s6Step315Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 814, 777]

private def s6Step315Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 841, 776]

private def s6Step315Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 786, 850, 775]

private theorem s6Step315Counter_apart : Disjoint s6Step315HeadFvAfter.live s6Step315CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step315HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315Counter_borrowed : s6Step315HeadFvAfter.checkBorrow 4 s6Step315CounterWork=some s6Step315CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step315HeadFvAfter s6Step315CounterDuring s6Step315CounterWork.toFinset s6Step315Counter_bounded s6Step315Counter_apart rfl

private theorem s6Step315Counter_owned : (839::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step315HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step315HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315Counter_checked : compileHmrCounterStepLog s6Step315HeadFvAfter true 839 [774, 773, 772, 771, 770, 769] s6Step315CounterWork=some s6Step315CounterDuring := by
  have owned : ∀q∈839::[774, 773, 772, 771, 770, 769],q∈s6Step315HeadFvAfter.live := fun q hq => s6Step315Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step315Counter_borrowed

private def s6Step315EntryFAfter : Arena := s6Step315EntryFBefore

private theorem s6Step315EntryBank_incomingDistinct : ([s6Step315EntryFRow,s6Step315EntryGRow,s6Step315EntryFvRow,s6Step315EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315EntryF_Incoming : rowsOwned s6Step315EntryFBefore [s6Step315EntryFRow,s6Step315EntryGRow,s6Step315EntryFvRow,s6Step315EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315EntryFRow,s6Step315EntryGRow,s6Step315EntryFvRow,s6Step315EntryGvRow] 0 s6Step315EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315EntryBank_outgoingOwned : rowsOwned s6Step315EntryGvAfter [s6Step315EntryFOut,s6Step315EntryGOut,s6Step315EntryFvOut,s6Step315EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step315EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315EntryF_Outgoing : rowsOwned s6Step315EntryGvAfter [s6Step315EntryFOut,s6Step315EntryGOut,s6Step315EntryFvOut,s6Step315EntryGvOut] :=
  hmrRows_owned_drop s6Step315EntryGvAfter [s6Step315EntryFOut,s6Step315EntryGOut,s6Step315EntryFvOut,s6Step315EntryGvOut] 0 s6Step315EntryBank_outgoingOwned

private theorem s6Step315EntryF_distinct : (s6Step315EntryFRow.sign::s6Step315EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315EntryF_owned : (s6Step315EntryFRow.sign::s6Step315EntryFRow.payload).toFinset⊆s6Step315EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EntryF_reserved : s6Step315EntryFBefore.reserve s6Step315EntryFFresh.toFinset=some s6Step315EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step315EntryFFresh,arenaWires]
  · norm_num [s6Step315EntryFBefore,s6Step315EntryFFresh,arenaWires]
  · simp only [s6Step315EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step315EntryF_checked : planRowResizeLog s6Step315EntryFBefore s6Step315EntryFRow 113 s6Step315EntryFFresh=
    some (s6Step315EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩,growRow 795 s6Step315EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step315EntryFBefore s6Step315EntryFAfter s6Step315EntryFRow 113 s6Step315EntryFFresh
    s6Step315EntryF_distinct s6Step315EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step315EntryF_reserved
  have rowEq : WindowRow.mk (s6Step315EntryFRow.payload++s6Step315EntryFFresh) s6Step315EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step315EntryFvAfter : Arena := s6Step315EntryFBefore

private def s6Step315EntryFvBefore : Arena := s6Step315EntryFBefore

private theorem s6Step315EntryFv_Incoming : rowsOwned s6Step315EntryFvBefore [s6Step315EntryFvRow,s6Step315EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315EntryFRow,s6Step315EntryGRow,s6Step315EntryFvRow,s6Step315EntryGvRow] 2 s6Step315EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315EntryFv_Outgoing : rowsOwned s6Step315EntryGvAfter [s6Step315EntryFvOut,s6Step315EntryGvOut] :=
  hmrRows_owned_drop s6Step315EntryGvAfter [s6Step315EntryFOut,s6Step315EntryGOut,s6Step315EntryFvOut,s6Step315EntryGvOut] 2 s6Step315EntryBank_outgoingOwned

private theorem s6Step315EntryFv_distinct : (s6Step315EntryFvRow.sign::s6Step315EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315EntryFv_owned : (s6Step315EntryFvRow.sign::s6Step315EntryFvRow.payload).toFinset⊆s6Step315EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EntryFv_reserved : s6Step315EntryFvBefore.reserve s6Step315EntryFvFresh.toFinset=some s6Step315EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step315EntryFvFresh,arenaWires]
  · norm_num [s6Step315EntryFvBefore,s6Step315EntryFBefore,s6Step315EntryFvFresh,arenaWires]
  · simp only [s6Step315EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step315EntryFv_checked : planRowResizeLog s6Step315EntryFvBefore s6Step315EntryFvRow 173 s6Step315EntryFvFresh=
    some (s6Step315EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩,growRow 776 s6Step315EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step315EntryFvBefore s6Step315EntryFvAfter s6Step315EntryFvRow 173 s6Step315EntryFvFresh
    s6Step315EntryFv_distinct s6Step315EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step315EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step315EntryFvRow.payload++s6Step315EntryFvFresh) s6Step315EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step315EntryGAfter : Arena := s6Step315EntryFBefore

private def s6Step315EntryGBefore : Arena := s6Step315EntryFBefore

private theorem s6Step315EntryG_Incoming : rowsOwned s6Step315EntryGBefore [s6Step315EntryGRow,s6Step315EntryFvRow,s6Step315EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315EntryFRow,s6Step315EntryGRow,s6Step315EntryFvRow,s6Step315EntryGvRow] 1 s6Step315EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315EntryG_Outgoing : rowsOwned s6Step315EntryGvAfter [s6Step315EntryGOut,s6Step315EntryFvOut,s6Step315EntryGvOut] :=
  hmrRows_owned_drop s6Step315EntryGvAfter [s6Step315EntryFOut,s6Step315EntryGOut,s6Step315EntryFvOut,s6Step315EntryGvOut] 1 s6Step315EntryBank_outgoingOwned

private theorem s6Step315EntryG_distinct : (s6Step315EntryGRow.sign::s6Step315EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315EntryG_owned : (s6Step315EntryGRow.sign::s6Step315EntryGRow.payload).toFinset⊆s6Step315EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EntryG_reserved : s6Step315EntryGBefore.reserve s6Step315EntryGFresh.toFinset=some s6Step315EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step315EntryGFresh,arenaWires]
  · norm_num [s6Step315EntryGBefore,s6Step315EntryFBefore,s6Step315EntryGFresh,arenaWires]
  · simp only [s6Step315EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step315EntryG_checked : planRowResizeLog s6Step315EntryGBefore s6Step315EntryGRow 113 s6Step315EntryGFresh=
    some (s6Step315EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112],777⟩,growRow 777 s6Step315EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step315EntryGBefore s6Step315EntryGAfter s6Step315EntryGRow 113 s6Step315EntryGFresh
    s6Step315EntryG_distinct s6Step315EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step315EntryG_reserved
  have rowEq : WindowRow.mk (s6Step315EntryGRow.payload++s6Step315EntryGFresh) s6Step315EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step315EntryGvBefore : Arena := s6Step315EntryFBefore

private theorem s6Step315EntryGv_Incoming : rowsOwned s6Step315EntryGvBefore [s6Step315EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315EntryFRow,s6Step315EntryGRow,s6Step315EntryFvRow,s6Step315EntryGvRow] 3 s6Step315EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315EntryGv_Outgoing : rowsOwned s6Step315EntryGvAfter [s6Step315EntryGvOut] :=
  hmrRows_owned_drop s6Step315EntryGvAfter [s6Step315EntryFOut,s6Step315EntryGOut,s6Step315EntryFvOut,s6Step315EntryGvOut] 3 s6Step315EntryBank_outgoingOwned

private theorem s6Step315EntryGv_distinct : (s6Step315EntryGvRow.sign::s6Step315EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315EntryGv_owned : (s6Step315EntryGvRow.sign::s6Step315EntryGvRow.payload).toFinset⊆s6Step315EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315EntryGv_reserved : s6Step315EntryGvBefore.reserve s6Step315EntryGvFresh.toFinset=some s6Step315EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step315EntryGvFresh,arenaWires]
  · norm_num [s6Step315EntryGvBefore,s6Step315EntryFBefore,s6Step315EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step315EntryGvAfter,s6Step315EntryGvBefore,s6Step315EntryFBefore,s6Step315EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step315EntryGv_checked : planRowResizeLog s6Step315EntryGvBefore s6Step315EntryGvRow 173 s6Step315EntryGvFresh=
    some (s6Step315EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 786],775⟩,growRow 775 s6Step315EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step315EntryGvBefore s6Step315EntryGvAfter s6Step315EntryGvRow 173 s6Step315EntryGvFresh
    s6Step315EntryGv_distinct s6Step315EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step315EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step315EntryGvRow.payload++s6Step315EntryGvFresh) s6Step315EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 786],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step315EntryBank_rows : planWindowRowsLog s6Step315EntryFBefore [(s6Step315EntryFRow,113),(s6Step315EntryGRow,113),(s6Step315EntryFvRow,173),(s6Step315EntryGvRow,173)] [s6Step315EntryFFresh,s6Step315EntryGFresh,s6Step315EntryFvFresh,s6Step315EntryGvFresh]=
    some (s6Step315EntryGvAfter,[s6Step315EntryFOut,s6Step315EntryGOut,s6Step315EntryFvOut,s6Step315EntryGvOut],(growRow 795 s6Step315EntryFFresh ++ (growRow 777 s6Step315EntryGFresh ++ (growRow 776 s6Step315EntryFvFresh ++ (growRow 775 s6Step315EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step315EntryGvAfter [] []=some (s6Step315EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step315EntryGvBefore s6Step315EntryGvAfter s6Step315EntryGvAfter
    s6Step315EntryGvRow s6Step315EntryGvOut 173 s6Step315EntryGvFresh [] [] []
    (growRow 775 s6Step315EntryGvFresh) ([]) s6Step315EntryGv_Incoming s6Step315EntryGv_checked h4 s6Step315EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step315EntryFvBefore s6Step315EntryFvAfter s6Step315EntryGvAfter
    s6Step315EntryFvRow s6Step315EntryFvOut 173 s6Step315EntryFvFresh [(s6Step315EntryGvRow,173)] [s6Step315EntryGvFresh] [s6Step315EntryGvOut]
    (growRow 776 s6Step315EntryFvFresh) ((growRow 775 s6Step315EntryGvFresh ++ [])) s6Step315EntryFv_Incoming s6Step315EntryFv_checked h3 s6Step315EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step315EntryGBefore s6Step315EntryGAfter s6Step315EntryGvAfter
    s6Step315EntryGRow s6Step315EntryGOut 113 s6Step315EntryGFresh [(s6Step315EntryFvRow,173),(s6Step315EntryGvRow,173)] [s6Step315EntryFvFresh,s6Step315EntryGvFresh] [s6Step315EntryFvOut,s6Step315EntryGvOut]
    (growRow 777 s6Step315EntryGFresh) ((growRow 776 s6Step315EntryFvFresh ++ (growRow 775 s6Step315EntryGvFresh ++ []))) s6Step315EntryG_Incoming s6Step315EntryG_checked h2 s6Step315EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step315EntryFBefore s6Step315EntryFAfter s6Step315EntryGvAfter
    s6Step315EntryFRow s6Step315EntryFOut 113 s6Step315EntryFFresh [(s6Step315EntryGRow,113),(s6Step315EntryFvRow,173),(s6Step315EntryGvRow,173)] [s6Step315EntryGFresh,s6Step315EntryFvFresh,s6Step315EntryGvFresh] [s6Step315EntryGOut,s6Step315EntryFvOut,s6Step315EntryGvOut]
    (growRow 795 s6Step315EntryFFresh) ((growRow 777 s6Step315EntryGFresh ++ (growRow 776 s6Step315EntryFvFresh ++ (growRow 775 s6Step315EntryGvFresh ++ [])))) s6Step315EntryF_Incoming s6Step315EntryF_checked h1 s6Step315EntryF_Outgoing
  exact h0

private theorem s6Step315EntryBank_checked : compileHmrBankResizeLog .entry s6Step315EntryFBefore ⟨s6Step315EntryFRow,s6Step315EntryGRow,s6Step315EntryFvRow,s6Step315EntryGvRow⟩ ⟨113,113,173,173⟩ [s6Step315EntryFFresh,s6Step315EntryGFresh,s6Step315EntryFvFresh,s6Step315EntryGvFresh]=
    some (s6Step315EntryGvAfter,⟨s6Step315EntryFOut,s6Step315EntryGOut,s6Step315EntryFvOut,s6Step315EntryGvOut⟩,(growRow 795 s6Step315EntryFFresh ++ (growRow 777 s6Step315EntryGFresh ++ (growRow 776 s6Step315EntryFvFresh ++ (growRow 775 s6Step315EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step315EntryBank_rows]
  rfl

private def s6Step315ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<112) ∨ (113≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<112) ∨ (113≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315ExitFBefore : Arena := s6Step315ExitGAfter

private def s6Step315ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 793],795⟩

private def s6Step315ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 841],776⟩

private def s6Step315ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 814],777⟩

private def s6Step315ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 786, 850],775⟩

private theorem s6Step315ExitBank_incomingDistinct : ([s6Step315ExitGRow,s6Step315ExitFRow,s6Step315ExitFvRow,s6Step315ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315ExitF_Incoming : rowsOwned s6Step315ExitFBefore [s6Step315ExitFRow,s6Step315ExitFvRow,s6Step315ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315ExitGRow,s6Step315ExitFRow,s6Step315ExitFvRow,s6Step315ExitGvRow] 1 s6Step315ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315ExitFBefore (fun q => (0≤q ∧ q<112) ∨ (113≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315ExitBank_outgoingOwned : rowsOwned s6Step315ExitGvAfter [s6Step315ExitGOut,s6Step315ExitFOut,s6Step315ExitFvOut,s6Step315ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step315ExitGvAfter (fun q => (0≤q ∧ q<112) ∨ (113≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315ExitF_Outgoing : rowsOwned s6Step315ExitGvAfter [s6Step315ExitFOut,s6Step315ExitFvOut,s6Step315ExitGvOut] :=
  hmrRows_owned_drop s6Step315ExitGvAfter [s6Step315ExitGOut,s6Step315ExitFOut,s6Step315ExitFvOut,s6Step315ExitGvOut] 1 s6Step315ExitBank_outgoingOwned

private theorem s6Step315ExitF_distinct : (s6Step315ExitFRow.sign::s6Step315ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315ExitF_owned : (s6Step315ExitFRow.sign::s6Step315ExitFRow.payload).toFinset⊆s6Step315ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315ExitFBefore (fun q => (0≤q ∧ q<112) ∨ (113≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315ExitF_retired : s6Step315ExitFBefore.retireSet s6Step315ExitFExtra.toFinset=s6Step315ExitFAfter := by
  unfold Arena.retireSet s6Step315ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step315ExitFBefore,s6Step315ExitGAfter,s6Step315ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step315ExitF_checked : planRowResizeLog s6Step315ExitFBefore s6Step315ExitFRow 113 []=
    some (s6Step315ExitFAfter,s6Step315ExitFOut,shrinkRow 795 s6Step315ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step315ExitFBefore s6Step315ExitFRow 113 s6Step315ExitF_distinct s6Step315ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step315ExitFRow.payload.take 113) s6Step315ExitFRow.sign=s6Step315ExitFOut := by decide +kernel
  have hi : s6Step315ExitFRow.payload.drop 113=s6Step315ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step315ExitF_retired] at result
  exact result

private def s6Step315ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<112) ∨ (113≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315ExitFvBefore : Arena := s6Step315ExitFAfter

private theorem s6Step315ExitFv_Incoming : rowsOwned s6Step315ExitFvBefore [s6Step315ExitFvRow,s6Step315ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315ExitGRow,s6Step315ExitFRow,s6Step315ExitFvRow,s6Step315ExitGvRow] 2 s6Step315ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315ExitFvBefore (fun q => (0≤q ∧ q<112) ∨ (113≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315ExitFv_Outgoing : rowsOwned s6Step315ExitGvAfter [s6Step315ExitFvOut,s6Step315ExitGvOut] :=
  hmrRows_owned_drop s6Step315ExitGvAfter [s6Step315ExitGOut,s6Step315ExitFOut,s6Step315ExitFvOut,s6Step315ExitGvOut] 2 s6Step315ExitBank_outgoingOwned

private theorem s6Step315ExitFv_distinct : (s6Step315ExitFvRow.sign::s6Step315ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315ExitFv_owned : (s6Step315ExitFvRow.sign::s6Step315ExitFvRow.payload).toFinset⊆s6Step315ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315ExitFvBefore (fun q => (0≤q ∧ q<112) ∨ (113≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315ExitFv_retired : s6Step315ExitFvBefore.retireSet s6Step315ExitFvExtra.toFinset=s6Step315ExitFvAfter := by
  unfold Arena.retireSet s6Step315ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step315ExitFvBefore,s6Step315ExitFAfter,s6Step315ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step315ExitFv_checked : planRowResizeLog s6Step315ExitFvBefore s6Step315ExitFvRow 173 []=
    some (s6Step315ExitFvAfter,s6Step315ExitFvOut,shrinkRow 776 s6Step315ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step315ExitFvBefore s6Step315ExitFvRow 173 s6Step315ExitFv_distinct s6Step315ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step315ExitFvRow.payload.take 173) s6Step315ExitFvRow.sign=s6Step315ExitFvOut := by decide +kernel
  have hi : s6Step315ExitFvRow.payload.drop 173=s6Step315ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step315ExitFv_retired] at result
  exact result

private def s6Step315ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step315ExitG_Incoming : rowsOwned s6Step315ExitGBefore [s6Step315ExitGRow,s6Step315ExitFRow,s6Step315ExitFvRow,s6Step315ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315ExitGRow,s6Step315ExitFRow,s6Step315ExitFvRow,s6Step315ExitGvRow] 0 s6Step315ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315ExitG_Outgoing : rowsOwned s6Step315ExitGvAfter [s6Step315ExitGOut,s6Step315ExitFOut,s6Step315ExitFvOut,s6Step315ExitGvOut] :=
  hmrRows_owned_drop s6Step315ExitGvAfter [s6Step315ExitGOut,s6Step315ExitFOut,s6Step315ExitFvOut,s6Step315ExitGvOut] 0 s6Step315ExitBank_outgoingOwned

private theorem s6Step315ExitG_distinct : (s6Step315ExitGRow.sign::s6Step315ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315ExitG_owned : (s6Step315ExitGRow.sign::s6Step315ExitGRow.payload).toFinset⊆s6Step315ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315ExitG_retired : s6Step315ExitGBefore.retireSet s6Step315ExitGExtra.toFinset=s6Step315ExitGAfter := by
  unfold Arena.retireSet s6Step315ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step315ExitGBefore,s6Step315ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step315ExitG_checked : planRowResizeLog s6Step315ExitGBefore s6Step315ExitGRow 112 []=
    some (s6Step315ExitGAfter,s6Step315ExitGOut,shrinkRow 777 s6Step315ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step315ExitGBefore s6Step315ExitGRow 112 s6Step315ExitG_distinct s6Step315ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step315ExitGRow.payload.take 112) s6Step315ExitGRow.sign=s6Step315ExitGOut := by decide +kernel
  have hi : s6Step315ExitGRow.payload.drop 112=s6Step315ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step315ExitG_retired] at result
  exact result

private def s6Step315ExitGvBefore : Arena := s6Step315ExitFvAfter

private theorem s6Step315ExitGv_Incoming : rowsOwned s6Step315ExitGvBefore [s6Step315ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315ExitGRow,s6Step315ExitFRow,s6Step315ExitFvRow,s6Step315ExitGvRow] 3 s6Step315ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315ExitGvBefore (fun q => (0≤q ∧ q<112) ∨ (113≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315ExitGv_Outgoing : rowsOwned s6Step315ExitGvAfter [s6Step315ExitGvOut] :=
  hmrRows_owned_drop s6Step315ExitGvAfter [s6Step315ExitGOut,s6Step315ExitFOut,s6Step315ExitFvOut,s6Step315ExitGvOut] 3 s6Step315ExitBank_outgoingOwned

private theorem s6Step315ExitGv_distinct : (s6Step315ExitGvRow.sign::s6Step315ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315ExitGv_owned : (s6Step315ExitGvRow.sign::s6Step315ExitGvRow.payload).toFinset⊆s6Step315ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315ExitGvBefore (fun q => (0≤q ∧ q<112) ∨ (113≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315ExitGv_retired : s6Step315ExitGvBefore.retireSet s6Step315ExitGvExtra.toFinset=s6Step315ExitGvAfter := by
  unfold Arena.retireSet s6Step315ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step315ExitGvBefore,s6Step315ExitFvAfter,s6Step315ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step315ExitGv_checked : planRowResizeLog s6Step315ExitGvBefore s6Step315ExitGvRow 172 []=
    some (s6Step315ExitGvAfter,s6Step315ExitGvOut,shrinkRow 775 s6Step315ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step315ExitGvBefore s6Step315ExitGvRow 172 s6Step315ExitGv_distinct s6Step315ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step315ExitGvRow.payload.take 172) s6Step315ExitGvRow.sign=s6Step315ExitGvOut := by decide +kernel
  have hi : s6Step315ExitGvRow.payload.drop 172=s6Step315ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step315ExitGv_retired] at result
  exact result

private theorem s6Step315ExitBank_rows : planWindowRowsLog s6Step315ExitGBefore [(s6Step315ExitGRow,112),(s6Step315ExitFRow,113),(s6Step315ExitFvRow,173),(s6Step315ExitGvRow,172)] [[],[],[],[]]=
    some (s6Step315ExitGvAfter,[s6Step315ExitGOut,s6Step315ExitFOut,s6Step315ExitFvOut,s6Step315ExitGvOut],(shrinkRow 777 s6Step315ExitGExtra ++ (shrinkRow 795 s6Step315ExitFExtra ++ (shrinkRow 776 s6Step315ExitFvExtra ++ (shrinkRow 775 s6Step315ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step315ExitGvAfter [] []=some (s6Step315ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step315ExitGvBefore s6Step315ExitGvAfter s6Step315ExitGvAfter
    s6Step315ExitGvRow s6Step315ExitGvOut 172 [] [] [] []
    (shrinkRow 775 s6Step315ExitGvExtra) ([]) s6Step315ExitGv_Incoming s6Step315ExitGv_checked h4 s6Step315ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step315ExitFvBefore s6Step315ExitFvAfter s6Step315ExitGvAfter
    s6Step315ExitFvRow s6Step315ExitFvOut 173 [] [(s6Step315ExitGvRow,172)] [[]] [s6Step315ExitGvOut]
    (shrinkRow 776 s6Step315ExitFvExtra) ((shrinkRow 775 s6Step315ExitGvExtra ++ [])) s6Step315ExitFv_Incoming s6Step315ExitFv_checked h3 s6Step315ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step315ExitFBefore s6Step315ExitFAfter s6Step315ExitGvAfter
    s6Step315ExitFRow s6Step315ExitFOut 113 [] [(s6Step315ExitFvRow,173),(s6Step315ExitGvRow,172)] [[],[]] [s6Step315ExitFvOut,s6Step315ExitGvOut]
    (shrinkRow 795 s6Step315ExitFExtra) ((shrinkRow 776 s6Step315ExitFvExtra ++ (shrinkRow 775 s6Step315ExitGvExtra ++ []))) s6Step315ExitF_Incoming s6Step315ExitF_checked h2 s6Step315ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step315ExitGBefore s6Step315ExitGAfter s6Step315ExitGvAfter
    s6Step315ExitGRow s6Step315ExitGOut 112 [] [(s6Step315ExitFRow,113),(s6Step315ExitFvRow,173),(s6Step315ExitGvRow,172)] [[],[],[]] [s6Step315ExitFOut,s6Step315ExitFvOut,s6Step315ExitGvOut]
    (shrinkRow 777 s6Step315ExitGExtra) ((shrinkRow 795 s6Step315ExitFExtra ++ (shrinkRow 776 s6Step315ExitFvExtra ++ (shrinkRow 775 s6Step315ExitGvExtra ++ [])))) s6Step315ExitG_Incoming s6Step315ExitG_checked h1 s6Step315ExitG_Outgoing
  exact h0

private theorem s6Step315ExitBank_checked : compileHmrBankResizeLog .exit s6Step315ExitGBefore ⟨s6Step315ExitFRow,s6Step315ExitGRow,s6Step315ExitFvRow,s6Step315ExitGvRow⟩ ⟨113,112,173,172⟩ [[],[],[],[]]=
    some (s6Step315ExitGvAfter,⟨s6Step315ExitFOut,s6Step315ExitGOut,s6Step315ExitFvOut,s6Step315ExitGvOut⟩,(shrinkRow 777 s6Step315ExitGExtra ++ (shrinkRow 795 s6Step315ExitFExtra ++ (shrinkRow 776 s6Step315ExitFvExtra ++ (shrinkRow 775 s6Step315ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step315ExitBank_rows]
  rfl

private theorem s6Step315Add0_apart : Disjoint s6Step315Add0Arena.live s6Step315Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step315Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315Add0_card : s6Step315Add0Arena.live.card=902 := by
  decide +kernel

private theorem s6Step315Add0_borrowed : s6Step315Add0Arena.checkBorrow (hmrHybridCount s6Step315Add0Arena s6Step315Add0B.length) s6Step315Add0Work=some s6Step315Add0During := by
  have len : s6Step315Add0Work.length=hmrHybridCount s6Step315Add0Arena s6Step315Add0B.length := by
    rw [hmrHybridCount,s6Step315Add0_card]
    decide +kernel
  have nd : s6Step315Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step315Add0Arena s6Step315Add0During s6Step315Add0Work.toFinset s6Step315Add0_bounded s6Step315Add0_apart rfl

private theorem s6Step315Add0_distinct : (865::843::803::(s6Step315Add0A++s6Step315Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315Add0_owned : (865::843::803::(s6Step315Add0A++s6Step315Add0B)).toFinset⊆s6Step315Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step315Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315Add0_checked : compileHmrHybridCinLog s6Step315Add0Arena 843 865 803 s6Step315Add0A s6Step315Add0B s6Step315Add0Work=some s6Step315Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step315Add0Arena s6Step315Add0During 843 865 803 s6Step315Add0A s6Step315Add0B s6Step315Add0Work
    (by decide +kernel) (by decide +kernel) s6Step315Add0_distinct
    (fun q hq => s6Step315Add0_owned (List.mem_toFinset.mpr hq)) s6Step315Add0_borrowed

private theorem s6Step315Add1_apart : Disjoint s6Step315Add1Arena.live s6Step315Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step315Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315Add1_card : s6Step315Add1Arena.live.card=902 := by
  decide +kernel

private theorem s6Step315Add1_borrowed : s6Step315Add1Arena.checkBorrow (hmrHybridCount s6Step315Add1Arena s6Step315Add1B.length) s6Step315Add1Work=some s6Step315Add1During := by
  have len : s6Step315Add1Work.length=hmrHybridCount s6Step315Add1Arena s6Step315Add1B.length := by
    rw [hmrHybridCount,s6Step315Add1_card]
    decide +kernel
  have nd : s6Step315Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step315Add1Arena s6Step315Add1During s6Step315Add1Work.toFinset s6Step315Add1_bounded s6Step315Add1_apart rfl

private theorem s6Step315Add1_distinct : (865::843::803::(s6Step315Add1A++s6Step315Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315Add1_owned : (865::843::803::(s6Step315Add1A++s6Step315Add1B)).toFinset⊆s6Step315Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step315Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315Add1_checked : compileHmrHybridCinLog s6Step315Add1Arena 843 865 803 s6Step315Add1A s6Step315Add1B s6Step315Add1Work=some s6Step315Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step315Add1Arena s6Step315Add1During 843 865 803 s6Step315Add1A s6Step315Add1B s6Step315Add1Work
    (by decide +kernel) (by decide +kernel) s6Step315Add1_distinct
    (fun q hq => s6Step315Add1_owned (List.mem_toFinset.mpr hq)) s6Step315Add1_borrowed

private theorem s6Step315F4_apart : Disjoint (s6Step315Add0A++s6Step315Add0B).toFinset (s6Step315Add1A++s6Step315Add1B).toFinset := by
  have nd : ((s6Step315Add0A++s6Step315Add0B)++(s6Step315Add1A++s6Step315Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step315F4_carry : s6Step315F4FlagArena.checkBorrow 1 [803]=some s6Step315Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step315F4FlagArena,s6Step315HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step315F4FlagArena,s6Step315HeadFvAfter,s6Step315Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step315F4_distinct : (839::843::865::803::((s6Step315Add0A++s6Step315Add1A)++(s6Step315Add0B++s6Step315Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315F4_flag : s6Step315HeadFvAfter.checkBorrow 1 [865]=some s6Step315F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step315HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step315F4_owned : (839::843::((s6Step315Add0A++s6Step315Add1A)++(s6Step315Add0B++s6Step315Add1B))).toFinset⊆s6Step315HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step315HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315F4_checked : compileHmrHybridF4Log s6Step315HeadFvAfter 839 843 s6Step315Add0A s6Step315Add0B s6Step315Add1A s6Step315Add1B [865] [803] s6Step315Add0Work s6Step315Add1Work=some s6Step315F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step315HeadFvAfter s6Step315F4FlagArena s6Step315Add0Arena s6Step315Add0During s6Step315Add1During 839 843
    s6Step315Add0A s6Step315Add0B s6Step315Add1A s6Step315Add1B [865] [803] s6Step315Add0Work s6Step315Add1Work
    (fun q hq => s6Step315F4_owned (List.mem_toFinset.mpr hq)) s6Step315F4_flag s6Step315F4_carry
    s6Step315F4_distinct s6Step315F4_apart s6Step315Add0_checked s6Step315Add1_checked

private theorem s6Step315Front_branch : s6Step315FrontSigmaArena.checkBorrow 1 [843]=some s6Step315HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step315FrontSigmaArena,s6Step315EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step315FrontSigmaArena,s6Step315EntryGvAfter,s6Step315HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step315Front_entry : HmrFrontEntryValid s6Step315EntryFBefore s6Step315FrontBank 113 173 ⟨113,112,173,172⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step315FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step315EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step315EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step315FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step315Front_sigma : s6Step315EntryGvAfter.checkBorrow 1 [839]=some s6Step315FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step315EntryGvAfter,arenaWires]
  · rfl

private def s6Step315HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315HeadFBefore : Arena := s6Step315HeadGAfter

private def s6Step315HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩

private def s6Step315HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩

private def s6Step315HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112],777⟩

private def s6Step315HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 786],775⟩

private theorem s6Step315HeadBank_incomingDistinct : ([s6Step315HeadGRow,s6Step315HeadFRow,s6Step315HeadGvRow,s6Step315HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315HeadF_Incoming : rowsOwned s6Step315HeadFBefore [s6Step315HeadFRow,s6Step315HeadGvRow,s6Step315HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315HeadGRow,s6Step315HeadFRow,s6Step315HeadGvRow,s6Step315HeadFvRow] 1 s6Step315HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315HeadBank_outgoingOwned : rowsOwned s6Step315HeadFvAfter [s6Step315HeadGOut,s6Step315HeadFOut,s6Step315HeadGvOut,s6Step315HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step315HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315HeadF_Outgoing : rowsOwned s6Step315HeadFvAfter [s6Step315HeadFOut,s6Step315HeadGvOut,s6Step315HeadFvOut] :=
  hmrRows_owned_drop s6Step315HeadFvAfter [s6Step315HeadGOut,s6Step315HeadFOut,s6Step315HeadGvOut,s6Step315HeadFvOut] 1 s6Step315HeadBank_outgoingOwned

private theorem s6Step315HeadF_distinct : (s6Step315HeadFRow.sign::s6Step315HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315HeadF_owned : (s6Step315HeadFRow.sign::s6Step315HeadFRow.payload).toFinset⊆s6Step315HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315HeadF_reserved : s6Step315HeadFBefore.reserve s6Step315HeadFFresh.toFinset=some s6Step315HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step315HeadFFresh,arenaWires]
  · norm_num [s6Step315HeadFBefore,s6Step315HeadGAfter,s6Step315HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step315HeadFAfter,s6Step315HeadFBefore,s6Step315HeadGAfter,s6Step315HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step315HeadF_checked : planRowResizeLog s6Step315HeadFBefore s6Step315HeadFRow 114 s6Step315HeadFFresh=
    some (s6Step315HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 793],795⟩,growRow 795 s6Step315HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step315HeadFBefore s6Step315HeadFAfter s6Step315HeadFRow 114 s6Step315HeadFFresh
    s6Step315HeadF_distinct s6Step315HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step315HeadF_reserved
  have rowEq : WindowRow.mk (s6Step315HeadFRow.payload++s6Step315HeadFFresh) s6Step315HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 793],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step315HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step315HeadFvBefore : Arena := s6Step315HeadGvAfter

private theorem s6Step315HeadFv_Incoming : rowsOwned s6Step315HeadFvBefore [s6Step315HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315HeadGRow,s6Step315HeadFRow,s6Step315HeadGvRow,s6Step315HeadFvRow] 3 s6Step315HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315HeadFv_Outgoing : rowsOwned s6Step315HeadFvAfter [s6Step315HeadFvOut] :=
  hmrRows_owned_drop s6Step315HeadFvAfter [s6Step315HeadGOut,s6Step315HeadFOut,s6Step315HeadGvOut,s6Step315HeadFvOut] 3 s6Step315HeadBank_outgoingOwned

private theorem s6Step315HeadFv_distinct : (s6Step315HeadFvRow.sign::s6Step315HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315HeadFv_owned : (s6Step315HeadFvRow.sign::s6Step315HeadFvRow.payload).toFinset⊆s6Step315HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315HeadFv_reserved : s6Step315HeadFvBefore.reserve s6Step315HeadFvFresh.toFinset=some s6Step315HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step315HeadFvFresh,arenaWires]
  · norm_num [s6Step315HeadFvBefore,s6Step315HeadGvAfter,s6Step315HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step315HeadFvAfter,s6Step315HeadFvBefore,s6Step315HeadGvAfter,s6Step315HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step315HeadFv_checked : planRowResizeLog s6Step315HeadFvBefore s6Step315HeadFvRow 174 s6Step315HeadFvFresh=
    some (s6Step315HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 841],776⟩,growRow 776 s6Step315HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step315HeadFvBefore s6Step315HeadFvAfter s6Step315HeadFvRow 174 s6Step315HeadFvFresh
    s6Step315HeadFv_distinct s6Step315HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step315HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step315HeadFvRow.payload++s6Step315HeadFvFresh) s6Step315HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 841],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step315HeadG_Incoming : rowsOwned s6Step315HeadGBefore [s6Step315HeadGRow,s6Step315HeadFRow,s6Step315HeadGvRow,s6Step315HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315HeadGRow,s6Step315HeadFRow,s6Step315HeadGvRow,s6Step315HeadFvRow] 0 s6Step315HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315HeadG_Outgoing : rowsOwned s6Step315HeadFvAfter [s6Step315HeadGOut,s6Step315HeadFOut,s6Step315HeadGvOut,s6Step315HeadFvOut] :=
  hmrRows_owned_drop s6Step315HeadFvAfter [s6Step315HeadGOut,s6Step315HeadFOut,s6Step315HeadGvOut,s6Step315HeadFvOut] 0 s6Step315HeadBank_outgoingOwned

private theorem s6Step315HeadG_distinct : (s6Step315HeadGRow.sign::s6Step315HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315HeadG_owned : (s6Step315HeadGRow.sign::s6Step315HeadGRow.payload).toFinset⊆s6Step315HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315HeadG_reserved : s6Step315HeadGBefore.reserve s6Step315HeadGFresh.toFinset=some s6Step315HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step315HeadGFresh,arenaWires]
  · norm_num [s6Step315HeadGBefore,s6Step315HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step315HeadGAfter,s6Step315HeadGBefore,s6Step315HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step315HeadG_checked : planRowResizeLog s6Step315HeadGBefore s6Step315HeadGRow 114 s6Step315HeadGFresh=
    some (s6Step315HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 814],777⟩,growRow 777 s6Step315HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step315HeadGBefore s6Step315HeadGAfter s6Step315HeadGRow 114 s6Step315HeadGFresh
    s6Step315HeadG_distinct s6Step315HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step315HeadG_reserved
  have rowEq : WindowRow.mk (s6Step315HeadGRow.payload++s6Step315HeadGFresh) s6Step315HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 814],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step315HeadGvBefore : Arena := s6Step315HeadFAfter

private theorem s6Step315HeadGv_Incoming : rowsOwned s6Step315HeadGvBefore [s6Step315HeadGvRow,s6Step315HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step315HeadGRow,s6Step315HeadFRow,s6Step315HeadGvRow,s6Step315HeadFvRow] 2 s6Step315HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step315HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step315HeadGv_Outgoing : rowsOwned s6Step315HeadFvAfter [s6Step315HeadGvOut,s6Step315HeadFvOut] :=
  hmrRows_owned_drop s6Step315HeadFvAfter [s6Step315HeadGOut,s6Step315HeadFOut,s6Step315HeadGvOut,s6Step315HeadFvOut] 2 s6Step315HeadBank_outgoingOwned

private theorem s6Step315HeadGv_distinct : (s6Step315HeadGvRow.sign::s6Step315HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step315HeadGv_owned : (s6Step315HeadGvRow.sign::s6Step315HeadGvRow.payload).toFinset⊆s6Step315HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step315HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step315HeadGv_reserved : s6Step315HeadGvBefore.reserve s6Step315HeadGvFresh.toFinset=some s6Step315HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step315HeadGvFresh,arenaWires]
  · norm_num [s6Step315HeadGvBefore,s6Step315HeadFAfter,s6Step315HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step315HeadGvAfter,s6Step315HeadGvBefore,s6Step315HeadFAfter,s6Step315HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step315HeadGv_checked : planRowResizeLog s6Step315HeadGvBefore s6Step315HeadGvRow 174 s6Step315HeadGvFresh=
    some (s6Step315HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 786, 850],775⟩,growRow 775 s6Step315HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step315HeadGvBefore s6Step315HeadGvAfter s6Step315HeadGvRow 174 s6Step315HeadGvFresh
    s6Step315HeadGv_distinct s6Step315HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step315HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step315HeadGvRow.payload++s6Step315HeadGvFresh) s6Step315HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 786, 850],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step315HeadBank_rows : planWindowRowsLog s6Step315HeadGBefore [(s6Step315HeadGRow,114),(s6Step315HeadFRow,114),(s6Step315HeadGvRow,174),(s6Step315HeadFvRow,174)] [s6Step315HeadGFresh,s6Step315HeadFFresh,s6Step315HeadGvFresh,s6Step315HeadFvFresh]=
    some (s6Step315HeadFvAfter,[s6Step315HeadGOut,s6Step315HeadFOut,s6Step315HeadGvOut,s6Step315HeadFvOut],(growRow 777 s6Step315HeadGFresh ++ (growRow 795 s6Step315HeadFFresh ++ (growRow 775 s6Step315HeadGvFresh ++ (growRow 776 s6Step315HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step315HeadFvAfter [] []=some (s6Step315HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step315HeadFvBefore s6Step315HeadFvAfter s6Step315HeadFvAfter
    s6Step315HeadFvRow s6Step315HeadFvOut 174 s6Step315HeadFvFresh [] [] []
    (growRow 776 s6Step315HeadFvFresh) ([]) s6Step315HeadFv_Incoming s6Step315HeadFv_checked h4 s6Step315HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step315HeadGvBefore s6Step315HeadGvAfter s6Step315HeadFvAfter
    s6Step315HeadGvRow s6Step315HeadGvOut 174 s6Step315HeadGvFresh [(s6Step315HeadFvRow,174)] [s6Step315HeadFvFresh] [s6Step315HeadFvOut]
    (growRow 775 s6Step315HeadGvFresh) ((growRow 776 s6Step315HeadFvFresh ++ [])) s6Step315HeadGv_Incoming s6Step315HeadGv_checked h3 s6Step315HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step315HeadFBefore s6Step315HeadFAfter s6Step315HeadFvAfter
    s6Step315HeadFRow s6Step315HeadFOut 114 s6Step315HeadFFresh [(s6Step315HeadGvRow,174),(s6Step315HeadFvRow,174)] [s6Step315HeadGvFresh,s6Step315HeadFvFresh] [s6Step315HeadGvOut,s6Step315HeadFvOut]
    (growRow 795 s6Step315HeadFFresh) ((growRow 775 s6Step315HeadGvFresh ++ (growRow 776 s6Step315HeadFvFresh ++ []))) s6Step315HeadF_Incoming s6Step315HeadF_checked h2 s6Step315HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step315HeadGBefore s6Step315HeadGAfter s6Step315HeadFvAfter
    s6Step315HeadGRow s6Step315HeadGOut 114 s6Step315HeadGFresh [(s6Step315HeadFRow,114),(s6Step315HeadGvRow,174),(s6Step315HeadFvRow,174)] [s6Step315HeadFFresh,s6Step315HeadGvFresh,s6Step315HeadFvFresh] [s6Step315HeadFOut,s6Step315HeadGvOut,s6Step315HeadFvOut]
    (growRow 777 s6Step315HeadGFresh) ((growRow 795 s6Step315HeadFFresh ++ (growRow 775 s6Step315HeadGvFresh ++ (growRow 776 s6Step315HeadFvFresh ++ [])))) s6Step315HeadG_Incoming s6Step315HeadG_checked h1 s6Step315HeadG_Outgoing
  exact h0

private theorem s6Step315HeadBank_checked : compileHmrBankResizeLog .headroom s6Step315HeadGBefore ⟨s6Step315HeadFRow,s6Step315HeadGRow,s6Step315HeadFvRow,s6Step315HeadGvRow⟩ ⟨114,114,174,174⟩ [s6Step315HeadGFresh,s6Step315HeadFFresh,s6Step315HeadGvFresh,s6Step315HeadFvFresh]=
    some (s6Step315HeadFvAfter,⟨s6Step315HeadFOut,s6Step315HeadGOut,s6Step315HeadFvOut,s6Step315HeadGvOut⟩,(growRow 777 s6Step315HeadGFresh ++ (growRow 795 s6Step315HeadFFresh ++ (growRow 775 s6Step315HeadGvFresh ++ (growRow 776 s6Step315HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step315HeadBank_rows]
  rfl

private theorem s6Step315Front_checked : compileHmrSourceFrontLog s6Step315EntryFBefore s6Step315FrontBank 113 173 ⟨113,112,173,172⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step315FrontLog=some s6Step315FrontPlan := by
  have pairEq : s6Step315FrontPair=⟨s6Step315HeadFRow,s6Step315HeadGRow,s6Step315HeadFvRow,s6Step315HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step315FrontHead=⟨s6Step315ExitFRow,s6Step315ExitGRow,s6Step315ExitFvRow,s6Step315ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step315Add0A=s6Step315FrontHead.f.wires := by decide +kernel
  have gEq : s6Step315Add0B=s6Step315FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step315Add1A=s6Step315FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step315Add1B=s6Step315FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step315EntryFBefore s6Step315FrontBank 113 173 ⟨113,112,173,172⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step315FrontLog s6Step315FrontPlan
  · exact s6Step315Front_entry
  · exact s6Step315EntryBank_checked
  · exact s6Step315Front_sigma
  · rfl
  · exact s6Step315Front_branch
  · rfl
  · simpa only [s6Step315FrontPlan,pairEq] using s6Step315HeadBank_checked
  · simpa only [s6Step315FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step315F4_checked
  · exact s6Step315Counter_checked
  · rfl
  · simpa only [s6Step315FrontPlan,headEq] using s6Step315ExitBank_checked

private theorem s6Step315Complete_explicit_checked : compileHmrEarlyStepLog s6Step315EntryFBefore s6Step315FrontBank 113 173 ⟨113,112,173,172⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step315CompleteLog=some s6Step315CompletePlan := by
  let Q := s6Step315EarlyControlPlan
  have hq := s6Step315EarlyControl_plan_checked
  have fv1 : s6Step315CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step315CompleteOut.fv.payload[2]?.getD s6Step315CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step315CompleteOut.fv.payload[3]?.getD s6Step315CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step315CompleteOut.fv.payload[4]?.getD s6Step315CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step315EntryFBefore s6Step315EarlyControlArena s6Step315FrontBank 113 173 ⟨113,112,173,172⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step315CompleteLog s6Step315FrontPlan Q
    s6Step315Front_checked s6Step315Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step315Complete_owned s6Step315Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step315EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 s6Step315CompleteOut.fv.second (s6Step315CompleteOut.fv.payload[2]?.getD s6Step315CompleteOut.fv.sign) (s6Step315CompleteOut.fv.payload[3]?.getD s6Step315CompleteOut.fv.sign) (s6Step315CompleteOut.fv.payload[4]?.getD s6Step315CompleteOut.fv.sign) 843 56 s6Step315EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep315Arena : Arena := s6Step315EntryFBefore
def s6PrivateStep315Bank : WindowBank := s6Step315FrontBank
def s6PrivateStep315Spec : HmrSourceWalkStepLog := ⟨113,173,⟨113,112,173,172⟩,56,.early s6Step315CompleteLog⟩
def s6PrivateStep315Plan : HmrSourceStepPlan := .early s6Step315CompletePlan
theorem s6PrivateStep315_source : s6PrivateStep315Spec=s6ObservedLogs304[11] := rfl
theorem s6PrivateStep315_checked : compileHmrSourceStepLog s6PrivateStep315Arena s6PrivateStep315Bank
    s6PrivateStep315Spec.fgWidth s6PrivateStep315Spec.vWidth s6PrivateStep315Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]
    6 498 315 s6PrivateStep315Spec.need none s6PrivateStep315Spec.log=some s6PrivateStep315Plan := by
  change compileHmrSourceStepLog s6Step315EntryFBefore s6Step315FrontBank 113 173 ⟨113,112,173,172⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 6 498 315 56 none (.early s6Step315CompleteLog)=some (.early s6Step315CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 315<498)]
  rw [s6Step315Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
