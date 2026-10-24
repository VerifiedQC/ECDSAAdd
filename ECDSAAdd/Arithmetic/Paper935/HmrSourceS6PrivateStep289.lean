import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep287
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

private def s6Step289CompleteMoves : List (Wire × Wire) := [(922,381)]

private def s6Step289EarlyControlLog : HmrEarlyControlLog := ⟨[922, 807, 875, 879, 892],[779],[828],[887, 830, 805, 817, 812, 915],[]⟩

private def s6Step289FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[879], [875], [807], [882]],[[], [], [], []]⟩,[789],[858],[892],[779],[828, 887, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[828, 887, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[892, 779, 828, 887]⟩

private def s6Step289CompleteLog : HmrEarlyStepLog := ⟨s6Step289FrontLog,s6Step289CompleteMoves,s6Step289EarlyControlLog⟩

private def s6Step289ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩

private def s6Step289ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step289ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩

private def s6Step289ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩

private def s6Step289FrontOut : WindowBank := ⟨s6Step289ExitFOut,s6Step289ExitGOut,s6Step289ExitFvOut,s6Step289ExitGvOut⟩

private def s6Step289CompleteOut : WindowBank := s6Step289FrontOut.repacked s6Step289CompleteMoves

private def s6Step289EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step289EarlyControlPositiveArena,[779],s6Step289EarlyControlEqualityArena,[828],⟨⟨789,false⟩,[⟨⟨779,false⟩,828⟩]⟩⟩

private def s6Step289EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step289EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,922⟩,⟨⟨772,false⟩,807⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,879⟩,⟨⟨769,false⟩,892⟩]⟩

private def s6Step289EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step289EarlyControlZeroArena,s6Step289EarlyControlZeroPlan,s6Step289EarlyControlClassPlan,s6Step289EarlyControlFlagArena,s6Step289EarlyControlFittedArena,s6Step289EarlyControlHistoryArena,s6Step289EarlyControlSigmaArena,s6Step289EarlyControlOutputArena,s6Step289EarlyControlLog⟩

private def s6Step289CounterWork : List Wire := [892, 779, 828, 887]

private theorem s6Step289Counter_bounded : s6Step289CounterWork.toFinset⊆arenaWires := by norm_num [s6Step289CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step289HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289CounterDuring : Arena := ⟨s6Step289HeadFvAfter.live∪s6Step289CounterWork.toFinset,Finset.union_subset s6Step289HeadFvAfter.bounded s6Step289Counter_bounded⟩

private def s6Step289EntryFFresh : List Wire := []

private def s6Step289EntryFvFresh : List Wire := []

private def s6Step289EntryGFresh : List Wire := []

private def s6Step289EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step289EntryGvAfter : Arena := s6Step289EntryFBefore

private def s6Step289EntryGvFresh : List Wire := []

private def s6Step289ExitFExtra : List Wire := [381, 875]

private def s6Step289ExitGExtra : List Wire := [879]

private def s6Step289ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<381) ∨ (382≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289ExitGvExtra : List Wire := [807]

private def s6Step289Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289Add0Work : List Wire := [828, 887, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step289Add0_bounded : s6Step289Add0Work.toFinset⊆arenaWires := by
  have h : s6Step289Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step289Add0During : Arena := ⟨s6Step289Add0Arena.live∪s6Step289Add0Work.toFinset,Finset.union_subset s6Step289Add0Arena.bounded s6Step289Add0_bounded⟩

private def s6Step289Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289Add1Work : List Wire := [828, 887, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step289Add1_bounded : s6Step289Add1Work.toFinset⊆arenaWires := by
  have h : s6Step289Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step289Add1During : Arena := ⟨s6Step289Add1Arena.live∪s6Step289Add1Work.toFinset,Finset.union_subset s6Step289Add1Arena.bounded s6Step289Add1_bounded⟩

private def s6Step289F4FlagArena : Arena := ⟨s6Step289HeadFvAfter.live∪{892},Finset.union_subset s6Step289HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step289F4Plan : HmrHybridF4Plan := ⟨s6Step289F4FlagArena,[892],s6Step289Add0Arena,[779],s6Step289Add0During,s6Step289Add0Work,s6Step289Add1During,s6Step289Add1Work⟩

private def s6Step289HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 875],795⟩

private def s6Step289HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step289HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 879],777⟩

private def s6Step289HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 807],775⟩

private def s6Step289FrontHead : WindowBank := ⟨s6Step289HeadFOut,s6Step289HeadGOut,s6Step289HeadFvOut,s6Step289HeadGvOut⟩

private def s6Step289EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381],795⟩

private def s6Step289EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩

private def s6Step289EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩

private def s6Step289EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩

private def s6Step289FrontPair : WindowBank := ⟨s6Step289EntryFOut,s6Step289EntryGOut,s6Step289EntryFvOut,s6Step289EntryGvOut⟩

private def s6Step289FrontSigmaArena : Arena := ⟨s6Step289EntryGvAfter.live∪{789},Finset.union_subset s6Step289EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step289HeadFFresh : List Wire := [875]

private def s6Step289HeadFvFresh : List Wire := [882]

private def s6Step289HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289HeadGFresh : List Wire := [879]

private def s6Step289HeadGvFresh : List Wire := [807]

private def s6Step289FrontPlan : HmrSourceFront := ⟨s6Step289EntryGvAfter,s6Step289FrontPair,(growRow 795 s6Step289EntryFFresh ++ (growRow 777 s6Step289EntryGFresh ++ (growRow 776 s6Step289EntryFvFresh ++ (growRow 775 s6Step289EntryGvFresh ++ [])))),s6Step289FrontSigmaArena,[789],s6Step289HeadGBefore,[858],
  s6Step289HeadFvAfter,s6Step289FrontHead,(growRow 777 s6Step289HeadGFresh ++ (growRow 795 s6Step289HeadFFresh ++ (growRow 775 s6Step289HeadGvFresh ++ (growRow 776 s6Step289HeadFvFresh ++ [])))),s6Step289F4Plan,s6Step289CounterDuring,s6Step289CounterWork,s6Step289ExitGvAfter,s6Step289FrontOut,(shrinkRow 777 s6Step289ExitGExtra ++ (shrinkRow 795 s6Step289ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step289ExitGvExtra ++ []))))⟩

private def s6Step289CompletePlan : HmrEarlyStepPlan := ⟨s6Step289FrontPlan,s6Step289EarlyControlArena,s6Step289EarlyControlPlan,s6Step289CompleteMoves⟩

