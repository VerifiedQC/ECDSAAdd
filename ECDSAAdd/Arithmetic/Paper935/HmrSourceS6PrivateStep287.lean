import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep285
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

private def s6Step287CompleteMoves : List (Wire × Wire) := [(789,383)]

private def s6Step287EarlyControlLog : HmrEarlyControlLog := ⟨[789, 779, 882, 875, 807],[828],[887],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step287FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807, 828], [], [856]],[[887], [875], [779], [882]],[[], [], [], []]⟩,[858],[892],[830],[805],[817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812]⟩

private def s6Step287CompleteLog : HmrEarlyStepLog := ⟨s6Step287FrontLog,s6Step287CompleteMoves,s6Step287EarlyControlLog⟩

private def s6Step287ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382],795⟩

private def s6Step287ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩

private def s6Step287ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩

private def s6Step287ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩

private def s6Step287FrontOut : WindowBank := ⟨s6Step287ExitFOut,s6Step287ExitGOut,s6Step287ExitFvOut,s6Step287ExitGvOut⟩

private def s6Step287CompleteOut : WindowBank := s6Step287FrontOut.repacked s6Step287CompleteMoves

private def s6Step287EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step287EarlyControlPositiveArena,[828],s6Step287EarlyControlEqualityArena,[887],⟨⟨858,false⟩,[⟨⟨828,false⟩,887⟩]⟩⟩

private def s6Step287EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,789⟩,⟨⟨772,false⟩,779⟩,⟨⟨771,false⟩,882⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,807⟩]⟩

private def s6Step287EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step287EarlyControlZeroArena,s6Step287EarlyControlZeroPlan,s6Step287EarlyControlClassPlan,s6Step287EarlyControlFlagArena,s6Step287EarlyControlFittedArena,s6Step287EarlyControlHistoryArena,s6Step287EarlyControlSigmaArena,s6Step287EarlyControlOutputArena,s6Step287EarlyControlLog⟩

private def s6Step287CounterWork : List Wire := [830, 805, 817, 812]

private theorem s6Step287Counter_bounded : s6Step287CounterWork.toFinset⊆arenaWires := by norm_num [s6Step287CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step287HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287CounterDuring : Arena := ⟨s6Step287HeadFvAfter.live∪s6Step287CounterWork.toFinset,Finset.union_subset s6Step287HeadFvAfter.bounded s6Step287Counter_bounded⟩

private def s6Step287EntryFFresh : List Wire := []

private def s6Step287EntryFvFresh : List Wire := []

private def s6Step287EntryGFresh : List Wire := [807, 828]

private def s6Step287EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287EntryGvFresh : List Wire := [856]

private def s6Step287ExitFExtra : List Wire := [383, 875]

private def s6Step287ExitFvExtra : List Wire := [882]

private def s6Step287ExitGExtra : List Wire := [807, 828, 887]

private def s6Step287ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<383) ∨ (384≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287ExitGvExtra : List Wire := [779]

private def s6Step287Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287Add0Work : List Wire := [817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step287Add0_bounded : s6Step287Add0Work.toFinset⊆arenaWires := by
  have h : s6Step287Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step287Add0During : Arena := ⟨s6Step287Add0Arena.live∪s6Step287Add0Work.toFinset,Finset.union_subset s6Step287Add0Arena.bounded s6Step287Add0_bounded⟩

private def s6Step287Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287Add1Work : List Wire := [817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step287Add1_bounded : s6Step287Add1Work.toFinset⊆arenaWires := by
  have h : s6Step287Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step287Add1During : Arena := ⟨s6Step287Add1Arena.live∪s6Step287Add1Work.toFinset,Finset.union_subset s6Step287Add1Arena.bounded s6Step287Add1_bounded⟩

private def s6Step287F4FlagArena : Arena := ⟨s6Step287HeadFvAfter.live∪{830},Finset.union_subset s6Step287HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step287F4Plan : HmrHybridF4Plan := ⟨s6Step287F4FlagArena,[830],s6Step287Add0Arena,[805],s6Step287Add0During,s6Step287Add0Work,s6Step287Add1During,s6Step287Add1Work⟩

private def s6Step287HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 875],795⟩

private def s6Step287HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step287HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 807, 828, 887],777⟩

private def s6Step287HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 779],775⟩

private def s6Step287FrontHead : WindowBank := ⟨s6Step287HeadFOut,s6Step287HeadGOut,s6Step287HeadFvOut,s6Step287HeadGvOut⟩

private def s6Step287EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step287EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩

private def s6Step287EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 807, 828],777⟩

private def s6Step287EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩

private def s6Step287FrontPair : WindowBank := ⟨s6Step287EntryFOut,s6Step287EntryGOut,s6Step287EntryFvOut,s6Step287EntryGvOut⟩

private def s6Step287FrontSigmaArena : Arena := ⟨s6Step287EntryGvAfter.live∪{858},Finset.union_subset s6Step287EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step287HeadFFresh : List Wire := [875]

private def s6Step287HeadFvFresh : List Wire := [882]

private def s6Step287HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287HeadGFresh : List Wire := [887]

private def s6Step287HeadGvFresh : List Wire := [779]

private def s6Step287FrontPlan : HmrSourceFront := ⟨s6Step287EntryGvAfter,s6Step287FrontPair,(growRow 795 s6Step287EntryFFresh ++ (growRow 777 s6Step287EntryGFresh ++ (growRow 776 s6Step287EntryFvFresh ++ (growRow 775 s6Step287EntryGvFresh ++ [])))),s6Step287FrontSigmaArena,[858],s6Step287HeadGBefore,[892],
  s6Step287HeadFvAfter,s6Step287FrontHead,(growRow 777 s6Step287HeadGFresh ++ (growRow 795 s6Step287HeadFFresh ++ (growRow 775 s6Step287HeadGvFresh ++ (growRow 776 s6Step287HeadFvFresh ++ [])))),s6Step287F4Plan,s6Step287CounterDuring,s6Step287CounterWork,s6Step287ExitGvAfter,s6Step287FrontOut,(shrinkRow 777 s6Step287ExitGExtra ++ (shrinkRow 795 s6Step287ExitFExtra ++ (shrinkRow 776 s6Step287ExitFvExtra ++ (shrinkRow 775 s6Step287ExitGvExtra ++ []))))⟩

private def s6Step287CompletePlan : HmrEarlyStepPlan := ⟨s6Step287FrontPlan,s6Step287EarlyControlArena,s6Step287EarlyControlPlan,s6Step287CompleteMoves⟩

