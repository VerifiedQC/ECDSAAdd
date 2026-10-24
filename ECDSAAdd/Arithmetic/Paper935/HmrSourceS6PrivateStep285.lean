import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep283
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

private def s6Step285CompleteMoves : List (Wire × Wire) := [(828,127)]

private def s6Step285EarlyControlLog : HmrEarlyControlLog := ⟨[828, 807, 875, 892, 858],[813],[779],[882, 830, 805, 817, 812, 915],[]⟩

private def s6Step285FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[892], [875], [807], [809]],[[], [], [], []]⟩,[873],[887],[858],[813],[779, 882, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[779, 882, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[858, 813, 779, 882]⟩

private def s6Step285CompleteLog : HmrEarlyStepLog := ⟨s6Step285FrontLog,s6Step285CompleteMoves,s6Step285EarlyControlLog⟩

private def s6Step285ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step285ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩

private def s6Step285ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126],777⟩

private def s6Step285ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩

private def s6Step285FrontOut : WindowBank := ⟨s6Step285ExitFOut,s6Step285ExitGOut,s6Step285ExitFvOut,s6Step285ExitGvOut⟩

private def s6Step285CompleteOut : WindowBank := s6Step285FrontOut.repacked s6Step285CompleteMoves

private def s6Step285EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step285EarlyControlPositiveArena,[813],s6Step285EarlyControlEqualityArena,[779],⟨⟨873,false⟩,[⟨⟨813,false⟩,779⟩]⟩⟩

private def s6Step285EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(814,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,873),(874,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step285EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,828⟩,⟨⟨772,false⟩,807⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,892⟩,⟨⟨769,false⟩,858⟩]⟩

private def s6Step285EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step285EarlyControlZeroArena,s6Step285EarlyControlZeroPlan,s6Step285EarlyControlClassPlan,s6Step285EarlyControlFlagArena,s6Step285EarlyControlFittedArena,s6Step285EarlyControlHistoryArena,s6Step285EarlyControlSigmaArena,s6Step285EarlyControlOutputArena,s6Step285EarlyControlLog⟩

private def s6Step285CounterWork : List Wire := [858, 813, 779, 882]

private theorem s6Step285Counter_bounded : s6Step285CounterWork.toFinset⊆arenaWires := by norm_num [s6Step285CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step285HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285CounterDuring : Arena := ⟨s6Step285HeadFvAfter.live∪s6Step285CounterWork.toFinset,Finset.union_subset s6Step285HeadFvAfter.bounded s6Step285Counter_bounded⟩

private def s6Step285EntryFFresh : List Wire := []

private def s6Step285EntryFvFresh : List Wire := []

private def s6Step285EntryGFresh : List Wire := []

private def s6Step285EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285EntryGvAfter : Arena := s6Step285EntryFBefore

private def s6Step285EntryGvFresh : List Wire := []

private def s6Step285ExitFExtra : List Wire := [875]

private def s6Step285ExitGExtra : List Wire := [127, 892]

private def s6Step285ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285ExitGvExtra : List Wire := [807]

private def s6Step285Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285Add0Work : List Wire := [779, 882, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step285Add0_bounded : s6Step285Add0Work.toFinset⊆arenaWires := by
  have h : s6Step285Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step285Add0During : Arena := ⟨s6Step285Add0Arena.live∪s6Step285Add0Work.toFinset,Finset.union_subset s6Step285Add0Arena.bounded s6Step285Add0_bounded⟩

private def s6Step285Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285Add1Work : List Wire := [779, 882, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step285Add1_bounded : s6Step285Add1Work.toFinset⊆arenaWires := by
  have h : s6Step285Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step285Add1During : Arena := ⟨s6Step285Add1Arena.live∪s6Step285Add1Work.toFinset,Finset.union_subset s6Step285Add1Arena.bounded s6Step285Add1_bounded⟩

private def s6Step285F4FlagArena : Arena := ⟨s6Step285HeadFvAfter.live∪{858},Finset.union_subset s6Step285HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step285F4Plan : HmrHybridF4Plan := ⟨s6Step285F4FlagArena,[858],s6Step285Add0Arena,[813],s6Step285Add0During,s6Step285Add0Work,s6Step285Add1During,s6Step285Add1Work⟩

private def s6Step285HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 875],795⟩

private def s6Step285HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩

private def s6Step285HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 892],777⟩

private def s6Step285HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 807],775⟩

private def s6Step285FrontHead : WindowBank := ⟨s6Step285HeadFOut,s6Step285HeadGOut,s6Step285HeadFvOut,s6Step285HeadGvOut⟩

private def s6Step285EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step285EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845],776⟩

private def s6Step285EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],777⟩

private def s6Step285EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩

private def s6Step285FrontPair : WindowBank := ⟨s6Step285EntryFOut,s6Step285EntryGOut,s6Step285EntryFvOut,s6Step285EntryGvOut⟩

private def s6Step285FrontSigmaArena : Arena := ⟨s6Step285EntryGvAfter.live∪{873},Finset.union_subset s6Step285EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step285HeadFFresh : List Wire := [875]

private def s6Step285HeadFvFresh : List Wire := [809]

private def s6Step285HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285HeadGFresh : List Wire := [892]

private def s6Step285HeadGvFresh : List Wire := [807]

private def s6Step285FrontPlan : HmrSourceFront := ⟨s6Step285EntryGvAfter,s6Step285FrontPair,(growRow 795 s6Step285EntryFFresh ++ (growRow 777 s6Step285EntryGFresh ++ (growRow 776 s6Step285EntryFvFresh ++ (growRow 775 s6Step285EntryGvFresh ++ [])))),s6Step285FrontSigmaArena,[873],s6Step285HeadGBefore,[887],
  s6Step285HeadFvAfter,s6Step285FrontHead,(growRow 777 s6Step285HeadGFresh ++ (growRow 795 s6Step285HeadFFresh ++ (growRow 775 s6Step285HeadGvFresh ++ (growRow 776 s6Step285HeadFvFresh ++ [])))),s6Step285F4Plan,s6Step285CounterDuring,s6Step285CounterWork,s6Step285ExitGvAfter,s6Step285FrontOut,(shrinkRow 777 s6Step285ExitGExtra ++ (shrinkRow 795 s6Step285ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step285ExitGvExtra ++ []))))⟩

private def s6Step285CompletePlan : HmrEarlyStepPlan := ⟨s6Step285FrontPlan,s6Step285EarlyControlArena,s6Step285EarlyControlPlan,s6Step285CompleteMoves⟩