private theorem s6Step289Complete_apart : List.Disjoint (s6Step289CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [789, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := by
  have nd : ((s6Step289CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[789, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step289Complete_owned : (s6Step289CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step289EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step289CompleteMoveArena : Arena := ⟨s6Step289ExitGvAfter.live∪{381},Finset.union_subset s6Step289ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step289Complete_repack : s6Step289ExitGvAfter.checkRepack s6Step289CompleteMoves=some s6Step289EarlyControlArena := by
  have owned : 922∈s6Step289ExitGvAfter.live := by norm_num [s6Step289ExitGvAfter,arenaWires]
  have reserve : s6Step289ExitGvAfter.reserve {381}=some s6Step289CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step289ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step289CompleteMoveArena.retireSet {922}=s6Step289EarlyControlArena := by
    unfold Arena.retireSet s6Step289EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step289CompleteMoveArena,s6Step289ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step289CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step289CompleteMoveArena.retireSet {922}).checkRepack []=some s6Step289EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step289EarlyControl_branchOwned : ([858] : List Wire).toFinset⊆s6Step289EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289EarlyControl_branch : compileHmrBranchRetirement s6Step289EarlyControlSigmaArena 858=some s6Step289EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step289EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step289EarlyControlSigmaArena s6Step289EarlyControlOutputArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<789) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [858] rfl rfl
    decide +kernel

private theorem s6Step289EarlyControl_classEqualityBorrow : s6Step289EarlyControlPositiveArena.checkBorrow (([789, 779] : List Wire).length-1) s6Step289EarlyControlLog.classWork=some s6Step289EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step289EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step289EarlyControlEqualityArena,s6Step289EarlyControlPositiveArena,s6Step289EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step289EarlyControl_classEqualityOwned : ([789, 779] : List Wire).toFinset⊆s6Step289EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289EarlyControl_classEquality : compileHmrEqualityLog s6Step289EarlyControlPositiveArena [789, 779] 0 s6Step289EarlyControlLog.classWork=some (s6Step289EarlyControlEqualityArena,s6Step289EarlyControlLog.classWork,s6Step289EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step289EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step289EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step289EarlyControl_classOwned : ([769, 892, 789] : List Wire).toFinset⊆s6Step289EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289EarlyControl_positiveBorrow : s6Step289EarlyControlZeroArena.checkBorrow (1) s6Step289EarlyControlLog.positiveWork=some s6Step289EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step289EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step289EarlyControlPositiveArena,s6Step289EarlyControlZeroArena,s6Step289EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step289EarlyControl_class : compileHmrSourceClassLog s6Step289EarlyControlZeroArena false 769 s6Step289EarlyControlZeroPlan.top 0 789 s6Step289EarlyControlLog.positiveWork s6Step289EarlyControlLog.classWork=some s6Step289EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step289EarlyControlClassPlan s6Step289EarlyControlZeroArena false 769 s6Step289EarlyControlZeroPlan.top 0 789
  constructor
  · decide +kernel
  · exact s6Step289EarlyControl_classOwned
  · exact s6Step289EarlyControl_positiveBorrow
  · exact s6Step289EarlyControl_classEquality

private theorem s6Step289EarlyControl_entryRecordOwned : ([858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step289EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289EarlyControl_entrySigmaOwned : ([789, 254] : List Wire).toFinset⊆s6Step289EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289EarlyControl_fitBorrow : s6Step289EarlyControlFlagArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step289EarlyControlLog.recordFresh=some s6Step289EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step289EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step289EarlyControlFittedArena,s6Step289EarlyControlFlagArena,s6Step289EarlyControlLog,arenaWires]

private theorem s6Step289EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step289EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289EarlyControl_fit : compileHmrRecordGrowLog s6Step289EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step289EarlyControlLog.recordFresh=some s6Step289EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step289EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step289EarlyControl_fitBorrow

private theorem s6Step289EarlyControl_flagsBorrow : s6Step289EarlyControlEqualityArena.checkBorrow (6) s6Step289EarlyControlLog.flagWork=some s6Step289EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step289EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step289EarlyControlFlagArena,s6Step289EarlyControlEqualityArena,s6Step289EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step289EarlyControl_flagsOwned : ([828, 253, 252, 251] : List Wire).toFinset⊆s6Step289EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289EarlyControl_flags : compileHmrFlagsLog s6Step289EarlyControlClassPlan.equalityArena s6Step289EarlyControlClassPlan.equality.top 253 252 251 s6Step289EarlyControlLog.flagWork=some s6Step289EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step289EarlyControl_flagsOwned⟩
  · exact s6Step289EarlyControl_flagsBorrow

private theorem s6Step289EarlyControl_historyBorrow : s6Step289EarlyControlArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step289EarlyControlLog.recordFresh=some s6Step289EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step289EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step289EarlyControlHistoryArena,s6Step289EarlyControlArena,s6Step289EarlyControlLog,arenaWires]

private theorem s6Step289EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step289EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289EarlyControl_history : compileHmrRecordGrowLog s6Step289EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step289EarlyControlLog.recordFresh=some s6Step289EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step289EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step289EarlyControl_historyBorrow

private theorem s6Step289EarlyControl_sigmaOwned : ([254, 789] : List Wire).toFinset⊆s6Step289EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289EarlyControl_sigmaReleaseOwned : ([789] : List Wire).toFinset⊆s6Step289EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289EarlyControl_sigmaRelease : s6Step289EarlyControlHistoryArena.release {789} (fun _ => false)=some s6Step289EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step289EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step289EarlyControlSigmaArena,s6Step289EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step289EarlyControl_sigma : compileHmrSigmaDropLog s6Step289EarlyControlHistoryArena false 0 0 254 789 []=some s6Step289EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step289EarlyControl_sigmaOwned⟩
  · exact s6Step289EarlyControl_sigmaRelease

private theorem s6Step289EarlyControl_zeroBorrow : s6Step289EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step289EarlyControlLog.zeroWork=some s6Step289EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step289EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step289EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step289EarlyControlZeroArena,s6Step289EarlyControlArena,s6Step289EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step289EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step289EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step289EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (923≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289EarlyControl_zero : compileHmrEqualityLog s6Step289EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step289EarlyControlLog.zeroWork=some (s6Step289EarlyControlZeroArena,s6Step289EarlyControlLog.zeroWork,s6Step289EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step289EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step289EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step289EarlyControl_logged : s6Step289EarlyControlPlan.Logged s6Step289EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 789 254 253 252 251 858 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step289EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step289EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step289EarlyControl_zero
  · exact s6Step289EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step289EarlyControl_flags
  · exact s6Step289EarlyControl_fit
  · exact s6Step289EarlyControl_history
  · exact s6Step289EarlyControl_sigma
  · exact s6Step289EarlyControl_branch

private theorem s6Step289EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step289EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 789 254 253 252 251 858 54 s6Step289EarlyControlLog=some s6Step289EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step289EarlyControlPlan s6Step289EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 789 254 253 252 251 858 54 s6Step289EarlyControl_logged

private def s6Step289EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381],795⟩

private def s6Step289EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩

private def s6Step289EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩

private def s6Step289EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩

private def s6Step289FrontBank : WindowBank := ⟨s6Step289EntryFRow,s6Step289EntryGRow,s6Step289EntryFvRow,s6Step289EntryGvRow⟩

private def s6Step289Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 875, 795]

private def s6Step289Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 879, 777]

private def s6Step289Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 776]

private def s6Step289Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 807, 775]

private theorem s6Step289Counter_apart : Disjoint s6Step289HeadFvAfter.live s6Step289CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step289HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289Counter_borrowed : s6Step289HeadFvAfter.checkBorrow 4 s6Step289CounterWork=some s6Step289CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step289HeadFvAfter s6Step289CounterDuring s6Step289CounterWork.toFinset s6Step289Counter_bounded s6Step289Counter_apart rfl

private theorem s6Step289Counter_owned : (789::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step289HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step289HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289Counter_checked : compileHmrCounterStepLog s6Step289HeadFvAfter true 789 [774, 773, 772, 771, 770, 769] s6Step289CounterWork=some s6Step289CounterDuring := by
  have owned : ∀q∈789::[774, 773, 772, 771, 770, 769],q∈s6Step289HeadFvAfter.live := fun q hq => s6Step289Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step289Counter_borrowed

private def s6Step289EntryFAfter : Arena := s6Step289EntryFBefore

private theorem s6Step289EntryBank_incomingDistinct : ([s6Step289EntryFRow,s6Step289EntryGRow,s6Step289EntryFvRow,s6Step289EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289EntryF_Incoming : rowsOwned s6Step289EntryFBefore [s6Step289EntryFRow,s6Step289EntryGRow,s6Step289EntryFvRow,s6Step289EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289EntryFRow,s6Step289EntryGRow,s6Step289EntryFvRow,s6Step289EntryGvRow] 0 s6Step289EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289EntryFBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step289EntryBank_outgoingOwned : rowsOwned s6Step289EntryGvAfter [s6Step289EntryFOut,s6Step289EntryGOut,s6Step289EntryFvOut,s6Step289EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step289EntryGvAfter (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step289EntryF_Outgoing : rowsOwned s6Step289EntryGvAfter [s6Step289EntryFOut,s6Step289EntryGOut,s6Step289EntryFvOut,s6Step289EntryGvOut] :=
  hmrRows_owned_drop s6Step289EntryGvAfter [s6Step289EntryFOut,s6Step289EntryGOut,s6Step289EntryFvOut,s6Step289EntryGvOut] 0 s6Step289EntryBank_outgoingOwned

private theorem s6Step289EntryF_distinct : (s6Step289EntryFRow.sign::s6Step289EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289EntryF_owned : (s6Step289EntryFRow.sign::s6Step289EntryFRow.payload).toFinset⊆s6Step289EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289EntryFBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step289EntryF_reserved : s6Step289EntryFBefore.reserve s6Step289EntryFFresh.toFinset=some s6Step289EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step289EntryFFresh,arenaWires]
  · norm_num [s6Step289EntryFBefore,s6Step289EntryFFresh,arenaWires]
  · simp only [s6Step289EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step289EntryF_checked : planRowResizeLog s6Step289EntryFBefore s6Step289EntryFRow 126 s6Step289EntryFFresh=
    some (s6Step289EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381],795⟩,growRow 795 s6Step289EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step289EntryFBefore s6Step289EntryFAfter s6Step289EntryFRow 126 s6Step289EntryFFresh
    s6Step289EntryF_distinct s6Step289EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step289EntryF_reserved
  have rowEq : WindowRow.mk (s6Step289EntryFRow.payload++s6Step289EntryFFresh) s6Step289EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step289EntryFvAfter : Arena := s6Step289EntryFBefore

private def s6Step289EntryFvBefore : Arena := s6Step289EntryFBefore

private theorem s6Step289EntryFv_Incoming : rowsOwned s6Step289EntryFvBefore [s6Step289EntryFvRow,s6Step289EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289EntryFRow,s6Step289EntryGRow,s6Step289EntryFvRow,s6Step289EntryGvRow] 2 s6Step289EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289EntryFvBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step289EntryFv_Outgoing : rowsOwned s6Step289EntryGvAfter [s6Step289EntryFvOut,s6Step289EntryGvOut] :=
  hmrRows_owned_drop s6Step289EntryGvAfter [s6Step289EntryFOut,s6Step289EntryGOut,s6Step289EntryFvOut,s6Step289EntryGvOut] 2 s6Step289EntryBank_outgoingOwned

private theorem s6Step289EntryFv_distinct : (s6Step289EntryFvRow.sign::s6Step289EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289EntryFv_owned : (s6Step289EntryFvRow.sign::s6Step289EntryFvRow.payload).toFinset⊆s6Step289EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289EntryFvBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step289EntryFv_reserved : s6Step289EntryFvBefore.reserve s6Step289EntryFvFresh.toFinset=some s6Step289EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step289EntryFvFresh,arenaWires]
  · norm_num [s6Step289EntryFvBefore,s6Step289EntryFBefore,s6Step289EntryFvFresh,arenaWires]
  · simp only [s6Step289EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step289EntryFv_checked : planRowResizeLog s6Step289EntryFvBefore s6Step289EntryFvRow 159 s6Step289EntryFvFresh=
    some (s6Step289EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩,growRow 776 s6Step289EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step289EntryFvBefore s6Step289EntryFvAfter s6Step289EntryFvRow 159 s6Step289EntryFvFresh
    s6Step289EntryFv_distinct s6Step289EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step289EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step289EntryFvRow.payload++s6Step289EntryFvFresh) s6Step289EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step289EntryGAfter : Arena := s6Step289EntryFBefore

private def s6Step289EntryGBefore : Arena := s6Step289EntryFBefore

private theorem s6Step289EntryG_Incoming : rowsOwned s6Step289EntryGBefore [s6Step289EntryGRow,s6Step289EntryFvRow,s6Step289EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289EntryFRow,s6Step289EntryGRow,s6Step289EntryFvRow,s6Step289EntryGvRow] 1 s6Step289EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289EntryGBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step289EntryG_Outgoing : rowsOwned s6Step289EntryGvAfter [s6Step289EntryGOut,s6Step289EntryFvOut,s6Step289EntryGvOut] :=
  hmrRows_owned_drop s6Step289EntryGvAfter [s6Step289EntryFOut,s6Step289EntryGOut,s6Step289EntryFvOut,s6Step289EntryGvOut] 1 s6Step289EntryBank_outgoingOwned

private theorem s6Step289EntryG_distinct : (s6Step289EntryGRow.sign::s6Step289EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289EntryG_owned : (s6Step289EntryGRow.sign::s6Step289EntryGRow.payload).toFinset⊆s6Step289EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289EntryGBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step289EntryG_reserved : s6Step289EntryGBefore.reserve s6Step289EntryGFresh.toFinset=some s6Step289EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step289EntryGFresh,arenaWires]
  · norm_num [s6Step289EntryGBefore,s6Step289EntryFBefore,s6Step289EntryGFresh,arenaWires]
  · simp only [s6Step289EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step289EntryG_checked : planRowResizeLog s6Step289EntryGBefore s6Step289EntryGRow 126 s6Step289EntryGFresh=
    some (s6Step289EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩,growRow 777 s6Step289EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step289EntryGBefore s6Step289EntryGAfter s6Step289EntryGRow 126 s6Step289EntryGFresh
    s6Step289EntryG_distinct s6Step289EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step289EntryG_reserved
  have rowEq : WindowRow.mk (s6Step289EntryGRow.payload++s6Step289EntryGFresh) s6Step289EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step289EntryGvBefore : Arena := s6Step289EntryFBefore

private theorem s6Step289EntryGv_Incoming : rowsOwned s6Step289EntryGvBefore [s6Step289EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289EntryFRow,s6Step289EntryGRow,s6Step289EntryFvRow,s6Step289EntryGvRow] 3 s6Step289EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289EntryGvBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step289EntryGv_Outgoing : rowsOwned s6Step289EntryGvAfter [s6Step289EntryGvOut] :=
  hmrRows_owned_drop s6Step289EntryGvAfter [s6Step289EntryFOut,s6Step289EntryGOut,s6Step289EntryFvOut,s6Step289EntryGvOut] 3 s6Step289EntryBank_outgoingOwned

private theorem s6Step289EntryGv_distinct : (s6Step289EntryGvRow.sign::s6Step289EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289EntryGv_owned : (s6Step289EntryGvRow.sign::s6Step289EntryGvRow.payload).toFinset⊆s6Step289EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289EntryGvBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step289EntryGv_reserved : s6Step289EntryGvBefore.reserve s6Step289EntryGvFresh.toFinset=some s6Step289EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step289EntryGvFresh,arenaWires]
  · norm_num [s6Step289EntryGvBefore,s6Step289EntryFBefore,s6Step289EntryGvFresh,arenaWires]
  · simp only [s6Step289EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step289EntryGv_checked : planRowResizeLog s6Step289EntryGvBefore s6Step289EntryGvRow 159 s6Step289EntryGvFresh=
    some (s6Step289EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩,growRow 775 s6Step289EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step289EntryGvBefore s6Step289EntryGvAfter s6Step289EntryGvRow 159 s6Step289EntryGvFresh
    s6Step289EntryGv_distinct s6Step289EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step289EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step289EntryGvRow.payload++s6Step289EntryGvFresh) s6Step289EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step289EntryBank_rows : planWindowRowsLog s6Step289EntryFBefore [(s6Step289EntryFRow,126),(s6Step289EntryGRow,126),(s6Step289EntryFvRow,159),(s6Step289EntryGvRow,159)] [s6Step289EntryFFresh,s6Step289EntryGFresh,s6Step289EntryFvFresh,s6Step289EntryGvFresh]=
    some (s6Step289EntryGvAfter,[s6Step289EntryFOut,s6Step289EntryGOut,s6Step289EntryFvOut,s6Step289EntryGvOut],(growRow 795 s6Step289EntryFFresh ++ (growRow 777 s6Step289EntryGFresh ++ (growRow 776 s6Step289EntryFvFresh ++ (growRow 775 s6Step289EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step289EntryGvAfter [] []=some (s6Step289EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step289EntryGvBefore s6Step289EntryGvAfter s6Step289EntryGvAfter
    s6Step289EntryGvRow s6Step289EntryGvOut 159 s6Step289EntryGvFresh [] [] []
    (growRow 775 s6Step289EntryGvFresh) ([]) s6Step289EntryGv_Incoming s6Step289EntryGv_checked h4 s6Step289EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step289EntryFvBefore s6Step289EntryFvAfter s6Step289EntryGvAfter
    s6Step289EntryFvRow s6Step289EntryFvOut 159 s6Step289EntryFvFresh [(s6Step289EntryGvRow,159)] [s6Step289EntryGvFresh] [s6Step289EntryGvOut]
    (growRow 776 s6Step289EntryFvFresh) ((growRow 775 s6Step289EntryGvFresh ++ [])) s6Step289EntryFv_Incoming s6Step289EntryFv_checked h3 s6Step289EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step289EntryGBefore s6Step289EntryGAfter s6Step289EntryGvAfter
    s6Step289EntryGRow s6Step289EntryGOut 126 s6Step289EntryGFresh [(s6Step289EntryFvRow,159),(s6Step289EntryGvRow,159)] [s6Step289EntryFvFresh,s6Step289EntryGvFresh] [s6Step289EntryFvOut,s6Step289EntryGvOut]
    (growRow 777 s6Step289EntryGFresh) ((growRow 776 s6Step289EntryFvFresh ++ (growRow 775 s6Step289EntryGvFresh ++ []))) s6Step289EntryG_Incoming s6Step289EntryG_checked h2 s6Step289EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step289EntryFBefore s6Step289EntryFAfter s6Step289EntryGvAfter
    s6Step289EntryFRow s6Step289EntryFOut 126 s6Step289EntryFFresh [(s6Step289EntryGRow,126),(s6Step289EntryFvRow,159),(s6Step289EntryGvRow,159)] [s6Step289EntryGFresh,s6Step289EntryFvFresh,s6Step289EntryGvFresh] [s6Step289EntryGOut,s6Step289EntryFvOut,s6Step289EntryGvOut]
    (growRow 795 s6Step289EntryFFresh) ((growRow 777 s6Step289EntryGFresh ++ (growRow 776 s6Step289EntryFvFresh ++ (growRow 775 s6Step289EntryGvFresh ++ [])))) s6Step289EntryF_Incoming s6Step289EntryF_checked h1 s6Step289EntryF_Outgoing
  exact h0

private theorem s6Step289EntryBank_checked : compileHmrBankResizeLog .entry s6Step289EntryFBefore ⟨s6Step289EntryFRow,s6Step289EntryGRow,s6Step289EntryFvRow,s6Step289EntryGvRow⟩ ⟨126,126,159,159⟩ [s6Step289EntryFFresh,s6Step289EntryGFresh,s6Step289EntryFvFresh,s6Step289EntryGvFresh]=
    some (s6Step289EntryGvAfter,⟨s6Step289EntryFOut,s6Step289EntryGOut,s6Step289EntryFvOut,s6Step289EntryGvOut⟩,(growRow 795 s6Step289EntryFFresh ++ (growRow 777 s6Step289EntryGFresh ++ (growRow 776 s6Step289EntryFvFresh ++ (growRow 775 s6Step289EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step289EntryBank_rows]
  rfl

private def s6Step289ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<381) ∨ (382≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289ExitFBefore : Arena := s6Step289ExitGAfter

private def s6Step289ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 875],795⟩

private def s6Step289ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step289ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 879],777⟩

private def s6Step289ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 807],775⟩

private theorem s6Step289ExitBank_incomingDistinct : ([s6Step289ExitGRow,s6Step289ExitFRow,s6Step289ExitFvRow,s6Step289ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289ExitF_Incoming : rowsOwned s6Step289ExitFBefore [s6Step289ExitFRow,s6Step289ExitFvRow,s6Step289ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289ExitGRow,s6Step289ExitFRow,s6Step289ExitFvRow,s6Step289ExitGvRow] 1 s6Step289ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step289ExitBank_outgoingOwned : rowsOwned s6Step289ExitGvAfter [s6Step289ExitGOut,s6Step289ExitFOut,s6Step289ExitFvOut,s6Step289ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step289ExitGvAfter (fun q => (0≤q ∧ q<381) ∨ (382≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step289ExitF_Outgoing : rowsOwned s6Step289ExitGvAfter [s6Step289ExitFOut,s6Step289ExitFvOut,s6Step289ExitGvOut] :=
  hmrRows_owned_drop s6Step289ExitGvAfter [s6Step289ExitGOut,s6Step289ExitFOut,s6Step289ExitFvOut,s6Step289ExitGvOut] 1 s6Step289ExitBank_outgoingOwned

private theorem s6Step289ExitF_distinct : (s6Step289ExitFRow.sign::s6Step289ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289ExitF_owned : (s6Step289ExitFRow.sign::s6Step289ExitFRow.payload).toFinset⊆s6Step289ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289ExitF_retired : s6Step289ExitFBefore.retireSet s6Step289ExitFExtra.toFinset=s6Step289ExitFAfter := by
  unfold Arena.retireSet s6Step289ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step289ExitFBefore,s6Step289ExitGAfter,s6Step289ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step289ExitF_checked : planRowResizeLog s6Step289ExitFBefore s6Step289ExitFRow 125 []=
    some (s6Step289ExitFAfter,s6Step289ExitFOut,shrinkRow 795 s6Step289ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step289ExitFBefore s6Step289ExitFRow 125 s6Step289ExitF_distinct s6Step289ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step289ExitFRow.payload.take 125) s6Step289ExitFRow.sign=s6Step289ExitFOut := by decide +kernel
  have hi : s6Step289ExitFRow.payload.drop 125=s6Step289ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step289ExitF_retired] at result
  exact result

private def s6Step289ExitFvAfter : Arena := s6Step289ExitFAfter

private def s6Step289ExitFvBefore : Arena := s6Step289ExitFAfter

private theorem s6Step289ExitFv_Incoming : rowsOwned s6Step289ExitFvBefore [s6Step289ExitFvRow,s6Step289ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289ExitGRow,s6Step289ExitFRow,s6Step289ExitFvRow,s6Step289ExitGvRow] 2 s6Step289ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289ExitFvBefore (fun q => (0≤q ∧ q<381) ∨ (382≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step289ExitFv_Outgoing : rowsOwned s6Step289ExitGvAfter [s6Step289ExitFvOut,s6Step289ExitGvOut] :=
  hmrRows_owned_drop s6Step289ExitGvAfter [s6Step289ExitGOut,s6Step289ExitFOut,s6Step289ExitFvOut,s6Step289ExitGvOut] 2 s6Step289ExitBank_outgoingOwned

private theorem s6Step289ExitFv_distinct : (s6Step289ExitFvRow.sign::s6Step289ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289ExitFv_owned : (s6Step289ExitFvRow.sign::s6Step289ExitFvRow.payload).toFinset⊆s6Step289ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289ExitFvBefore (fun q => (0≤q ∧ q<381) ∨ (382≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289ExitFv_reserved : s6Step289ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step289ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step289ExitFv_checked : planRowResizeLog s6Step289ExitFvBefore s6Step289ExitFvRow 160 []=
    some (s6Step289ExitFvAfter,s6Step289ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step289ExitFvBefore s6Step289ExitFvAfter s6Step289ExitFvRow 160 []
    s6Step289ExitFv_distinct s6Step289ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step289ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step289ExitFvRow.payload++[]) s6Step289ExitFvRow.sign=s6Step289ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step289ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step289ExitG_Incoming : rowsOwned s6Step289ExitGBefore [s6Step289ExitGRow,s6Step289ExitFRow,s6Step289ExitFvRow,s6Step289ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289ExitGRow,s6Step289ExitFRow,s6Step289ExitFvRow,s6Step289ExitGvRow] 0 s6Step289ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step289ExitG_Outgoing : rowsOwned s6Step289ExitGvAfter [s6Step289ExitGOut,s6Step289ExitFOut,s6Step289ExitFvOut,s6Step289ExitGvOut] :=
  hmrRows_owned_drop s6Step289ExitGvAfter [s6Step289ExitGOut,s6Step289ExitFOut,s6Step289ExitFvOut,s6Step289ExitGvOut] 0 s6Step289ExitBank_outgoingOwned

private theorem s6Step289ExitG_distinct : (s6Step289ExitGRow.sign::s6Step289ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289ExitG_owned : (s6Step289ExitGRow.sign::s6Step289ExitGRow.payload).toFinset⊆s6Step289ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289ExitG_retired : s6Step289ExitGBefore.retireSet s6Step289ExitGExtra.toFinset=s6Step289ExitGAfter := by
  unfold Arena.retireSet s6Step289ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step289ExitGBefore,s6Step289ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step289ExitG_checked : planRowResizeLog s6Step289ExitGBefore s6Step289ExitGRow 126 []=
    some (s6Step289ExitGAfter,s6Step289ExitGOut,shrinkRow 777 s6Step289ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step289ExitGBefore s6Step289ExitGRow 126 s6Step289ExitG_distinct s6Step289ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step289ExitGRow.payload.take 126) s6Step289ExitGRow.sign=s6Step289ExitGOut := by decide +kernel
  have hi : s6Step289ExitGRow.payload.drop 126=s6Step289ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step289ExitG_retired] at result
  exact result

private def s6Step289ExitGvBefore : Arena := s6Step289ExitFAfter

private theorem s6Step289ExitGv_Incoming : rowsOwned s6Step289ExitGvBefore [s6Step289ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289ExitGRow,s6Step289ExitFRow,s6Step289ExitFvRow,s6Step289ExitGvRow] 3 s6Step289ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289ExitGvBefore (fun q => (0≤q ∧ q<381) ∨ (382≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step289ExitGv_Outgoing : rowsOwned s6Step289ExitGvAfter [s6Step289ExitGvOut] :=
  hmrRows_owned_drop s6Step289ExitGvAfter [s6Step289ExitGOut,s6Step289ExitFOut,s6Step289ExitFvOut,s6Step289ExitGvOut] 3 s6Step289ExitBank_outgoingOwned

private theorem s6Step289ExitGv_distinct : (s6Step289ExitGvRow.sign::s6Step289ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289ExitGv_owned : (s6Step289ExitGvRow.sign::s6Step289ExitGvRow.payload).toFinset⊆s6Step289ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289ExitGvBefore (fun q => (0≤q ∧ q<381) ∨ (382≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289ExitGv_retired : s6Step289ExitGvBefore.retireSet s6Step289ExitGvExtra.toFinset=s6Step289ExitGvAfter := by
  unfold Arena.retireSet s6Step289ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step289ExitGvBefore,s6Step289ExitFAfter,s6Step289ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step289ExitGv_checked : planRowResizeLog s6Step289ExitGvBefore s6Step289ExitGvRow 159 []=
    some (s6Step289ExitGvAfter,s6Step289ExitGvOut,shrinkRow 775 s6Step289ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step289ExitGvBefore s6Step289ExitGvRow 159 s6Step289ExitGv_distinct s6Step289ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step289ExitGvRow.payload.take 159) s6Step289ExitGvRow.sign=s6Step289ExitGvOut := by decide +kernel
  have hi : s6Step289ExitGvRow.payload.drop 159=s6Step289ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step289ExitGv_retired] at result
  exact result

private theorem s6Step289ExitBank_rows : planWindowRowsLog s6Step289ExitGBefore [(s6Step289ExitGRow,126),(s6Step289ExitFRow,125),(s6Step289ExitFvRow,160),(s6Step289ExitGvRow,159)] [[],[],[],[]]=
    some (s6Step289ExitGvAfter,[s6Step289ExitGOut,s6Step289ExitFOut,s6Step289ExitFvOut,s6Step289ExitGvOut],(shrinkRow 777 s6Step289ExitGExtra ++ (shrinkRow 795 s6Step289ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step289ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step289ExitGvAfter [] []=some (s6Step289ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step289ExitGvBefore s6Step289ExitGvAfter s6Step289ExitGvAfter
    s6Step289ExitGvRow s6Step289ExitGvOut 159 [] [] [] []
    (shrinkRow 775 s6Step289ExitGvExtra) ([]) s6Step289ExitGv_Incoming s6Step289ExitGv_checked h4 s6Step289ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step289ExitFvBefore s6Step289ExitFvAfter s6Step289ExitGvAfter
    s6Step289ExitFvRow s6Step289ExitFvOut 160 [] [(s6Step289ExitGvRow,159)] [[]] [s6Step289ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step289ExitGvExtra ++ [])) s6Step289ExitFv_Incoming s6Step289ExitFv_checked h3 s6Step289ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step289ExitFBefore s6Step289ExitFAfter s6Step289ExitGvAfter
    s6Step289ExitFRow s6Step289ExitFOut 125 [] [(s6Step289ExitFvRow,160),(s6Step289ExitGvRow,159)] [[],[]] [s6Step289ExitFvOut,s6Step289ExitGvOut]
    (shrinkRow 795 s6Step289ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step289ExitGvExtra ++ []))) s6Step289ExitF_Incoming s6Step289ExitF_checked h2 s6Step289ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step289ExitGBefore s6Step289ExitGAfter s6Step289ExitGvAfter
    s6Step289ExitGRow s6Step289ExitGOut 126 [] [(s6Step289ExitFRow,125),(s6Step289ExitFvRow,160),(s6Step289ExitGvRow,159)] [[],[],[]] [s6Step289ExitFOut,s6Step289ExitFvOut,s6Step289ExitGvOut]
    (shrinkRow 777 s6Step289ExitGExtra) ((shrinkRow 795 s6Step289ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step289ExitGvExtra ++ [])))) s6Step289ExitG_Incoming s6Step289ExitG_checked h1 s6Step289ExitG_Outgoing
  exact h0

private theorem s6Step289ExitBank_checked : compileHmrBankResizeLog .exit s6Step289ExitGBefore ⟨s6Step289ExitFRow,s6Step289ExitGRow,s6Step289ExitFvRow,s6Step289ExitGvRow⟩ ⟨125,126,160,159⟩ [[],[],[],[]]=
    some (s6Step289ExitGvAfter,⟨s6Step289ExitFOut,s6Step289ExitGOut,s6Step289ExitFvOut,s6Step289ExitGvOut⟩,(shrinkRow 777 s6Step289ExitGExtra ++ (shrinkRow 795 s6Step289ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step289ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step289ExitBank_rows]
  rfl

private theorem s6Step289Add0_apart : Disjoint s6Step289Add0Arena.live s6Step289Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step289Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289Add0_card : s6Step289Add0Arena.live.card=898 := by
  decide +kernel

private theorem s6Step289Add0_borrowed : s6Step289Add0Arena.checkBorrow (hmrHybridCount s6Step289Add0Arena s6Step289Add0B.length) s6Step289Add0Work=some s6Step289Add0During := by
  have len : s6Step289Add0Work.length=hmrHybridCount s6Step289Add0Arena s6Step289Add0B.length := by
    rw [hmrHybridCount,s6Step289Add0_card]
    decide +kernel
  have nd : s6Step289Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step289Add0Arena s6Step289Add0During s6Step289Add0Work.toFinset s6Step289Add0_bounded s6Step289Add0_apart rfl

private theorem s6Step289Add0_distinct : (892::858::779::(s6Step289Add0A++s6Step289Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289Add0_owned : (892::858::779::(s6Step289Add0A++s6Step289Add0B)).toFinset⊆s6Step289Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step289Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289Add0_checked : compileHmrHybridCinLog s6Step289Add0Arena 858 892 779 s6Step289Add0A s6Step289Add0B s6Step289Add0Work=some s6Step289Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step289Add0Arena s6Step289Add0During 858 892 779 s6Step289Add0A s6Step289Add0B s6Step289Add0Work
    (by decide +kernel) (by decide +kernel) s6Step289Add0_distinct
    (fun q hq => s6Step289Add0_owned (List.mem_toFinset.mpr hq)) s6Step289Add0_borrowed

private theorem s6Step289Add1_apart : Disjoint s6Step289Add1Arena.live s6Step289Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step289Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289Add1_card : s6Step289Add1Arena.live.card=898 := by
  decide +kernel

private theorem s6Step289Add1_borrowed : s6Step289Add1Arena.checkBorrow (hmrHybridCount s6Step289Add1Arena s6Step289Add1B.length) s6Step289Add1Work=some s6Step289Add1During := by
  have len : s6Step289Add1Work.length=hmrHybridCount s6Step289Add1Arena s6Step289Add1B.length := by
    rw [hmrHybridCount,s6Step289Add1_card]
    decide +kernel
  have nd : s6Step289Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step289Add1Arena s6Step289Add1During s6Step289Add1Work.toFinset s6Step289Add1_bounded s6Step289Add1_apart rfl

private theorem s6Step289Add1_distinct : (892::858::779::(s6Step289Add1A++s6Step289Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289Add1_owned : (892::858::779::(s6Step289Add1A++s6Step289Add1B)).toFinset⊆s6Step289Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step289Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289Add1_checked : compileHmrHybridCinLog s6Step289Add1Arena 858 892 779 s6Step289Add1A s6Step289Add1B s6Step289Add1Work=some s6Step289Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step289Add1Arena s6Step289Add1During 858 892 779 s6Step289Add1A s6Step289Add1B s6Step289Add1Work
    (by decide +kernel) (by decide +kernel) s6Step289Add1_distinct
    (fun q hq => s6Step289Add1_owned (List.mem_toFinset.mpr hq)) s6Step289Add1_borrowed

private theorem s6Step289F4_apart : Disjoint (s6Step289Add0A++s6Step289Add0B).toFinset (s6Step289Add1A++s6Step289Add1B).toFinset := by
  have nd : ((s6Step289Add0A++s6Step289Add0B)++(s6Step289Add1A++s6Step289Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step289F4_carry : s6Step289F4FlagArena.checkBorrow 1 [779]=some s6Step289Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step289F4FlagArena,s6Step289HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step289F4FlagArena,s6Step289HeadFvAfter,s6Step289Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step289F4_distinct : (789::858::892::779::((s6Step289Add0A++s6Step289Add1A)++(s6Step289Add0B++s6Step289Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289F4_flag : s6Step289HeadFvAfter.checkBorrow 1 [892]=some s6Step289F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step289HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step289F4_owned : (789::858::((s6Step289Add0A++s6Step289Add1A)++(s6Step289Add0B++s6Step289Add1B))).toFinset⊆s6Step289HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step289HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289F4_checked : compileHmrHybridF4Log s6Step289HeadFvAfter 789 858 s6Step289Add0A s6Step289Add0B s6Step289Add1A s6Step289Add1B [892] [779] s6Step289Add0Work s6Step289Add1Work=some s6Step289F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step289HeadFvAfter s6Step289F4FlagArena s6Step289Add0Arena s6Step289Add0During s6Step289Add1During 789 858
    s6Step289Add0A s6Step289Add0B s6Step289Add1A s6Step289Add1B [892] [779] s6Step289Add0Work s6Step289Add1Work
    (fun q hq => s6Step289F4_owned (List.mem_toFinset.mpr hq)) s6Step289F4_flag s6Step289F4_carry
    s6Step289F4_distinct s6Step289F4_apart s6Step289Add0_checked s6Step289Add1_checked

private theorem s6Step289Front_branch : s6Step289FrontSigmaArena.checkBorrow 1 [858]=some s6Step289HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step289FrontSigmaArena,s6Step289EntryGvAfter,s6Step289EntryFBefore,arenaWires]
  · change s6Step289HeadGBefore.live=(s6Step289EntryGvAfter.live∪{789})∪{858}
    apply hmrArena_union_pair_of_filter_check s6Step289EntryGvAfter s6Step289HeadGBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) 789 858 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step289Front_entry : HmrFrontEntryValid s6Step289EntryFBefore s6Step289FrontBank 126 159 ⟨125,126,160,159⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step289FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step289EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step289EntryFBefore (fun q => ([(0,779),(780,782),(783,789),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step289FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step289Front_sigma : s6Step289EntryGvAfter.checkBorrow 1 [789]=some s6Step289FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step289EntryGvAfter,s6Step289EntryFBefore,arenaWires]
  · rfl

private def s6Step289HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289HeadFBefore : Arena := s6Step289HeadGAfter

private def s6Step289HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381],795⟩

private def s6Step289HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩

private def s6Step289HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩

private def s6Step289HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856],775⟩

private theorem s6Step289HeadBank_incomingDistinct : ([s6Step289HeadGRow,s6Step289HeadFRow,s6Step289HeadGvRow,s6Step289HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289HeadF_Incoming : rowsOwned s6Step289HeadFBefore [s6Step289HeadFRow,s6Step289HeadGvRow,s6Step289HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289HeadGRow,s6Step289HeadFRow,s6Step289HeadGvRow,s6Step289HeadFvRow] 1 s6Step289HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step289HeadBank_outgoingOwned : rowsOwned s6Step289HeadFvAfter [s6Step289HeadGOut,s6Step289HeadFOut,s6Step289HeadGvOut,s6Step289HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step289HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step289HeadF_Outgoing : rowsOwned s6Step289HeadFvAfter [s6Step289HeadFOut,s6Step289HeadGvOut,s6Step289HeadFvOut] :=
  hmrRows_owned_drop s6Step289HeadFvAfter [s6Step289HeadGOut,s6Step289HeadFOut,s6Step289HeadGvOut,s6Step289HeadFvOut] 1 s6Step289HeadBank_outgoingOwned

private theorem s6Step289HeadF_distinct : (s6Step289HeadFRow.sign::s6Step289HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289HeadF_owned : (s6Step289HeadFRow.sign::s6Step289HeadFRow.payload).toFinset⊆s6Step289HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289HeadF_reserved : s6Step289HeadFBefore.reserve s6Step289HeadFFresh.toFinset=some s6Step289HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step289HeadFFresh,arenaWires]
  · norm_num [s6Step289HeadFBefore,s6Step289HeadGAfter,s6Step289HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step289HeadFAfter,s6Step289HeadFBefore,s6Step289HeadGAfter,s6Step289HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step289HeadF_checked : planRowResizeLog s6Step289HeadFBefore s6Step289HeadFRow 127 s6Step289HeadFFresh=
    some (s6Step289HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 875],795⟩,growRow 795 s6Step289HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step289HeadFBefore s6Step289HeadFAfter s6Step289HeadFRow 127 s6Step289HeadFFresh
    s6Step289HeadF_distinct s6Step289HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step289HeadF_reserved
  have rowEq : WindowRow.mk (s6Step289HeadFRow.payload++s6Step289HeadFFresh) s6Step289HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 875],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step289HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step289HeadFvBefore : Arena := s6Step289HeadGvAfter

private theorem s6Step289HeadFv_Incoming : rowsOwned s6Step289HeadFvBefore [s6Step289HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289HeadGRow,s6Step289HeadFRow,s6Step289HeadGvRow,s6Step289HeadFvRow] 3 s6Step289HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step289HeadFv_Outgoing : rowsOwned s6Step289HeadFvAfter [s6Step289HeadFvOut] :=
  hmrRows_owned_drop s6Step289HeadFvAfter [s6Step289HeadGOut,s6Step289HeadFOut,s6Step289HeadGvOut,s6Step289HeadFvOut] 3 s6Step289HeadBank_outgoingOwned

private theorem s6Step289HeadFv_distinct : (s6Step289HeadFvRow.sign::s6Step289HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289HeadFv_owned : (s6Step289HeadFvRow.sign::s6Step289HeadFvRow.payload).toFinset⊆s6Step289HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289HeadFv_reserved : s6Step289HeadFvBefore.reserve s6Step289HeadFvFresh.toFinset=some s6Step289HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step289HeadFvFresh,arenaWires]
  · norm_num [s6Step289HeadFvBefore,s6Step289HeadGvAfter,s6Step289HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step289HeadFvAfter,s6Step289HeadFvBefore,s6Step289HeadGvAfter,s6Step289HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step289HeadFv_checked : planRowResizeLog s6Step289HeadFvBefore s6Step289HeadFvRow 160 s6Step289HeadFvFresh=
    some (s6Step289HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩,growRow 776 s6Step289HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step289HeadFvBefore s6Step289HeadFvAfter s6Step289HeadFvRow 160 s6Step289HeadFvFresh
    s6Step289HeadFv_distinct s6Step289HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step289HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step289HeadFvRow.payload++s6Step289HeadFvFresh) s6Step289HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step289HeadG_Incoming : rowsOwned s6Step289HeadGBefore [s6Step289HeadGRow,s6Step289HeadFRow,s6Step289HeadGvRow,s6Step289HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289HeadGRow,s6Step289HeadFRow,s6Step289HeadGvRow,s6Step289HeadFvRow] 0 s6Step289HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step289HeadG_Outgoing : rowsOwned s6Step289HeadFvAfter [s6Step289HeadGOut,s6Step289HeadFOut,s6Step289HeadGvOut,s6Step289HeadFvOut] :=
  hmrRows_owned_drop s6Step289HeadFvAfter [s6Step289HeadGOut,s6Step289HeadFOut,s6Step289HeadGvOut,s6Step289HeadFvOut] 0 s6Step289HeadBank_outgoingOwned

private theorem s6Step289HeadG_distinct : (s6Step289HeadGRow.sign::s6Step289HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289HeadG_owned : (s6Step289HeadGRow.sign::s6Step289HeadGRow.payload).toFinset⊆s6Step289HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289HeadG_reserved : s6Step289HeadGBefore.reserve s6Step289HeadGFresh.toFinset=some s6Step289HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step289HeadGFresh,arenaWires]
  · norm_num [s6Step289HeadGBefore,s6Step289HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step289HeadGAfter,s6Step289HeadGBefore,s6Step289HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step289HeadG_checked : planRowResizeLog s6Step289HeadGBefore s6Step289HeadGRow 127 s6Step289HeadGFresh=
    some (s6Step289HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 879],777⟩,growRow 777 s6Step289HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step289HeadGBefore s6Step289HeadGAfter s6Step289HeadGRow 127 s6Step289HeadGFresh
    s6Step289HeadG_distinct s6Step289HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step289HeadG_reserved
  have rowEq : WindowRow.mk (s6Step289HeadGRow.payload++s6Step289HeadGFresh) s6Step289HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 879],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step289HeadGvBefore : Arena := s6Step289HeadFAfter

private theorem s6Step289HeadGv_Incoming : rowsOwned s6Step289HeadGvBefore [s6Step289HeadGvRow,s6Step289HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step289HeadGRow,s6Step289HeadFRow,s6Step289HeadGvRow,s6Step289HeadFvRow] 2 s6Step289HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step289HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step289HeadGv_Outgoing : rowsOwned s6Step289HeadFvAfter [s6Step289HeadGvOut,s6Step289HeadFvOut] :=
  hmrRows_owned_drop s6Step289HeadFvAfter [s6Step289HeadGOut,s6Step289HeadFOut,s6Step289HeadGvOut,s6Step289HeadFvOut] 2 s6Step289HeadBank_outgoingOwned

private theorem s6Step289HeadGv_distinct : (s6Step289HeadGvRow.sign::s6Step289HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step289HeadGv_owned : (s6Step289HeadGvRow.sign::s6Step289HeadGvRow.payload).toFinset⊆s6Step289HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step289HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step289HeadGv_reserved : s6Step289HeadGvBefore.reserve s6Step289HeadGvFresh.toFinset=some s6Step289HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step289HeadGvFresh,arenaWires]
  · norm_num [s6Step289HeadGvBefore,s6Step289HeadFAfter,s6Step289HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step289HeadGvAfter,s6Step289HeadGvBefore,s6Step289HeadFAfter,s6Step289HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step289HeadGv_checked : planRowResizeLog s6Step289HeadGvBefore s6Step289HeadGvRow 160 s6Step289HeadGvFresh=
    some (s6Step289HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 807],775⟩,growRow 775 s6Step289HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step289HeadGvBefore s6Step289HeadGvAfter s6Step289HeadGvRow 160 s6Step289HeadGvFresh
    s6Step289HeadGv_distinct s6Step289HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step289HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step289HeadGvRow.payload++s6Step289HeadGvFresh) s6Step289HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 807],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step289HeadBank_rows : planWindowRowsLog s6Step289HeadGBefore [(s6Step289HeadGRow,127),(s6Step289HeadFRow,127),(s6Step289HeadGvRow,160),(s6Step289HeadFvRow,160)] [s6Step289HeadGFresh,s6Step289HeadFFresh,s6Step289HeadGvFresh,s6Step289HeadFvFresh]=
    some (s6Step289HeadFvAfter,[s6Step289HeadGOut,s6Step289HeadFOut,s6Step289HeadGvOut,s6Step289HeadFvOut],(growRow 777 s6Step289HeadGFresh ++ (growRow 795 s6Step289HeadFFresh ++ (growRow 775 s6Step289HeadGvFresh ++ (growRow 776 s6Step289HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step289HeadFvAfter [] []=some (s6Step289HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step289HeadFvBefore s6Step289HeadFvAfter s6Step289HeadFvAfter
    s6Step289HeadFvRow s6Step289HeadFvOut 160 s6Step289HeadFvFresh [] [] []
    (growRow 776 s6Step289HeadFvFresh) ([]) s6Step289HeadFv_Incoming s6Step289HeadFv_checked h4 s6Step289HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step289HeadGvBefore s6Step289HeadGvAfter s6Step289HeadFvAfter
    s6Step289HeadGvRow s6Step289HeadGvOut 160 s6Step289HeadGvFresh [(s6Step289HeadFvRow,160)] [s6Step289HeadFvFresh] [s6Step289HeadFvOut]
    (growRow 775 s6Step289HeadGvFresh) ((growRow 776 s6Step289HeadFvFresh ++ [])) s6Step289HeadGv_Incoming s6Step289HeadGv_checked h3 s6Step289HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step289HeadFBefore s6Step289HeadFAfter s6Step289HeadFvAfter
    s6Step289HeadFRow s6Step289HeadFOut 127 s6Step289HeadFFresh [(s6Step289HeadGvRow,160),(s6Step289HeadFvRow,160)] [s6Step289HeadGvFresh,s6Step289HeadFvFresh] [s6Step289HeadGvOut,s6Step289HeadFvOut]
    (growRow 795 s6Step289HeadFFresh) ((growRow 775 s6Step289HeadGvFresh ++ (growRow 776 s6Step289HeadFvFresh ++ []))) s6Step289HeadF_Incoming s6Step289HeadF_checked h2 s6Step289HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step289HeadGBefore s6Step289HeadGAfter s6Step289HeadFvAfter
    s6Step289HeadGRow s6Step289HeadGOut 127 s6Step289HeadGFresh [(s6Step289HeadFRow,127),(s6Step289HeadGvRow,160),(s6Step289HeadFvRow,160)] [s6Step289HeadFFresh,s6Step289HeadGvFresh,s6Step289HeadFvFresh] [s6Step289HeadFOut,s6Step289HeadGvOut,s6Step289HeadFvOut]
    (growRow 777 s6Step289HeadGFresh) ((growRow 795 s6Step289HeadFFresh ++ (growRow 775 s6Step289HeadGvFresh ++ (growRow 776 s6Step289HeadFvFresh ++ [])))) s6Step289HeadG_Incoming s6Step289HeadG_checked h1 s6Step289HeadG_Outgoing
  exact h0

private theorem s6Step289HeadBank_checked : compileHmrBankResizeLog .headroom s6Step289HeadGBefore ⟨s6Step289HeadFRow,s6Step289HeadGRow,s6Step289HeadFvRow,s6Step289HeadGvRow⟩ ⟨127,127,160,160⟩ [s6Step289HeadGFresh,s6Step289HeadFFresh,s6Step289HeadGvFresh,s6Step289HeadFvFresh]=
    some (s6Step289HeadFvAfter,⟨s6Step289HeadFOut,s6Step289HeadGOut,s6Step289HeadFvOut,s6Step289HeadGvOut⟩,(growRow 777 s6Step289HeadGFresh ++ (growRow 795 s6Step289HeadFFresh ++ (growRow 775 s6Step289HeadGvFresh ++ (growRow 776 s6Step289HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step289HeadBank_rows]
  rfl

private theorem s6Step289Front_checked : compileHmrSourceFrontLog s6Step289EntryFBefore s6Step289FrontBank 126 159 ⟨125,126,160,159⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step289FrontLog=some s6Step289FrontPlan := by
  have pairEq : s6Step289FrontPair=⟨s6Step289HeadFRow,s6Step289HeadGRow,s6Step289HeadFvRow,s6Step289HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step289FrontHead=⟨s6Step289ExitFRow,s6Step289ExitGRow,s6Step289ExitFvRow,s6Step289ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step289Add0A=s6Step289FrontHead.f.wires := by decide +kernel
  have gEq : s6Step289Add0B=s6Step289FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step289Add1A=s6Step289FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step289Add1B=s6Step289FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step289EntryFBefore s6Step289FrontBank 126 159 ⟨125,126,160,159⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step289FrontLog s6Step289FrontPlan
  · exact s6Step289Front_entry
  · exact s6Step289EntryBank_checked
  · exact s6Step289Front_sigma
  · rfl
  · exact s6Step289Front_branch
  · rfl
  · simpa only [s6Step289FrontPlan,pairEq] using s6Step289HeadBank_checked
  · simpa only [s6Step289FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step289F4_checked
  · exact s6Step289Counter_checked
  · rfl
  · simpa only [s6Step289FrontPlan,headEq] using s6Step289ExitBank_checked

private theorem s6Step289Complete_explicit_checked : compileHmrEarlyStepLog s6Step289EntryFBefore s6Step289FrontBank 126 159 ⟨125,126,160,159⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step289CompleteLog=some s6Step289CompletePlan := by
  let Q := s6Step289EarlyControlPlan
  have hq := s6Step289EarlyControl_plan_checked
  have fv1 : s6Step289CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step289CompleteOut.fv.payload[2]?.getD s6Step289CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step289CompleteOut.fv.payload[3]?.getD s6Step289CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step289CompleteOut.fv.payload[4]?.getD s6Step289CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step289EntryFBefore s6Step289EarlyControlArena s6Step289FrontBank 126 159 ⟨125,126,160,159⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step289CompleteLog s6Step289FrontPlan Q
    s6Step289Front_checked s6Step289Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step289Complete_owned s6Step289Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step289EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 789 s6Step289CompleteOut.fv.second (s6Step289CompleteOut.fv.payload[2]?.getD s6Step289CompleteOut.fv.sign) (s6Step289CompleteOut.fv.payload[3]?.getD s6Step289CompleteOut.fv.sign) (s6Step289CompleteOut.fv.payload[4]?.getD s6Step289CompleteOut.fv.sign) 858 54 s6Step289EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep289Arena : Arena := s6Step289EntryFBefore
def s6PrivateStep289Bank : WindowBank := s6Step289FrontBank
def s6PrivateStep289Spec : HmrSourceWalkStepLog := ⟨126,159,⟨125,126,160,159⟩,54,.early s6Step289CompleteLog⟩
def s6PrivateStep289Plan : HmrSourceStepPlan := .early s6Step289CompletePlan
theorem s6PrivateStep289_source : s6PrivateStep289Spec=s6ObservedLogs288[1] := rfl
theorem s6PrivateStep289_checked : compileHmrSourceStepLog s6PrivateStep289Arena s6PrivateStep289Bank
    s6PrivateStep289Spec.fgWidth s6PrivateStep289Spec.vWidth s6PrivateStep289Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]
    6 498 289 s6PrivateStep289Spec.need none s6PrivateStep289Spec.log=some s6PrivateStep289Plan := by
  change compileHmrSourceStepLog s6Step289EntryFBefore s6Step289FrontBank 126 159 ⟨125,126,160,159⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 6 498 289 54 none (.early s6Step289CompleteLog)=some (.early s6Step289CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 289<498)]
  rw [s6Step289Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