private theorem s6Step287Complete_apart : List.Disjoint (s6Step287CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [858, 892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := by
  have nd : ((s6Step287CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[858, 892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step287Complete_owned : (s6Step287CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step287EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step287CompleteMoveArena : Arena := ⟨s6Step287ExitGvAfter.live∪{383},Finset.union_subset s6Step287ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step287Complete_repack : s6Step287ExitGvAfter.checkRepack s6Step287CompleteMoves=some s6Step287EarlyControlArena := by
  have owned : 789∈s6Step287ExitGvAfter.live := by norm_num [s6Step287ExitGvAfter,arenaWires]
  have reserve : s6Step287ExitGvAfter.reserve {383}=some s6Step287CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step287ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step287CompleteMoveArena.retireSet {789}=s6Step287EarlyControlArena := by
    unfold Arena.retireSet s6Step287EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step287CompleteMoveArena,s6Step287ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step287CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step287CompleteMoveArena.retireSet {789}).checkRepack []=some s6Step287EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step287EarlyControl_branchOwned : ([892] : List Wire).toFinset⊆s6Step287EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EarlyControl_branch : compileHmrBranchRetirement s6Step287EarlyControlSigmaArena 892=some s6Step287EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step287EarlyControl_branchOwned
  · ext q
    simp [s6Step287EarlyControlOutputArena,s6Step287EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step287EarlyControl_classEqualityBorrow : s6Step287EarlyControlPositiveArena.checkBorrow (([858, 828] : List Wire).length-1) s6Step287EarlyControlLog.classWork=some s6Step287EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step287EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step287EarlyControlEqualityArena,s6Step287EarlyControlPositiveArena,s6Step287EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step287EarlyControl_classEqualityOwned : ([858, 828] : List Wire).toFinset⊆s6Step287EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EarlyControl_classEquality : compileHmrEqualityLog s6Step287EarlyControlPositiveArena [858, 828] 0 s6Step287EarlyControlLog.classWork=some (s6Step287EarlyControlEqualityArena,s6Step287EarlyControlLog.classWork,s6Step287EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step287EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step287EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step287EarlyControl_classOwned : ([769, 807, 858] : List Wire).toFinset⊆s6Step287EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EarlyControl_positiveBorrow : s6Step287EarlyControlZeroArena.checkBorrow (1) s6Step287EarlyControlLog.positiveWork=some s6Step287EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step287EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step287EarlyControlPositiveArena,s6Step287EarlyControlZeroArena,s6Step287EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step287EarlyControl_class : compileHmrSourceClassLog s6Step287EarlyControlZeroArena false 769 s6Step287EarlyControlZeroPlan.top 0 858 s6Step287EarlyControlLog.positiveWork s6Step287EarlyControlLog.classWork=some s6Step287EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step287EarlyControlClassPlan s6Step287EarlyControlZeroArena false 769 s6Step287EarlyControlZeroPlan.top 0 858
  constructor
  · decide +kernel
  · exact s6Step287EarlyControl_classOwned
  · exact s6Step287EarlyControl_positiveBorrow
  · exact s6Step287EarlyControl_classEquality

private theorem s6Step287EarlyControl_entryRecordOwned : ([892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step287EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EarlyControl_entrySigmaOwned : ([858, 254] : List Wire).toFinset⊆s6Step287EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EarlyControl_fitBorrow : s6Step287EarlyControlFlagArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step287EarlyControlLog.recordFresh=some s6Step287EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step287EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step287EarlyControlFittedArena,s6Step287EarlyControlFlagArena,s6Step287EarlyControlLog,arenaWires]

private theorem s6Step287EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step287EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EarlyControl_fit : compileHmrRecordGrowLog s6Step287EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step287EarlyControlLog.recordFresh=some s6Step287EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step287EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step287EarlyControl_fitBorrow

private theorem s6Step287EarlyControl_flagsBorrow : s6Step287EarlyControlEqualityArena.checkBorrow (6) s6Step287EarlyControlLog.flagWork=some s6Step287EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step287EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step287EarlyControlFlagArena,s6Step287EarlyControlEqualityArena,s6Step287EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step287EarlyControl_flagsOwned : ([887, 253, 252, 251] : List Wire).toFinset⊆s6Step287EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EarlyControl_flags : compileHmrFlagsLog s6Step287EarlyControlClassPlan.equalityArena s6Step287EarlyControlClassPlan.equality.top 253 252 251 s6Step287EarlyControlLog.flagWork=some s6Step287EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step287EarlyControl_flagsOwned⟩
  · exact s6Step287EarlyControl_flagsBorrow

private theorem s6Step287EarlyControl_historyBorrow : s6Step287EarlyControlArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step287EarlyControlLog.recordFresh=some s6Step287EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step287EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step287EarlyControlHistoryArena,s6Step287EarlyControlArena,s6Step287EarlyControlLog,arenaWires]

private theorem s6Step287EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step287EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EarlyControl_history : compileHmrRecordGrowLog s6Step287EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step287EarlyControlLog.recordFresh=some s6Step287EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step287EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step287EarlyControl_historyBorrow

private theorem s6Step287EarlyControl_sigmaOwned : ([254, 858] : List Wire).toFinset⊆s6Step287EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EarlyControl_sigmaReleaseOwned : ([858] : List Wire).toFinset⊆s6Step287EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EarlyControl_sigmaRelease : s6Step287EarlyControlHistoryArena.release {858} (fun _ => false)=some s6Step287EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step287EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step287EarlyControlSigmaArena,s6Step287EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step287EarlyControl_sigma : compileHmrSigmaDropLog s6Step287EarlyControlHistoryArena false 0 0 254 858 []=some s6Step287EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step287EarlyControl_sigmaOwned⟩
  · exact s6Step287EarlyControl_sigmaRelease

private theorem s6Step287EarlyControl_zeroBorrow : s6Step287EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step287EarlyControlLog.zeroWork=some s6Step287EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step287EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step287EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step287EarlyControlZeroArena,s6Step287EarlyControlArena,s6Step287EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step287EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step287EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step287EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EarlyControl_zero : compileHmrEqualityLog s6Step287EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step287EarlyControlLog.zeroWork=some (s6Step287EarlyControlZeroArena,s6Step287EarlyControlLog.zeroWork,s6Step287EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step287EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step287EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step287EarlyControl_logged : s6Step287EarlyControlPlan.Logged s6Step287EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 858 254 253 252 251 892 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step287EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step287EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step287EarlyControl_zero
  · exact s6Step287EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step287EarlyControl_flags
  · exact s6Step287EarlyControl_fit
  · exact s6Step287EarlyControl_history
  · exact s6Step287EarlyControl_sigma
  · exact s6Step287EarlyControl_branch

private theorem s6Step287EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step287EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 858 254 253 252 251 892 54 s6Step287EarlyControlLog=some s6Step287EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step287EarlyControlPlan s6Step287EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 858 254 253 252 251 892 54 s6Step287EarlyControl_logged

private def s6Step287EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step287EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step287EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩

private def s6Step287EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩

private def s6Step287EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873],775⟩

private def s6Step287FrontBank : WindowBank := ⟨s6Step287EntryFRow,s6Step287EntryGRow,s6Step287EntryFvRow,s6Step287EntryGvRow⟩

private def s6Step287Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 875, 795]

private def s6Step287Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 807, 828, 887, 777]

private def s6Step287Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 776]

private def s6Step287Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 779, 775]

private theorem s6Step287Counter_apart : Disjoint s6Step287HeadFvAfter.live s6Step287CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step287HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287Counter_borrowed : s6Step287HeadFvAfter.checkBorrow 4 s6Step287CounterWork=some s6Step287CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step287HeadFvAfter s6Step287CounterDuring s6Step287CounterWork.toFinset s6Step287Counter_bounded s6Step287Counter_apart rfl

private theorem s6Step287Counter_owned : (858::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step287HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step287HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287Counter_checked : compileHmrCounterStepLog s6Step287HeadFvAfter true 858 [774, 773, 772, 771, 770, 769] s6Step287CounterWork=some s6Step287CounterDuring := by
  have owned : ∀q∈858::[774, 773, 772, 771, 770, 769],q∈s6Step287HeadFvAfter.live := fun q hq => s6Step287Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step287Counter_borrowed

private def s6Step287EntryFAfter : Arena := s6Step287EntryFBefore

private theorem s6Step287EntryBank_incomingDistinct : ([s6Step287EntryFRow,s6Step287EntryGRow,s6Step287EntryFvRow,s6Step287EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287EntryF_Incoming : rowsOwned s6Step287EntryFBefore [s6Step287EntryFRow,s6Step287EntryGRow,s6Step287EntryFvRow,s6Step287EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287EntryFRow,s6Step287EntryGRow,s6Step287EntryFvRow,s6Step287EntryGvRow] 0 s6Step287EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287EntryFBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step287EntryBank_outgoingOwned : rowsOwned s6Step287EntryGvAfter [s6Step287EntryFOut,s6Step287EntryGOut,s6Step287EntryFvOut,s6Step287EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step287EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287EntryF_Outgoing : rowsOwned s6Step287EntryGvAfter [s6Step287EntryFOut,s6Step287EntryGOut,s6Step287EntryFvOut,s6Step287EntryGvOut] :=
  hmrRows_owned_drop s6Step287EntryGvAfter [s6Step287EntryFOut,s6Step287EntryGOut,s6Step287EntryFvOut,s6Step287EntryGvOut] 0 s6Step287EntryBank_outgoingOwned

private theorem s6Step287EntryF_distinct : (s6Step287EntryFRow.sign::s6Step287EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287EntryF_owned : (s6Step287EntryFRow.sign::s6Step287EntryFRow.payload).toFinset⊆s6Step287EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287EntryFBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step287EntryF_reserved : s6Step287EntryFBefore.reserve s6Step287EntryFFresh.toFinset=some s6Step287EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step287EntryFFresh,arenaWires]
  · norm_num [s6Step287EntryFBefore,s6Step287EntryFFresh,arenaWires]
  · simp only [s6Step287EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step287EntryF_checked : planRowResizeLog s6Step287EntryFBefore s6Step287EntryFRow 128 s6Step287EntryFFresh=
    some (s6Step287EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩,growRow 795 s6Step287EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step287EntryFBefore s6Step287EntryFAfter s6Step287EntryFRow 128 s6Step287EntryFFresh
    s6Step287EntryF_distinct s6Step287EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step287EntryF_reserved
  have rowEq : WindowRow.mk (s6Step287EntryFRow.payload++s6Step287EntryFFresh) s6Step287EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step287EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287EntryFvAfter : Arena := s6Step287EntryGAfter

private def s6Step287EntryFvBefore : Arena := s6Step287EntryGAfter

private theorem s6Step287EntryFv_Incoming : rowsOwned s6Step287EntryFvBefore [s6Step287EntryFvRow,s6Step287EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287EntryFRow,s6Step287EntryGRow,s6Step287EntryFvRow,s6Step287EntryGvRow] 2 s6Step287EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287EntryFv_Outgoing : rowsOwned s6Step287EntryGvAfter [s6Step287EntryFvOut,s6Step287EntryGvOut] :=
  hmrRows_owned_drop s6Step287EntryGvAfter [s6Step287EntryFOut,s6Step287EntryGOut,s6Step287EntryFvOut,s6Step287EntryGvOut] 2 s6Step287EntryBank_outgoingOwned

private theorem s6Step287EntryFv_distinct : (s6Step287EntryFvRow.sign::s6Step287EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287EntryFv_owned : (s6Step287EntryFvRow.sign::s6Step287EntryFvRow.payload).toFinset⊆s6Step287EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EntryFv_reserved : s6Step287EntryFvBefore.reserve s6Step287EntryFvFresh.toFinset=some s6Step287EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step287EntryFvFresh,arenaWires]
  · norm_num [s6Step287EntryFvBefore,s6Step287EntryGAfter,s6Step287EntryFvFresh,arenaWires]
  · simp only [s6Step287EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step287EntryFv_checked : planRowResizeLog s6Step287EntryFvBefore s6Step287EntryFvRow 159 s6Step287EntryFvFresh=
    some (s6Step287EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩,growRow 776 s6Step287EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step287EntryFvBefore s6Step287EntryFvAfter s6Step287EntryFvRow 159 s6Step287EntryFvFresh
    s6Step287EntryFv_distinct s6Step287EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step287EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step287EntryFvRow.payload++s6Step287EntryFvFresh) s6Step287EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step287EntryGBefore : Arena := s6Step287EntryFBefore

private theorem s6Step287EntryG_Incoming : rowsOwned s6Step287EntryGBefore [s6Step287EntryGRow,s6Step287EntryFvRow,s6Step287EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287EntryFRow,s6Step287EntryGRow,s6Step287EntryFvRow,s6Step287EntryGvRow] 1 s6Step287EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287EntryGBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step287EntryG_Outgoing : rowsOwned s6Step287EntryGvAfter [s6Step287EntryGOut,s6Step287EntryFvOut,s6Step287EntryGvOut] :=
  hmrRows_owned_drop s6Step287EntryGvAfter [s6Step287EntryFOut,s6Step287EntryGOut,s6Step287EntryFvOut,s6Step287EntryGvOut] 1 s6Step287EntryBank_outgoingOwned

private theorem s6Step287EntryG_distinct : (s6Step287EntryGRow.sign::s6Step287EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287EntryG_owned : (s6Step287EntryGRow.sign::s6Step287EntryGRow.payload).toFinset⊆s6Step287EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287EntryGBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step287EntryG_reserved : s6Step287EntryGBefore.reserve s6Step287EntryGFresh.toFinset=some s6Step287EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step287EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step287EntryGBefore,s6Step287EntryFBefore,s6Step287EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step287EntryGBefore s6Step287EntryGAfter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) s6Step287EntryGFresh rfl rfl
    · norm_num [s6Step287EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step287EntryG_checked : planRowResizeLog s6Step287EntryGBefore s6Step287EntryGRow 128 s6Step287EntryGFresh=
    some (s6Step287EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 807, 828],777⟩,growRow 777 s6Step287EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step287EntryGBefore s6Step287EntryGAfter s6Step287EntryGRow 128 s6Step287EntryGFresh
    s6Step287EntryG_distinct s6Step287EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step287EntryG_reserved
  have rowEq : WindowRow.mk (s6Step287EntryGRow.payload++s6Step287EntryGFresh) s6Step287EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 807, 828],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step287EntryGvBefore : Arena := s6Step287EntryGAfter

private theorem s6Step287EntryGv_Incoming : rowsOwned s6Step287EntryGvBefore [s6Step287EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287EntryFRow,s6Step287EntryGRow,s6Step287EntryFvRow,s6Step287EntryGvRow] 3 s6Step287EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287EntryGv_Outgoing : rowsOwned s6Step287EntryGvAfter [s6Step287EntryGvOut] :=
  hmrRows_owned_drop s6Step287EntryGvAfter [s6Step287EntryFOut,s6Step287EntryGOut,s6Step287EntryFvOut,s6Step287EntryGvOut] 3 s6Step287EntryBank_outgoingOwned

private theorem s6Step287EntryGv_distinct : (s6Step287EntryGvRow.sign::s6Step287EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287EntryGv_owned : (s6Step287EntryGvRow.sign::s6Step287EntryGvRow.payload).toFinset⊆s6Step287EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287EntryGv_reserved : s6Step287EntryGvBefore.reserve s6Step287EntryGvFresh.toFinset=some s6Step287EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step287EntryGvFresh,arenaWires]
  · norm_num [s6Step287EntryGvBefore,s6Step287EntryGAfter,s6Step287EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step287EntryGvAfter,s6Step287EntryGvBefore,s6Step287EntryGAfter,s6Step287EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step287EntryGv_checked : planRowResizeLog s6Step287EntryGvBefore s6Step287EntryGvRow 159 s6Step287EntryGvFresh=
    some (s6Step287EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩,growRow 775 s6Step287EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step287EntryGvBefore s6Step287EntryGvAfter s6Step287EntryGvRow 159 s6Step287EntryGvFresh
    s6Step287EntryGv_distinct s6Step287EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step287EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step287EntryGvRow.payload++s6Step287EntryGvFresh) s6Step287EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step287EntryBank_rows : planWindowRowsLog s6Step287EntryFBefore [(s6Step287EntryFRow,128),(s6Step287EntryGRow,128),(s6Step287EntryFvRow,159),(s6Step287EntryGvRow,159)] [s6Step287EntryFFresh,s6Step287EntryGFresh,s6Step287EntryFvFresh,s6Step287EntryGvFresh]=
    some (s6Step287EntryGvAfter,[s6Step287EntryFOut,s6Step287EntryGOut,s6Step287EntryFvOut,s6Step287EntryGvOut],(growRow 795 s6Step287EntryFFresh ++ (growRow 777 s6Step287EntryGFresh ++ (growRow 776 s6Step287EntryFvFresh ++ (growRow 775 s6Step287EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step287EntryGvAfter [] []=some (s6Step287EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step287EntryGvBefore s6Step287EntryGvAfter s6Step287EntryGvAfter
    s6Step287EntryGvRow s6Step287EntryGvOut 159 s6Step287EntryGvFresh [] [] []
    (growRow 775 s6Step287EntryGvFresh) ([]) s6Step287EntryGv_Incoming s6Step287EntryGv_checked h4 s6Step287EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step287EntryFvBefore s6Step287EntryFvAfter s6Step287EntryGvAfter
    s6Step287EntryFvRow s6Step287EntryFvOut 159 s6Step287EntryFvFresh [(s6Step287EntryGvRow,159)] [s6Step287EntryGvFresh] [s6Step287EntryGvOut]
    (growRow 776 s6Step287EntryFvFresh) ((growRow 775 s6Step287EntryGvFresh ++ [])) s6Step287EntryFv_Incoming s6Step287EntryFv_checked h3 s6Step287EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step287EntryGBefore s6Step287EntryGAfter s6Step287EntryGvAfter
    s6Step287EntryGRow s6Step287EntryGOut 128 s6Step287EntryGFresh [(s6Step287EntryFvRow,159),(s6Step287EntryGvRow,159)] [s6Step287EntryFvFresh,s6Step287EntryGvFresh] [s6Step287EntryFvOut,s6Step287EntryGvOut]
    (growRow 777 s6Step287EntryGFresh) ((growRow 776 s6Step287EntryFvFresh ++ (growRow 775 s6Step287EntryGvFresh ++ []))) s6Step287EntryG_Incoming s6Step287EntryG_checked h2 s6Step287EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step287EntryFBefore s6Step287EntryFAfter s6Step287EntryGvAfter
    s6Step287EntryFRow s6Step287EntryFOut 128 s6Step287EntryFFresh [(s6Step287EntryGRow,128),(s6Step287EntryFvRow,159),(s6Step287EntryGvRow,159)] [s6Step287EntryGFresh,s6Step287EntryFvFresh,s6Step287EntryGvFresh] [s6Step287EntryGOut,s6Step287EntryFvOut,s6Step287EntryGvOut]
    (growRow 795 s6Step287EntryFFresh) ((growRow 777 s6Step287EntryGFresh ++ (growRow 776 s6Step287EntryFvFresh ++ (growRow 775 s6Step287EntryGvFresh ++ [])))) s6Step287EntryF_Incoming s6Step287EntryF_checked h1 s6Step287EntryF_Outgoing
  exact h0

private theorem s6Step287EntryBank_checked : compileHmrBankResizeLog .entry s6Step287EntryFBefore ⟨s6Step287EntryFRow,s6Step287EntryGRow,s6Step287EntryFvRow,s6Step287EntryGvRow⟩ ⟨128,128,159,159⟩ [s6Step287EntryFFresh,s6Step287EntryGFresh,s6Step287EntryFvFresh,s6Step287EntryGvFresh]=
    some (s6Step287EntryGvAfter,⟨s6Step287EntryFOut,s6Step287EntryGOut,s6Step287EntryFvOut,s6Step287EntryGvOut⟩,(growRow 795 s6Step287EntryFFresh ++ (growRow 777 s6Step287EntryGFresh ++ (growRow 776 s6Step287EntryFvFresh ++ (growRow 775 s6Step287EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step287EntryBank_rows]
  rfl

private def s6Step287ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<383) ∨ (384≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287ExitFBefore : Arena := s6Step287ExitGAfter

private def s6Step287ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 875],795⟩

private def s6Step287ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step287ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 807, 828, 887],777⟩

private def s6Step287ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 779],775⟩

private theorem s6Step287ExitBank_incomingDistinct : ([s6Step287ExitGRow,s6Step287ExitFRow,s6Step287ExitFvRow,s6Step287ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287ExitF_Incoming : rowsOwned s6Step287ExitFBefore [s6Step287ExitFRow,s6Step287ExitFvRow,s6Step287ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287ExitGRow,s6Step287ExitFRow,s6Step287ExitFvRow,s6Step287ExitGvRow] 1 s6Step287ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287ExitBank_outgoingOwned : rowsOwned s6Step287ExitGvAfter [s6Step287ExitGOut,s6Step287ExitFOut,s6Step287ExitFvOut,s6Step287ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step287ExitGvAfter (fun q => (0≤q ∧ q<383) ∨ (384≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287ExitF_Outgoing : rowsOwned s6Step287ExitGvAfter [s6Step287ExitFOut,s6Step287ExitFvOut,s6Step287ExitGvOut] :=
  hmrRows_owned_drop s6Step287ExitGvAfter [s6Step287ExitGOut,s6Step287ExitFOut,s6Step287ExitFvOut,s6Step287ExitGvOut] 1 s6Step287ExitBank_outgoingOwned

private theorem s6Step287ExitF_distinct : (s6Step287ExitFRow.sign::s6Step287ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287ExitF_owned : (s6Step287ExitFRow.sign::s6Step287ExitFRow.payload).toFinset⊆s6Step287ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287ExitF_retired : s6Step287ExitFBefore.retireSet s6Step287ExitFExtra.toFinset=s6Step287ExitFAfter := by
  unfold Arena.retireSet s6Step287ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step287ExitFBefore,s6Step287ExitGAfter,s6Step287ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step287ExitF_checked : planRowResizeLog s6Step287ExitFBefore s6Step287ExitFRow 127 []=
    some (s6Step287ExitFAfter,s6Step287ExitFOut,shrinkRow 795 s6Step287ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step287ExitFBefore s6Step287ExitFRow 127 s6Step287ExitF_distinct s6Step287ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step287ExitFRow.payload.take 127) s6Step287ExitFRow.sign=s6Step287ExitFOut := by decide +kernel
  have hi : s6Step287ExitFRow.payload.drop 127=s6Step287ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step287ExitF_retired] at result
  exact result

private def s6Step287ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<383) ∨ (384≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287ExitFvBefore : Arena := s6Step287ExitFAfter

private theorem s6Step287ExitFv_Incoming : rowsOwned s6Step287ExitFvBefore [s6Step287ExitFvRow,s6Step287ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287ExitGRow,s6Step287ExitFRow,s6Step287ExitFvRow,s6Step287ExitGvRow] 2 s6Step287ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287ExitFvBefore (fun q => (0≤q ∧ q<383) ∨ (384≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287ExitFv_Outgoing : rowsOwned s6Step287ExitGvAfter [s6Step287ExitFvOut,s6Step287ExitGvOut] :=
  hmrRows_owned_drop s6Step287ExitGvAfter [s6Step287ExitGOut,s6Step287ExitFOut,s6Step287ExitFvOut,s6Step287ExitGvOut] 2 s6Step287ExitBank_outgoingOwned

private theorem s6Step287ExitFv_distinct : (s6Step287ExitFvRow.sign::s6Step287ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287ExitFv_owned : (s6Step287ExitFvRow.sign::s6Step287ExitFvRow.payload).toFinset⊆s6Step287ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287ExitFvBefore (fun q => (0≤q ∧ q<383) ∨ (384≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287ExitFv_retired : s6Step287ExitFvBefore.retireSet s6Step287ExitFvExtra.toFinset=s6Step287ExitFvAfter := by
  unfold Arena.retireSet s6Step287ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step287ExitFvBefore,s6Step287ExitFAfter,s6Step287ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step287ExitFv_checked : planRowResizeLog s6Step287ExitFvBefore s6Step287ExitFvRow 159 []=
    some (s6Step287ExitFvAfter,s6Step287ExitFvOut,shrinkRow 776 s6Step287ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step287ExitFvBefore s6Step287ExitFvRow 159 s6Step287ExitFv_distinct s6Step287ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step287ExitFvRow.payload.take 159) s6Step287ExitFvRow.sign=s6Step287ExitFvOut := by decide +kernel
  have hi : s6Step287ExitFvRow.payload.drop 159=s6Step287ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step287ExitFv_retired] at result
  exact result

private def s6Step287ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step287ExitG_Incoming : rowsOwned s6Step287ExitGBefore [s6Step287ExitGRow,s6Step287ExitFRow,s6Step287ExitFvRow,s6Step287ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287ExitGRow,s6Step287ExitFRow,s6Step287ExitFvRow,s6Step287ExitGvRow] 0 s6Step287ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287ExitG_Outgoing : rowsOwned s6Step287ExitGvAfter [s6Step287ExitGOut,s6Step287ExitFOut,s6Step287ExitFvOut,s6Step287ExitGvOut] :=
  hmrRows_owned_drop s6Step287ExitGvAfter [s6Step287ExitGOut,s6Step287ExitFOut,s6Step287ExitFvOut,s6Step287ExitGvOut] 0 s6Step287ExitBank_outgoingOwned

private theorem s6Step287ExitG_distinct : (s6Step287ExitGRow.sign::s6Step287ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287ExitG_owned : (s6Step287ExitGRow.sign::s6Step287ExitGRow.payload).toFinset⊆s6Step287ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287ExitG_retired : s6Step287ExitGBefore.retireSet s6Step287ExitGExtra.toFinset=s6Step287ExitGAfter := by
  unfold Arena.retireSet s6Step287ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step287ExitGBefore,s6Step287ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step287ExitG_checked : planRowResizeLog s6Step287ExitGBefore s6Step287ExitGRow 126 []=
    some (s6Step287ExitGAfter,s6Step287ExitGOut,shrinkRow 777 s6Step287ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step287ExitGBefore s6Step287ExitGRow 126 s6Step287ExitG_distinct s6Step287ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step287ExitGRow.payload.take 126) s6Step287ExitGRow.sign=s6Step287ExitGOut := by decide +kernel
  have hi : s6Step287ExitGRow.payload.drop 126=s6Step287ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step287ExitG_retired] at result
  exact result

private def s6Step287ExitGvBefore : Arena := s6Step287ExitFvAfter

private theorem s6Step287ExitGv_Incoming : rowsOwned s6Step287ExitGvBefore [s6Step287ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287ExitGRow,s6Step287ExitFRow,s6Step287ExitFvRow,s6Step287ExitGvRow] 3 s6Step287ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287ExitGvBefore (fun q => (0≤q ∧ q<383) ∨ (384≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287ExitGv_Outgoing : rowsOwned s6Step287ExitGvAfter [s6Step287ExitGvOut] :=
  hmrRows_owned_drop s6Step287ExitGvAfter [s6Step287ExitGOut,s6Step287ExitFOut,s6Step287ExitFvOut,s6Step287ExitGvOut] 3 s6Step287ExitBank_outgoingOwned

private theorem s6Step287ExitGv_distinct : (s6Step287ExitGvRow.sign::s6Step287ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287ExitGv_owned : (s6Step287ExitGvRow.sign::s6Step287ExitGvRow.payload).toFinset⊆s6Step287ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287ExitGvBefore (fun q => (0≤q ∧ q<383) ∨ (384≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287ExitGv_retired : s6Step287ExitGvBefore.retireSet s6Step287ExitGvExtra.toFinset=s6Step287ExitGvAfter := by
  unfold Arena.retireSet s6Step287ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step287ExitGvBefore,s6Step287ExitFvAfter,s6Step287ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step287ExitGv_checked : planRowResizeLog s6Step287ExitGvBefore s6Step287ExitGvRow 159 []=
    some (s6Step287ExitGvAfter,s6Step287ExitGvOut,shrinkRow 775 s6Step287ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step287ExitGvBefore s6Step287ExitGvRow 159 s6Step287ExitGv_distinct s6Step287ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step287ExitGvRow.payload.take 159) s6Step287ExitGvRow.sign=s6Step287ExitGvOut := by decide +kernel
  have hi : s6Step287ExitGvRow.payload.drop 159=s6Step287ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step287ExitGv_retired] at result
  exact result

private theorem s6Step287ExitBank_rows : planWindowRowsLog s6Step287ExitGBefore [(s6Step287ExitGRow,126),(s6Step287ExitFRow,127),(s6Step287ExitFvRow,159),(s6Step287ExitGvRow,159)] [[],[],[],[]]=
    some (s6Step287ExitGvAfter,[s6Step287ExitGOut,s6Step287ExitFOut,s6Step287ExitFvOut,s6Step287ExitGvOut],(shrinkRow 777 s6Step287ExitGExtra ++ (shrinkRow 795 s6Step287ExitFExtra ++ (shrinkRow 776 s6Step287ExitFvExtra ++ (shrinkRow 775 s6Step287ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step287ExitGvAfter [] []=some (s6Step287ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step287ExitGvBefore s6Step287ExitGvAfter s6Step287ExitGvAfter
    s6Step287ExitGvRow s6Step287ExitGvOut 159 [] [] [] []
    (shrinkRow 775 s6Step287ExitGvExtra) ([]) s6Step287ExitGv_Incoming s6Step287ExitGv_checked h4 s6Step287ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step287ExitFvBefore s6Step287ExitFvAfter s6Step287ExitGvAfter
    s6Step287ExitFvRow s6Step287ExitFvOut 159 [] [(s6Step287ExitGvRow,159)] [[]] [s6Step287ExitGvOut]
    (shrinkRow 776 s6Step287ExitFvExtra) ((shrinkRow 775 s6Step287ExitGvExtra ++ [])) s6Step287ExitFv_Incoming s6Step287ExitFv_checked h3 s6Step287ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step287ExitFBefore s6Step287ExitFAfter s6Step287ExitGvAfter
    s6Step287ExitFRow s6Step287ExitFOut 127 [] [(s6Step287ExitFvRow,159),(s6Step287ExitGvRow,159)] [[],[]] [s6Step287ExitFvOut,s6Step287ExitGvOut]
    (shrinkRow 795 s6Step287ExitFExtra) ((shrinkRow 776 s6Step287ExitFvExtra ++ (shrinkRow 775 s6Step287ExitGvExtra ++ []))) s6Step287ExitF_Incoming s6Step287ExitF_checked h2 s6Step287ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step287ExitGBefore s6Step287ExitGAfter s6Step287ExitGvAfter
    s6Step287ExitGRow s6Step287ExitGOut 126 [] [(s6Step287ExitFRow,127),(s6Step287ExitFvRow,159),(s6Step287ExitGvRow,159)] [[],[],[]] [s6Step287ExitFOut,s6Step287ExitFvOut,s6Step287ExitGvOut]
    (shrinkRow 777 s6Step287ExitGExtra) ((shrinkRow 795 s6Step287ExitFExtra ++ (shrinkRow 776 s6Step287ExitFvExtra ++ (shrinkRow 775 s6Step287ExitGvExtra ++ [])))) s6Step287ExitG_Incoming s6Step287ExitG_checked h1 s6Step287ExitG_Outgoing
  exact h0

private theorem s6Step287ExitBank_checked : compileHmrBankResizeLog .exit s6Step287ExitGBefore ⟨s6Step287ExitFRow,s6Step287ExitGRow,s6Step287ExitFvRow,s6Step287ExitGvRow⟩ ⟨127,126,159,159⟩ [[],[],[],[]]=
    some (s6Step287ExitGvAfter,⟨s6Step287ExitFOut,s6Step287ExitGOut,s6Step287ExitFvOut,s6Step287ExitGvOut⟩,(shrinkRow 777 s6Step287ExitGExtra ++ (shrinkRow 795 s6Step287ExitFExtra ++ (shrinkRow 776 s6Step287ExitFvExtra ++ (shrinkRow 775 s6Step287ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step287ExitBank_rows]
  rfl

private theorem s6Step287Add0_apart : Disjoint s6Step287Add0Arena.live s6Step287Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step287Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287Add0_card : s6Step287Add0Arena.live.card=902 := by
  decide +kernel

private theorem s6Step287Add0_borrowed : s6Step287Add0Arena.checkBorrow (hmrHybridCount s6Step287Add0Arena s6Step287Add0B.length) s6Step287Add0Work=some s6Step287Add0During := by
  have len : s6Step287Add0Work.length=hmrHybridCount s6Step287Add0Arena s6Step287Add0B.length := by
    rw [hmrHybridCount,s6Step287Add0_card]
    decide +kernel
  have nd : s6Step287Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step287Add0Arena s6Step287Add0During s6Step287Add0Work.toFinset s6Step287Add0_bounded s6Step287Add0_apart rfl

private theorem s6Step287Add0_distinct : (830::892::805::(s6Step287Add0A++s6Step287Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287Add0_owned : (830::892::805::(s6Step287Add0A++s6Step287Add0B)).toFinset⊆s6Step287Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step287Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287Add0_checked : compileHmrHybridCinLog s6Step287Add0Arena 892 830 805 s6Step287Add0A s6Step287Add0B s6Step287Add0Work=some s6Step287Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step287Add0Arena s6Step287Add0During 892 830 805 s6Step287Add0A s6Step287Add0B s6Step287Add0Work
    (by decide +kernel) (by decide +kernel) s6Step287Add0_distinct
    (fun q hq => s6Step287Add0_owned (List.mem_toFinset.mpr hq)) s6Step287Add0_borrowed

private theorem s6Step287Add1_apart : Disjoint s6Step287Add1Arena.live s6Step287Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step287Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287Add1_card : s6Step287Add1Arena.live.card=902 := by
  decide +kernel

private theorem s6Step287Add1_borrowed : s6Step287Add1Arena.checkBorrow (hmrHybridCount s6Step287Add1Arena s6Step287Add1B.length) s6Step287Add1Work=some s6Step287Add1During := by
  have len : s6Step287Add1Work.length=hmrHybridCount s6Step287Add1Arena s6Step287Add1B.length := by
    rw [hmrHybridCount,s6Step287Add1_card]
    decide +kernel
  have nd : s6Step287Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step287Add1Arena s6Step287Add1During s6Step287Add1Work.toFinset s6Step287Add1_bounded s6Step287Add1_apart rfl

private theorem s6Step287Add1_distinct : (830::892::805::(s6Step287Add1A++s6Step287Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287Add1_owned : (830::892::805::(s6Step287Add1A++s6Step287Add1B)).toFinset⊆s6Step287Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step287Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287Add1_checked : compileHmrHybridCinLog s6Step287Add1Arena 892 830 805 s6Step287Add1A s6Step287Add1B s6Step287Add1Work=some s6Step287Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step287Add1Arena s6Step287Add1During 892 830 805 s6Step287Add1A s6Step287Add1B s6Step287Add1Work
    (by decide +kernel) (by decide +kernel) s6Step287Add1_distinct
    (fun q hq => s6Step287Add1_owned (List.mem_toFinset.mpr hq)) s6Step287Add1_borrowed

private theorem s6Step287F4_apart : Disjoint (s6Step287Add0A++s6Step287Add0B).toFinset (s6Step287Add1A++s6Step287Add1B).toFinset := by
  have nd : ((s6Step287Add0A++s6Step287Add0B)++(s6Step287Add1A++s6Step287Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step287F4_carry : s6Step287F4FlagArena.checkBorrow 1 [805]=some s6Step287Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step287F4FlagArena,s6Step287HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step287F4FlagArena,s6Step287HeadFvAfter,s6Step287Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step287F4_distinct : (858::892::830::805::((s6Step287Add0A++s6Step287Add1A)++(s6Step287Add0B++s6Step287Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287F4_flag : s6Step287HeadFvAfter.checkBorrow 1 [830]=some s6Step287F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step287HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step287F4_owned : (858::892::((s6Step287Add0A++s6Step287Add1A)++(s6Step287Add0B++s6Step287Add1B))).toFinset⊆s6Step287HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step287HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287F4_checked : compileHmrHybridF4Log s6Step287HeadFvAfter 858 892 s6Step287Add0A s6Step287Add0B s6Step287Add1A s6Step287Add1B [830] [805] s6Step287Add0Work s6Step287Add1Work=some s6Step287F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step287HeadFvAfter s6Step287F4FlagArena s6Step287Add0Arena s6Step287Add0During s6Step287Add1During 858 892
    s6Step287Add0A s6Step287Add0B s6Step287Add1A s6Step287Add1B [830] [805] s6Step287Add0Work s6Step287Add1Work
    (fun q hq => s6Step287F4_owned (List.mem_toFinset.mpr hq)) s6Step287F4_flag s6Step287F4_carry
    s6Step287F4_distinct s6Step287F4_apart s6Step287Add0_checked s6Step287Add1_checked

private theorem s6Step287Front_branch : s6Step287FrontSigmaArena.checkBorrow 1 [892]=some s6Step287HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step287FrontSigmaArena,s6Step287EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step287FrontSigmaArena,s6Step287EntryGvAfter,s6Step287HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step287Front_entry : HmrFrontEntryValid s6Step287EntryFBefore s6Step287FrontBank 128 159 ⟨127,126,159,159⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step287FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step287EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step287EntryFBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step287FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step287Front_sigma : s6Step287EntryGvAfter.checkBorrow 1 [858]=some s6Step287FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step287EntryGvAfter,arenaWires]
  · rfl

private def s6Step287HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287HeadFBefore : Arena := s6Step287HeadGAfter

private def s6Step287HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step287HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩

private def s6Step287HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 807, 828],777⟩

private def s6Step287HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩

private theorem s6Step287HeadBank_incomingDistinct : ([s6Step287HeadGRow,s6Step287HeadFRow,s6Step287HeadGvRow,s6Step287HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287HeadF_Incoming : rowsOwned s6Step287HeadFBefore [s6Step287HeadFRow,s6Step287HeadGvRow,s6Step287HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287HeadGRow,s6Step287HeadFRow,s6Step287HeadGvRow,s6Step287HeadFvRow] 1 s6Step287HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287HeadBank_outgoingOwned : rowsOwned s6Step287HeadFvAfter [s6Step287HeadGOut,s6Step287HeadFOut,s6Step287HeadGvOut,s6Step287HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step287HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287HeadF_Outgoing : rowsOwned s6Step287HeadFvAfter [s6Step287HeadFOut,s6Step287HeadGvOut,s6Step287HeadFvOut] :=
  hmrRows_owned_drop s6Step287HeadFvAfter [s6Step287HeadGOut,s6Step287HeadFOut,s6Step287HeadGvOut,s6Step287HeadFvOut] 1 s6Step287HeadBank_outgoingOwned

private theorem s6Step287HeadF_distinct : (s6Step287HeadFRow.sign::s6Step287HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287HeadF_owned : (s6Step287HeadFRow.sign::s6Step287HeadFRow.payload).toFinset⊆s6Step287HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287HeadF_reserved : s6Step287HeadFBefore.reserve s6Step287HeadFFresh.toFinset=some s6Step287HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step287HeadFFresh,arenaWires]
  · norm_num [s6Step287HeadFBefore,s6Step287HeadGAfter,s6Step287HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step287HeadFAfter,s6Step287HeadFBefore,s6Step287HeadGAfter,s6Step287HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step287HeadF_checked : planRowResizeLog s6Step287HeadFBefore s6Step287HeadFRow 129 s6Step287HeadFFresh=
    some (s6Step287HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 875],795⟩,growRow 795 s6Step287HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step287HeadFBefore s6Step287HeadFAfter s6Step287HeadFRow 129 s6Step287HeadFFresh
    s6Step287HeadF_distinct s6Step287HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step287HeadF_reserved
  have rowEq : WindowRow.mk (s6Step287HeadFRow.payload++s6Step287HeadFFresh) s6Step287HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 875],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step287HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step287HeadFvBefore : Arena := s6Step287HeadGvAfter

private theorem s6Step287HeadFv_Incoming : rowsOwned s6Step287HeadFvBefore [s6Step287HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287HeadGRow,s6Step287HeadFRow,s6Step287HeadGvRow,s6Step287HeadFvRow] 3 s6Step287HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287HeadFv_Outgoing : rowsOwned s6Step287HeadFvAfter [s6Step287HeadFvOut] :=
  hmrRows_owned_drop s6Step287HeadFvAfter [s6Step287HeadGOut,s6Step287HeadFOut,s6Step287HeadGvOut,s6Step287HeadFvOut] 3 s6Step287HeadBank_outgoingOwned

private theorem s6Step287HeadFv_distinct : (s6Step287HeadFvRow.sign::s6Step287HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287HeadFv_owned : (s6Step287HeadFvRow.sign::s6Step287HeadFvRow.payload).toFinset⊆s6Step287HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287HeadFv_reserved : s6Step287HeadFvBefore.reserve s6Step287HeadFvFresh.toFinset=some s6Step287HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step287HeadFvFresh,arenaWires]
  · norm_num [s6Step287HeadFvBefore,s6Step287HeadGvAfter,s6Step287HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step287HeadFvAfter,s6Step287HeadFvBefore,s6Step287HeadGvAfter,s6Step287HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step287HeadFv_checked : planRowResizeLog s6Step287HeadFvBefore s6Step287HeadFvRow 160 s6Step287HeadFvFresh=
    some (s6Step287HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩,growRow 776 s6Step287HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step287HeadFvBefore s6Step287HeadFvAfter s6Step287HeadFvRow 160 s6Step287HeadFvFresh
    s6Step287HeadFv_distinct s6Step287HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step287HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step287HeadFvRow.payload++s6Step287HeadFvFresh) s6Step287HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step287HeadG_Incoming : rowsOwned s6Step287HeadGBefore [s6Step287HeadGRow,s6Step287HeadFRow,s6Step287HeadGvRow,s6Step287HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287HeadGRow,s6Step287HeadFRow,s6Step287HeadGvRow,s6Step287HeadFvRow] 0 s6Step287HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287HeadG_Outgoing : rowsOwned s6Step287HeadFvAfter [s6Step287HeadGOut,s6Step287HeadFOut,s6Step287HeadGvOut,s6Step287HeadFvOut] :=
  hmrRows_owned_drop s6Step287HeadFvAfter [s6Step287HeadGOut,s6Step287HeadFOut,s6Step287HeadGvOut,s6Step287HeadFvOut] 0 s6Step287HeadBank_outgoingOwned

private theorem s6Step287HeadG_distinct : (s6Step287HeadGRow.sign::s6Step287HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287HeadG_owned : (s6Step287HeadGRow.sign::s6Step287HeadGRow.payload).toFinset⊆s6Step287HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287HeadG_reserved : s6Step287HeadGBefore.reserve s6Step287HeadGFresh.toFinset=some s6Step287HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step287HeadGFresh,arenaWires]
  · norm_num [s6Step287HeadGBefore,s6Step287HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step287HeadGAfter,s6Step287HeadGBefore,s6Step287HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step287HeadG_checked : planRowResizeLog s6Step287HeadGBefore s6Step287HeadGRow 129 s6Step287HeadGFresh=
    some (s6Step287HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 807, 828, 887],777⟩,growRow 777 s6Step287HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step287HeadGBefore s6Step287HeadGAfter s6Step287HeadGRow 129 s6Step287HeadGFresh
    s6Step287HeadG_distinct s6Step287HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step287HeadG_reserved
  have rowEq : WindowRow.mk (s6Step287HeadGRow.payload++s6Step287HeadGFresh) s6Step287HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 807, 828, 887],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step287HeadGvBefore : Arena := s6Step287HeadFAfter

private theorem s6Step287HeadGv_Incoming : rowsOwned s6Step287HeadGvBefore [s6Step287HeadGvRow,s6Step287HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step287HeadGRow,s6Step287HeadFRow,s6Step287HeadGvRow,s6Step287HeadFvRow] 2 s6Step287HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step287HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step287HeadGv_Outgoing : rowsOwned s6Step287HeadFvAfter [s6Step287HeadGvOut,s6Step287HeadFvOut] :=
  hmrRows_owned_drop s6Step287HeadFvAfter [s6Step287HeadGOut,s6Step287HeadFOut,s6Step287HeadGvOut,s6Step287HeadFvOut] 2 s6Step287HeadBank_outgoingOwned

private theorem s6Step287HeadGv_distinct : (s6Step287HeadGvRow.sign::s6Step287HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step287HeadGv_owned : (s6Step287HeadGvRow.sign::s6Step287HeadGvRow.payload).toFinset⊆s6Step287HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step287HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step287HeadGv_reserved : s6Step287HeadGvBefore.reserve s6Step287HeadGvFresh.toFinset=some s6Step287HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step287HeadGvFresh,arenaWires]
  · norm_num [s6Step287HeadGvBefore,s6Step287HeadFAfter,s6Step287HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step287HeadGvAfter,s6Step287HeadGvBefore,s6Step287HeadFAfter,s6Step287HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step287HeadGv_checked : planRowResizeLog s6Step287HeadGvBefore s6Step287HeadGvRow 160 s6Step287HeadGvFresh=
    some (s6Step287HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 779],775⟩,growRow 775 s6Step287HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step287HeadGvBefore s6Step287HeadGvAfter s6Step287HeadGvRow 160 s6Step287HeadGvFresh
    s6Step287HeadGv_distinct s6Step287HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step287HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step287HeadGvRow.payload++s6Step287HeadGvFresh) s6Step287HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 779],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step287HeadBank_rows : planWindowRowsLog s6Step287HeadGBefore [(s6Step287HeadGRow,129),(s6Step287HeadFRow,129),(s6Step287HeadGvRow,160),(s6Step287HeadFvRow,160)] [s6Step287HeadGFresh,s6Step287HeadFFresh,s6Step287HeadGvFresh,s6Step287HeadFvFresh]=
    some (s6Step287HeadFvAfter,[s6Step287HeadGOut,s6Step287HeadFOut,s6Step287HeadGvOut,s6Step287HeadFvOut],(growRow 777 s6Step287HeadGFresh ++ (growRow 795 s6Step287HeadFFresh ++ (growRow 775 s6Step287HeadGvFresh ++ (growRow 776 s6Step287HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step287HeadFvAfter [] []=some (s6Step287HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step287HeadFvBefore s6Step287HeadFvAfter s6Step287HeadFvAfter
    s6Step287HeadFvRow s6Step287HeadFvOut 160 s6Step287HeadFvFresh [] [] []
    (growRow 776 s6Step287HeadFvFresh) ([]) s6Step287HeadFv_Incoming s6Step287HeadFv_checked h4 s6Step287HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step287HeadGvBefore s6Step287HeadGvAfter s6Step287HeadFvAfter
    s6Step287HeadGvRow s6Step287HeadGvOut 160 s6Step287HeadGvFresh [(s6Step287HeadFvRow,160)] [s6Step287HeadFvFresh] [s6Step287HeadFvOut]
    (growRow 775 s6Step287HeadGvFresh) ((growRow 776 s6Step287HeadFvFresh ++ [])) s6Step287HeadGv_Incoming s6Step287HeadGv_checked h3 s6Step287HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step287HeadFBefore s6Step287HeadFAfter s6Step287HeadFvAfter
    s6Step287HeadFRow s6Step287HeadFOut 129 s6Step287HeadFFresh [(s6Step287HeadGvRow,160),(s6Step287HeadFvRow,160)] [s6Step287HeadGvFresh,s6Step287HeadFvFresh] [s6Step287HeadGvOut,s6Step287HeadFvOut]
    (growRow 795 s6Step287HeadFFresh) ((growRow 775 s6Step287HeadGvFresh ++ (growRow 776 s6Step287HeadFvFresh ++ []))) s6Step287HeadF_Incoming s6Step287HeadF_checked h2 s6Step287HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step287HeadGBefore s6Step287HeadGAfter s6Step287HeadFvAfter
    s6Step287HeadGRow s6Step287HeadGOut 129 s6Step287HeadGFresh [(s6Step287HeadFRow,129),(s6Step287HeadGvRow,160),(s6Step287HeadFvRow,160)] [s6Step287HeadFFresh,s6Step287HeadGvFresh,s6Step287HeadFvFresh] [s6Step287HeadFOut,s6Step287HeadGvOut,s6Step287HeadFvOut]
    (growRow 777 s6Step287HeadGFresh) ((growRow 795 s6Step287HeadFFresh ++ (growRow 775 s6Step287HeadGvFresh ++ (growRow 776 s6Step287HeadFvFresh ++ [])))) s6Step287HeadG_Incoming s6Step287HeadG_checked h1 s6Step287HeadG_Outgoing
  exact h0

private theorem s6Step287HeadBank_checked : compileHmrBankResizeLog .headroom s6Step287HeadGBefore ⟨s6Step287HeadFRow,s6Step287HeadGRow,s6Step287HeadFvRow,s6Step287HeadGvRow⟩ ⟨129,129,160,160⟩ [s6Step287HeadGFresh,s6Step287HeadFFresh,s6Step287HeadGvFresh,s6Step287HeadFvFresh]=
    some (s6Step287HeadFvAfter,⟨s6Step287HeadFOut,s6Step287HeadGOut,s6Step287HeadFvOut,s6Step287HeadGvOut⟩,(growRow 777 s6Step287HeadGFresh ++ (growRow 795 s6Step287HeadFFresh ++ (growRow 775 s6Step287HeadGvFresh ++ (growRow 776 s6Step287HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step287HeadBank_rows]
  rfl

private theorem s6Step287Front_checked : compileHmrSourceFrontLog s6Step287EntryFBefore s6Step287FrontBank 128 159 ⟨127,126,159,159⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step287FrontLog=some s6Step287FrontPlan := by
  have pairEq : s6Step287FrontPair=⟨s6Step287HeadFRow,s6Step287HeadGRow,s6Step287HeadFvRow,s6Step287HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step287FrontHead=⟨s6Step287ExitFRow,s6Step287ExitGRow,s6Step287ExitFvRow,s6Step287ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step287Add0A=s6Step287FrontHead.f.wires := by decide +kernel
  have gEq : s6Step287Add0B=s6Step287FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step287Add1A=s6Step287FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step287Add1B=s6Step287FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step287EntryFBefore s6Step287FrontBank 128 159 ⟨127,126,159,159⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step287FrontLog s6Step287FrontPlan
  · exact s6Step287Front_entry
  · exact s6Step287EntryBank_checked
  · exact s6Step287Front_sigma
  · rfl
  · exact s6Step287Front_branch
  · rfl
  · simpa only [s6Step287FrontPlan,pairEq] using s6Step287HeadBank_checked
  · simpa only [s6Step287FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step287F4_checked
  · exact s6Step287Counter_checked
  · rfl
  · simpa only [s6Step287FrontPlan,headEq] using s6Step287ExitBank_checked

private theorem s6Step287Complete_explicit_checked : compileHmrEarlyStepLog s6Step287EntryFBefore s6Step287FrontBank 128 159 ⟨127,126,159,159⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step287CompleteLog=some s6Step287CompletePlan := by
  let Q := s6Step287EarlyControlPlan
  have hq := s6Step287EarlyControl_plan_checked
  have fv1 : s6Step287CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step287CompleteOut.fv.payload[2]?.getD s6Step287CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step287CompleteOut.fv.payload[3]?.getD s6Step287CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step287CompleteOut.fv.payload[4]?.getD s6Step287CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step287EntryFBefore s6Step287EarlyControlArena s6Step287FrontBank 128 159 ⟨127,126,159,159⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step287CompleteLog s6Step287FrontPlan Q
    s6Step287Front_checked s6Step287Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step287Complete_owned s6Step287Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step287EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 858 s6Step287CompleteOut.fv.second (s6Step287CompleteOut.fv.payload[2]?.getD s6Step287CompleteOut.fv.sign) (s6Step287CompleteOut.fv.payload[3]?.getD s6Step287CompleteOut.fv.sign) (s6Step287CompleteOut.fv.payload[4]?.getD s6Step287CompleteOut.fv.sign) 892 54 s6Step287EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep287Arena : Arena := s6Step287EntryFBefore
def s6PrivateStep287Bank : WindowBank := s6Step287FrontBank
def s6PrivateStep287Spec : HmrSourceWalkStepLog := ⟨128,159,⟨127,126,159,159⟩,54,.early s6Step287CompleteLog⟩
def s6PrivateStep287Plan : HmrSourceStepPlan := .early s6Step287CompletePlan
theorem s6PrivateStep287_source : s6PrivateStep287Spec=s6ObservedLogs272[15] := rfl
theorem s6PrivateStep287_checked : compileHmrSourceStepLog s6PrivateStep287Arena s6PrivateStep287Bank
    s6PrivateStep287Spec.fgWidth s6PrivateStep287Spec.vWidth s6PrivateStep287Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]
    6 498 287 s6PrivateStep287Spec.need none s6PrivateStep287Spec.log=some s6PrivateStep287Plan := by
  change compileHmrSourceStepLog s6Step287EntryFBefore s6Step287FrontBank 128 159 ⟨127,126,159,159⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 6 498 287 54 none (.early s6Step287CompleteLog)=some (.early s6Step287CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 287<498)]
  rw [s6Step287Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
