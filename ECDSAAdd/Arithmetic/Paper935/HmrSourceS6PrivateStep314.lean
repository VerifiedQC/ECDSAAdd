import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep312
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

private def s6Step314CompleteMoves : List (Wire × Wire) := [(843,369)]

private def s6Step314EarlyControlLog : HmrEarlyControlLog := ⟨[843, 814, 793, 850, 841],[865],[803],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step314FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [850], [], []],[[841], [793], [814], [818]],[[], [], [], []]⟩,[839],[786],[865],[803],[830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[865, 803, 830, 805]⟩

private def s6Step314CompleteLog : HmrEarlyStepLog := ⟨s6Step314FrontLog,s6Step314CompleteMoves,s6Step314EarlyControlLog⟩

private def s6Step314ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368],795⟩

private def s6Step314ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩

private def s6Step314ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112],777⟩

private def s6Step314ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩

private def s6Step314FrontOut : WindowBank := ⟨s6Step314ExitFOut,s6Step314ExitGOut,s6Step314ExitFvOut,s6Step314ExitGvOut⟩

private def s6Step314CompleteOut : WindowBank := s6Step314FrontOut.repacked s6Step314CompleteMoves

private def s6Step314EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step314EarlyControlPositiveArena,[865],s6Step314EarlyControlEqualityArena,[803],⟨⟨839,false⟩,[⟨⟨865,false⟩,803⟩]⟩⟩

private def s6Step314EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,843⟩,⟨⟨772,false⟩,814⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,850⟩,⟨⟨769,false⟩,841⟩]⟩

private def s6Step314EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step314EarlyControlZeroArena,s6Step314EarlyControlZeroPlan,s6Step314EarlyControlClassPlan,s6Step314EarlyControlFlagArena,s6Step314EarlyControlFittedArena,s6Step314EarlyControlHistoryArena,s6Step314EarlyControlSigmaArena,s6Step314EarlyControlOutputArena,s6Step314EarlyControlLog⟩

private def s6Step314CounterWork : List Wire := [865, 803, 830, 805]

private theorem s6Step314Counter_bounded : s6Step314CounterWork.toFinset⊆arenaWires := by norm_num [s6Step314CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step314HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314CounterDuring : Arena := ⟨s6Step314HeadFvAfter.live∪s6Step314CounterWork.toFinset,Finset.union_subset s6Step314HeadFvAfter.bounded s6Step314Counter_bounded⟩

private def s6Step314EntryFFresh : List Wire := []

private def s6Step314EntryFvFresh : List Wire := []

private def s6Step314EntryGFresh : List Wire := [850]

private def s6Step314EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314EntryGvAfter : Arena := s6Step314EntryGAfter

private def s6Step314EntryGvFresh : List Wire := []

private def s6Step314ExitFExtra : List Wire := [369, 793]

private def s6Step314ExitGExtra : List Wire := [850, 841]

private def s6Step314ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<369) ∨ (370≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314ExitGvExtra : List Wire := [814]

private def s6Step314Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step314Add0_bounded : s6Step314Add0Work.toFinset⊆arenaWires := by
  have h : s6Step314Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step314Add0During : Arena := ⟨s6Step314Add0Arena.live∪s6Step314Add0Work.toFinset,Finset.union_subset s6Step314Add0Arena.bounded s6Step314Add0_bounded⟩

private def s6Step314Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 792, 849, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step314Add1_bounded : s6Step314Add1Work.toFinset⊆arenaWires := by
  have h : s6Step314Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step314Add1During : Arena := ⟨s6Step314Add1Arena.live∪s6Step314Add1Work.toFinset,Finset.union_subset s6Step314Add1Arena.bounded s6Step314Add1_bounded⟩

private def s6Step314F4FlagArena : Arena := ⟨s6Step314HeadFvAfter.live∪{865},Finset.union_subset s6Step314HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step314F4Plan : HmrHybridF4Plan := ⟨s6Step314F4FlagArena,[865],s6Step314Add0Arena,[803],s6Step314Add0During,s6Step314Add0Work,s6Step314Add1During,s6Step314Add1Work⟩

private def s6Step314HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 793],795⟩

private def s6Step314HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩

private def s6Step314HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 850, 841],777⟩

private def s6Step314HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 814],775⟩

private def s6Step314FrontHead : WindowBank := ⟨s6Step314HeadFOut,s6Step314HeadGOut,s6Step314HeadFvOut,s6Step314HeadGvOut⟩

private def s6Step314EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369],795⟩

private def s6Step314EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857],776⟩

private def s6Step314EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 850],777⟩

private def s6Step314EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩

private def s6Step314FrontPair : WindowBank := ⟨s6Step314EntryFOut,s6Step314EntryGOut,s6Step314EntryFvOut,s6Step314EntryGvOut⟩

private def s6Step314FrontSigmaArena : Arena := ⟨s6Step314EntryGvAfter.live∪{839},Finset.union_subset s6Step314EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step314HeadFFresh : List Wire := [793]

private def s6Step314HeadFvFresh : List Wire := [818]

private def s6Step314HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314HeadGFresh : List Wire := [841]

private def s6Step314HeadGvFresh : List Wire := [814]

private def s6Step314FrontPlan : HmrSourceFront := ⟨s6Step314EntryGvAfter,s6Step314FrontPair,(growRow 795 s6Step314EntryFFresh ++ (growRow 777 s6Step314EntryGFresh ++ (growRow 776 s6Step314EntryFvFresh ++ (growRow 775 s6Step314EntryGvFresh ++ [])))),s6Step314FrontSigmaArena,[839],s6Step314HeadGBefore,[786],
  s6Step314HeadFvAfter,s6Step314FrontHead,(growRow 777 s6Step314HeadGFresh ++ (growRow 795 s6Step314HeadFFresh ++ (growRow 775 s6Step314HeadGvFresh ++ (growRow 776 s6Step314HeadFvFresh ++ [])))),s6Step314F4Plan,s6Step314CounterDuring,s6Step314CounterWork,s6Step314ExitGvAfter,s6Step314FrontOut,(shrinkRow 777 s6Step314ExitGExtra ++ (shrinkRow 795 s6Step314ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step314ExitGvExtra ++ []))))⟩

private def s6Step314CompletePlan : HmrEarlyStepPlan := ⟨s6Step314FrontPlan,s6Step314EarlyControlArena,s6Step314EarlyControlPlan,s6Step314CompleteMoves⟩

