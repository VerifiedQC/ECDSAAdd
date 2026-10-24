import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep290
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

private def s6Step292CompleteMoves : List (Wire × Wire) := [(793,123)]

private def s6Step292EarlyControlLog : HmrEarlyControlLog := ⟨[793, 879, 823, 922, 892],[828],[887],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step292FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [922], [], []],[[892], [823], [879], [875]],[[], [], [], []]⟩,[807],[778],[828],[887],[830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[828, 887, 830, 805]⟩

private def s6Step292CompleteLog : HmrEarlyStepLog := ⟨s6Step292FrontLog,s6Step292CompleteMoves,s6Step292EarlyControlLog⟩

private def s6Step292ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩

private def s6Step292ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875],776⟩

private def s6Step292ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122],777⟩

private def s6Step292ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779],775⟩

private def s6Step292FrontOut : WindowBank := ⟨s6Step292ExitFOut,s6Step292ExitGOut,s6Step292ExitFvOut,s6Step292ExitGvOut⟩

private def s6Step292CompleteOut : WindowBank := s6Step292FrontOut.repacked s6Step292CompleteMoves

private def s6Step292EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step292EarlyControlPositiveArena,[828],s6Step292EarlyControlEqualityArena,[887],⟨⟨807,false⟩,[⟨⟨828,false⟩,887⟩]⟩⟩

private def s6Step292EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,793⟩,⟨⟨772,false⟩,879⟩,⟨⟨771,false⟩,823⟩,⟨⟨770,false⟩,922⟩,⟨⟨769,false⟩,892⟩]⟩

private def s6Step292EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step292EarlyControlZeroArena,s6Step292EarlyControlZeroPlan,s6Step292EarlyControlClassPlan,s6Step292EarlyControlFlagArena,s6Step292EarlyControlFittedArena,s6Step292EarlyControlHistoryArena,s6Step292EarlyControlSigmaArena,s6Step292EarlyControlOutputArena,s6Step292EarlyControlLog⟩

private def s6Step292CounterWork : List Wire := [828, 887, 830, 805]

private theorem s6Step292Counter_bounded : s6Step292CounterWork.toFinset⊆arenaWires := by norm_num [s6Step292CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step292HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292CounterDuring : Arena := ⟨s6Step292HeadFvAfter.live∪s6Step292CounterWork.toFinset,Finset.union_subset s6Step292HeadFvAfter.bounded s6Step292Counter_bounded⟩

private def s6Step292EntryFFresh : List Wire := []

private def s6Step292EntryFvFresh : List Wire := []

private def s6Step292EntryGFresh : List Wire := [922]

private def s6Step292EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292EntryGvAfter : Arena := s6Step292EntryGAfter

private def s6Step292EntryGvFresh : List Wire := []

private def s6Step292ExitFExtra : List Wire := [823]

private def s6Step292ExitGExtra : List Wire := [123, 922, 892]

private def s6Step292ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292ExitGvExtra : List Wire := [879]

private def s6Step292Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step292Add0_bounded : s6Step292Add0Work.toFinset⊆arenaWires := by
  have h : s6Step292Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step292Add0During : Arena := ⟨s6Step292Add0Arena.live∪s6Step292Add0Work.toFinset,Finset.union_subset s6Step292Add0Arena.bounded s6Step292Add0_bounded⟩

private def s6Step292Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step292Add1_bounded : s6Step292Add1Work.toFinset⊆arenaWires := by
  have h : s6Step292Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step292Add1During : Arena := ⟨s6Step292Add1Arena.live∪s6Step292Add1Work.toFinset,Finset.union_subset s6Step292Add1Arena.bounded s6Step292Add1_bounded⟩

private def s6Step292F4FlagArena : Arena := ⟨s6Step292HeadFvAfter.live∪{828},Finset.union_subset s6Step292HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step292F4Plan : HmrHybridF4Plan := ⟨s6Step292F4FlagArena,[828],s6Step292Add0Arena,[887],s6Step292Add0During,s6Step292Add0Work,s6Step292Add1During,s6Step292Add1Work⟩

private def s6Step292HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 823],795⟩

private def s6Step292HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875],776⟩

private def s6Step292HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 922, 892],777⟩

private def s6Step292HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879],775⟩

private def s6Step292FrontHead : WindowBank := ⟨s6Step292HeadFOut,s6Step292HeadGOut,s6Step292HeadFvOut,s6Step292HeadGvOut⟩

private def s6Step292EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩

private def s6Step292EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858],776⟩

private def s6Step292EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 922],777⟩

private def s6Step292EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779],775⟩

private def s6Step292FrontPair : WindowBank := ⟨s6Step292EntryFOut,s6Step292EntryGOut,s6Step292EntryFvOut,s6Step292EntryGvOut⟩

private def s6Step292FrontSigmaArena : Arena := ⟨s6Step292EntryGvAfter.live∪{807},Finset.union_subset s6Step292EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step292HeadFFresh : List Wire := [823]

private def s6Step292HeadFvFresh : List Wire := [875]

private def s6Step292HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292HeadGFresh : List Wire := [892]

private def s6Step292HeadGvFresh : List Wire := [879]

private def s6Step292FrontPlan : HmrSourceFront := ⟨s6Step292EntryGvAfter,s6Step292FrontPair,(growRow 795 s6Step292EntryFFresh ++ (growRow 777 s6Step292EntryGFresh ++ (growRow 776 s6Step292EntryFvFresh ++ (growRow 775 s6Step292EntryGvFresh ++ [])))),s6Step292FrontSigmaArena,[807],s6Step292HeadGBefore,[778],
  s6Step292HeadFvAfter,s6Step292FrontHead,(growRow 777 s6Step292HeadGFresh ++ (growRow 795 s6Step292HeadFFresh ++ (growRow 775 s6Step292HeadGvFresh ++ (growRow 776 s6Step292HeadFvFresh ++ [])))),s6Step292F4Plan,s6Step292CounterDuring,s6Step292CounterWork,s6Step292ExitGvAfter,s6Step292FrontOut,(shrinkRow 777 s6Step292ExitGExtra ++ (shrinkRow 795 s6Step292ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step292ExitGvExtra ++ []))))⟩

private def s6Step292CompletePlan : HmrEarlyStepPlan := ⟨s6Step292FrontPlan,s6Step292EarlyControlArena,s6Step292EarlyControlPlan,s6Step292CompleteMoves⟩