private theorem s6Step285Complete_apart : List.Disjoint (s6Step285CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [873, 887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := by
  have nd : ((s6Step285CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[873, 887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step285Complete_owned : (s6Step285CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step285EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step285CompleteMoveArena : Arena := ⟨s6Step285ExitGvAfter.live∪{127},Finset.union_subset s6Step285ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step285Complete_repack : s6Step285ExitGvAfter.checkRepack s6Step285CompleteMoves=some s6Step285EarlyControlArena := by
  have owned : 828∈s6Step285ExitGvAfter.live := by norm_num [s6Step285ExitGvAfter,arenaWires]
  have reserve : s6Step285ExitGvAfter.reserve {127}=some s6Step285CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step285ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step285CompleteMoveArena.retireSet {828}=s6Step285EarlyControlArena := by
    unfold Arena.retireSet s6Step285EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step285CompleteMoveArena,s6Step285ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step285CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step285CompleteMoveArena.retireSet {828}).checkRepack []=some s6Step285EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step285EarlyControl_branchOwned : ([887] : List Wire).toFinset⊆s6Step285EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EarlyControl_branch : compileHmrBranchRetirement s6Step285EarlyControlSigmaArena 887=some s6Step285EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step285EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step285EarlyControlSigmaArena s6Step285EarlyControlOutputArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(814,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,873),(874,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [887] rfl rfl
    decide +kernel

private theorem s6Step285EarlyControl_classEqualityBorrow : s6Step285EarlyControlPositiveArena.checkBorrow (([873, 813] : List Wire).length-1) s6Step285EarlyControlLog.classWork=some s6Step285EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step285EarlyControlPositiveArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step285EarlyControlEqualityArena,s6Step285EarlyControlPositiveArena,s6Step285EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step285EarlyControl_classEqualityOwned : ([873, 813] : List Wire).toFinset⊆s6Step285EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlPositiveArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EarlyControl_classEquality : compileHmrEqualityLog s6Step285EarlyControlPositiveArena [873, 813] 0 s6Step285EarlyControlLog.classWork=some (s6Step285EarlyControlEqualityArena,s6Step285EarlyControlLog.classWork,s6Step285EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step285EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step285EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step285EarlyControl_classOwned : ([769, 858, 873] : List Wire).toFinset⊆s6Step285EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EarlyControl_positiveBorrow : s6Step285EarlyControlZeroArena.checkBorrow (1) s6Step285EarlyControlLog.positiveWork=some s6Step285EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step285EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step285EarlyControlPositiveArena,s6Step285EarlyControlZeroArena,s6Step285EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step285EarlyControl_class : compileHmrSourceClassLog s6Step285EarlyControlZeroArena false 769 s6Step285EarlyControlZeroPlan.top 0 873 s6Step285EarlyControlLog.positiveWork s6Step285EarlyControlLog.classWork=some s6Step285EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step285EarlyControlClassPlan s6Step285EarlyControlZeroArena false 769 s6Step285EarlyControlZeroPlan.top 0 873
  constructor
  · decide +kernel
  · exact s6Step285EarlyControl_classOwned
  · exact s6Step285EarlyControl_positiveBorrow
  · exact s6Step285EarlyControl_classEquality

private theorem s6Step285EarlyControl_entryRecordOwned : ([887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step285EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EarlyControl_entrySigmaOwned : ([873, 254] : List Wire).toFinset⊆s6Step285EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EarlyControl_fitBorrow : s6Step285EarlyControlFlagArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step285EarlyControlLog.recordFresh=some s6Step285EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step285EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step285EarlyControlFittedArena,s6Step285EarlyControlFlagArena,s6Step285EarlyControlLog,arenaWires]

private theorem s6Step285EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step285EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EarlyControl_fit : compileHmrRecordGrowLog s6Step285EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step285EarlyControlLog.recordFresh=some s6Step285EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step285EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step285EarlyControl_fitBorrow

private theorem s6Step285EarlyControl_flagsBorrow : s6Step285EarlyControlEqualityArena.checkBorrow (6) s6Step285EarlyControlLog.flagWork=some s6Step285EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step285EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step285EarlyControlFlagArena,s6Step285EarlyControlEqualityArena,s6Step285EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step285EarlyControl_flagsOwned : ([779, 253, 252, 251] : List Wire).toFinset⊆s6Step285EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EarlyControl_flags : compileHmrFlagsLog s6Step285EarlyControlClassPlan.equalityArena s6Step285EarlyControlClassPlan.equality.top 253 252 251 s6Step285EarlyControlLog.flagWork=some s6Step285EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step285EarlyControl_flagsOwned⟩
  · exact s6Step285EarlyControl_flagsBorrow

private theorem s6Step285EarlyControl_historyBorrow : s6Step285EarlyControlArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step285EarlyControlLog.recordFresh=some s6Step285EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step285EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step285EarlyControlHistoryArena,s6Step285EarlyControlArena,s6Step285EarlyControlLog,arenaWires]

private theorem s6Step285EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step285EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EarlyControl_history : compileHmrRecordGrowLog s6Step285EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step285EarlyControlLog.recordFresh=some s6Step285EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step285EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step285EarlyControl_historyBorrow

private theorem s6Step285EarlyControl_sigmaOwned : ([254, 873] : List Wire).toFinset⊆s6Step285EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EarlyControl_sigmaReleaseOwned : ([873] : List Wire).toFinset⊆s6Step285EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EarlyControl_sigmaRelease : s6Step285EarlyControlHistoryArena.release {873} (fun _ => false)=some s6Step285EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step285EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step285EarlyControlSigmaArena,s6Step285EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step285EarlyControl_sigma : compileHmrSigmaDropLog s6Step285EarlyControlHistoryArena false 0 0 254 873 []=some s6Step285EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step285EarlyControl_sigmaOwned⟩
  · exact s6Step285EarlyControl_sigmaRelease

private theorem s6Step285EarlyControl_zeroBorrow : s6Step285EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step285EarlyControlLog.zeroWork=some s6Step285EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step285EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step285EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step285EarlyControlZeroArena,s6Step285EarlyControlArena,s6Step285EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step285EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step285EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step285EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EarlyControl_zero : compileHmrEqualityLog s6Step285EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step285EarlyControlLog.zeroWork=some (s6Step285EarlyControlZeroArena,s6Step285EarlyControlLog.zeroWork,s6Step285EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step285EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step285EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step285EarlyControl_logged : s6Step285EarlyControlPlan.Logged s6Step285EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 873 254 253 252 251 887 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step285EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step285EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step285EarlyControl_zero
  · exact s6Step285EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step285EarlyControl_flags
  · exact s6Step285EarlyControl_fit
  · exact s6Step285EarlyControl_history
  · exact s6Step285EarlyControl_sigma
  · exact s6Step285EarlyControl_branch

private theorem s6Step285EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step285EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 873 254 253 252 251 887 54 s6Step285EarlyControlLog=some s6Step285EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step285EarlyControlPlan s6Step285EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 873 254 253 252 251 887 54 s6Step285EarlyControl_logged

private def s6Step285EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step285EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845],776⟩

private def s6Step285EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],777⟩

private def s6Step285EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩

private def s6Step285FrontBank : WindowBank := ⟨s6Step285EntryFRow,s6Step285EntryGRow,s6Step285EntryFvRow,s6Step285EntryGvRow⟩

private def s6Step285Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 875, 795]

private def s6Step285Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 892, 777]

private def s6Step285Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 776]

private def s6Step285Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 807, 775]

private theorem s6Step285Counter_apart : Disjoint s6Step285HeadFvAfter.live s6Step285CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step285HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285Counter_borrowed : s6Step285HeadFvAfter.checkBorrow 4 s6Step285CounterWork=some s6Step285CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step285HeadFvAfter s6Step285CounterDuring s6Step285CounterWork.toFinset s6Step285Counter_bounded s6Step285Counter_apart rfl

private theorem s6Step285Counter_owned : (873::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step285HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step285HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285Counter_checked : compileHmrCounterStepLog s6Step285HeadFvAfter true 873 [774, 773, 772, 771, 770, 769] s6Step285CounterWork=some s6Step285CounterDuring := by
  have owned : ∀q∈873::[774, 773, 772, 771, 770, 769],q∈s6Step285HeadFvAfter.live := fun q hq => s6Step285Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step285Counter_borrowed

private def s6Step285EntryFAfter : Arena := s6Step285EntryFBefore

private theorem s6Step285EntryBank_incomingDistinct : ([s6Step285EntryFRow,s6Step285EntryGRow,s6Step285EntryFvRow,s6Step285EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285EntryF_Incoming : rowsOwned s6Step285EntryFBefore [s6Step285EntryFRow,s6Step285EntryGRow,s6Step285EntryFvRow,s6Step285EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285EntryFRow,s6Step285EntryGRow,s6Step285EntryFvRow,s6Step285EntryGvRow] 0 s6Step285EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285EntryBank_outgoingOwned : rowsOwned s6Step285EntryGvAfter [s6Step285EntryFOut,s6Step285EntryGOut,s6Step285EntryFvOut,s6Step285EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step285EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285EntryF_Outgoing : rowsOwned s6Step285EntryGvAfter [s6Step285EntryFOut,s6Step285EntryGOut,s6Step285EntryFvOut,s6Step285EntryGvOut] :=
  hmrRows_owned_drop s6Step285EntryGvAfter [s6Step285EntryFOut,s6Step285EntryGOut,s6Step285EntryFvOut,s6Step285EntryGvOut] 0 s6Step285EntryBank_outgoingOwned

private theorem s6Step285EntryF_distinct : (s6Step285EntryFRow.sign::s6Step285EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285EntryF_owned : (s6Step285EntryFRow.sign::s6Step285EntryFRow.payload).toFinset⊆s6Step285EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EntryF_reserved : s6Step285EntryFBefore.reserve s6Step285EntryFFresh.toFinset=some s6Step285EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step285EntryFFresh,arenaWires]
  · norm_num [s6Step285EntryFBefore,s6Step285EntryFFresh,arenaWires]
  · simp only [s6Step285EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step285EntryF_checked : planRowResizeLog s6Step285EntryFBefore s6Step285EntryFRow 128 s6Step285EntryFFresh=
    some (s6Step285EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩,growRow 795 s6Step285EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step285EntryFBefore s6Step285EntryFAfter s6Step285EntryFRow 128 s6Step285EntryFFresh
    s6Step285EntryF_distinct s6Step285EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step285EntryF_reserved
  have rowEq : WindowRow.mk (s6Step285EntryFRow.payload++s6Step285EntryFFresh) s6Step285EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step285EntryFvAfter : Arena := s6Step285EntryFBefore

private def s6Step285EntryFvBefore : Arena := s6Step285EntryFBefore

private theorem s6Step285EntryFv_Incoming : rowsOwned s6Step285EntryFvBefore [s6Step285EntryFvRow,s6Step285EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285EntryFRow,s6Step285EntryGRow,s6Step285EntryFvRow,s6Step285EntryGvRow] 2 s6Step285EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285EntryFv_Outgoing : rowsOwned s6Step285EntryGvAfter [s6Step285EntryFvOut,s6Step285EntryGvOut] :=
  hmrRows_owned_drop s6Step285EntryGvAfter [s6Step285EntryFOut,s6Step285EntryGOut,s6Step285EntryFvOut,s6Step285EntryGvOut] 2 s6Step285EntryBank_outgoingOwned

private theorem s6Step285EntryFv_distinct : (s6Step285EntryFvRow.sign::s6Step285EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285EntryFv_owned : (s6Step285EntryFvRow.sign::s6Step285EntryFvRow.payload).toFinset⊆s6Step285EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EntryFv_reserved : s6Step285EntryFvBefore.reserve s6Step285EntryFvFresh.toFinset=some s6Step285EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step285EntryFvFresh,arenaWires]
  · norm_num [s6Step285EntryFvBefore,s6Step285EntryFBefore,s6Step285EntryFvFresh,arenaWires]
  · simp only [s6Step285EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step285EntryFv_checked : planRowResizeLog s6Step285EntryFvBefore s6Step285EntryFvRow 157 s6Step285EntryFvFresh=
    some (s6Step285EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845],776⟩,growRow 776 s6Step285EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step285EntryFvBefore s6Step285EntryFvAfter s6Step285EntryFvRow 157 s6Step285EntryFvFresh
    s6Step285EntryFv_distinct s6Step285EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step285EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step285EntryFvRow.payload++s6Step285EntryFvFresh) s6Step285EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step285EntryGAfter : Arena := s6Step285EntryFBefore

private def s6Step285EntryGBefore : Arena := s6Step285EntryFBefore

private theorem s6Step285EntryG_Incoming : rowsOwned s6Step285EntryGBefore [s6Step285EntryGRow,s6Step285EntryFvRow,s6Step285EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285EntryFRow,s6Step285EntryGRow,s6Step285EntryFvRow,s6Step285EntryGvRow] 1 s6Step285EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285EntryG_Outgoing : rowsOwned s6Step285EntryGvAfter [s6Step285EntryGOut,s6Step285EntryFvOut,s6Step285EntryGvOut] :=
  hmrRows_owned_drop s6Step285EntryGvAfter [s6Step285EntryFOut,s6Step285EntryGOut,s6Step285EntryFvOut,s6Step285EntryGvOut] 1 s6Step285EntryBank_outgoingOwned

private theorem s6Step285EntryG_distinct : (s6Step285EntryGRow.sign::s6Step285EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285EntryG_owned : (s6Step285EntryGRow.sign::s6Step285EntryGRow.payload).toFinset⊆s6Step285EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EntryG_reserved : s6Step285EntryGBefore.reserve s6Step285EntryGFresh.toFinset=some s6Step285EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step285EntryGFresh,arenaWires]
  · norm_num [s6Step285EntryGBefore,s6Step285EntryFBefore,s6Step285EntryGFresh,arenaWires]
  · simp only [s6Step285EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step285EntryG_checked : planRowResizeLog s6Step285EntryGBefore s6Step285EntryGRow 128 s6Step285EntryGFresh=
    some (s6Step285EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],777⟩,growRow 777 s6Step285EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step285EntryGBefore s6Step285EntryGAfter s6Step285EntryGRow 128 s6Step285EntryGFresh
    s6Step285EntryG_distinct s6Step285EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step285EntryG_reserved
  have rowEq : WindowRow.mk (s6Step285EntryGRow.payload++s6Step285EntryGFresh) s6Step285EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step285EntryGvBefore : Arena := s6Step285EntryFBefore

private theorem s6Step285EntryGv_Incoming : rowsOwned s6Step285EntryGvBefore [s6Step285EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285EntryFRow,s6Step285EntryGRow,s6Step285EntryFvRow,s6Step285EntryGvRow] 3 s6Step285EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285EntryGv_Outgoing : rowsOwned s6Step285EntryGvAfter [s6Step285EntryGvOut] :=
  hmrRows_owned_drop s6Step285EntryGvAfter [s6Step285EntryFOut,s6Step285EntryGOut,s6Step285EntryFvOut,s6Step285EntryGvOut] 3 s6Step285EntryBank_outgoingOwned

private theorem s6Step285EntryGv_distinct : (s6Step285EntryGvRow.sign::s6Step285EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285EntryGv_owned : (s6Step285EntryGvRow.sign::s6Step285EntryGvRow.payload).toFinset⊆s6Step285EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285EntryGv_reserved : s6Step285EntryGvBefore.reserve s6Step285EntryGvFresh.toFinset=some s6Step285EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step285EntryGvFresh,arenaWires]
  · norm_num [s6Step285EntryGvBefore,s6Step285EntryFBefore,s6Step285EntryGvFresh,arenaWires]
  · simp only [s6Step285EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step285EntryGv_checked : planRowResizeLog s6Step285EntryGvBefore s6Step285EntryGvRow 157 s6Step285EntryGvFresh=
    some (s6Step285EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩,growRow 775 s6Step285EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step285EntryGvBefore s6Step285EntryGvAfter s6Step285EntryGvRow 157 s6Step285EntryGvFresh
    s6Step285EntryGv_distinct s6Step285EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step285EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step285EntryGvRow.payload++s6Step285EntryGvFresh) s6Step285EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step285EntryBank_rows : planWindowRowsLog s6Step285EntryFBefore [(s6Step285EntryFRow,128),(s6Step285EntryGRow,128),(s6Step285EntryFvRow,157),(s6Step285EntryGvRow,157)] [s6Step285EntryFFresh,s6Step285EntryGFresh,s6Step285EntryFvFresh,s6Step285EntryGvFresh]=
    some (s6Step285EntryGvAfter,[s6Step285EntryFOut,s6Step285EntryGOut,s6Step285EntryFvOut,s6Step285EntryGvOut],(growRow 795 s6Step285EntryFFresh ++ (growRow 777 s6Step285EntryGFresh ++ (growRow 776 s6Step285EntryFvFresh ++ (growRow 775 s6Step285EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step285EntryGvAfter [] []=some (s6Step285EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step285EntryGvBefore s6Step285EntryGvAfter s6Step285EntryGvAfter
    s6Step285EntryGvRow s6Step285EntryGvOut 157 s6Step285EntryGvFresh [] [] []
    (growRow 775 s6Step285EntryGvFresh) ([]) s6Step285EntryGv_Incoming s6Step285EntryGv_checked h4 s6Step285EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step285EntryFvBefore s6Step285EntryFvAfter s6Step285EntryGvAfter
    s6Step285EntryFvRow s6Step285EntryFvOut 157 s6Step285EntryFvFresh [(s6Step285EntryGvRow,157)] [s6Step285EntryGvFresh] [s6Step285EntryGvOut]
    (growRow 776 s6Step285EntryFvFresh) ((growRow 775 s6Step285EntryGvFresh ++ [])) s6Step285EntryFv_Incoming s6Step285EntryFv_checked h3 s6Step285EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step285EntryGBefore s6Step285EntryGAfter s6Step285EntryGvAfter
    s6Step285EntryGRow s6Step285EntryGOut 128 s6Step285EntryGFresh [(s6Step285EntryFvRow,157),(s6Step285EntryGvRow,157)] [s6Step285EntryFvFresh,s6Step285EntryGvFresh] [s6Step285EntryFvOut,s6Step285EntryGvOut]
    (growRow 777 s6Step285EntryGFresh) ((growRow 776 s6Step285EntryFvFresh ++ (growRow 775 s6Step285EntryGvFresh ++ []))) s6Step285EntryG_Incoming s6Step285EntryG_checked h2 s6Step285EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step285EntryFBefore s6Step285EntryFAfter s6Step285EntryGvAfter
    s6Step285EntryFRow s6Step285EntryFOut 128 s6Step285EntryFFresh [(s6Step285EntryGRow,128),(s6Step285EntryFvRow,157),(s6Step285EntryGvRow,157)] [s6Step285EntryGFresh,s6Step285EntryFvFresh,s6Step285EntryGvFresh] [s6Step285EntryGOut,s6Step285EntryFvOut,s6Step285EntryGvOut]
    (growRow 795 s6Step285EntryFFresh) ((growRow 777 s6Step285EntryGFresh ++ (growRow 776 s6Step285EntryFvFresh ++ (growRow 775 s6Step285EntryGvFresh ++ [])))) s6Step285EntryF_Incoming s6Step285EntryF_checked h1 s6Step285EntryF_Outgoing
  exact h0

private theorem s6Step285EntryBank_checked : compileHmrBankResizeLog .entry s6Step285EntryFBefore ⟨s6Step285EntryFRow,s6Step285EntryGRow,s6Step285EntryFvRow,s6Step285EntryGvRow⟩ ⟨128,128,157,157⟩ [s6Step285EntryFFresh,s6Step285EntryGFresh,s6Step285EntryFvFresh,s6Step285EntryGvFresh]=
    some (s6Step285EntryGvAfter,⟨s6Step285EntryFOut,s6Step285EntryGOut,s6Step285EntryFvOut,s6Step285EntryGvOut⟩,(growRow 795 s6Step285EntryFFresh ++ (growRow 777 s6Step285EntryGFresh ++ (growRow 776 s6Step285EntryFvFresh ++ (growRow 775 s6Step285EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step285EntryBank_rows]
  rfl

private def s6Step285ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285ExitFBefore : Arena := s6Step285ExitGAfter

private def s6Step285ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 875],795⟩

private def s6Step285ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩

private def s6Step285ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 892],777⟩

private def s6Step285ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 807],775⟩

private theorem s6Step285ExitBank_incomingDistinct : ([s6Step285ExitGRow,s6Step285ExitFRow,s6Step285ExitFvRow,s6Step285ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285ExitF_Incoming : rowsOwned s6Step285ExitFBefore [s6Step285ExitFRow,s6Step285ExitFvRow,s6Step285ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285ExitGRow,s6Step285ExitFRow,s6Step285ExitFvRow,s6Step285ExitGvRow] 1 s6Step285ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285ExitFBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285ExitBank_outgoingOwned : rowsOwned s6Step285ExitGvAfter [s6Step285ExitGOut,s6Step285ExitFOut,s6Step285ExitFvOut,s6Step285ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step285ExitGvAfter (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285ExitF_Outgoing : rowsOwned s6Step285ExitGvAfter [s6Step285ExitFOut,s6Step285ExitFvOut,s6Step285ExitGvOut] :=
  hmrRows_owned_drop s6Step285ExitGvAfter [s6Step285ExitGOut,s6Step285ExitFOut,s6Step285ExitFvOut,s6Step285ExitGvOut] 1 s6Step285ExitBank_outgoingOwned

private theorem s6Step285ExitF_distinct : (s6Step285ExitFRow.sign::s6Step285ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285ExitF_owned : (s6Step285ExitFRow.sign::s6Step285ExitFRow.payload).toFinset⊆s6Step285ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285ExitFBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285ExitF_retired : s6Step285ExitFBefore.retireSet s6Step285ExitFExtra.toFinset=s6Step285ExitFAfter := by
  unfold Arena.retireSet s6Step285ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step285ExitFBefore,s6Step285ExitGAfter,s6Step285ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step285ExitF_checked : planRowResizeLog s6Step285ExitFBefore s6Step285ExitFRow 128 []=
    some (s6Step285ExitFAfter,s6Step285ExitFOut,shrinkRow 795 s6Step285ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step285ExitFBefore s6Step285ExitFRow 128 s6Step285ExitF_distinct s6Step285ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step285ExitFRow.payload.take 128) s6Step285ExitFRow.sign=s6Step285ExitFOut := by decide +kernel
  have hi : s6Step285ExitFRow.payload.drop 128=s6Step285ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step285ExitF_retired] at result
  exact result

private def s6Step285ExitFvAfter : Arena := s6Step285ExitFAfter

private def s6Step285ExitFvBefore : Arena := s6Step285ExitFAfter

private theorem s6Step285ExitFv_Incoming : rowsOwned s6Step285ExitFvBefore [s6Step285ExitFvRow,s6Step285ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285ExitGRow,s6Step285ExitFRow,s6Step285ExitFvRow,s6Step285ExitGvRow] 2 s6Step285ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285ExitFvBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285ExitFv_Outgoing : rowsOwned s6Step285ExitGvAfter [s6Step285ExitFvOut,s6Step285ExitGvOut] :=
  hmrRows_owned_drop s6Step285ExitGvAfter [s6Step285ExitGOut,s6Step285ExitFOut,s6Step285ExitFvOut,s6Step285ExitGvOut] 2 s6Step285ExitBank_outgoingOwned

private theorem s6Step285ExitFv_distinct : (s6Step285ExitFvRow.sign::s6Step285ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285ExitFv_owned : (s6Step285ExitFvRow.sign::s6Step285ExitFvRow.payload).toFinset⊆s6Step285ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285ExitFvBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285ExitFv_reserved : s6Step285ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step285ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step285ExitFv_checked : planRowResizeLog s6Step285ExitFvBefore s6Step285ExitFvRow 158 []=
    some (s6Step285ExitFvAfter,s6Step285ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step285ExitFvBefore s6Step285ExitFvAfter s6Step285ExitFvRow 158 []
    s6Step285ExitFv_distinct s6Step285ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step285ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step285ExitFvRow.payload++[]) s6Step285ExitFvRow.sign=s6Step285ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step285ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step285ExitG_Incoming : rowsOwned s6Step285ExitGBefore [s6Step285ExitGRow,s6Step285ExitFRow,s6Step285ExitFvRow,s6Step285ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285ExitGRow,s6Step285ExitFRow,s6Step285ExitFvRow,s6Step285ExitGvRow] 0 s6Step285ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285ExitG_Outgoing : rowsOwned s6Step285ExitGvAfter [s6Step285ExitGOut,s6Step285ExitFOut,s6Step285ExitFvOut,s6Step285ExitGvOut] :=
  hmrRows_owned_drop s6Step285ExitGvAfter [s6Step285ExitGOut,s6Step285ExitFOut,s6Step285ExitFvOut,s6Step285ExitGvOut] 0 s6Step285ExitBank_outgoingOwned

private theorem s6Step285ExitG_distinct : (s6Step285ExitGRow.sign::s6Step285ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285ExitG_owned : (s6Step285ExitGRow.sign::s6Step285ExitGRow.payload).toFinset⊆s6Step285ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285ExitG_retired : s6Step285ExitGBefore.retireSet s6Step285ExitGExtra.toFinset=s6Step285ExitGAfter := by
  unfold Arena.retireSet s6Step285ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step285ExitGBefore,s6Step285ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step285ExitG_checked : planRowResizeLog s6Step285ExitGBefore s6Step285ExitGRow 127 []=
    some (s6Step285ExitGAfter,s6Step285ExitGOut,shrinkRow 777 s6Step285ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step285ExitGBefore s6Step285ExitGRow 127 s6Step285ExitG_distinct s6Step285ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step285ExitGRow.payload.take 127) s6Step285ExitGRow.sign=s6Step285ExitGOut := by decide +kernel
  have hi : s6Step285ExitGRow.payload.drop 127=s6Step285ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step285ExitG_retired] at result
  exact result

private def s6Step285ExitGvBefore : Arena := s6Step285ExitFAfter

private theorem s6Step285ExitGv_Incoming : rowsOwned s6Step285ExitGvBefore [s6Step285ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285ExitGRow,s6Step285ExitFRow,s6Step285ExitFvRow,s6Step285ExitGvRow] 3 s6Step285ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285ExitGvBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285ExitGv_Outgoing : rowsOwned s6Step285ExitGvAfter [s6Step285ExitGvOut] :=
  hmrRows_owned_drop s6Step285ExitGvAfter [s6Step285ExitGOut,s6Step285ExitFOut,s6Step285ExitFvOut,s6Step285ExitGvOut] 3 s6Step285ExitBank_outgoingOwned

private theorem s6Step285ExitGv_distinct : (s6Step285ExitGvRow.sign::s6Step285ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285ExitGv_owned : (s6Step285ExitGvRow.sign::s6Step285ExitGvRow.payload).toFinset⊆s6Step285ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285ExitGvBefore (fun q => (0≤q ∧ q<127) ∨ (128≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285ExitGv_retired : s6Step285ExitGvBefore.retireSet s6Step285ExitGvExtra.toFinset=s6Step285ExitGvAfter := by
  unfold Arena.retireSet s6Step285ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step285ExitGvBefore,s6Step285ExitFAfter,s6Step285ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step285ExitGv_checked : planRowResizeLog s6Step285ExitGvBefore s6Step285ExitGvRow 157 []=
    some (s6Step285ExitGvAfter,s6Step285ExitGvOut,shrinkRow 775 s6Step285ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step285ExitGvBefore s6Step285ExitGvRow 157 s6Step285ExitGv_distinct s6Step285ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step285ExitGvRow.payload.take 157) s6Step285ExitGvRow.sign=s6Step285ExitGvOut := by decide +kernel
  have hi : s6Step285ExitGvRow.payload.drop 157=s6Step285ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step285ExitGv_retired] at result
  exact result

private theorem s6Step285ExitBank_rows : planWindowRowsLog s6Step285ExitGBefore [(s6Step285ExitGRow,127),(s6Step285ExitFRow,128),(s6Step285ExitFvRow,158),(s6Step285ExitGvRow,157)] [[],[],[],[]]=
    some (s6Step285ExitGvAfter,[s6Step285ExitGOut,s6Step285ExitFOut,s6Step285ExitFvOut,s6Step285ExitGvOut],(shrinkRow 777 s6Step285ExitGExtra ++ (shrinkRow 795 s6Step285ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step285ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step285ExitGvAfter [] []=some (s6Step285ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step285ExitGvBefore s6Step285ExitGvAfter s6Step285ExitGvAfter
    s6Step285ExitGvRow s6Step285ExitGvOut 157 [] [] [] []
    (shrinkRow 775 s6Step285ExitGvExtra) ([]) s6Step285ExitGv_Incoming s6Step285ExitGv_checked h4 s6Step285ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step285ExitFvBefore s6Step285ExitFvAfter s6Step285ExitGvAfter
    s6Step285ExitFvRow s6Step285ExitFvOut 158 [] [(s6Step285ExitGvRow,157)] [[]] [s6Step285ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step285ExitGvExtra ++ [])) s6Step285ExitFv_Incoming s6Step285ExitFv_checked h3 s6Step285ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step285ExitFBefore s6Step285ExitFAfter s6Step285ExitGvAfter
    s6Step285ExitFRow s6Step285ExitFOut 128 [] [(s6Step285ExitFvRow,158),(s6Step285ExitGvRow,157)] [[],[]] [s6Step285ExitFvOut,s6Step285ExitGvOut]
    (shrinkRow 795 s6Step285ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step285ExitGvExtra ++ []))) s6Step285ExitF_Incoming s6Step285ExitF_checked h2 s6Step285ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step285ExitGBefore s6Step285ExitGAfter s6Step285ExitGvAfter
    s6Step285ExitGRow s6Step285ExitGOut 127 [] [(s6Step285ExitFRow,128),(s6Step285ExitFvRow,158),(s6Step285ExitGvRow,157)] [[],[],[]] [s6Step285ExitFOut,s6Step285ExitFvOut,s6Step285ExitGvOut]
    (shrinkRow 777 s6Step285ExitGExtra) ((shrinkRow 795 s6Step285ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step285ExitGvExtra ++ [])))) s6Step285ExitG_Incoming s6Step285ExitG_checked h1 s6Step285ExitG_Outgoing
  exact h0

private theorem s6Step285ExitBank_checked : compileHmrBankResizeLog .exit s6Step285ExitGBefore ⟨s6Step285ExitFRow,s6Step285ExitGRow,s6Step285ExitFvRow,s6Step285ExitGvRow⟩ ⟨128,127,158,157⟩ [[],[],[],[]]=
    some (s6Step285ExitGvAfter,⟨s6Step285ExitFOut,s6Step285ExitGOut,s6Step285ExitFvOut,s6Step285ExitGvOut⟩,(shrinkRow 777 s6Step285ExitGExtra ++ (shrinkRow 795 s6Step285ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step285ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step285ExitBank_rows]
  rfl

private theorem s6Step285Add0_apart : Disjoint s6Step285Add0Arena.live s6Step285Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step285Add0Arena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285Add0_card : s6Step285Add0Arena.live.card=898 := by
  decide +kernel

private theorem s6Step285Add0_borrowed : s6Step285Add0Arena.checkBorrow (hmrHybridCount s6Step285Add0Arena s6Step285Add0B.length) s6Step285Add0Work=some s6Step285Add0During := by
  have len : s6Step285Add0Work.length=hmrHybridCount s6Step285Add0Arena s6Step285Add0B.length := by
    rw [hmrHybridCount,s6Step285Add0_card]
    decide +kernel
  have nd : s6Step285Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step285Add0Arena s6Step285Add0During s6Step285Add0Work.toFinset s6Step285Add0_bounded s6Step285Add0_apart rfl

private theorem s6Step285Add0_distinct : (858::887::813::(s6Step285Add0A++s6Step285Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285Add0_owned : (858::887::813::(s6Step285Add0A++s6Step285Add0B)).toFinset⊆s6Step285Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step285Add0Arena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285Add0_checked : compileHmrHybridCinLog s6Step285Add0Arena 887 858 813 s6Step285Add0A s6Step285Add0B s6Step285Add0Work=some s6Step285Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step285Add0Arena s6Step285Add0During 887 858 813 s6Step285Add0A s6Step285Add0B s6Step285Add0Work
    (by decide +kernel) (by decide +kernel) s6Step285Add0_distinct
    (fun q hq => s6Step285Add0_owned (List.mem_toFinset.mpr hq)) s6Step285Add0_borrowed

private theorem s6Step285Add1_apart : Disjoint s6Step285Add1Arena.live s6Step285Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step285Add1Arena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285Add1_card : s6Step285Add1Arena.live.card=898 := by
  decide +kernel

private theorem s6Step285Add1_borrowed : s6Step285Add1Arena.checkBorrow (hmrHybridCount s6Step285Add1Arena s6Step285Add1B.length) s6Step285Add1Work=some s6Step285Add1During := by
  have len : s6Step285Add1Work.length=hmrHybridCount s6Step285Add1Arena s6Step285Add1B.length := by
    rw [hmrHybridCount,s6Step285Add1_card]
    decide +kernel
  have nd : s6Step285Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step285Add1Arena s6Step285Add1During s6Step285Add1Work.toFinset s6Step285Add1_bounded s6Step285Add1_apart rfl

private theorem s6Step285Add1_distinct : (858::887::813::(s6Step285Add1A++s6Step285Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285Add1_owned : (858::887::813::(s6Step285Add1A++s6Step285Add1B)).toFinset⊆s6Step285Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step285Add1Arena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285Add1_checked : compileHmrHybridCinLog s6Step285Add1Arena 887 858 813 s6Step285Add1A s6Step285Add1B s6Step285Add1Work=some s6Step285Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step285Add1Arena s6Step285Add1During 887 858 813 s6Step285Add1A s6Step285Add1B s6Step285Add1Work
    (by decide +kernel) (by decide +kernel) s6Step285Add1_distinct
    (fun q hq => s6Step285Add1_owned (List.mem_toFinset.mpr hq)) s6Step285Add1_borrowed

private theorem s6Step285F4_apart : Disjoint (s6Step285Add0A++s6Step285Add0B).toFinset (s6Step285Add1A++s6Step285Add1B).toFinset := by
  have nd : ((s6Step285Add0A++s6Step285Add0B)++(s6Step285Add1A++s6Step285Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step285F4_carry : s6Step285F4FlagArena.checkBorrow 1 [813]=some s6Step285Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step285F4FlagArena,s6Step285HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step285F4FlagArena,s6Step285HeadFvAfter,s6Step285Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step285F4_distinct : (873::887::858::813::((s6Step285Add0A++s6Step285Add1A)++(s6Step285Add0B++s6Step285Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285F4_flag : s6Step285HeadFvAfter.checkBorrow 1 [858]=some s6Step285F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step285HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step285F4_owned : (873::887::((s6Step285Add0A++s6Step285Add1A)++(s6Step285Add0B++s6Step285Add1B))).toFinset⊆s6Step285HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step285HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285F4_checked : compileHmrHybridF4Log s6Step285HeadFvAfter 873 887 s6Step285Add0A s6Step285Add0B s6Step285Add1A s6Step285Add1B [858] [813] s6Step285Add0Work s6Step285Add1Work=some s6Step285F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step285HeadFvAfter s6Step285F4FlagArena s6Step285Add0Arena s6Step285Add0During s6Step285Add1During 873 887
    s6Step285Add0A s6Step285Add0B s6Step285Add1A s6Step285Add1B [858] [813] s6Step285Add0Work s6Step285Add1Work
    (fun q hq => s6Step285F4_owned (List.mem_toFinset.mpr hq)) s6Step285F4_flag s6Step285F4_carry
    s6Step285F4_distinct s6Step285F4_apart s6Step285Add0_checked s6Step285Add1_checked

private theorem s6Step285Front_branch : s6Step285FrontSigmaArena.checkBorrow 1 [887]=some s6Step285HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step285FrontSigmaArena,s6Step285EntryGvAfter,s6Step285EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step285FrontSigmaArena,s6Step285EntryGvAfter,s6Step285EntryFBefore,s6Step285HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step285Front_entry : HmrFrontEntryValid s6Step285EntryFBefore s6Step285FrontBank 128 157 ⟨128,127,158,157⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step285FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step285EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step285EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step285FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step285Front_sigma : s6Step285EntryGvAfter.checkBorrow 1 [873]=some s6Step285FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step285EntryGvAfter,s6Step285EntryFBefore,arenaWires]
  · rfl

private def s6Step285HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285HeadFBefore : Arena := s6Step285HeadGAfter

private def s6Step285HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step285HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845],776⟩

private def s6Step285HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127],777⟩

private def s6Step285HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩

private theorem s6Step285HeadBank_incomingDistinct : ([s6Step285HeadGRow,s6Step285HeadFRow,s6Step285HeadGvRow,s6Step285HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285HeadF_Incoming : rowsOwned s6Step285HeadFBefore [s6Step285HeadFRow,s6Step285HeadGvRow,s6Step285HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285HeadGRow,s6Step285HeadFRow,s6Step285HeadGvRow,s6Step285HeadFvRow] 1 s6Step285HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285HeadBank_outgoingOwned : rowsOwned s6Step285HeadFvAfter [s6Step285HeadGOut,s6Step285HeadFOut,s6Step285HeadGvOut,s6Step285HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step285HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285HeadF_Outgoing : rowsOwned s6Step285HeadFvAfter [s6Step285HeadFOut,s6Step285HeadGvOut,s6Step285HeadFvOut] :=
  hmrRows_owned_drop s6Step285HeadFvAfter [s6Step285HeadGOut,s6Step285HeadFOut,s6Step285HeadGvOut,s6Step285HeadFvOut] 1 s6Step285HeadBank_outgoingOwned

private theorem s6Step285HeadF_distinct : (s6Step285HeadFRow.sign::s6Step285HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285HeadF_owned : (s6Step285HeadFRow.sign::s6Step285HeadFRow.payload).toFinset⊆s6Step285HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285HeadF_reserved : s6Step285HeadFBefore.reserve s6Step285HeadFFresh.toFinset=some s6Step285HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step285HeadFFresh,arenaWires]
  · norm_num [s6Step285HeadFBefore,s6Step285HeadGAfter,s6Step285HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step285HeadFAfter,s6Step285HeadFBefore,s6Step285HeadGAfter,s6Step285HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step285HeadF_checked : planRowResizeLog s6Step285HeadFBefore s6Step285HeadFRow 129 s6Step285HeadFFresh=
    some (s6Step285HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 875],795⟩,growRow 795 s6Step285HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step285HeadFBefore s6Step285HeadFAfter s6Step285HeadFRow 129 s6Step285HeadFFresh
    s6Step285HeadF_distinct s6Step285HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step285HeadF_reserved
  have rowEq : WindowRow.mk (s6Step285HeadFRow.payload++s6Step285HeadFFresh) s6Step285HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 875],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step285HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step285HeadFvBefore : Arena := s6Step285HeadGvAfter

private theorem s6Step285HeadFv_Incoming : rowsOwned s6Step285HeadFvBefore [s6Step285HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285HeadGRow,s6Step285HeadFRow,s6Step285HeadGvRow,s6Step285HeadFvRow] 3 s6Step285HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285HeadFv_Outgoing : rowsOwned s6Step285HeadFvAfter [s6Step285HeadFvOut] :=
  hmrRows_owned_drop s6Step285HeadFvAfter [s6Step285HeadGOut,s6Step285HeadFOut,s6Step285HeadGvOut,s6Step285HeadFvOut] 3 s6Step285HeadBank_outgoingOwned

private theorem s6Step285HeadFv_distinct : (s6Step285HeadFvRow.sign::s6Step285HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285HeadFv_owned : (s6Step285HeadFvRow.sign::s6Step285HeadFvRow.payload).toFinset⊆s6Step285HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285HeadFv_reserved : s6Step285HeadFvBefore.reserve s6Step285HeadFvFresh.toFinset=some s6Step285HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step285HeadFvFresh,arenaWires]
  · norm_num [s6Step285HeadFvBefore,s6Step285HeadGvAfter,s6Step285HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step285HeadFvAfter,s6Step285HeadFvBefore,s6Step285HeadGvAfter,s6Step285HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step285HeadFv_checked : planRowResizeLog s6Step285HeadFvBefore s6Step285HeadFvRow 158 s6Step285HeadFvFresh=
    some (s6Step285HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩,growRow 776 s6Step285HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step285HeadFvBefore s6Step285HeadFvAfter s6Step285HeadFvRow 158 s6Step285HeadFvFresh
    s6Step285HeadFv_distinct s6Step285HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step285HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step285HeadFvRow.payload++s6Step285HeadFvFresh) s6Step285HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 828, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step285HeadG_Incoming : rowsOwned s6Step285HeadGBefore [s6Step285HeadGRow,s6Step285HeadFRow,s6Step285HeadGvRow,s6Step285HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285HeadGRow,s6Step285HeadFRow,s6Step285HeadGvRow,s6Step285HeadFvRow] 0 s6Step285HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285HeadG_Outgoing : rowsOwned s6Step285HeadFvAfter [s6Step285HeadGOut,s6Step285HeadFOut,s6Step285HeadGvOut,s6Step285HeadFvOut] :=
  hmrRows_owned_drop s6Step285HeadFvAfter [s6Step285HeadGOut,s6Step285HeadFOut,s6Step285HeadGvOut,s6Step285HeadFvOut] 0 s6Step285HeadBank_outgoingOwned

private theorem s6Step285HeadG_distinct : (s6Step285HeadGRow.sign::s6Step285HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285HeadG_owned : (s6Step285HeadGRow.sign::s6Step285HeadGRow.payload).toFinset⊆s6Step285HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285HeadG_reserved : s6Step285HeadGBefore.reserve s6Step285HeadGFresh.toFinset=some s6Step285HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step285HeadGFresh,arenaWires]
  · norm_num [s6Step285HeadGBefore,s6Step285HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step285HeadGAfter,s6Step285HeadGBefore,s6Step285HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step285HeadG_checked : planRowResizeLog s6Step285HeadGBefore s6Step285HeadGRow 129 s6Step285HeadGFresh=
    some (s6Step285HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 892],777⟩,growRow 777 s6Step285HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step285HeadGBefore s6Step285HeadGAfter s6Step285HeadGRow 129 s6Step285HeadGFresh
    s6Step285HeadG_distinct s6Step285HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step285HeadG_reserved
  have rowEq : WindowRow.mk (s6Step285HeadGRow.payload++s6Step285HeadGFresh) s6Step285HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 892],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step285HeadGvBefore : Arena := s6Step285HeadFAfter

private theorem s6Step285HeadGv_Incoming : rowsOwned s6Step285HeadGvBefore [s6Step285HeadGvRow,s6Step285HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step285HeadGRow,s6Step285HeadFRow,s6Step285HeadGvRow,s6Step285HeadFvRow] 2 s6Step285HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step285HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step285HeadGv_Outgoing : rowsOwned s6Step285HeadFvAfter [s6Step285HeadGvOut,s6Step285HeadFvOut] :=
  hmrRows_owned_drop s6Step285HeadFvAfter [s6Step285HeadGOut,s6Step285HeadFOut,s6Step285HeadGvOut,s6Step285HeadFvOut] 2 s6Step285HeadBank_outgoingOwned

private theorem s6Step285HeadGv_distinct : (s6Step285HeadGvRow.sign::s6Step285HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step285HeadGv_owned : (s6Step285HeadGvRow.sign::s6Step285HeadGvRow.payload).toFinset⊆s6Step285HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step285HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (810≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step285HeadGv_reserved : s6Step285HeadGvBefore.reserve s6Step285HeadGvFresh.toFinset=some s6Step285HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step285HeadGvFresh,arenaWires]
  · norm_num [s6Step285HeadGvBefore,s6Step285HeadFAfter,s6Step285HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step285HeadGvAfter,s6Step285HeadGvBefore,s6Step285HeadFAfter,s6Step285HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step285HeadGv_checked : planRowResizeLog s6Step285HeadGvBefore s6Step285HeadGvRow 158 s6Step285HeadGvFresh=
    some (s6Step285HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 807],775⟩,growRow 775 s6Step285HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step285HeadGvBefore s6Step285HeadGvAfter s6Step285HeadGvRow 158 s6Step285HeadGvFresh
    s6Step285HeadGv_distinct s6Step285HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step285HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step285HeadGvRow.payload++s6Step285HeadGvFresh) s6Step285HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 807],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step285HeadBank_rows : planWindowRowsLog s6Step285HeadGBefore [(s6Step285HeadGRow,129),(s6Step285HeadFRow,129),(s6Step285HeadGvRow,158),(s6Step285HeadFvRow,158)] [s6Step285HeadGFresh,s6Step285HeadFFresh,s6Step285HeadGvFresh,s6Step285HeadFvFresh]=
    some (s6Step285HeadFvAfter,[s6Step285HeadGOut,s6Step285HeadFOut,s6Step285HeadGvOut,s6Step285HeadFvOut],(growRow 777 s6Step285HeadGFresh ++ (growRow 795 s6Step285HeadFFresh ++ (growRow 775 s6Step285HeadGvFresh ++ (growRow 776 s6Step285HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step285HeadFvAfter [] []=some (s6Step285HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step285HeadFvBefore s6Step285HeadFvAfter s6Step285HeadFvAfter
    s6Step285HeadFvRow s6Step285HeadFvOut 158 s6Step285HeadFvFresh [] [] []
    (growRow 776 s6Step285HeadFvFresh) ([]) s6Step285HeadFv_Incoming s6Step285HeadFv_checked h4 s6Step285HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step285HeadGvBefore s6Step285HeadGvAfter s6Step285HeadFvAfter
    s6Step285HeadGvRow s6Step285HeadGvOut 158 s6Step285HeadGvFresh [(s6Step285HeadFvRow,158)] [s6Step285HeadFvFresh] [s6Step285HeadFvOut]
    (growRow 775 s6Step285HeadGvFresh) ((growRow 776 s6Step285HeadFvFresh ++ [])) s6Step285HeadGv_Incoming s6Step285HeadGv_checked h3 s6Step285HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step285HeadFBefore s6Step285HeadFAfter s6Step285HeadFvAfter
    s6Step285HeadFRow s6Step285HeadFOut 129 s6Step285HeadFFresh [(s6Step285HeadGvRow,158),(s6Step285HeadFvRow,158)] [s6Step285HeadGvFresh,s6Step285HeadFvFresh] [s6Step285HeadGvOut,s6Step285HeadFvOut]
    (growRow 795 s6Step285HeadFFresh) ((growRow 775 s6Step285HeadGvFresh ++ (growRow 776 s6Step285HeadFvFresh ++ []))) s6Step285HeadF_Incoming s6Step285HeadF_checked h2 s6Step285HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step285HeadGBefore s6Step285HeadGAfter s6Step285HeadFvAfter
    s6Step285HeadGRow s6Step285HeadGOut 129 s6Step285HeadGFresh [(s6Step285HeadFRow,129),(s6Step285HeadGvRow,158),(s6Step285HeadFvRow,158)] [s6Step285HeadFFresh,s6Step285HeadGvFresh,s6Step285HeadFvFresh] [s6Step285HeadFOut,s6Step285HeadGvOut,s6Step285HeadFvOut]
    (growRow 777 s6Step285HeadGFresh) ((growRow 795 s6Step285HeadFFresh ++ (growRow 775 s6Step285HeadGvFresh ++ (growRow 776 s6Step285HeadFvFresh ++ [])))) s6Step285HeadG_Incoming s6Step285HeadG_checked h1 s6Step285HeadG_Outgoing
  exact h0

private theorem s6Step285HeadBank_checked : compileHmrBankResizeLog .headroom s6Step285HeadGBefore ⟨s6Step285HeadFRow,s6Step285HeadGRow,s6Step285HeadFvRow,s6Step285HeadGvRow⟩ ⟨129,129,158,158⟩ [s6Step285HeadGFresh,s6Step285HeadFFresh,s6Step285HeadGvFresh,s6Step285HeadFvFresh]=
    some (s6Step285HeadFvAfter,⟨s6Step285HeadFOut,s6Step285HeadGOut,s6Step285HeadFvOut,s6Step285HeadGvOut⟩,(growRow 777 s6Step285HeadGFresh ++ (growRow 795 s6Step285HeadFFresh ++ (growRow 775 s6Step285HeadGvFresh ++ (growRow 776 s6Step285HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step285HeadBank_rows]
  rfl

private theorem s6Step285Front_checked : compileHmrSourceFrontLog s6Step285EntryFBefore s6Step285FrontBank 128 157 ⟨128,127,158,157⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step285FrontLog=some s6Step285FrontPlan := by
  have pairEq : s6Step285FrontPair=⟨s6Step285HeadFRow,s6Step285HeadGRow,s6Step285HeadFvRow,s6Step285HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step285FrontHead=⟨s6Step285ExitFRow,s6Step285ExitGRow,s6Step285ExitFvRow,s6Step285ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step285Add0A=s6Step285FrontHead.f.wires := by decide +kernel
  have gEq : s6Step285Add0B=s6Step285FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step285Add1A=s6Step285FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step285Add1B=s6Step285FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step285EntryFBefore s6Step285FrontBank 128 157 ⟨128,127,158,157⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step285FrontLog s6Step285FrontPlan
  · exact s6Step285Front_entry
  · exact s6Step285EntryBank_checked
  · exact s6Step285Front_sigma
  · rfl
  · exact s6Step285Front_branch
  · rfl
  · simpa only [s6Step285FrontPlan,pairEq] using s6Step285HeadBank_checked
  · simpa only [s6Step285FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step285F4_checked
  · exact s6Step285Counter_checked
  · rfl
  · simpa only [s6Step285FrontPlan,headEq] using s6Step285ExitBank_checked

private theorem s6Step285Complete_explicit_checked : compileHmrEarlyStepLog s6Step285EntryFBefore s6Step285FrontBank 128 157 ⟨128,127,158,157⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step285CompleteLog=some s6Step285CompletePlan := by
  let Q := s6Step285EarlyControlPlan
  have hq := s6Step285EarlyControl_plan_checked
  have fv1 : s6Step285CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step285CompleteOut.fv.payload[2]?.getD s6Step285CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step285CompleteOut.fv.payload[3]?.getD s6Step285CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step285CompleteOut.fv.payload[4]?.getD s6Step285CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step285EntryFBefore s6Step285EarlyControlArena s6Step285FrontBank 128 157 ⟨128,127,158,157⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step285CompleteLog s6Step285FrontPlan Q
    s6Step285Front_checked s6Step285Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step285Complete_owned s6Step285Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step285EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 873 s6Step285CompleteOut.fv.second (s6Step285CompleteOut.fv.payload[2]?.getD s6Step285CompleteOut.fv.sign) (s6Step285CompleteOut.fv.payload[3]?.getD s6Step285CompleteOut.fv.sign) (s6Step285CompleteOut.fv.payload[4]?.getD s6Step285CompleteOut.fv.sign) 887 54 s6Step285EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep285Arena : Arena := s6Step285EntryFBefore
def s6PrivateStep285Bank : WindowBank := s6Step285FrontBank
def s6PrivateStep285Spec : HmrSourceWalkStepLog := ⟨128,157,⟨128,127,158,157⟩,54,.early s6Step285CompleteLog⟩
def s6PrivateStep285Plan : HmrSourceStepPlan := .early s6Step285CompletePlan
theorem s6PrivateStep285_source : s6PrivateStep285Spec=s6ObservedLogs272[13] := rfl
theorem s6PrivateStep285_checked : compileHmrSourceStepLog s6PrivateStep285Arena s6PrivateStep285Bank
    s6PrivateStep285Spec.fgWidth s6PrivateStep285Spec.vWidth s6PrivateStep285Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]
    6 498 285 s6PrivateStep285Spec.need none s6PrivateStep285Spec.log=some s6PrivateStep285Plan := by
  change compileHmrSourceStepLog s6Step285EntryFBefore s6Step285FrontBank 128 157 ⟨128,127,158,157⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 6 498 285 54 none (.early s6Step285CompleteLog)=some (.early s6Step285CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 285<498)]
  rw [s6Step285Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