private theorem s6Step314Complete_apart : List.Disjoint (s6Step314CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [839, 786, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] := by
  have nd : ((s6Step314CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[839, 786, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step314Complete_owned : (s6Step314CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step314EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step314CompleteMoveArena : Arena := ⟨s6Step314ExitGvAfter.live∪{369},Finset.union_subset s6Step314ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step314Complete_repack : s6Step314ExitGvAfter.checkRepack s6Step314CompleteMoves=some s6Step314EarlyControlArena := by
  have owned : 843∈s6Step314ExitGvAfter.live := by norm_num [s6Step314ExitGvAfter,arenaWires]
  have reserve : s6Step314ExitGvAfter.reserve {369}=some s6Step314CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step314ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step314CompleteMoveArena.retireSet {843}=s6Step314EarlyControlArena := by
    unfold Arena.retireSet s6Step314EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step314CompleteMoveArena,s6Step314ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step314CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step314CompleteMoveArena.retireSet {843}).checkRepack []=some s6Step314EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step314EarlyControl_branchOwned : ([786] : List Wire).toFinset⊆s6Step314EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EarlyControl_branch : compileHmrBranchRetirement s6Step314EarlyControlSigmaArena 786=some s6Step314EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step314EarlyControl_branchOwned
  · ext q
    simp [s6Step314EarlyControlOutputArena,s6Step314EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step314EarlyControl_classEqualityBorrow : s6Step314EarlyControlPositiveArena.checkBorrow (([839, 865] : List Wire).length-1) s6Step314EarlyControlLog.classWork=some s6Step314EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step314EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step314EarlyControlEqualityArena,s6Step314EarlyControlPositiveArena,s6Step314EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step314EarlyControl_classEqualityOwned : ([839, 865] : List Wire).toFinset⊆s6Step314EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EarlyControl_classEquality : compileHmrEqualityLog s6Step314EarlyControlPositiveArena [839, 865] 0 s6Step314EarlyControlLog.classWork=some (s6Step314EarlyControlEqualityArena,s6Step314EarlyControlLog.classWork,s6Step314EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step314EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step314EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step314EarlyControl_classOwned : ([769, 841, 839] : List Wire).toFinset⊆s6Step314EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EarlyControl_positiveBorrow : s6Step314EarlyControlZeroArena.checkBorrow (1) s6Step314EarlyControlLog.positiveWork=some s6Step314EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step314EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step314EarlyControlPositiveArena,s6Step314EarlyControlZeroArena,s6Step314EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step314EarlyControl_class : compileHmrSourceClassLog s6Step314EarlyControlZeroArena false 769 s6Step314EarlyControlZeroPlan.top 0 839 s6Step314EarlyControlLog.positiveWork s6Step314EarlyControlLog.classWork=some s6Step314EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step314EarlyControlClassPlan s6Step314EarlyControlZeroArena false 769 s6Step314EarlyControlZeroPlan.top 0 839
  constructor
  · decide +kernel
  · exact s6Step314EarlyControl_classOwned
  · exact s6Step314EarlyControl_positiveBorrow
  · exact s6Step314EarlyControl_classEquality

private theorem s6Step314EarlyControl_entryRecordOwned : ([786, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step314EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EarlyControl_entrySigmaOwned : ([839, 254] : List Wire).toFinset⊆s6Step314EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EarlyControl_fitBorrow : s6Step314EarlyControlFlagArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step314EarlyControlLog.recordFresh=some s6Step314EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step314EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step314EarlyControlFittedArena,s6Step314EarlyControlFlagArena,s6Step314EarlyControlLog,arenaWires]

private theorem s6Step314EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step314EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EarlyControl_fit : compileHmrRecordGrowLog s6Step314EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step314EarlyControlLog.recordFresh=some s6Step314EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step314EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step314EarlyControl_fitBorrow

private theorem s6Step314EarlyControl_flagsBorrow : s6Step314EarlyControlEqualityArena.checkBorrow (6) s6Step314EarlyControlLog.flagWork=some s6Step314EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step314EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step314EarlyControlFlagArena,s6Step314EarlyControlEqualityArena,s6Step314EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step314EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step314EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EarlyControl_flags : compileHmrFlagsLog s6Step314EarlyControlClassPlan.equalityArena s6Step314EarlyControlClassPlan.equality.top 253 252 251 s6Step314EarlyControlLog.flagWork=some s6Step314EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step314EarlyControl_flagsOwned⟩
  · exact s6Step314EarlyControl_flagsBorrow

private theorem s6Step314EarlyControl_historyBorrow : s6Step314EarlyControlArena.checkBorrow ((56-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).length)) s6Step314EarlyControlLog.recordFresh=some s6Step314EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step314EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step314EarlyControlHistoryArena,s6Step314EarlyControlArena,s6Step314EarlyControlLog,arenaWires]

private theorem s6Step314EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] : List Wire).toFinset⊆s6Step314EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EarlyControl_history : compileHmrRecordGrowLog s6Step314EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step314EarlyControlLog.recordFresh=some s6Step314EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step314EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step314EarlyControl_historyBorrow

private theorem s6Step314EarlyControl_sigmaOwned : ([254, 839] : List Wire).toFinset⊆s6Step314EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EarlyControl_sigmaReleaseOwned : ([839] : List Wire).toFinset⊆s6Step314EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EarlyControl_sigmaRelease : s6Step314EarlyControlHistoryArena.release {839} (fun _ => false)=some s6Step314EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step314EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step314EarlyControlSigmaArena,s6Step314EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step314EarlyControl_sigma : compileHmrSigmaDropLog s6Step314EarlyControlHistoryArena false 0 0 254 839 []=some s6Step314EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step314EarlyControl_sigmaOwned⟩
  · exact s6Step314EarlyControl_sigmaRelease

private theorem s6Step314EarlyControl_zeroBorrow : s6Step314EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step314EarlyControlLog.zeroWork=some s6Step314EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step314EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step314EarlyControlZeroArena,s6Step314EarlyControlArena,s6Step314EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step314EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step314EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step314EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EarlyControl_zero : compileHmrEqualityLog s6Step314EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step314EarlyControlLog.zeroWork=some (s6Step314EarlyControlZeroArena,s6Step314EarlyControlLog.zeroWork,s6Step314EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step314EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step314EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step314EarlyControl_logged : s6Step314EarlyControlPlan.Logged s6Step314EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 254 253 252 251 786 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step314EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step314EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step314EarlyControl_zero
  · exact s6Step314EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step314EarlyControl_flags
  · exact s6Step314EarlyControl_fit
  · exact s6Step314EarlyControl_history
  · exact s6Step314EarlyControl_sigma
  · exact s6Step314EarlyControl_branch

private theorem s6Step314EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step314EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 254 253 252 251 786 56 s6Step314EarlyControlLog=some s6Step314EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step314EarlyControlPlan s6Step314EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 254 253 252 251 786 56 s6Step314EarlyControl_logged

private def s6Step314EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369],795⟩

private def s6Step314EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857],776⟩

private def s6Step314EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112],777⟩

private def s6Step314EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩

private def s6Step314FrontBank : WindowBank := ⟨s6Step314EntryFRow,s6Step314EntryGRow,s6Step314EntryFvRow,s6Step314EntryGvRow⟩

private def s6Step314Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 793, 795]

private def s6Step314Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 850, 841, 777]

private def s6Step314Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818, 776]

private def s6Step314Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 814, 775]

private theorem s6Step314Counter_apart : Disjoint s6Step314HeadFvAfter.live s6Step314CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step314HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314Counter_borrowed : s6Step314HeadFvAfter.checkBorrow 4 s6Step314CounterWork=some s6Step314CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step314HeadFvAfter s6Step314CounterDuring s6Step314CounterWork.toFinset s6Step314Counter_bounded s6Step314Counter_apart rfl