private theorem s6Step292Complete_apart : List.Disjoint (s6Step292CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [807, 778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := by
  have nd : ((s6Step292CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[807, 778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step292Complete_owned : (s6Step292CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step292EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step292CompleteMoveArena : Arena := ⟨s6Step292ExitGvAfter.live∪{123},Finset.union_subset s6Step292ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step292Complete_repack : s6Step292ExitGvAfter.checkRepack s6Step292CompleteMoves=some s6Step292EarlyControlArena := by
  have owned : 793∈s6Step292ExitGvAfter.live := by norm_num [s6Step292ExitGvAfter,arenaWires]
  have reserve : s6Step292ExitGvAfter.reserve {123}=some s6Step292CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step292ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step292CompleteMoveArena.retireSet {793}=s6Step292EarlyControlArena := by
    unfold Arena.retireSet s6Step292EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step292CompleteMoveArena,s6Step292ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step292CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step292CompleteMoveArena.retireSet {793}).checkRepack []=some s6Step292EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step292EarlyControl_branchOwned : ([778] : List Wire).toFinset⊆s6Step292EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EarlyControl_branch : compileHmrBranchRetirement s6Step292EarlyControlSigmaArena 778=some s6Step292EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step292EarlyControl_branchOwned
  · ext q
    simp [s6Step292EarlyControlOutputArena,s6Step292EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step292EarlyControl_classEqualityBorrow : s6Step292EarlyControlPositiveArena.checkBorrow (([807, 828] : List Wire).length-1) s6Step292EarlyControlLog.classWork=some s6Step292EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step292EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step292EarlyControlEqualityArena,s6Step292EarlyControlPositiveArena,s6Step292EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step292EarlyControl_classEqualityOwned : ([807, 828] : List Wire).toFinset⊆s6Step292EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EarlyControl_classEquality : compileHmrEqualityLog s6Step292EarlyControlPositiveArena [807, 828] 0 s6Step292EarlyControlLog.classWork=some (s6Step292EarlyControlEqualityArena,s6Step292EarlyControlLog.classWork,s6Step292EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step292EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step292EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step292EarlyControl_classOwned : ([769, 892, 807] : List Wire).toFinset⊆s6Step292EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EarlyControl_positiveBorrow : s6Step292EarlyControlZeroArena.checkBorrow (1) s6Step292EarlyControlLog.positiveWork=some s6Step292EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step292EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step292EarlyControlPositiveArena,s6Step292EarlyControlZeroArena,s6Step292EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step292EarlyControl_class : compileHmrSourceClassLog s6Step292EarlyControlZeroArena false 769 s6Step292EarlyControlZeroPlan.top 0 807 s6Step292EarlyControlLog.positiveWork s6Step292EarlyControlLog.classWork=some s6Step292EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step292EarlyControlClassPlan s6Step292EarlyControlZeroArena false 769 s6Step292EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s6Step292EarlyControl_classOwned
  · exact s6Step292EarlyControl_positiveBorrow
  · exact s6Step292EarlyControl_classEquality

private theorem s6Step292EarlyControl_entryRecordOwned : ([778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step292EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s6Step292EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EarlyControl_fitBorrow : s6Step292EarlyControlFlagArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step292EarlyControlLog.recordFresh=some s6Step292EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step292EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step292EarlyControlFittedArena,s6Step292EarlyControlFlagArena,s6Step292EarlyControlLog,arenaWires]

private theorem s6Step292EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step292EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EarlyControl_fit : compileHmrRecordGrowLog s6Step292EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step292EarlyControlLog.recordFresh=some s6Step292EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step292EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step292EarlyControl_fitBorrow

private theorem s6Step292EarlyControl_flagsBorrow : s6Step292EarlyControlEqualityArena.checkBorrow (6) s6Step292EarlyControlLog.flagWork=some s6Step292EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step292EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step292EarlyControlFlagArena,s6Step292EarlyControlEqualityArena,s6Step292EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step292EarlyControl_flagsOwned : ([887, 253, 252, 251] : List Wire).toFinset⊆s6Step292EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EarlyControl_flags : compileHmrFlagsLog s6Step292EarlyControlClassPlan.equalityArena s6Step292EarlyControlClassPlan.equality.top 253 252 251 s6Step292EarlyControlLog.flagWork=some s6Step292EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step292EarlyControl_flagsOwned⟩
  · exact s6Step292EarlyControl_flagsBorrow

private theorem s6Step292EarlyControl_historyBorrow : s6Step292EarlyControlArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step292EarlyControlLog.recordFresh=some s6Step292EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step292EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step292EarlyControlHistoryArena,s6Step292EarlyControlArena,s6Step292EarlyControlLog,arenaWires]

private theorem s6Step292EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step292EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EarlyControl_history : compileHmrRecordGrowLog s6Step292EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step292EarlyControlLog.recordFresh=some s6Step292EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step292EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step292EarlyControl_historyBorrow

private theorem s6Step292EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s6Step292EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s6Step292EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EarlyControl_sigmaRelease : s6Step292EarlyControlHistoryArena.release {807} (fun _ => false)=some s6Step292EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step292EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step292EarlyControlSigmaArena,s6Step292EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step292EarlyControl_sigma : compileHmrSigmaDropLog s6Step292EarlyControlHistoryArena false 0 0 254 807 []=some s6Step292EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step292EarlyControl_sigmaOwned⟩
  · exact s6Step292EarlyControl_sigmaRelease

private theorem s6Step292EarlyControl_zeroBorrow : s6Step292EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step292EarlyControlLog.zeroWork=some s6Step292EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step292EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step292EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step292EarlyControlZeroArena,s6Step292EarlyControlArena,s6Step292EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step292EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step292EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step292EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EarlyControl_zero : compileHmrEqualityLog s6Step292EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step292EarlyControlLog.zeroWork=some (s6Step292EarlyControlZeroArena,s6Step292EarlyControlLog.zeroWork,s6Step292EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step292EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step292EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step292EarlyControl_logged : s6Step292EarlyControlPlan.Logged s6Step292EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 254 253 252 251 778 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step292EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step292EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step292EarlyControl_zero
  · exact s6Step292EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step292EarlyControl_flags
  · exact s6Step292EarlyControl_fit
  · exact s6Step292EarlyControl_history
  · exact s6Step292EarlyControl_sigma
  · exact s6Step292EarlyControl_branch

private theorem s6Step292EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step292EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 254 253 252 251 778 54 s6Step292EarlyControlLog=some s6Step292EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step292EarlyControlPlan s6Step292EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 254 253 252 251 778 54 s6Step292EarlyControl_logged

private def s6Step292EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step292EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩

private def s6Step292EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858],776⟩

private def s6Step292EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123],777⟩

private def s6Step292EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779],775⟩

private def s6Step292FrontBank : WindowBank := ⟨s6Step292EntryFRow,s6Step292EntryGRow,s6Step292EntryFvRow,s6Step292EntryGvRow⟩

private def s6Step292Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 823, 795]

private def s6Step292Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 922, 892, 777]

private def s6Step292Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875, 776]

private def s6Step292Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879, 775]

private theorem s6Step292Counter_apart : Disjoint s6Step292HeadFvAfter.live s6Step292CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step292HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292Counter_borrowed : s6Step292HeadFvAfter.checkBorrow 4 s6Step292CounterWork=some s6Step292CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step292HeadFvAfter s6Step292CounterDuring s6Step292CounterWork.toFinset s6Step292Counter_bounded s6Step292Counter_apart rfl

private theorem s6Step292Counter_owned : (807::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step292HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step292HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292Counter_checked : compileHmrCounterStepLog s6Step292HeadFvAfter true 807 [774, 773, 772, 771, 770, 769] s6Step292CounterWork=some s6Step292CounterDuring := by
  have owned : ∀q∈807::[774, 773, 772, 771, 770, 769],q∈s6Step292HeadFvAfter.live := fun q hq => s6Step292Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step292Counter_borrowed

private def s6Step292EntryFAfter : Arena := s6Step292EntryFBefore

private theorem s6Step292EntryBank_incomingDistinct : ([s6Step292EntryFRow,s6Step292EntryGRow,s6Step292EntryFvRow,s6Step292EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292EntryF_Incoming : rowsOwned s6Step292EntryFBefore [s6Step292EntryFRow,s6Step292EntryGRow,s6Step292EntryFvRow,s6Step292EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292EntryFRow,s6Step292EntryGRow,s6Step292EntryFvRow,s6Step292EntryGvRow] 0 s6Step292EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292EntryFBefore (fun q => ([(0,778),(779,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step292EntryBank_outgoingOwned : rowsOwned s6Step292EntryGvAfter [s6Step292EntryFOut,s6Step292EntryGOut,s6Step292EntryFvOut,s6Step292EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step292EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292EntryF_Outgoing : rowsOwned s6Step292EntryGvAfter [s6Step292EntryFOut,s6Step292EntryGOut,s6Step292EntryFvOut,s6Step292EntryGvOut] :=
  hmrRows_owned_drop s6Step292EntryGvAfter [s6Step292EntryFOut,s6Step292EntryGOut,s6Step292EntryFvOut,s6Step292EntryGvOut] 0 s6Step292EntryBank_outgoingOwned

private theorem s6Step292EntryF_distinct : (s6Step292EntryFRow.sign::s6Step292EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292EntryF_owned : (s6Step292EntryFRow.sign::s6Step292EntryFRow.payload).toFinset⊆s6Step292EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292EntryFBefore (fun q => ([(0,778),(779,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step292EntryF_reserved : s6Step292EntryFBefore.reserve s6Step292EntryFFresh.toFinset=some s6Step292EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step292EntryFFresh,arenaWires]
  · norm_num [s6Step292EntryFBefore,s6Step292EntryFFresh,arenaWires]
  · simp only [s6Step292EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step292EntryF_checked : planRowResizeLog s6Step292EntryFBefore s6Step292EntryFRow 125 s6Step292EntryFFresh=
    some (s6Step292EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩,growRow 795 s6Step292EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step292EntryFBefore s6Step292EntryFAfter s6Step292EntryFRow 125 s6Step292EntryFFresh
    s6Step292EntryF_distinct s6Step292EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step292EntryF_reserved
  have rowEq : WindowRow.mk (s6Step292EntryFRow.payload++s6Step292EntryFFresh) s6Step292EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step292EntryFvAfter : Arena := s6Step292EntryGAfter

private def s6Step292EntryFvBefore : Arena := s6Step292EntryGAfter

private theorem s6Step292EntryFv_Incoming : rowsOwned s6Step292EntryFvBefore [s6Step292EntryFvRow,s6Step292EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292EntryFRow,s6Step292EntryGRow,s6Step292EntryFvRow,s6Step292EntryGvRow] 2 s6Step292EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292EntryFv_Outgoing : rowsOwned s6Step292EntryGvAfter [s6Step292EntryFvOut,s6Step292EntryGvOut] :=
  hmrRows_owned_drop s6Step292EntryGvAfter [s6Step292EntryFOut,s6Step292EntryGOut,s6Step292EntryFvOut,s6Step292EntryGvOut] 2 s6Step292EntryBank_outgoingOwned

private theorem s6Step292EntryFv_distinct : (s6Step292EntryFvRow.sign::s6Step292EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292EntryFv_owned : (s6Step292EntryFvRow.sign::s6Step292EntryFvRow.payload).toFinset⊆s6Step292EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EntryFv_reserved : s6Step292EntryFvBefore.reserve s6Step292EntryFvFresh.toFinset=some s6Step292EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step292EntryFvFresh,arenaWires]
  · norm_num [s6Step292EntryFvBefore,s6Step292EntryGAfter,s6Step292EntryFvFresh,arenaWires]
  · simp only [s6Step292EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step292EntryFv_checked : planRowResizeLog s6Step292EntryFvBefore s6Step292EntryFvRow 161 s6Step292EntryFvFresh=
    some (s6Step292EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858],776⟩,growRow 776 s6Step292EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step292EntryFvBefore s6Step292EntryFvAfter s6Step292EntryFvRow 161 s6Step292EntryFvFresh
    s6Step292EntryFv_distinct s6Step292EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step292EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step292EntryFvRow.payload++s6Step292EntryFvFresh) s6Step292EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step292EntryGBefore : Arena := s6Step292EntryFBefore

private theorem s6Step292EntryG_Incoming : rowsOwned s6Step292EntryGBefore [s6Step292EntryGRow,s6Step292EntryFvRow,s6Step292EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292EntryFRow,s6Step292EntryGRow,s6Step292EntryFvRow,s6Step292EntryGvRow] 1 s6Step292EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292EntryGBefore (fun q => ([(0,778),(779,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step292EntryG_Outgoing : rowsOwned s6Step292EntryGvAfter [s6Step292EntryGOut,s6Step292EntryFvOut,s6Step292EntryGvOut] :=
  hmrRows_owned_drop s6Step292EntryGvAfter [s6Step292EntryFOut,s6Step292EntryGOut,s6Step292EntryFvOut,s6Step292EntryGvOut] 1 s6Step292EntryBank_outgoingOwned

private theorem s6Step292EntryG_distinct : (s6Step292EntryGRow.sign::s6Step292EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292EntryG_owned : (s6Step292EntryGRow.sign::s6Step292EntryGRow.payload).toFinset⊆s6Step292EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292EntryGBefore (fun q => ([(0,778),(779,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step292EntryG_reserved : s6Step292EntryGBefore.reserve s6Step292EntryGFresh.toFinset=some s6Step292EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step292EntryGFresh,arenaWires]
  · norm_num [s6Step292EntryGBefore,s6Step292EntryFBefore,s6Step292EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step292EntryGBefore s6Step292EntryGAfter (fun q => ([(0,778),(779,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) s6Step292EntryGFresh rfl rfl
    · norm_num [s6Step292EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step292EntryG_checked : planRowResizeLog s6Step292EntryGBefore s6Step292EntryGRow 125 s6Step292EntryGFresh=
    some (s6Step292EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 922],777⟩,growRow 777 s6Step292EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step292EntryGBefore s6Step292EntryGAfter s6Step292EntryGRow 125 s6Step292EntryGFresh
    s6Step292EntryG_distinct s6Step292EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step292EntryG_reserved
  have rowEq : WindowRow.mk (s6Step292EntryGRow.payload++s6Step292EntryGFresh) s6Step292EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 922],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step292EntryGvBefore : Arena := s6Step292EntryGAfter

private theorem s6Step292EntryGv_Incoming : rowsOwned s6Step292EntryGvBefore [s6Step292EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292EntryFRow,s6Step292EntryGRow,s6Step292EntryFvRow,s6Step292EntryGvRow] 3 s6Step292EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292EntryGv_Outgoing : rowsOwned s6Step292EntryGvAfter [s6Step292EntryGvOut] :=
  hmrRows_owned_drop s6Step292EntryGvAfter [s6Step292EntryFOut,s6Step292EntryGOut,s6Step292EntryFvOut,s6Step292EntryGvOut] 3 s6Step292EntryBank_outgoingOwned

private theorem s6Step292EntryGv_distinct : (s6Step292EntryGvRow.sign::s6Step292EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292EntryGv_owned : (s6Step292EntryGvRow.sign::s6Step292EntryGvRow.payload).toFinset⊆s6Step292EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292EntryGv_reserved : s6Step292EntryGvBefore.reserve s6Step292EntryGvFresh.toFinset=some s6Step292EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step292EntryGvFresh,arenaWires]
  · norm_num [s6Step292EntryGvBefore,s6Step292EntryGAfter,s6Step292EntryGvFresh,arenaWires]
  · simp only [s6Step292EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step292EntryGv_checked : planRowResizeLog s6Step292EntryGvBefore s6Step292EntryGvRow 161 s6Step292EntryGvFresh=
    some (s6Step292EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779],775⟩,growRow 775 s6Step292EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step292EntryGvBefore s6Step292EntryGvAfter s6Step292EntryGvRow 161 s6Step292EntryGvFresh
    s6Step292EntryGv_distinct s6Step292EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step292EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step292EntryGvRow.payload++s6Step292EntryGvFresh) s6Step292EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step292EntryBank_rows : planWindowRowsLog s6Step292EntryFBefore [(s6Step292EntryFRow,125),(s6Step292EntryGRow,125),(s6Step292EntryFvRow,161),(s6Step292EntryGvRow,161)] [s6Step292EntryFFresh,s6Step292EntryGFresh,s6Step292EntryFvFresh,s6Step292EntryGvFresh]=
    some (s6Step292EntryGvAfter,[s6Step292EntryFOut,s6Step292EntryGOut,s6Step292EntryFvOut,s6Step292EntryGvOut],(growRow 795 s6Step292EntryFFresh ++ (growRow 777 s6Step292EntryGFresh ++ (growRow 776 s6Step292EntryFvFresh ++ (growRow 775 s6Step292EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step292EntryGvAfter [] []=some (s6Step292EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step292EntryGvBefore s6Step292EntryGvAfter s6Step292EntryGvAfter
    s6Step292EntryGvRow s6Step292EntryGvOut 161 s6Step292EntryGvFresh [] [] []
    (growRow 775 s6Step292EntryGvFresh) ([]) s6Step292EntryGv_Incoming s6Step292EntryGv_checked h4 s6Step292EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step292EntryFvBefore s6Step292EntryFvAfter s6Step292EntryGvAfter
    s6Step292EntryFvRow s6Step292EntryFvOut 161 s6Step292EntryFvFresh [(s6Step292EntryGvRow,161)] [s6Step292EntryGvFresh] [s6Step292EntryGvOut]
    (growRow 776 s6Step292EntryFvFresh) ((growRow 775 s6Step292EntryGvFresh ++ [])) s6Step292EntryFv_Incoming s6Step292EntryFv_checked h3 s6Step292EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step292EntryGBefore s6Step292EntryGAfter s6Step292EntryGvAfter
    s6Step292EntryGRow s6Step292EntryGOut 125 s6Step292EntryGFresh [(s6Step292EntryFvRow,161),(s6Step292EntryGvRow,161)] [s6Step292EntryFvFresh,s6Step292EntryGvFresh] [s6Step292EntryFvOut,s6Step292EntryGvOut]
    (growRow 777 s6Step292EntryGFresh) ((growRow 776 s6Step292EntryFvFresh ++ (growRow 775 s6Step292EntryGvFresh ++ []))) s6Step292EntryG_Incoming s6Step292EntryG_checked h2 s6Step292EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step292EntryFBefore s6Step292EntryFAfter s6Step292EntryGvAfter
    s6Step292EntryFRow s6Step292EntryFOut 125 s6Step292EntryFFresh [(s6Step292EntryGRow,125),(s6Step292EntryFvRow,161),(s6Step292EntryGvRow,161)] [s6Step292EntryGFresh,s6Step292EntryFvFresh,s6Step292EntryGvFresh] [s6Step292EntryGOut,s6Step292EntryFvOut,s6Step292EntryGvOut]
    (growRow 795 s6Step292EntryFFresh) ((growRow 777 s6Step292EntryGFresh ++ (growRow 776 s6Step292EntryFvFresh ++ (growRow 775 s6Step292EntryGvFresh ++ [])))) s6Step292EntryF_Incoming s6Step292EntryF_checked h1 s6Step292EntryF_Outgoing
  exact h0

private theorem s6Step292EntryBank_checked : compileHmrBankResizeLog .entry s6Step292EntryFBefore ⟨s6Step292EntryFRow,s6Step292EntryGRow,s6Step292EntryFvRow,s6Step292EntryGvRow⟩ ⟨125,125,161,161⟩ [s6Step292EntryFFresh,s6Step292EntryGFresh,s6Step292EntryFvFresh,s6Step292EntryGvFresh]=
    some (s6Step292EntryGvAfter,⟨s6Step292EntryFOut,s6Step292EntryGOut,s6Step292EntryFvOut,s6Step292EntryGvOut⟩,(growRow 795 s6Step292EntryFFresh ++ (growRow 777 s6Step292EntryGFresh ++ (growRow 776 s6Step292EntryFvFresh ++ (growRow 775 s6Step292EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step292EntryBank_rows]
  rfl

private def s6Step292ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292ExitFBefore : Arena := s6Step292ExitGAfter

private def s6Step292ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 823],795⟩

private def s6Step292ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875],776⟩

private def s6Step292ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 922, 892],777⟩

private def s6Step292ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879],775⟩

private theorem s6Step292ExitBank_incomingDistinct : ([s6Step292ExitGRow,s6Step292ExitFRow,s6Step292ExitFvRow,s6Step292ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292ExitF_Incoming : rowsOwned s6Step292ExitFBefore [s6Step292ExitFRow,s6Step292ExitFvRow,s6Step292ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292ExitGRow,s6Step292ExitFRow,s6Step292ExitFvRow,s6Step292ExitGvRow] 1 s6Step292ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292ExitFBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292ExitBank_outgoingOwned : rowsOwned s6Step292ExitGvAfter [s6Step292ExitGOut,s6Step292ExitFOut,s6Step292ExitFvOut,s6Step292ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step292ExitGvAfter (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292ExitF_Outgoing : rowsOwned s6Step292ExitGvAfter [s6Step292ExitFOut,s6Step292ExitFvOut,s6Step292ExitGvOut] :=
  hmrRows_owned_drop s6Step292ExitGvAfter [s6Step292ExitGOut,s6Step292ExitFOut,s6Step292ExitFvOut,s6Step292ExitGvOut] 1 s6Step292ExitBank_outgoingOwned

private theorem s6Step292ExitF_distinct : (s6Step292ExitFRow.sign::s6Step292ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292ExitF_owned : (s6Step292ExitFRow.sign::s6Step292ExitFRow.payload).toFinset⊆s6Step292ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292ExitFBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292ExitF_retired : s6Step292ExitFBefore.retireSet s6Step292ExitFExtra.toFinset=s6Step292ExitFAfter := by
  unfold Arena.retireSet s6Step292ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step292ExitFBefore,s6Step292ExitGAfter,s6Step292ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step292ExitF_checked : planRowResizeLog s6Step292ExitFBefore s6Step292ExitFRow 125 []=
    some (s6Step292ExitFAfter,s6Step292ExitFOut,shrinkRow 795 s6Step292ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step292ExitFBefore s6Step292ExitFRow 125 s6Step292ExitF_distinct s6Step292ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step292ExitFRow.payload.take 125) s6Step292ExitFRow.sign=s6Step292ExitFOut := by decide +kernel
  have hi : s6Step292ExitFRow.payload.drop 125=s6Step292ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step292ExitF_retired] at result
  exact result

private def s6Step292ExitFvAfter : Arena := s6Step292ExitFAfter

private def s6Step292ExitFvBefore : Arena := s6Step292ExitFAfter

private theorem s6Step292ExitFv_Incoming : rowsOwned s6Step292ExitFvBefore [s6Step292ExitFvRow,s6Step292ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292ExitGRow,s6Step292ExitFRow,s6Step292ExitFvRow,s6Step292ExitGvRow] 2 s6Step292ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292ExitFvBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292ExitFv_Outgoing : rowsOwned s6Step292ExitGvAfter [s6Step292ExitFvOut,s6Step292ExitGvOut] :=
  hmrRows_owned_drop s6Step292ExitGvAfter [s6Step292ExitGOut,s6Step292ExitFOut,s6Step292ExitFvOut,s6Step292ExitGvOut] 2 s6Step292ExitBank_outgoingOwned

private theorem s6Step292ExitFv_distinct : (s6Step292ExitFvRow.sign::s6Step292ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292ExitFv_owned : (s6Step292ExitFvRow.sign::s6Step292ExitFvRow.payload).toFinset⊆s6Step292ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292ExitFvBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292ExitFv_reserved : s6Step292ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step292ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step292ExitFv_checked : planRowResizeLog s6Step292ExitFvBefore s6Step292ExitFvRow 162 []=
    some (s6Step292ExitFvAfter,s6Step292ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step292ExitFvBefore s6Step292ExitFvAfter s6Step292ExitFvRow 162 []
    s6Step292ExitFv_distinct s6Step292ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step292ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step292ExitFvRow.payload++[]) s6Step292ExitFvRow.sign=s6Step292ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step292ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step292ExitG_Incoming : rowsOwned s6Step292ExitGBefore [s6Step292ExitGRow,s6Step292ExitFRow,s6Step292ExitFvRow,s6Step292ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292ExitGRow,s6Step292ExitFRow,s6Step292ExitFvRow,s6Step292ExitGvRow] 0 s6Step292ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292ExitG_Outgoing : rowsOwned s6Step292ExitGvAfter [s6Step292ExitGOut,s6Step292ExitFOut,s6Step292ExitFvOut,s6Step292ExitGvOut] :=
  hmrRows_owned_drop s6Step292ExitGvAfter [s6Step292ExitGOut,s6Step292ExitFOut,s6Step292ExitFvOut,s6Step292ExitGvOut] 0 s6Step292ExitBank_outgoingOwned

private theorem s6Step292ExitG_distinct : (s6Step292ExitGRow.sign::s6Step292ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292ExitG_owned : (s6Step292ExitGRow.sign::s6Step292ExitGRow.payload).toFinset⊆s6Step292ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292ExitG_retired : s6Step292ExitGBefore.retireSet s6Step292ExitGExtra.toFinset=s6Step292ExitGAfter := by
  unfold Arena.retireSet s6Step292ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step292ExitGBefore,s6Step292ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step292ExitG_checked : planRowResizeLog s6Step292ExitGBefore s6Step292ExitGRow 123 []=
    some (s6Step292ExitGAfter,s6Step292ExitGOut,shrinkRow 777 s6Step292ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step292ExitGBefore s6Step292ExitGRow 123 s6Step292ExitG_distinct s6Step292ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step292ExitGRow.payload.take 123) s6Step292ExitGRow.sign=s6Step292ExitGOut := by decide +kernel
  have hi : s6Step292ExitGRow.payload.drop 123=s6Step292ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step292ExitG_retired] at result
  exact result

private def s6Step292ExitGvBefore : Arena := s6Step292ExitFAfter

private theorem s6Step292ExitGv_Incoming : rowsOwned s6Step292ExitGvBefore [s6Step292ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292ExitGRow,s6Step292ExitFRow,s6Step292ExitFvRow,s6Step292ExitGvRow] 3 s6Step292ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292ExitGvBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292ExitGv_Outgoing : rowsOwned s6Step292ExitGvAfter [s6Step292ExitGvOut] :=
  hmrRows_owned_drop s6Step292ExitGvAfter [s6Step292ExitGOut,s6Step292ExitFOut,s6Step292ExitFvOut,s6Step292ExitGvOut] 3 s6Step292ExitBank_outgoingOwned

private theorem s6Step292ExitGv_distinct : (s6Step292ExitGvRow.sign::s6Step292ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292ExitGv_owned : (s6Step292ExitGvRow.sign::s6Step292ExitGvRow.payload).toFinset⊆s6Step292ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292ExitGvBefore (fun q => (0≤q ∧ q<123) ∨ (124≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292ExitGv_retired : s6Step292ExitGvBefore.retireSet s6Step292ExitGvExtra.toFinset=s6Step292ExitGvAfter := by
  unfold Arena.retireSet s6Step292ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step292ExitGvBefore,s6Step292ExitFAfter,s6Step292ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step292ExitGv_checked : planRowResizeLog s6Step292ExitGvBefore s6Step292ExitGvRow 161 []=
    some (s6Step292ExitGvAfter,s6Step292ExitGvOut,shrinkRow 775 s6Step292ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step292ExitGvBefore s6Step292ExitGvRow 161 s6Step292ExitGv_distinct s6Step292ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step292ExitGvRow.payload.take 161) s6Step292ExitGvRow.sign=s6Step292ExitGvOut := by decide +kernel
  have hi : s6Step292ExitGvRow.payload.drop 161=s6Step292ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step292ExitGv_retired] at result
  exact result

private theorem s6Step292ExitBank_rows : planWindowRowsLog s6Step292ExitGBefore [(s6Step292ExitGRow,123),(s6Step292ExitFRow,125),(s6Step292ExitFvRow,162),(s6Step292ExitGvRow,161)] [[],[],[],[]]=
    some (s6Step292ExitGvAfter,[s6Step292ExitGOut,s6Step292ExitFOut,s6Step292ExitFvOut,s6Step292ExitGvOut],(shrinkRow 777 s6Step292ExitGExtra ++ (shrinkRow 795 s6Step292ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step292ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step292ExitGvAfter [] []=some (s6Step292ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step292ExitGvBefore s6Step292ExitGvAfter s6Step292ExitGvAfter
    s6Step292ExitGvRow s6Step292ExitGvOut 161 [] [] [] []
    (shrinkRow 775 s6Step292ExitGvExtra) ([]) s6Step292ExitGv_Incoming s6Step292ExitGv_checked h4 s6Step292ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step292ExitFvBefore s6Step292ExitFvAfter s6Step292ExitGvAfter
    s6Step292ExitFvRow s6Step292ExitFvOut 162 [] [(s6Step292ExitGvRow,161)] [[]] [s6Step292ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step292ExitGvExtra ++ [])) s6Step292ExitFv_Incoming s6Step292ExitFv_checked h3 s6Step292ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step292ExitFBefore s6Step292ExitFAfter s6Step292ExitGvAfter
    s6Step292ExitFRow s6Step292ExitFOut 125 [] [(s6Step292ExitFvRow,162),(s6Step292ExitGvRow,161)] [[],[]] [s6Step292ExitFvOut,s6Step292ExitGvOut]
    (shrinkRow 795 s6Step292ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step292ExitGvExtra ++ []))) s6Step292ExitF_Incoming s6Step292ExitF_checked h2 s6Step292ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step292ExitGBefore s6Step292ExitGAfter s6Step292ExitGvAfter
    s6Step292ExitGRow s6Step292ExitGOut 123 [] [(s6Step292ExitFRow,125),(s6Step292ExitFvRow,162),(s6Step292ExitGvRow,161)] [[],[],[]] [s6Step292ExitFOut,s6Step292ExitFvOut,s6Step292ExitGvOut]
    (shrinkRow 777 s6Step292ExitGExtra) ((shrinkRow 795 s6Step292ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step292ExitGvExtra ++ [])))) s6Step292ExitG_Incoming s6Step292ExitG_checked h1 s6Step292ExitG_Outgoing
  exact h0

private theorem s6Step292ExitBank_checked : compileHmrBankResizeLog .exit s6Step292ExitGBefore ⟨s6Step292ExitFRow,s6Step292ExitGRow,s6Step292ExitFvRow,s6Step292ExitGvRow⟩ ⟨125,123,162,161⟩ [[],[],[],[]]=
    some (s6Step292ExitGvAfter,⟨s6Step292ExitFOut,s6Step292ExitGOut,s6Step292ExitFvOut,s6Step292ExitGvOut⟩,(shrinkRow 777 s6Step292ExitGExtra ++ (shrinkRow 795 s6Step292ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step292ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step292ExitBank_rows]
  rfl

private theorem s6Step292Add0_apart : Disjoint s6Step292Add0Arena.live s6Step292Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step292Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292Add0_card : s6Step292Add0Arena.live.card=900 := by
  decide +kernel

private theorem s6Step292Add0_borrowed : s6Step292Add0Arena.checkBorrow (hmrHybridCount s6Step292Add0Arena s6Step292Add0B.length) s6Step292Add0Work=some s6Step292Add0During := by
  have len : s6Step292Add0Work.length=hmrHybridCount s6Step292Add0Arena s6Step292Add0B.length := by
    rw [hmrHybridCount,s6Step292Add0_card]
    decide +kernel
  have nd : s6Step292Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step292Add0Arena s6Step292Add0During s6Step292Add0Work.toFinset s6Step292Add0_bounded s6Step292Add0_apart rfl

private theorem s6Step292Add0_distinct : (828::778::887::(s6Step292Add0A++s6Step292Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292Add0_owned : (828::778::887::(s6Step292Add0A++s6Step292Add0B)).toFinset⊆s6Step292Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step292Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292Add0_checked : compileHmrHybridCinLog s6Step292Add0Arena 778 828 887 s6Step292Add0A s6Step292Add0B s6Step292Add0Work=some s6Step292Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step292Add0Arena s6Step292Add0During 778 828 887 s6Step292Add0A s6Step292Add0B s6Step292Add0Work
    (by decide +kernel) (by decide +kernel) s6Step292Add0_distinct
    (fun q hq => s6Step292Add0_owned (List.mem_toFinset.mpr hq)) s6Step292Add0_borrowed

private theorem s6Step292Add1_apart : Disjoint s6Step292Add1Arena.live s6Step292Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step292Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292Add1_card : s6Step292Add1Arena.live.card=900 := by
  decide +kernel

private theorem s6Step292Add1_borrowed : s6Step292Add1Arena.checkBorrow (hmrHybridCount s6Step292Add1Arena s6Step292Add1B.length) s6Step292Add1Work=some s6Step292Add1During := by
  have len : s6Step292Add1Work.length=hmrHybridCount s6Step292Add1Arena s6Step292Add1B.length := by
    rw [hmrHybridCount,s6Step292Add1_card]
    decide +kernel
  have nd : s6Step292Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step292Add1Arena s6Step292Add1During s6Step292Add1Work.toFinset s6Step292Add1_bounded s6Step292Add1_apart rfl

private theorem s6Step292Add1_distinct : (828::778::887::(s6Step292Add1A++s6Step292Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292Add1_owned : (828::778::887::(s6Step292Add1A++s6Step292Add1B)).toFinset⊆s6Step292Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step292Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292Add1_checked : compileHmrHybridCinLog s6Step292Add1Arena 778 828 887 s6Step292Add1A s6Step292Add1B s6Step292Add1Work=some s6Step292Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step292Add1Arena s6Step292Add1During 778 828 887 s6Step292Add1A s6Step292Add1B s6Step292Add1Work
    (by decide +kernel) (by decide +kernel) s6Step292Add1_distinct
    (fun q hq => s6Step292Add1_owned (List.mem_toFinset.mpr hq)) s6Step292Add1_borrowed

private theorem s6Step292F4_apart : Disjoint (s6Step292Add0A++s6Step292Add0B).toFinset (s6Step292Add1A++s6Step292Add1B).toFinset := by
  have nd : ((s6Step292Add0A++s6Step292Add0B)++(s6Step292Add1A++s6Step292Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step292F4_carry : s6Step292F4FlagArena.checkBorrow 1 [887]=some s6Step292Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step292F4FlagArena,s6Step292HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step292F4FlagArena,s6Step292HeadFvAfter,s6Step292Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step292F4_distinct : (807::778::828::887::((s6Step292Add0A++s6Step292Add1A)++(s6Step292Add0B++s6Step292Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292F4_flag : s6Step292HeadFvAfter.checkBorrow 1 [828]=some s6Step292F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step292HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step292F4_owned : (807::778::((s6Step292Add0A++s6Step292Add1A)++(s6Step292Add0B++s6Step292Add1B))).toFinset⊆s6Step292HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step292HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292F4_checked : compileHmrHybridF4Log s6Step292HeadFvAfter 807 778 s6Step292Add0A s6Step292Add0B s6Step292Add1A s6Step292Add1B [828] [887] s6Step292Add0Work s6Step292Add1Work=some s6Step292F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step292HeadFvAfter s6Step292F4FlagArena s6Step292Add0Arena s6Step292Add0During s6Step292Add1During 807 778
    s6Step292Add0A s6Step292Add0B s6Step292Add1A s6Step292Add1B [828] [887] s6Step292Add0Work s6Step292Add1Work
    (fun q hq => s6Step292F4_owned (List.mem_toFinset.mpr hq)) s6Step292F4_flag s6Step292F4_carry
    s6Step292F4_distinct s6Step292F4_apart s6Step292Add0_checked s6Step292Add1_checked

private theorem s6Step292Front_branch : s6Step292FrontSigmaArena.checkBorrow 1 [778]=some s6Step292HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step292FrontSigmaArena,s6Step292EntryGvAfter,s6Step292EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step292FrontSigmaArena,s6Step292EntryGvAfter,s6Step292EntryGAfter,s6Step292HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step292Front_entry : HmrFrontEntryValid s6Step292EntryFBefore s6Step292FrontBank 125 161 ⟨125,123,162,161⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step292FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step292EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step292EntryFBefore (fun q => ([(0,778),(779,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step292FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step292Front_sigma : s6Step292EntryGvAfter.checkBorrow 1 [807]=some s6Step292FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step292EntryGvAfter,s6Step292EntryGAfter,arenaWires]
  · rfl

private def s6Step292HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292HeadFBefore : Arena := s6Step292HeadGAfter

private def s6Step292HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩

private def s6Step292HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858],776⟩

private def s6Step292HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 922],777⟩

private def s6Step292HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779],775⟩

private theorem s6Step292HeadBank_incomingDistinct : ([s6Step292HeadGRow,s6Step292HeadFRow,s6Step292HeadGvRow,s6Step292HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292HeadF_Incoming : rowsOwned s6Step292HeadFBefore [s6Step292HeadFRow,s6Step292HeadGvRow,s6Step292HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292HeadGRow,s6Step292HeadFRow,s6Step292HeadGvRow,s6Step292HeadFvRow] 1 s6Step292HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292HeadBank_outgoingOwned : rowsOwned s6Step292HeadFvAfter [s6Step292HeadGOut,s6Step292HeadFOut,s6Step292HeadGvOut,s6Step292HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step292HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292HeadF_Outgoing : rowsOwned s6Step292HeadFvAfter [s6Step292HeadFOut,s6Step292HeadGvOut,s6Step292HeadFvOut] :=
  hmrRows_owned_drop s6Step292HeadFvAfter [s6Step292HeadGOut,s6Step292HeadFOut,s6Step292HeadGvOut,s6Step292HeadFvOut] 1 s6Step292HeadBank_outgoingOwned

private theorem s6Step292HeadF_distinct : (s6Step292HeadFRow.sign::s6Step292HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292HeadF_owned : (s6Step292HeadFRow.sign::s6Step292HeadFRow.payload).toFinset⊆s6Step292HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292HeadF_reserved : s6Step292HeadFBefore.reserve s6Step292HeadFFresh.toFinset=some s6Step292HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step292HeadFFresh,arenaWires]
  · norm_num [s6Step292HeadFBefore,s6Step292HeadGAfter,s6Step292HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step292HeadFAfter,s6Step292HeadFBefore,s6Step292HeadGAfter,s6Step292HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step292HeadF_checked : planRowResizeLog s6Step292HeadFBefore s6Step292HeadFRow 126 s6Step292HeadFFresh=
    some (s6Step292HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 823],795⟩,growRow 795 s6Step292HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step292HeadFBefore s6Step292HeadFAfter s6Step292HeadFRow 126 s6Step292HeadFFresh
    s6Step292HeadF_distinct s6Step292HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step292HeadF_reserved
  have rowEq : WindowRow.mk (s6Step292HeadFRow.payload++s6Step292HeadFFresh) s6Step292HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 823],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step292HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step292HeadFvBefore : Arena := s6Step292HeadGvAfter

private theorem s6Step292HeadFv_Incoming : rowsOwned s6Step292HeadFvBefore [s6Step292HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292HeadGRow,s6Step292HeadFRow,s6Step292HeadGvRow,s6Step292HeadFvRow] 3 s6Step292HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292HeadFv_Outgoing : rowsOwned s6Step292HeadFvAfter [s6Step292HeadFvOut] :=
  hmrRows_owned_drop s6Step292HeadFvAfter [s6Step292HeadGOut,s6Step292HeadFOut,s6Step292HeadGvOut,s6Step292HeadFvOut] 3 s6Step292HeadBank_outgoingOwned

private theorem s6Step292HeadFv_distinct : (s6Step292HeadFvRow.sign::s6Step292HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292HeadFv_owned : (s6Step292HeadFvRow.sign::s6Step292HeadFvRow.payload).toFinset⊆s6Step292HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292HeadFv_reserved : s6Step292HeadFvBefore.reserve s6Step292HeadFvFresh.toFinset=some s6Step292HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step292HeadFvFresh,arenaWires]
  · norm_num [s6Step292HeadFvBefore,s6Step292HeadGvAfter,s6Step292HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step292HeadFvAfter,s6Step292HeadFvBefore,s6Step292HeadGvAfter,s6Step292HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step292HeadFv_checked : planRowResizeLog s6Step292HeadFvBefore s6Step292HeadFvRow 162 s6Step292HeadFvFresh=
    some (s6Step292HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875],776⟩,growRow 776 s6Step292HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step292HeadFvBefore s6Step292HeadFvAfter s6Step292HeadFvRow 162 s6Step292HeadFvFresh
    s6Step292HeadFv_distinct s6Step292HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step292HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step292HeadFvRow.payload++s6Step292HeadFvFresh) s6Step292HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step292HeadG_Incoming : rowsOwned s6Step292HeadGBefore [s6Step292HeadGRow,s6Step292HeadFRow,s6Step292HeadGvRow,s6Step292HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292HeadGRow,s6Step292HeadFRow,s6Step292HeadGvRow,s6Step292HeadFvRow] 0 s6Step292HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292HeadG_Outgoing : rowsOwned s6Step292HeadFvAfter [s6Step292HeadGOut,s6Step292HeadFOut,s6Step292HeadGvOut,s6Step292HeadFvOut] :=
  hmrRows_owned_drop s6Step292HeadFvAfter [s6Step292HeadGOut,s6Step292HeadFOut,s6Step292HeadGvOut,s6Step292HeadFvOut] 0 s6Step292HeadBank_outgoingOwned

private theorem s6Step292HeadG_distinct : (s6Step292HeadGRow.sign::s6Step292HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292HeadG_owned : (s6Step292HeadGRow.sign::s6Step292HeadGRow.payload).toFinset⊆s6Step292HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292HeadG_reserved : s6Step292HeadGBefore.reserve s6Step292HeadGFresh.toFinset=some s6Step292HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step292HeadGFresh,arenaWires]
  · norm_num [s6Step292HeadGBefore,s6Step292HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step292HeadGAfter,s6Step292HeadGBefore,s6Step292HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step292HeadG_checked : planRowResizeLog s6Step292HeadGBefore s6Step292HeadGRow 126 s6Step292HeadGFresh=
    some (s6Step292HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 922, 892],777⟩,growRow 777 s6Step292HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step292HeadGBefore s6Step292HeadGAfter s6Step292HeadGRow 126 s6Step292HeadGFresh
    s6Step292HeadG_distinct s6Step292HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step292HeadG_reserved
  have rowEq : WindowRow.mk (s6Step292HeadGRow.payload++s6Step292HeadGFresh) s6Step292HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 922, 892],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step292HeadGvBefore : Arena := s6Step292HeadFAfter

private theorem s6Step292HeadGv_Incoming : rowsOwned s6Step292HeadGvBefore [s6Step292HeadGvRow,s6Step292HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step292HeadGRow,s6Step292HeadFRow,s6Step292HeadGvRow,s6Step292HeadFvRow] 2 s6Step292HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step292HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step292HeadGv_Outgoing : rowsOwned s6Step292HeadFvAfter [s6Step292HeadGvOut,s6Step292HeadFvOut] :=
  hmrRows_owned_drop s6Step292HeadFvAfter [s6Step292HeadGOut,s6Step292HeadFOut,s6Step292HeadGvOut,s6Step292HeadFvOut] 2 s6Step292HeadBank_outgoingOwned

private theorem s6Step292HeadGv_distinct : (s6Step292HeadGvRow.sign::s6Step292HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step292HeadGv_owned : (s6Step292HeadGvRow.sign::s6Step292HeadGvRow.payload).toFinset⊆s6Step292HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step292HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step292HeadGv_reserved : s6Step292HeadGvBefore.reserve s6Step292HeadGvFresh.toFinset=some s6Step292HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step292HeadGvFresh,arenaWires]
  · norm_num [s6Step292HeadGvBefore,s6Step292HeadFAfter,s6Step292HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step292HeadGvAfter,s6Step292HeadGvBefore,s6Step292HeadFAfter,s6Step292HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step292HeadGv_checked : planRowResizeLog s6Step292HeadGvBefore s6Step292HeadGvRow 162 s6Step292HeadGvFresh=
    some (s6Step292HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879],775⟩,growRow 775 s6Step292HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step292HeadGvBefore s6Step292HeadGvAfter s6Step292HeadGvRow 162 s6Step292HeadGvFresh
    s6Step292HeadGv_distinct s6Step292HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step292HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step292HeadGvRow.payload++s6Step292HeadGvFresh) s6Step292HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step292HeadBank_rows : planWindowRowsLog s6Step292HeadGBefore [(s6Step292HeadGRow,126),(s6Step292HeadFRow,126),(s6Step292HeadGvRow,162),(s6Step292HeadFvRow,162)] [s6Step292HeadGFresh,s6Step292HeadFFresh,s6Step292HeadGvFresh,s6Step292HeadFvFresh]=
    some (s6Step292HeadFvAfter,[s6Step292HeadGOut,s6Step292HeadFOut,s6Step292HeadGvOut,s6Step292HeadFvOut],(growRow 777 s6Step292HeadGFresh ++ (growRow 795 s6Step292HeadFFresh ++ (growRow 775 s6Step292HeadGvFresh ++ (growRow 776 s6Step292HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step292HeadFvAfter [] []=some (s6Step292HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step292HeadFvBefore s6Step292HeadFvAfter s6Step292HeadFvAfter
    s6Step292HeadFvRow s6Step292HeadFvOut 162 s6Step292HeadFvFresh [] [] []
    (growRow 776 s6Step292HeadFvFresh) ([]) s6Step292HeadFv_Incoming s6Step292HeadFv_checked h4 s6Step292HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step292HeadGvBefore s6Step292HeadGvAfter s6Step292HeadFvAfter
    s6Step292HeadGvRow s6Step292HeadGvOut 162 s6Step292HeadGvFresh [(s6Step292HeadFvRow,162)] [s6Step292HeadFvFresh] [s6Step292HeadFvOut]
    (growRow 775 s6Step292HeadGvFresh) ((growRow 776 s6Step292HeadFvFresh ++ [])) s6Step292HeadGv_Incoming s6Step292HeadGv_checked h3 s6Step292HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step292HeadFBefore s6Step292HeadFAfter s6Step292HeadFvAfter
    s6Step292HeadFRow s6Step292HeadFOut 126 s6Step292HeadFFresh [(s6Step292HeadGvRow,162),(s6Step292HeadFvRow,162)] [s6Step292HeadGvFresh,s6Step292HeadFvFresh] [s6Step292HeadGvOut,s6Step292HeadFvOut]
    (growRow 795 s6Step292HeadFFresh) ((growRow 775 s6Step292HeadGvFresh ++ (growRow 776 s6Step292HeadFvFresh ++ []))) s6Step292HeadF_Incoming s6Step292HeadF_checked h2 s6Step292HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step292HeadGBefore s6Step292HeadGAfter s6Step292HeadFvAfter
    s6Step292HeadGRow s6Step292HeadGOut 126 s6Step292HeadGFresh [(s6Step292HeadFRow,126),(s6Step292HeadGvRow,162),(s6Step292HeadFvRow,162)] [s6Step292HeadFFresh,s6Step292HeadGvFresh,s6Step292HeadFvFresh] [s6Step292HeadFOut,s6Step292HeadGvOut,s6Step292HeadFvOut]
    (growRow 777 s6Step292HeadGFresh) ((growRow 795 s6Step292HeadFFresh ++ (growRow 775 s6Step292HeadGvFresh ++ (growRow 776 s6Step292HeadFvFresh ++ [])))) s6Step292HeadG_Incoming s6Step292HeadG_checked h1 s6Step292HeadG_Outgoing
  exact h0

private theorem s6Step292HeadBank_checked : compileHmrBankResizeLog .headroom s6Step292HeadGBefore ⟨s6Step292HeadFRow,s6Step292HeadGRow,s6Step292HeadFvRow,s6Step292HeadGvRow⟩ ⟨126,126,162,162⟩ [s6Step292HeadGFresh,s6Step292HeadFFresh,s6Step292HeadGvFresh,s6Step292HeadFvFresh]=
    some (s6Step292HeadFvAfter,⟨s6Step292HeadFOut,s6Step292HeadGOut,s6Step292HeadFvOut,s6Step292HeadGvOut⟩,(growRow 777 s6Step292HeadGFresh ++ (growRow 795 s6Step292HeadFFresh ++ (growRow 775 s6Step292HeadGvFresh ++ (growRow 776 s6Step292HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step292HeadBank_rows]
  rfl

private theorem s6Step292Front_checked : compileHmrSourceFrontLog s6Step292EntryFBefore s6Step292FrontBank 125 161 ⟨125,123,162,161⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step292FrontLog=some s6Step292FrontPlan := by
  have pairEq : s6Step292FrontPair=⟨s6Step292HeadFRow,s6Step292HeadGRow,s6Step292HeadFvRow,s6Step292HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step292FrontHead=⟨s6Step292ExitFRow,s6Step292ExitGRow,s6Step292ExitFvRow,s6Step292ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step292Add0A=s6Step292FrontHead.f.wires := by decide +kernel
  have gEq : s6Step292Add0B=s6Step292FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step292Add1A=s6Step292FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step292Add1B=s6Step292FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step292EntryFBefore s6Step292FrontBank 125 161 ⟨125,123,162,161⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step292FrontLog s6Step292FrontPlan
  · exact s6Step292Front_entry
  · exact s6Step292EntryBank_checked
  · exact s6Step292Front_sigma
  · rfl
  · exact s6Step292Front_branch
  · rfl
  · simpa only [s6Step292FrontPlan,pairEq] using s6Step292HeadBank_checked
  · simpa only [s6Step292FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step292F4_checked
  · exact s6Step292Counter_checked
  · rfl
  · simpa only [s6Step292FrontPlan,headEq] using s6Step292ExitBank_checked

private theorem s6Step292Complete_explicit_checked : compileHmrEarlyStepLog s6Step292EntryFBefore s6Step292FrontBank 125 161 ⟨125,123,162,161⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step292CompleteLog=some s6Step292CompletePlan := by
  let Q := s6Step292EarlyControlPlan
  have hq := s6Step292EarlyControl_plan_checked
  have fv1 : s6Step292CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step292CompleteOut.fv.payload[2]?.getD s6Step292CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step292CompleteOut.fv.payload[3]?.getD s6Step292CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step292CompleteOut.fv.payload[4]?.getD s6Step292CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step292EntryFBefore s6Step292EarlyControlArena s6Step292FrontBank 125 161 ⟨125,123,162,161⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step292CompleteLog s6Step292FrontPlan Q
    s6Step292Front_checked s6Step292Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step292Complete_owned s6Step292Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step292EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 s6Step292CompleteOut.fv.second (s6Step292CompleteOut.fv.payload[2]?.getD s6Step292CompleteOut.fv.sign) (s6Step292CompleteOut.fv.payload[3]?.getD s6Step292CompleteOut.fv.sign) (s6Step292CompleteOut.fv.payload[4]?.getD s6Step292CompleteOut.fv.sign) 778 54 s6Step292EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep292Arena : Arena := s6Step292EntryFBefore
def s6PrivateStep292Bank : WindowBank := s6Step292FrontBank
def s6PrivateStep292Spec : HmrSourceWalkStepLog := ⟨125,161,⟨125,123,162,161⟩,54,.early s6Step292CompleteLog⟩
def s6PrivateStep292Plan : HmrSourceStepPlan := .early s6Step292CompletePlan
theorem s6PrivateStep292_source : s6PrivateStep292Spec=s6ObservedLogs288[4] := rfl
theorem s6PrivateStep292_checked : compileHmrSourceStepLog s6PrivateStep292Arena s6PrivateStep292Bank
    s6PrivateStep292Spec.fgWidth s6PrivateStep292Spec.vWidth s6PrivateStep292Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]
    6 498 292 s6PrivateStep292Spec.need none s6PrivateStep292Spec.log=some s6PrivateStep292Plan := by
  change compileHmrSourceStepLog s6Step292EntryFBefore s6Step292FrontBank 125 161 ⟨125,123,162,161⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 6 498 292 54 none (.early s6Step292CompleteLog)=some (.early s6Step292CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 292<498)]
  rw [s6Step292Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