private theorem s6Step314Counter_owned : (839::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step314HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step314HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314Counter_checked : compileHmrCounterStepLog s6Step314HeadFvAfter true 839 [774, 773, 772, 771, 770, 769] s6Step314CounterWork=some s6Step314CounterDuring := by
  have owned : ∀q∈839::[774, 773, 772, 771, 770, 769],q∈s6Step314HeadFvAfter.live := fun q hq => s6Step314Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step314Counter_borrowed

private def s6Step314EntryFAfter : Arena := s6Step314EntryFBefore

private theorem s6Step314EntryBank_incomingDistinct : ([s6Step314EntryFRow,s6Step314EntryGRow,s6Step314EntryFvRow,s6Step314EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314EntryF_Incoming : rowsOwned s6Step314EntryFBefore [s6Step314EntryFRow,s6Step314EntryGRow,s6Step314EntryFvRow,s6Step314EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314EntryFRow,s6Step314EntryGRow,s6Step314EntryFvRow,s6Step314EntryGvRow] 0 s6Step314EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314EntryBank_outgoingOwned : rowsOwned s6Step314EntryGvAfter [s6Step314EntryFOut,s6Step314EntryGOut,s6Step314EntryFvOut,s6Step314EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step314EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314EntryF_Outgoing : rowsOwned s6Step314EntryGvAfter [s6Step314EntryFOut,s6Step314EntryGOut,s6Step314EntryFvOut,s6Step314EntryGvOut] :=
  hmrRows_owned_drop s6Step314EntryGvAfter [s6Step314EntryFOut,s6Step314EntryGOut,s6Step314EntryFvOut,s6Step314EntryGvOut] 0 s6Step314EntryBank_outgoingOwned

private theorem s6Step314EntryF_distinct : (s6Step314EntryFRow.sign::s6Step314EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314EntryF_owned : (s6Step314EntryFRow.sign::s6Step314EntryFRow.payload).toFinset⊆s6Step314EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EntryF_reserved : s6Step314EntryFBefore.reserve s6Step314EntryFFresh.toFinset=some s6Step314EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step314EntryFFresh,arenaWires]
  · norm_num [s6Step314EntryFBefore,s6Step314EntryFFresh,arenaWires]
  · simp only [s6Step314EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step314EntryF_checked : planRowResizeLog s6Step314EntryFBefore s6Step314EntryFRow 114 s6Step314EntryFFresh=
    some (s6Step314EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369],795⟩,growRow 795 s6Step314EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step314EntryFBefore s6Step314EntryFAfter s6Step314EntryFRow 114 s6Step314EntryFFresh
    s6Step314EntryF_distinct s6Step314EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step314EntryF_reserved
  have rowEq : WindowRow.mk (s6Step314EntryFRow.payload++s6Step314EntryFFresh) s6Step314EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step314EntryFvAfter : Arena := s6Step314EntryGAfter

private def s6Step314EntryFvBefore : Arena := s6Step314EntryGAfter

private theorem s6Step314EntryFv_Incoming : rowsOwned s6Step314EntryFvBefore [s6Step314EntryFvRow,s6Step314EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314EntryFRow,s6Step314EntryGRow,s6Step314EntryFvRow,s6Step314EntryGvRow] 2 s6Step314EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314EntryFv_Outgoing : rowsOwned s6Step314EntryGvAfter [s6Step314EntryFvOut,s6Step314EntryGvOut] :=
  hmrRows_owned_drop s6Step314EntryGvAfter [s6Step314EntryFOut,s6Step314EntryGOut,s6Step314EntryFvOut,s6Step314EntryGvOut] 2 s6Step314EntryBank_outgoingOwned

private theorem s6Step314EntryFv_distinct : (s6Step314EntryFvRow.sign::s6Step314EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314EntryFv_owned : (s6Step314EntryFvRow.sign::s6Step314EntryFvRow.payload).toFinset⊆s6Step314EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EntryFv_reserved : s6Step314EntryFvBefore.reserve s6Step314EntryFvFresh.toFinset=some s6Step314EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step314EntryFvFresh,arenaWires]
  · norm_num [s6Step314EntryFvBefore,s6Step314EntryGAfter,s6Step314EntryFvFresh,arenaWires]
  · simp only [s6Step314EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step314EntryFv_checked : planRowResizeLog s6Step314EntryFvBefore s6Step314EntryFvRow 172 s6Step314EntryFvFresh=
    some (s6Step314EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857],776⟩,growRow 776 s6Step314EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step314EntryFvBefore s6Step314EntryFvAfter s6Step314EntryFvRow 172 s6Step314EntryFvFresh
    s6Step314EntryFv_distinct s6Step314EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step314EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step314EntryFvRow.payload++s6Step314EntryFvFresh) s6Step314EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step314EntryGBefore : Arena := s6Step314EntryFBefore

private theorem s6Step314EntryG_Incoming : rowsOwned s6Step314EntryGBefore [s6Step314EntryGRow,s6Step314EntryFvRow,s6Step314EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314EntryFRow,s6Step314EntryGRow,s6Step314EntryFvRow,s6Step314EntryGvRow] 1 s6Step314EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314EntryG_Outgoing : rowsOwned s6Step314EntryGvAfter [s6Step314EntryGOut,s6Step314EntryFvOut,s6Step314EntryGvOut] :=
  hmrRows_owned_drop s6Step314EntryGvAfter [s6Step314EntryFOut,s6Step314EntryGOut,s6Step314EntryFvOut,s6Step314EntryGvOut] 1 s6Step314EntryBank_outgoingOwned

private theorem s6Step314EntryG_distinct : (s6Step314EntryGRow.sign::s6Step314EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314EntryG_owned : (s6Step314EntryGRow.sign::s6Step314EntryGRow.payload).toFinset⊆s6Step314EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EntryG_reserved : s6Step314EntryGBefore.reserve s6Step314EntryGFresh.toFinset=some s6Step314EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step314EntryGFresh,arenaWires]
  · norm_num [s6Step314EntryGBefore,s6Step314EntryFBefore,s6Step314EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step314EntryGAfter,s6Step314EntryGBefore,s6Step314EntryFBefore,s6Step314EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step314EntryG_checked : planRowResizeLog s6Step314EntryGBefore s6Step314EntryGRow 114 s6Step314EntryGFresh=
    some (s6Step314EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 850],777⟩,growRow 777 s6Step314EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step314EntryGBefore s6Step314EntryGAfter s6Step314EntryGRow 114 s6Step314EntryGFresh
    s6Step314EntryG_distinct s6Step314EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step314EntryG_reserved
  have rowEq : WindowRow.mk (s6Step314EntryGRow.payload++s6Step314EntryGFresh) s6Step314EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 850],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step314EntryGvBefore : Arena := s6Step314EntryGAfter

private theorem s6Step314EntryGv_Incoming : rowsOwned s6Step314EntryGvBefore [s6Step314EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314EntryFRow,s6Step314EntryGRow,s6Step314EntryFvRow,s6Step314EntryGvRow] 3 s6Step314EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314EntryGv_Outgoing : rowsOwned s6Step314EntryGvAfter [s6Step314EntryGvOut] :=
  hmrRows_owned_drop s6Step314EntryGvAfter [s6Step314EntryFOut,s6Step314EntryGOut,s6Step314EntryFvOut,s6Step314EntryGvOut] 3 s6Step314EntryBank_outgoingOwned

private theorem s6Step314EntryGv_distinct : (s6Step314EntryGvRow.sign::s6Step314EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314EntryGv_owned : (s6Step314EntryGvRow.sign::s6Step314EntryGvRow.payload).toFinset⊆s6Step314EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314EntryGv_reserved : s6Step314EntryGvBefore.reserve s6Step314EntryGvFresh.toFinset=some s6Step314EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step314EntryGvFresh,arenaWires]
  · norm_num [s6Step314EntryGvBefore,s6Step314EntryGAfter,s6Step314EntryGvFresh,arenaWires]
  · simp only [s6Step314EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step314EntryGv_checked : planRowResizeLog s6Step314EntryGvBefore s6Step314EntryGvRow 172 s6Step314EntryGvFresh=
    some (s6Step314EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩,growRow 775 s6Step314EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step314EntryGvBefore s6Step314EntryGvAfter s6Step314EntryGvRow 172 s6Step314EntryGvFresh
    s6Step314EntryGv_distinct s6Step314EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step314EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step314EntryGvRow.payload++s6Step314EntryGvFresh) s6Step314EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step314EntryBank_rows : planWindowRowsLog s6Step314EntryFBefore [(s6Step314EntryFRow,114),(s6Step314EntryGRow,114),(s6Step314EntryFvRow,172),(s6Step314EntryGvRow,172)] [s6Step314EntryFFresh,s6Step314EntryGFresh,s6Step314EntryFvFresh,s6Step314EntryGvFresh]=
    some (s6Step314EntryGvAfter,[s6Step314EntryFOut,s6Step314EntryGOut,s6Step314EntryFvOut,s6Step314EntryGvOut],(growRow 795 s6Step314EntryFFresh ++ (growRow 777 s6Step314EntryGFresh ++ (growRow 776 s6Step314EntryFvFresh ++ (growRow 775 s6Step314EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step314EntryGvAfter [] []=some (s6Step314EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step314EntryGvBefore s6Step314EntryGvAfter s6Step314EntryGvAfter
    s6Step314EntryGvRow s6Step314EntryGvOut 172 s6Step314EntryGvFresh [] [] []
    (growRow 775 s6Step314EntryGvFresh) ([]) s6Step314EntryGv_Incoming s6Step314EntryGv_checked h4 s6Step314EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step314EntryFvBefore s6Step314EntryFvAfter s6Step314EntryGvAfter
    s6Step314EntryFvRow s6Step314EntryFvOut 172 s6Step314EntryFvFresh [(s6Step314EntryGvRow,172)] [s6Step314EntryGvFresh] [s6Step314EntryGvOut]
    (growRow 776 s6Step314EntryFvFresh) ((growRow 775 s6Step314EntryGvFresh ++ [])) s6Step314EntryFv_Incoming s6Step314EntryFv_checked h3 s6Step314EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step314EntryGBefore s6Step314EntryGAfter s6Step314EntryGvAfter
    s6Step314EntryGRow s6Step314EntryGOut 114 s6Step314EntryGFresh [(s6Step314EntryFvRow,172),(s6Step314EntryGvRow,172)] [s6Step314EntryFvFresh,s6Step314EntryGvFresh] [s6Step314EntryFvOut,s6Step314EntryGvOut]
    (growRow 777 s6Step314EntryGFresh) ((growRow 776 s6Step314EntryFvFresh ++ (growRow 775 s6Step314EntryGvFresh ++ []))) s6Step314EntryG_Incoming s6Step314EntryG_checked h2 s6Step314EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step314EntryFBefore s6Step314EntryFAfter s6Step314EntryGvAfter
    s6Step314EntryFRow s6Step314EntryFOut 114 s6Step314EntryFFresh [(s6Step314EntryGRow,114),(s6Step314EntryFvRow,172),(s6Step314EntryGvRow,172)] [s6Step314EntryGFresh,s6Step314EntryFvFresh,s6Step314EntryGvFresh] [s6Step314EntryGOut,s6Step314EntryFvOut,s6Step314EntryGvOut]
    (growRow 795 s6Step314EntryFFresh) ((growRow 777 s6Step314EntryGFresh ++ (growRow 776 s6Step314EntryFvFresh ++ (growRow 775 s6Step314EntryGvFresh ++ [])))) s6Step314EntryF_Incoming s6Step314EntryF_checked h1 s6Step314EntryF_Outgoing
  exact h0

private theorem s6Step314EntryBank_checked : compileHmrBankResizeLog .entry s6Step314EntryFBefore ⟨s6Step314EntryFRow,s6Step314EntryGRow,s6Step314EntryFvRow,s6Step314EntryGvRow⟩ ⟨114,114,172,172⟩ [s6Step314EntryFFresh,s6Step314EntryGFresh,s6Step314EntryFvFresh,s6Step314EntryGvFresh]=
    some (s6Step314EntryGvAfter,⟨s6Step314EntryFOut,s6Step314EntryGOut,s6Step314EntryFvOut,s6Step314EntryGvOut⟩,(growRow 795 s6Step314EntryFFresh ++ (growRow 777 s6Step314EntryGFresh ++ (growRow 776 s6Step314EntryFvFresh ++ (growRow 775 s6Step314EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step314EntryBank_rows]
  rfl

private def s6Step314ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<369) ∨ (370≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314ExitFBefore : Arena := s6Step314ExitGAfter

private def s6Step314ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 793],795⟩

private def s6Step314ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩

private def s6Step314ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 850, 841],777⟩

private def s6Step314ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 814],775⟩

private theorem s6Step314ExitBank_incomingDistinct : ([s6Step314ExitGRow,s6Step314ExitFRow,s6Step314ExitFvRow,s6Step314ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314ExitF_Incoming : rowsOwned s6Step314ExitFBefore [s6Step314ExitFRow,s6Step314ExitFvRow,s6Step314ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314ExitGRow,s6Step314ExitFRow,s6Step314ExitFvRow,s6Step314ExitGvRow] 1 s6Step314ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314ExitBank_outgoingOwned : rowsOwned s6Step314ExitGvAfter [s6Step314ExitGOut,s6Step314ExitFOut,s6Step314ExitFvOut,s6Step314ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step314ExitGvAfter (fun q => (0≤q ∧ q<369) ∨ (370≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314ExitF_Outgoing : rowsOwned s6Step314ExitGvAfter [s6Step314ExitFOut,s6Step314ExitFvOut,s6Step314ExitGvOut] :=
  hmrRows_owned_drop s6Step314ExitGvAfter [s6Step314ExitGOut,s6Step314ExitFOut,s6Step314ExitFvOut,s6Step314ExitGvOut] 1 s6Step314ExitBank_outgoingOwned

private theorem s6Step314ExitF_distinct : (s6Step314ExitFRow.sign::s6Step314ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314ExitF_owned : (s6Step314ExitFRow.sign::s6Step314ExitFRow.payload).toFinset⊆s6Step314ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314ExitF_retired : s6Step314ExitFBefore.retireSet s6Step314ExitFExtra.toFinset=s6Step314ExitFAfter := by
  unfold Arena.retireSet s6Step314ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step314ExitFBefore,s6Step314ExitGAfter,s6Step314ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step314ExitF_checked : planRowResizeLog s6Step314ExitFBefore s6Step314ExitFRow 113 []=
    some (s6Step314ExitFAfter,s6Step314ExitFOut,shrinkRow 795 s6Step314ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step314ExitFBefore s6Step314ExitFRow 113 s6Step314ExitF_distinct s6Step314ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step314ExitFRow.payload.take 113) s6Step314ExitFRow.sign=s6Step314ExitFOut := by decide +kernel
  have hi : s6Step314ExitFRow.payload.drop 113=s6Step314ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step314ExitF_retired] at result
  exact result

private def s6Step314ExitFvAfter : Arena := s6Step314ExitFAfter

private def s6Step314ExitFvBefore : Arena := s6Step314ExitFAfter

private theorem s6Step314ExitFv_Incoming : rowsOwned s6Step314ExitFvBefore [s6Step314ExitFvRow,s6Step314ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314ExitGRow,s6Step314ExitFRow,s6Step314ExitFvRow,s6Step314ExitGvRow] 2 s6Step314ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314ExitFvBefore (fun q => (0≤q ∧ q<369) ∨ (370≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314ExitFv_Outgoing : rowsOwned s6Step314ExitGvAfter [s6Step314ExitFvOut,s6Step314ExitGvOut] :=
  hmrRows_owned_drop s6Step314ExitGvAfter [s6Step314ExitGOut,s6Step314ExitFOut,s6Step314ExitFvOut,s6Step314ExitGvOut] 2 s6Step314ExitBank_outgoingOwned

private theorem s6Step314ExitFv_distinct : (s6Step314ExitFvRow.sign::s6Step314ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314ExitFv_owned : (s6Step314ExitFvRow.sign::s6Step314ExitFvRow.payload).toFinset⊆s6Step314ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314ExitFvBefore (fun q => (0≤q ∧ q<369) ∨ (370≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314ExitFv_reserved : s6Step314ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step314ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step314ExitFv_checked : planRowResizeLog s6Step314ExitFvBefore s6Step314ExitFvRow 173 []=
    some (s6Step314ExitFvAfter,s6Step314ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step314ExitFvBefore s6Step314ExitFvAfter s6Step314ExitFvRow 173 []
    s6Step314ExitFv_distinct s6Step314ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step314ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step314ExitFvRow.payload++[]) s6Step314ExitFvRow.sign=s6Step314ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step314ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step314ExitG_Incoming : rowsOwned s6Step314ExitGBefore [s6Step314ExitGRow,s6Step314ExitFRow,s6Step314ExitFvRow,s6Step314ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314ExitGRow,s6Step314ExitFRow,s6Step314ExitFvRow,s6Step314ExitGvRow] 0 s6Step314ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314ExitG_Outgoing : rowsOwned s6Step314ExitGvAfter [s6Step314ExitGOut,s6Step314ExitFOut,s6Step314ExitFvOut,s6Step314ExitGvOut] :=
  hmrRows_owned_drop s6Step314ExitGvAfter [s6Step314ExitGOut,s6Step314ExitFOut,s6Step314ExitFvOut,s6Step314ExitGvOut] 0 s6Step314ExitBank_outgoingOwned

private theorem s6Step314ExitG_distinct : (s6Step314ExitGRow.sign::s6Step314ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314ExitG_owned : (s6Step314ExitGRow.sign::s6Step314ExitGRow.payload).toFinset⊆s6Step314ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314ExitG_retired : s6Step314ExitGBefore.retireSet s6Step314ExitGExtra.toFinset=s6Step314ExitGAfter := by
  unfold Arena.retireSet s6Step314ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step314ExitGBefore,s6Step314ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step314ExitG_checked : planRowResizeLog s6Step314ExitGBefore s6Step314ExitGRow 113 []=
    some (s6Step314ExitGAfter,s6Step314ExitGOut,shrinkRow 777 s6Step314ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step314ExitGBefore s6Step314ExitGRow 113 s6Step314ExitG_distinct s6Step314ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step314ExitGRow.payload.take 113) s6Step314ExitGRow.sign=s6Step314ExitGOut := by decide +kernel
  have hi : s6Step314ExitGRow.payload.drop 113=s6Step314ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step314ExitG_retired] at result
  exact result

private def s6Step314ExitGvBefore : Arena := s6Step314ExitFAfter

private theorem s6Step314ExitGv_Incoming : rowsOwned s6Step314ExitGvBefore [s6Step314ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314ExitGRow,s6Step314ExitFRow,s6Step314ExitFvRow,s6Step314ExitGvRow] 3 s6Step314ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314ExitGvBefore (fun q => (0≤q ∧ q<369) ∨ (370≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314ExitGv_Outgoing : rowsOwned s6Step314ExitGvAfter [s6Step314ExitGvOut] :=
  hmrRows_owned_drop s6Step314ExitGvAfter [s6Step314ExitGOut,s6Step314ExitFOut,s6Step314ExitFvOut,s6Step314ExitGvOut] 3 s6Step314ExitBank_outgoingOwned

private theorem s6Step314ExitGv_distinct : (s6Step314ExitGvRow.sign::s6Step314ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314ExitGv_owned : (s6Step314ExitGvRow.sign::s6Step314ExitGvRow.payload).toFinset⊆s6Step314ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314ExitGvBefore (fun q => (0≤q ∧ q<369) ∨ (370≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314ExitGv_retired : s6Step314ExitGvBefore.retireSet s6Step314ExitGvExtra.toFinset=s6Step314ExitGvAfter := by
  unfold Arena.retireSet s6Step314ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step314ExitGvBefore,s6Step314ExitFAfter,s6Step314ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step314ExitGv_checked : planRowResizeLog s6Step314ExitGvBefore s6Step314ExitGvRow 172 []=
    some (s6Step314ExitGvAfter,s6Step314ExitGvOut,shrinkRow 775 s6Step314ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step314ExitGvBefore s6Step314ExitGvRow 172 s6Step314ExitGv_distinct s6Step314ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step314ExitGvRow.payload.take 172) s6Step314ExitGvRow.sign=s6Step314ExitGvOut := by decide +kernel
  have hi : s6Step314ExitGvRow.payload.drop 172=s6Step314ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step314ExitGv_retired] at result
  exact result

private theorem s6Step314ExitBank_rows : planWindowRowsLog s6Step314ExitGBefore [(s6Step314ExitGRow,113),(s6Step314ExitFRow,113),(s6Step314ExitFvRow,173),(s6Step314ExitGvRow,172)] [[],[],[],[]]=
    some (s6Step314ExitGvAfter,[s6Step314ExitGOut,s6Step314ExitFOut,s6Step314ExitFvOut,s6Step314ExitGvOut],(shrinkRow 777 s6Step314ExitGExtra ++ (shrinkRow 795 s6Step314ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step314ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step314ExitGvAfter [] []=some (s6Step314ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step314ExitGvBefore s6Step314ExitGvAfter s6Step314ExitGvAfter
    s6Step314ExitGvRow s6Step314ExitGvOut 172 [] [] [] []
    (shrinkRow 775 s6Step314ExitGvExtra) ([]) s6Step314ExitGv_Incoming s6Step314ExitGv_checked h4 s6Step314ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step314ExitFvBefore s6Step314ExitFvAfter s6Step314ExitGvAfter
    s6Step314ExitFvRow s6Step314ExitFvOut 173 [] [(s6Step314ExitGvRow,172)] [[]] [s6Step314ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step314ExitGvExtra ++ [])) s6Step314ExitFv_Incoming s6Step314ExitFv_checked h3 s6Step314ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step314ExitFBefore s6Step314ExitFAfter s6Step314ExitGvAfter
    s6Step314ExitFRow s6Step314ExitFOut 113 [] [(s6Step314ExitFvRow,173),(s6Step314ExitGvRow,172)] [[],[]] [s6Step314ExitFvOut,s6Step314ExitGvOut]
    (shrinkRow 795 s6Step314ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step314ExitGvExtra ++ []))) s6Step314ExitF_Incoming s6Step314ExitF_checked h2 s6Step314ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step314ExitGBefore s6Step314ExitGAfter s6Step314ExitGvAfter
    s6Step314ExitGRow s6Step314ExitGOut 113 [] [(s6Step314ExitFRow,113),(s6Step314ExitFvRow,173),(s6Step314ExitGvRow,172)] [[],[],[]] [s6Step314ExitFOut,s6Step314ExitFvOut,s6Step314ExitGvOut]
    (shrinkRow 777 s6Step314ExitGExtra) ((shrinkRow 795 s6Step314ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step314ExitGvExtra ++ [])))) s6Step314ExitG_Incoming s6Step314ExitG_checked h1 s6Step314ExitG_Outgoing
  exact h0

private theorem s6Step314ExitBank_checked : compileHmrBankResizeLog .exit s6Step314ExitGBefore ⟨s6Step314ExitFRow,s6Step314ExitGRow,s6Step314ExitFvRow,s6Step314ExitGvRow⟩ ⟨113,113,173,172⟩ [[],[],[],[]]=
    some (s6Step314ExitGvAfter,⟨s6Step314ExitFOut,s6Step314ExitGOut,s6Step314ExitFvOut,s6Step314ExitGvOut⟩,(shrinkRow 777 s6Step314ExitGExtra ++ (shrinkRow 795 s6Step314ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step314ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step314ExitBank_rows]
  rfl

private theorem s6Step314Add0_apart : Disjoint s6Step314Add0Arena.live s6Step314Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step314Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314Add0_card : s6Step314Add0Arena.live.card=902 := by
  decide +kernel

private theorem s6Step314Add0_borrowed : s6Step314Add0Arena.checkBorrow (hmrHybridCount s6Step314Add0Arena s6Step314Add0B.length) s6Step314Add0Work=some s6Step314Add0During := by
  have len : s6Step314Add0Work.length=hmrHybridCount s6Step314Add0Arena s6Step314Add0B.length := by
    rw [hmrHybridCount,s6Step314Add0_card]
    decide +kernel
  have nd : s6Step314Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step314Add0Arena s6Step314Add0During s6Step314Add0Work.toFinset s6Step314Add0_bounded s6Step314Add0_apart rfl

private theorem s6Step314Add0_distinct : (865::786::803::(s6Step314Add0A++s6Step314Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314Add0_owned : (865::786::803::(s6Step314Add0A++s6Step314Add0B)).toFinset⊆s6Step314Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step314Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314Add0_checked : compileHmrHybridCinLog s6Step314Add0Arena 786 865 803 s6Step314Add0A s6Step314Add0B s6Step314Add0Work=some s6Step314Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step314Add0Arena s6Step314Add0During 786 865 803 s6Step314Add0A s6Step314Add0B s6Step314Add0Work
    (by decide +kernel) (by decide +kernel) s6Step314Add0_distinct
    (fun q hq => s6Step314Add0_owned (List.mem_toFinset.mpr hq)) s6Step314Add0_borrowed

private theorem s6Step314Add1_apart : Disjoint s6Step314Add1Arena.live s6Step314Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step314Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314Add1_card : s6Step314Add1Arena.live.card=902 := by
  decide +kernel

private theorem s6Step314Add1_borrowed : s6Step314Add1Arena.checkBorrow (hmrHybridCount s6Step314Add1Arena s6Step314Add1B.length) s6Step314Add1Work=some s6Step314Add1During := by
  have len : s6Step314Add1Work.length=hmrHybridCount s6Step314Add1Arena s6Step314Add1B.length := by
    rw [hmrHybridCount,s6Step314Add1_card]
    decide +kernel
  have nd : s6Step314Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step314Add1Arena s6Step314Add1During s6Step314Add1Work.toFinset s6Step314Add1_bounded s6Step314Add1_apart rfl

private theorem s6Step314Add1_distinct : (865::786::803::(s6Step314Add1A++s6Step314Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314Add1_owned : (865::786::803::(s6Step314Add1A++s6Step314Add1B)).toFinset⊆s6Step314Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step314Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314Add1_checked : compileHmrHybridCinLog s6Step314Add1Arena 786 865 803 s6Step314Add1A s6Step314Add1B s6Step314Add1Work=some s6Step314Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step314Add1Arena s6Step314Add1During 786 865 803 s6Step314Add1A s6Step314Add1B s6Step314Add1Work
    (by decide +kernel) (by decide +kernel) s6Step314Add1_distinct
    (fun q hq => s6Step314Add1_owned (List.mem_toFinset.mpr hq)) s6Step314Add1_borrowed

private theorem s6Step314F4_apart : Disjoint (s6Step314Add0A++s6Step314Add0B).toFinset (s6Step314Add1A++s6Step314Add1B).toFinset := by
  have nd : ((s6Step314Add0A++s6Step314Add0B)++(s6Step314Add1A++s6Step314Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step314F4_carry : s6Step314F4FlagArena.checkBorrow 1 [803]=some s6Step314Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step314F4FlagArena,s6Step314HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step314F4FlagArena,s6Step314HeadFvAfter,s6Step314Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step314F4_distinct : (839::786::865::803::((s6Step314Add0A++s6Step314Add1A)++(s6Step314Add0B++s6Step314Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314F4_flag : s6Step314HeadFvAfter.checkBorrow 1 [865]=some s6Step314F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step314HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step314F4_owned : (839::786::((s6Step314Add0A++s6Step314Add1A)++(s6Step314Add0B++s6Step314Add1B))).toFinset⊆s6Step314HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step314HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314F4_checked : compileHmrHybridF4Log s6Step314HeadFvAfter 839 786 s6Step314Add0A s6Step314Add0B s6Step314Add1A s6Step314Add1B [865] [803] s6Step314Add0Work s6Step314Add1Work=some s6Step314F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step314HeadFvAfter s6Step314F4FlagArena s6Step314Add0Arena s6Step314Add0During s6Step314Add1During 839 786
    s6Step314Add0A s6Step314Add0B s6Step314Add1A s6Step314Add1B [865] [803] s6Step314Add0Work s6Step314Add1Work
    (fun q hq => s6Step314F4_owned (List.mem_toFinset.mpr hq)) s6Step314F4_flag s6Step314F4_carry
    s6Step314F4_distinct s6Step314F4_apart s6Step314Add0_checked s6Step314Add1_checked

private theorem s6Step314Front_branch : s6Step314FrontSigmaArena.checkBorrow 1 [786]=some s6Step314HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step314FrontSigmaArena,s6Step314EntryGvAfter,s6Step314EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step314FrontSigmaArena,s6Step314EntryGvAfter,s6Step314EntryGAfter,s6Step314HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step314Front_entry : HmrFrontEntryValid s6Step314EntryFBefore s6Step314FrontBank 114 172 ⟨113,113,173,172⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step314FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step314EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step314EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step314FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step314Front_sigma : s6Step314EntryGvAfter.checkBorrow 1 [839]=some s6Step314FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step314EntryGvAfter,s6Step314EntryGAfter,arenaWires]
  · rfl

private def s6Step314HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314HeadFBefore : Arena := s6Step314HeadGAfter

private def s6Step314HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369],795⟩

private def s6Step314HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857],776⟩

private def s6Step314HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 850],777⟩

private def s6Step314HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863],775⟩

private theorem s6Step314HeadBank_incomingDistinct : ([s6Step314HeadGRow,s6Step314HeadFRow,s6Step314HeadGvRow,s6Step314HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314HeadF_Incoming : rowsOwned s6Step314HeadFBefore [s6Step314HeadFRow,s6Step314HeadGvRow,s6Step314HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314HeadGRow,s6Step314HeadFRow,s6Step314HeadGvRow,s6Step314HeadFvRow] 1 s6Step314HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314HeadBank_outgoingOwned : rowsOwned s6Step314HeadFvAfter [s6Step314HeadGOut,s6Step314HeadFOut,s6Step314HeadGvOut,s6Step314HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step314HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314HeadF_Outgoing : rowsOwned s6Step314HeadFvAfter [s6Step314HeadFOut,s6Step314HeadGvOut,s6Step314HeadFvOut] :=
  hmrRows_owned_drop s6Step314HeadFvAfter [s6Step314HeadGOut,s6Step314HeadFOut,s6Step314HeadGvOut,s6Step314HeadFvOut] 1 s6Step314HeadBank_outgoingOwned

private theorem s6Step314HeadF_distinct : (s6Step314HeadFRow.sign::s6Step314HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314HeadF_owned : (s6Step314HeadFRow.sign::s6Step314HeadFRow.payload).toFinset⊆s6Step314HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314HeadF_reserved : s6Step314HeadFBefore.reserve s6Step314HeadFFresh.toFinset=some s6Step314HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step314HeadFFresh,arenaWires]
  · norm_num [s6Step314HeadFBefore,s6Step314HeadGAfter,s6Step314HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step314HeadFAfter,s6Step314HeadFBefore,s6Step314HeadGAfter,s6Step314HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step314HeadF_checked : planRowResizeLog s6Step314HeadFBefore s6Step314HeadFRow 115 s6Step314HeadFFresh=
    some (s6Step314HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 793],795⟩,growRow 795 s6Step314HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step314HeadFBefore s6Step314HeadFAfter s6Step314HeadFRow 115 s6Step314HeadFFresh
    s6Step314HeadF_distinct s6Step314HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step314HeadF_reserved
  have rowEq : WindowRow.mk (s6Step314HeadFRow.payload++s6Step314HeadFFresh) s6Step314HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 793],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step314HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step314HeadFvBefore : Arena := s6Step314HeadGvAfter

private theorem s6Step314HeadFv_Incoming : rowsOwned s6Step314HeadFvBefore [s6Step314HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314HeadGRow,s6Step314HeadFRow,s6Step314HeadGvRow,s6Step314HeadFvRow] 3 s6Step314HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314HeadFv_Outgoing : rowsOwned s6Step314HeadFvAfter [s6Step314HeadFvOut] :=
  hmrRows_owned_drop s6Step314HeadFvAfter [s6Step314HeadGOut,s6Step314HeadFOut,s6Step314HeadGvOut,s6Step314HeadFvOut] 3 s6Step314HeadBank_outgoingOwned

private theorem s6Step314HeadFv_distinct : (s6Step314HeadFvRow.sign::s6Step314HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314HeadFv_owned : (s6Step314HeadFvRow.sign::s6Step314HeadFvRow.payload).toFinset⊆s6Step314HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314HeadFv_reserved : s6Step314HeadFvBefore.reserve s6Step314HeadFvFresh.toFinset=some s6Step314HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step314HeadFvFresh,arenaWires]
  · norm_num [s6Step314HeadFvBefore,s6Step314HeadGvAfter,s6Step314HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step314HeadFvAfter,s6Step314HeadFvBefore,s6Step314HeadGvAfter,s6Step314HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step314HeadFv_checked : planRowResizeLog s6Step314HeadFvBefore s6Step314HeadFvRow 173 s6Step314HeadFvFresh=
    some (s6Step314HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩,growRow 776 s6Step314HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step314HeadFvBefore s6Step314HeadFvAfter s6Step314HeadFvRow 173 s6Step314HeadFvFresh
    s6Step314HeadFv_distinct s6Step314HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step314HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step314HeadFvRow.payload++s6Step314HeadFvFresh) s6Step314HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 778, 876, 825, 807, 908, 886, 823, 796, 821, 857, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step314HeadG_Incoming : rowsOwned s6Step314HeadGBefore [s6Step314HeadGRow,s6Step314HeadFRow,s6Step314HeadGvRow,s6Step314HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314HeadGRow,s6Step314HeadFRow,s6Step314HeadGvRow,s6Step314HeadFvRow] 0 s6Step314HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314HeadG_Outgoing : rowsOwned s6Step314HeadFvAfter [s6Step314HeadGOut,s6Step314HeadFOut,s6Step314HeadGvOut,s6Step314HeadFvOut] :=
  hmrRows_owned_drop s6Step314HeadFvAfter [s6Step314HeadGOut,s6Step314HeadFOut,s6Step314HeadGvOut,s6Step314HeadFvOut] 0 s6Step314HeadBank_outgoingOwned

private theorem s6Step314HeadG_distinct : (s6Step314HeadGRow.sign::s6Step314HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314HeadG_owned : (s6Step314HeadGRow.sign::s6Step314HeadGRow.payload).toFinset⊆s6Step314HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314HeadG_reserved : s6Step314HeadGBefore.reserve s6Step314HeadGFresh.toFinset=some s6Step314HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step314HeadGFresh,arenaWires]
  · norm_num [s6Step314HeadGBefore,s6Step314HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step314HeadGAfter,s6Step314HeadGBefore,s6Step314HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step314HeadG_checked : planRowResizeLog s6Step314HeadGBefore s6Step314HeadGRow 115 s6Step314HeadGFresh=
    some (s6Step314HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 850, 841],777⟩,growRow 777 s6Step314HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step314HeadGBefore s6Step314HeadGAfter s6Step314HeadGRow 115 s6Step314HeadGFresh
    s6Step314HeadG_distinct s6Step314HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step314HeadG_reserved
  have rowEq : WindowRow.mk (s6Step314HeadGRow.payload++s6Step314HeadGFresh) s6Step314HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 850, 841],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step314HeadGvBefore : Arena := s6Step314HeadFAfter

private theorem s6Step314HeadGv_Incoming : rowsOwned s6Step314HeadGvBefore [s6Step314HeadGvRow,s6Step314HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step314HeadGRow,s6Step314HeadFRow,s6Step314HeadGvRow,s6Step314HeadFvRow] 2 s6Step314HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step314HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step314HeadGv_Outgoing : rowsOwned s6Step314HeadFvAfter [s6Step314HeadGvOut,s6Step314HeadFvOut] :=
  hmrRows_owned_drop s6Step314HeadFvAfter [s6Step314HeadGOut,s6Step314HeadFOut,s6Step314HeadGvOut,s6Step314HeadFvOut] 2 s6Step314HeadBank_outgoingOwned

private theorem s6Step314HeadGv_distinct : (s6Step314HeadGvRow.sign::s6Step314HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step314HeadGv_owned : (s6Step314HeadGvRow.sign::s6Step314HeadGvRow.payload).toFinset⊆s6Step314HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step314HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<865) ∨ (866≤q ∧ q<896) ∨ (897≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step314HeadGv_reserved : s6Step314HeadGvBefore.reserve s6Step314HeadGvFresh.toFinset=some s6Step314HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step314HeadGvFresh,arenaWires]
  · norm_num [s6Step314HeadGvBefore,s6Step314HeadFAfter,s6Step314HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step314HeadGvAfter,s6Step314HeadGvBefore,s6Step314HeadFAfter,s6Step314HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step314HeadGv_checked : planRowResizeLog s6Step314HeadGvBefore s6Step314HeadGvRow 173 s6Step314HeadGvFresh=
    some (s6Step314HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 814],775⟩,growRow 775 s6Step314HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step314HeadGvBefore s6Step314HeadGvAfter s6Step314HeadGvRow 173 s6Step314HeadGvFresh
    s6Step314HeadGv_distinct s6Step314HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step314HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step314HeadGvRow.payload++s6Step314HeadGvFresh) s6Step314HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 892, 848, 887, 922, 898, 888, 869, 890, 828, 863, 814],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step314HeadBank_rows : planWindowRowsLog s6Step314HeadGBefore [(s6Step314HeadGRow,115),(s6Step314HeadFRow,115),(s6Step314HeadGvRow,173),(s6Step314HeadFvRow,173)] [s6Step314HeadGFresh,s6Step314HeadFFresh,s6Step314HeadGvFresh,s6Step314HeadFvFresh]=
    some (s6Step314HeadFvAfter,[s6Step314HeadGOut,s6Step314HeadFOut,s6Step314HeadGvOut,s6Step314HeadFvOut],(growRow 777 s6Step314HeadGFresh ++ (growRow 795 s6Step314HeadFFresh ++ (growRow 775 s6Step314HeadGvFresh ++ (growRow 776 s6Step314HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step314HeadFvAfter [] []=some (s6Step314HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step314HeadFvBefore s6Step314HeadFvAfter s6Step314HeadFvAfter
    s6Step314HeadFvRow s6Step314HeadFvOut 173 s6Step314HeadFvFresh [] [] []
    (growRow 776 s6Step314HeadFvFresh) ([]) s6Step314HeadFv_Incoming s6Step314HeadFv_checked h4 s6Step314HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step314HeadGvBefore s6Step314HeadGvAfter s6Step314HeadFvAfter
    s6Step314HeadGvRow s6Step314HeadGvOut 173 s6Step314HeadGvFresh [(s6Step314HeadFvRow,173)] [s6Step314HeadFvFresh] [s6Step314HeadFvOut]
    (growRow 775 s6Step314HeadGvFresh) ((growRow 776 s6Step314HeadFvFresh ++ [])) s6Step314HeadGv_Incoming s6Step314HeadGv_checked h3 s6Step314HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step314HeadFBefore s6Step314HeadFAfter s6Step314HeadFvAfter
    s6Step314HeadFRow s6Step314HeadFOut 115 s6Step314HeadFFresh [(s6Step314HeadGvRow,173),(s6Step314HeadFvRow,173)] [s6Step314HeadGvFresh,s6Step314HeadFvFresh] [s6Step314HeadGvOut,s6Step314HeadFvOut]
    (growRow 795 s6Step314HeadFFresh) ((growRow 775 s6Step314HeadGvFresh ++ (growRow 776 s6Step314HeadFvFresh ++ []))) s6Step314HeadF_Incoming s6Step314HeadF_checked h2 s6Step314HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step314HeadGBefore s6Step314HeadGAfter s6Step314HeadFvAfter
    s6Step314HeadGRow s6Step314HeadGOut 115 s6Step314HeadGFresh [(s6Step314HeadFRow,115),(s6Step314HeadGvRow,173),(s6Step314HeadFvRow,173)] [s6Step314HeadFFresh,s6Step314HeadGvFresh,s6Step314HeadFvFresh] [s6Step314HeadFOut,s6Step314HeadGvOut,s6Step314HeadFvOut]
    (growRow 777 s6Step314HeadGFresh) ((growRow 795 s6Step314HeadFFresh ++ (growRow 775 s6Step314HeadGvFresh ++ (growRow 776 s6Step314HeadFvFresh ++ [])))) s6Step314HeadG_Incoming s6Step314HeadG_checked h1 s6Step314HeadG_Outgoing
  exact h0

private theorem s6Step314HeadBank_checked : compileHmrBankResizeLog .headroom s6Step314HeadGBefore ⟨s6Step314HeadFRow,s6Step314HeadGRow,s6Step314HeadFvRow,s6Step314HeadGvRow⟩ ⟨115,115,173,173⟩ [s6Step314HeadGFresh,s6Step314HeadFFresh,s6Step314HeadGvFresh,s6Step314HeadFvFresh]=
    some (s6Step314HeadFvAfter,⟨s6Step314HeadFOut,s6Step314HeadGOut,s6Step314HeadFvOut,s6Step314HeadGvOut⟩,(growRow 777 s6Step314HeadGFresh ++ (growRow 795 s6Step314HeadFFresh ++ (growRow 775 s6Step314HeadGvFresh ++ (growRow 776 s6Step314HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step314HeadBank_rows]
  rfl

private theorem s6Step314Front_checked : compileHmrSourceFrontLog s6Step314EntryFBefore s6Step314FrontBank 114 172 ⟨113,113,173,172⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step314FrontLog=some s6Step314FrontPlan := by
  have pairEq : s6Step314FrontPair=⟨s6Step314HeadFRow,s6Step314HeadGRow,s6Step314HeadFvRow,s6Step314HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step314FrontHead=⟨s6Step314ExitFRow,s6Step314ExitGRow,s6Step314ExitFvRow,s6Step314ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step314Add0A=s6Step314FrontHead.f.wires := by decide +kernel
  have gEq : s6Step314Add0B=s6Step314FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step314Add1A=s6Step314FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step314Add1B=s6Step314FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step314EntryFBefore s6Step314FrontBank 114 172 ⟨113,113,173,172⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step314FrontLog s6Step314FrontPlan
  · exact s6Step314Front_entry
  · exact s6Step314EntryBank_checked
  · exact s6Step314Front_sigma
  · rfl
  · exact s6Step314Front_branch
  · rfl
  · simpa only [s6Step314FrontPlan,pairEq] using s6Step314HeadBank_checked
  · simpa only [s6Step314FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step314F4_checked
  · exact s6Step314Counter_checked
  · rfl
  · simpa only [s6Step314FrontPlan,headEq] using s6Step314ExitBank_checked

private theorem s6Step314Complete_explicit_checked : compileHmrEarlyStepLog s6Step314EntryFBefore s6Step314FrontBank 114 172 ⟨113,113,173,172⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step314CompleteLog=some s6Step314CompletePlan := by
  let Q := s6Step314EarlyControlPlan
  have hq := s6Step314EarlyControl_plan_checked
  have fv1 : s6Step314CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step314CompleteOut.fv.payload[2]?.getD s6Step314CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step314CompleteOut.fv.payload[3]?.getD s6Step314CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step314CompleteOut.fv.payload[4]?.getD s6Step314CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step314EntryFBefore s6Step314EarlyControlArena s6Step314FrontBank 114 172 ⟨113,113,173,172⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 56 s6Step314CompleteLog s6Step314FrontPlan Q
    s6Step314Front_checked s6Step314Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step314Complete_owned s6Step314Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step314EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 769 839 s6Step314CompleteOut.fv.second (s6Step314CompleteOut.fv.payload[2]?.getD s6Step314CompleteOut.fv.sign) (s6Step314CompleteOut.fv.payload[3]?.getD s6Step314CompleteOut.fv.sign) (s6Step314CompleteOut.fv.payload[4]?.getD s6Step314CompleteOut.fv.sign) 786 56 s6Step314EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep314Arena : Arena := s6Step314EntryFBefore
def s6PrivateStep314Bank : WindowBank := s6Step314FrontBank
def s6PrivateStep314Spec : HmrSourceWalkStepLog := ⟨114,172,⟨113,113,173,172⟩,56,.early s6Step314CompleteLog⟩
def s6PrivateStep314Plan : HmrSourceStepPlan := .early s6Step314CompletePlan
theorem s6PrivateStep314_source : s6PrivateStep314Spec=s6ObservedLogs304[10] := rfl
theorem s6PrivateStep314_checked : compileHmrSourceStepLog s6PrivateStep314Arena s6PrivateStep314Bank
    s6PrivateStep314Spec.fgWidth s6PrivateStep314Spec.vWidth s6PrivateStep314Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]
    6 498 314 s6PrivateStep314Spec.need none s6PrivateStep314Spec.log=some s6PrivateStep314Plan := by
  change compileHmrSourceStepLog s6Step314EntryFBefore s6Step314FrontBank 114 172 ⟨113,113,173,172⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] 6 498 314 56 none (.early s6Step314CompleteLog)=some (.early s6Step314CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 314<498)]
  rw [s6Step314Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
