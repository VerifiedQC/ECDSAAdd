import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep284
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

private def s6Step286CompleteMoves : List (Wire × Wire) := [(856,126)]

private def s6Step286EarlyControlLog : HmrEarlyControlLog := ⟨[856, 858, 892, 887, 875],[779],[882],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step286FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [887], [], [873]],[[875], [892], [858], [813]],[[], [], [], []]⟩,[828],[807],[779],[882],[830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[779, 882, 830, 805]⟩

private def s6Step286CompleteLog : HmrEarlyStepLog := ⟨s6Step286FrontLog,s6Step286CompleteMoves,s6Step286EarlyControlLog⟩

private def s6Step286ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step286ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩

private def s6Step286ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],777⟩

private def s6Step286ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873],775⟩

private def s6Step286FrontOut : WindowBank := ⟨s6Step286ExitFOut,s6Step286ExitGOut,s6Step286ExitFvOut,s6Step286ExitGvOut⟩

private def s6Step286CompleteOut : WindowBank := s6Step286FrontOut.repacked s6Step286CompleteMoves

private def s6Step286EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step286EarlyControlPositiveArena,[779],s6Step286EarlyControlEqualityArena,[882],⟨⟨828,false⟩,[⟨⟨779,false⟩,882⟩]⟩⟩

private def s6Step286EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step286EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step286EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,856⟩,⟨⟨772,false⟩,858⟩,⟨⟨771,false⟩,892⟩,⟨⟨770,false⟩,887⟩,⟨⟨769,false⟩,875⟩]⟩

private def s6Step286EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step286EarlyControlZeroArena,s6Step286EarlyControlZeroPlan,s6Step286EarlyControlClassPlan,s6Step286EarlyControlFlagArena,s6Step286EarlyControlFittedArena,s6Step286EarlyControlHistoryArena,s6Step286EarlyControlSigmaArena,s6Step286EarlyControlOutputArena,s6Step286EarlyControlLog⟩

private def s6Step286CounterWork : List Wire := [779, 882, 830, 805]

private theorem s6Step286Counter_bounded : s6Step286CounterWork.toFinset⊆arenaWires := by norm_num [s6Step286CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step286HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286CounterDuring : Arena := ⟨s6Step286HeadFvAfter.live∪s6Step286CounterWork.toFinset,Finset.union_subset s6Step286HeadFvAfter.bounded s6Step286Counter_bounded⟩

private def s6Step286EntryFFresh : List Wire := []

private def s6Step286EntryFvFresh : List Wire := []

private def s6Step286EntryGFresh : List Wire := [887]

private def s6Step286EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286EntryGvFresh : List Wire := [873]

private def s6Step286ExitFExtra : List Wire := [892]

private def s6Step286ExitGExtra : List Wire := [126, 887, 875]

private def s6Step286ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286ExitGvExtra : List Wire := [858]

private def s6Step286Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286Add0Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step286Add0_bounded : s6Step286Add0Work.toFinset⊆arenaWires := by
  have h : s6Step286Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step286Add0During : Arena := ⟨s6Step286Add0Arena.live∪s6Step286Add0Work.toFinset,Finset.union_subset s6Step286Add0Arena.bounded s6Step286Add0_bounded⟩

private def s6Step286Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286Add1Work : List Wire := [830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step286Add1_bounded : s6Step286Add1Work.toFinset⊆arenaWires := by
  have h : s6Step286Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step286Add1During : Arena := ⟨s6Step286Add1Arena.live∪s6Step286Add1Work.toFinset,Finset.union_subset s6Step286Add1Arena.bounded s6Step286Add1_bounded⟩

private def s6Step286F4FlagArena : Arena := ⟨s6Step286HeadFvAfter.live∪{779},Finset.union_subset s6Step286HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step286F4Plan : HmrHybridF4Plan := ⟨s6Step286F4FlagArena,[779],s6Step286Add0Arena,[882],s6Step286Add0During,s6Step286Add0Work,s6Step286Add1During,s6Step286Add1Work⟩

private def s6Step286HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 892],795⟩

private def s6Step286HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩

private def s6Step286HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 887, 875],777⟩

private def s6Step286HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 858],775⟩

private def s6Step286FrontHead : WindowBank := ⟨s6Step286HeadFOut,s6Step286HeadGOut,s6Step286HeadFvOut,s6Step286HeadGvOut⟩

private def s6Step286EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step286EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩

private def s6Step286EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 887],777⟩

private def s6Step286EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873],775⟩

private def s6Step286FrontPair : WindowBank := ⟨s6Step286EntryFOut,s6Step286EntryGOut,s6Step286EntryFvOut,s6Step286EntryGvOut⟩

private def s6Step286FrontSigmaArena : Arena := ⟨s6Step286EntryGvAfter.live∪{828},Finset.union_subset s6Step286EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step286HeadFFresh : List Wire := [892]

private def s6Step286HeadFvFresh : List Wire := [813]

private def s6Step286HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286HeadGFresh : List Wire := [875]

private def s6Step286HeadGvFresh : List Wire := [858]

private def s6Step286FrontPlan : HmrSourceFront := ⟨s6Step286EntryGvAfter,s6Step286FrontPair,(growRow 795 s6Step286EntryFFresh ++ (growRow 777 s6Step286EntryGFresh ++ (growRow 776 s6Step286EntryFvFresh ++ (growRow 775 s6Step286EntryGvFresh ++ [])))),s6Step286FrontSigmaArena,[828],s6Step286HeadGBefore,[807],
  s6Step286HeadFvAfter,s6Step286FrontHead,(growRow 777 s6Step286HeadGFresh ++ (growRow 795 s6Step286HeadFFresh ++ (growRow 775 s6Step286HeadGvFresh ++ (growRow 776 s6Step286HeadFvFresh ++ [])))),s6Step286F4Plan,s6Step286CounterDuring,s6Step286CounterWork,s6Step286ExitGvAfter,s6Step286FrontOut,(shrinkRow 777 s6Step286ExitGExtra ++ (shrinkRow 795 s6Step286ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step286ExitGvExtra ++ []))))⟩

private def s6Step286CompletePlan : HmrEarlyStepPlan := ⟨s6Step286FrontPlan,s6Step286EarlyControlArena,s6Step286EarlyControlPlan,s6Step286CompleteMoves⟩

private theorem s6Step286Complete_apart : List.Disjoint (s6Step286CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [828, 807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := by
  have nd : ((s6Step286CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[828, 807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step286Complete_owned : (s6Step286CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step286EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step286CompleteMoveArena : Arena := ⟨s6Step286ExitGvAfter.live∪{126},Finset.union_subset s6Step286ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step286Complete_repack : s6Step286ExitGvAfter.checkRepack s6Step286CompleteMoves=some s6Step286EarlyControlArena := by
  have owned : 856∈s6Step286ExitGvAfter.live := by norm_num [s6Step286ExitGvAfter,arenaWires]
  have reserve : s6Step286ExitGvAfter.reserve {126}=some s6Step286CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step286ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step286CompleteMoveArena.retireSet {856}=s6Step286EarlyControlArena := by
    unfold Arena.retireSet s6Step286EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step286CompleteMoveArena,s6Step286ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step286CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step286CompleteMoveArena.retireSet {856}).checkRepack []=some s6Step286EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step286EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s6Step286EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step286EarlyControl_branch : compileHmrBranchRetirement s6Step286EarlyControlSigmaArena 807=some s6Step286EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step286EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step286EarlyControlSigmaArena s6Step286EarlyControlOutputArena (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [807] rfl rfl
    decide +kernel

private theorem s6Step286EarlyControl_classEqualityBorrow : s6Step286EarlyControlPositiveArena.checkBorrow (([828, 779] : List Wire).length-1) s6Step286EarlyControlLog.classWork=some s6Step286EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step286EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step286EarlyControlEqualityArena,s6Step286EarlyControlPositiveArena,s6Step286EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step286EarlyControl_classEqualityOwned : ([828, 779] : List Wire).toFinset⊆s6Step286EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EarlyControl_classEquality : compileHmrEqualityLog s6Step286EarlyControlPositiveArena [828, 779] 0 s6Step286EarlyControlLog.classWork=some (s6Step286EarlyControlEqualityArena,s6Step286EarlyControlLog.classWork,s6Step286EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step286EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step286EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step286EarlyControl_classOwned : ([769, 875, 828] : List Wire).toFinset⊆s6Step286EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EarlyControl_positiveBorrow : s6Step286EarlyControlZeroArena.checkBorrow (1) s6Step286EarlyControlLog.positiveWork=some s6Step286EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step286EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step286EarlyControlPositiveArena,s6Step286EarlyControlZeroArena,s6Step286EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step286EarlyControl_class : compileHmrSourceClassLog s6Step286EarlyControlZeroArena false 769 s6Step286EarlyControlZeroPlan.top 0 828 s6Step286EarlyControlLog.positiveWork s6Step286EarlyControlLog.classWork=some s6Step286EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step286EarlyControlClassPlan s6Step286EarlyControlZeroArena false 769 s6Step286EarlyControlZeroPlan.top 0 828
  constructor
  · decide +kernel
  · exact s6Step286EarlyControl_classOwned
  · exact s6Step286EarlyControl_positiveBorrow
  · exact s6Step286EarlyControl_classEquality

private theorem s6Step286EarlyControl_entryRecordOwned : ([807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step286EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EarlyControl_entrySigmaOwned : ([828, 254] : List Wire).toFinset⊆s6Step286EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EarlyControl_fitBorrow : s6Step286EarlyControlFlagArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step286EarlyControlLog.recordFresh=some s6Step286EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step286EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step286EarlyControlFittedArena,s6Step286EarlyControlFlagArena,s6Step286EarlyControlLog,arenaWires]

private theorem s6Step286EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step286EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EarlyControl_fit : compileHmrRecordGrowLog s6Step286EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step286EarlyControlLog.recordFresh=some s6Step286EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step286EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step286EarlyControl_fitBorrow

private theorem s6Step286EarlyControl_flagsBorrow : s6Step286EarlyControlEqualityArena.checkBorrow (6) s6Step286EarlyControlLog.flagWork=some s6Step286EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step286EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step286EarlyControlFlagArena,s6Step286EarlyControlEqualityArena,s6Step286EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step286EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s6Step286EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EarlyControl_flags : compileHmrFlagsLog s6Step286EarlyControlClassPlan.equalityArena s6Step286EarlyControlClassPlan.equality.top 253 252 251 s6Step286EarlyControlLog.flagWork=some s6Step286EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step286EarlyControl_flagsOwned⟩
  · exact s6Step286EarlyControl_flagsBorrow

private theorem s6Step286EarlyControl_historyBorrow : s6Step286EarlyControlArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step286EarlyControlLog.recordFresh=some s6Step286EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step286EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step286EarlyControlHistoryArena,s6Step286EarlyControlArena,s6Step286EarlyControlLog,arenaWires]

private theorem s6Step286EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step286EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EarlyControl_history : compileHmrRecordGrowLog s6Step286EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step286EarlyControlLog.recordFresh=some s6Step286EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step286EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step286EarlyControl_historyBorrow

private theorem s6Step286EarlyControl_sigmaOwned : ([254, 828] : List Wire).toFinset⊆s6Step286EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EarlyControl_sigmaReleaseOwned : ([828] : List Wire).toFinset⊆s6Step286EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EarlyControl_sigmaRelease : s6Step286EarlyControlHistoryArena.release {828} (fun _ => false)=some s6Step286EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step286EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step286EarlyControlHistoryArena s6Step286EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,856),(857,858),(859,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [828] rfl rfl
    decide +kernel

private theorem s6Step286EarlyControl_sigma : compileHmrSigmaDropLog s6Step286EarlyControlHistoryArena false 0 0 254 828 []=some s6Step286EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step286EarlyControl_sigmaOwned⟩
  · exact s6Step286EarlyControl_sigmaRelease

private theorem s6Step286EarlyControl_zeroBorrow : s6Step286EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step286EarlyControlLog.zeroWork=some s6Step286EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step286EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step286EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step286EarlyControlZeroArena,s6Step286EarlyControlArena,s6Step286EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step286EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step286EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step286EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EarlyControl_zero : compileHmrEqualityLog s6Step286EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step286EarlyControlLog.zeroWork=some (s6Step286EarlyControlZeroArena,s6Step286EarlyControlLog.zeroWork,s6Step286EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step286EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step286EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step286EarlyControl_logged : s6Step286EarlyControlPlan.Logged s6Step286EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 828 254 253 252 251 807 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step286EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step286EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step286EarlyControl_zero
  · exact s6Step286EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step286EarlyControl_flags
  · exact s6Step286EarlyControl_fit
  · exact s6Step286EarlyControl_history
  · exact s6Step286EarlyControl_sigma
  · exact s6Step286EarlyControl_branch

private theorem s6Step286EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step286EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 828 254 253 252 251 807 54 s6Step286EarlyControlLog=some s6Step286EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step286EarlyControlPlan s6Step286EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 828 254 253 252 251 807 54 s6Step286EarlyControl_logged

private def s6Step286EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(814,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,873),(874,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step286EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step286EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩

private def s6Step286EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126],777⟩

private def s6Step286EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855],775⟩

private def s6Step286FrontBank : WindowBank := ⟨s6Step286EntryFRow,s6Step286EntryGRow,s6Step286EntryFvRow,s6Step286EntryGvRow⟩

private def s6Step286Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 892, 795]

private def s6Step286Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 887, 875, 777]

private def s6Step286Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 776]

private def s6Step286Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 858, 775]

private theorem s6Step286Counter_apart : Disjoint s6Step286HeadFvAfter.live s6Step286CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step286HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286Counter_borrowed : s6Step286HeadFvAfter.checkBorrow 4 s6Step286CounterWork=some s6Step286CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step286HeadFvAfter s6Step286CounterDuring s6Step286CounterWork.toFinset s6Step286Counter_bounded s6Step286Counter_apart rfl

private theorem s6Step286Counter_owned : (828::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step286HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step286HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286Counter_checked : compileHmrCounterStepLog s6Step286HeadFvAfter true 828 [774, 773, 772, 771, 770, 769] s6Step286CounterWork=some s6Step286CounterDuring := by
  have owned : ∀q∈828::[774, 773, 772, 771, 770, 769],q∈s6Step286HeadFvAfter.live := fun q hq => s6Step286Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step286Counter_borrowed

private def s6Step286EntryFAfter : Arena := s6Step286EntryFBefore

private theorem s6Step286EntryBank_incomingDistinct : ([s6Step286EntryFRow,s6Step286EntryGRow,s6Step286EntryFvRow,s6Step286EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286EntryF_Incoming : rowsOwned s6Step286EntryFBefore [s6Step286EntryFRow,s6Step286EntryGRow,s6Step286EntryFvRow,s6Step286EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286EntryFRow,s6Step286EntryGRow,s6Step286EntryFvRow,s6Step286EntryGvRow] 0 s6Step286EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286EntryFBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(814,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,873),(874,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step286EntryBank_outgoingOwned : rowsOwned s6Step286EntryGvAfter [s6Step286EntryFOut,s6Step286EntryGOut,s6Step286EntryFvOut,s6Step286EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step286EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286EntryF_Outgoing : rowsOwned s6Step286EntryGvAfter [s6Step286EntryFOut,s6Step286EntryGOut,s6Step286EntryFvOut,s6Step286EntryGvOut] :=
  hmrRows_owned_drop s6Step286EntryGvAfter [s6Step286EntryFOut,s6Step286EntryGOut,s6Step286EntryFvOut,s6Step286EntryGvOut] 0 s6Step286EntryBank_outgoingOwned

private theorem s6Step286EntryF_distinct : (s6Step286EntryFRow.sign::s6Step286EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286EntryF_owned : (s6Step286EntryFRow.sign::s6Step286EntryFRow.payload).toFinset⊆s6Step286EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286EntryFBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(814,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,873),(874,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step286EntryF_reserved : s6Step286EntryFBefore.reserve s6Step286EntryFFresh.toFinset=some s6Step286EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step286EntryFFresh,arenaWires]
  · norm_num [s6Step286EntryFBefore,s6Step286EntryFFresh,arenaWires]
  · simp only [s6Step286EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step286EntryF_checked : planRowResizeLog s6Step286EntryFBefore s6Step286EntryFRow 128 s6Step286EntryFFresh=
    some (s6Step286EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩,growRow 795 s6Step286EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step286EntryFBefore s6Step286EntryFAfter s6Step286EntryFRow 128 s6Step286EntryFFresh
    s6Step286EntryF_distinct s6Step286EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step286EntryF_reserved
  have rowEq : WindowRow.mk (s6Step286EntryFRow.payload++s6Step286EntryFFresh) s6Step286EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step286EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286EntryFvAfter : Arena := s6Step286EntryGAfter

private def s6Step286EntryFvBefore : Arena := s6Step286EntryGAfter

private theorem s6Step286EntryFv_Incoming : rowsOwned s6Step286EntryFvBefore [s6Step286EntryFvRow,s6Step286EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286EntryFRow,s6Step286EntryGRow,s6Step286EntryFvRow,s6Step286EntryGvRow] 2 s6Step286EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286EntryFv_Outgoing : rowsOwned s6Step286EntryGvAfter [s6Step286EntryFvOut,s6Step286EntryGvOut] :=
  hmrRows_owned_drop s6Step286EntryGvAfter [s6Step286EntryFOut,s6Step286EntryGOut,s6Step286EntryFvOut,s6Step286EntryGvOut] 2 s6Step286EntryBank_outgoingOwned

private theorem s6Step286EntryFv_distinct : (s6Step286EntryFvRow.sign::s6Step286EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286EntryFv_owned : (s6Step286EntryFvRow.sign::s6Step286EntryFvRow.payload).toFinset⊆s6Step286EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EntryFv_reserved : s6Step286EntryFvBefore.reserve s6Step286EntryFvFresh.toFinset=some s6Step286EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step286EntryFvFresh,arenaWires]
  · norm_num [s6Step286EntryFvBefore,s6Step286EntryGAfter,s6Step286EntryFvFresh,arenaWires]
  · simp only [s6Step286EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step286EntryFv_checked : planRowResizeLog s6Step286EntryFvBefore s6Step286EntryFvRow 158 s6Step286EntryFvFresh=
    some (s6Step286EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩,growRow 776 s6Step286EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step286EntryFvBefore s6Step286EntryFvAfter s6Step286EntryFvRow 158 s6Step286EntryFvFresh
    s6Step286EntryFv_distinct s6Step286EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step286EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step286EntryFvRow.payload++s6Step286EntryFvFresh) s6Step286EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step286EntryGBefore : Arena := s6Step286EntryFBefore

private theorem s6Step286EntryG_Incoming : rowsOwned s6Step286EntryGBefore [s6Step286EntryGRow,s6Step286EntryFvRow,s6Step286EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286EntryFRow,s6Step286EntryGRow,s6Step286EntryFvRow,s6Step286EntryGvRow] 1 s6Step286EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286EntryGBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(814,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,873),(874,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step286EntryG_Outgoing : rowsOwned s6Step286EntryGvAfter [s6Step286EntryGOut,s6Step286EntryFvOut,s6Step286EntryGvOut] :=
  hmrRows_owned_drop s6Step286EntryGvAfter [s6Step286EntryFOut,s6Step286EntryGOut,s6Step286EntryFvOut,s6Step286EntryGvOut] 1 s6Step286EntryBank_outgoingOwned

private theorem s6Step286EntryG_distinct : (s6Step286EntryGRow.sign::s6Step286EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286EntryG_owned : (s6Step286EntryGRow.sign::s6Step286EntryGRow.payload).toFinset⊆s6Step286EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286EntryGBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(814,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,873),(874,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step286EntryG_reserved : s6Step286EntryGBefore.reserve s6Step286EntryGFresh.toFinset=some s6Step286EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step286EntryGFresh,arenaWires]
  · norm_num [s6Step286EntryGBefore,s6Step286EntryFBefore,s6Step286EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step286EntryGBefore s6Step286EntryGAfter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(814,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,873),(874,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) s6Step286EntryGFresh rfl rfl
    · norm_num [s6Step286EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step286EntryG_checked : planRowResizeLog s6Step286EntryGBefore s6Step286EntryGRow 128 s6Step286EntryGFresh=
    some (s6Step286EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 887],777⟩,growRow 777 s6Step286EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step286EntryGBefore s6Step286EntryGAfter s6Step286EntryGRow 128 s6Step286EntryGFresh
    s6Step286EntryG_distinct s6Step286EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step286EntryG_reserved
  have rowEq : WindowRow.mk (s6Step286EntryGRow.payload++s6Step286EntryGFresh) s6Step286EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 887],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step286EntryGvBefore : Arena := s6Step286EntryGAfter

private theorem s6Step286EntryGv_Incoming : rowsOwned s6Step286EntryGvBefore [s6Step286EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286EntryFRow,s6Step286EntryGRow,s6Step286EntryFvRow,s6Step286EntryGvRow] 3 s6Step286EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286EntryGv_Outgoing : rowsOwned s6Step286EntryGvAfter [s6Step286EntryGvOut] :=
  hmrRows_owned_drop s6Step286EntryGvAfter [s6Step286EntryFOut,s6Step286EntryGOut,s6Step286EntryFvOut,s6Step286EntryGvOut] 3 s6Step286EntryBank_outgoingOwned

private theorem s6Step286EntryGv_distinct : (s6Step286EntryGvRow.sign::s6Step286EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286EntryGv_owned : (s6Step286EntryGvRow.sign::s6Step286EntryGvRow.payload).toFinset⊆s6Step286EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286EntryGv_reserved : s6Step286EntryGvBefore.reserve s6Step286EntryGvFresh.toFinset=some s6Step286EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step286EntryGvFresh,arenaWires]
  · norm_num [s6Step286EntryGvBefore,s6Step286EntryGAfter,s6Step286EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step286EntryGvAfter,s6Step286EntryGvBefore,s6Step286EntryGAfter,s6Step286EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step286EntryGv_checked : planRowResizeLog s6Step286EntryGvBefore s6Step286EntryGvRow 158 s6Step286EntryGvFresh=
    some (s6Step286EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873],775⟩,growRow 775 s6Step286EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step286EntryGvBefore s6Step286EntryGvAfter s6Step286EntryGvRow 158 s6Step286EntryGvFresh
    s6Step286EntryGv_distinct s6Step286EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step286EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step286EntryGvRow.payload++s6Step286EntryGvFresh) s6Step286EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step286EntryBank_rows : planWindowRowsLog s6Step286EntryFBefore [(s6Step286EntryFRow,128),(s6Step286EntryGRow,128),(s6Step286EntryFvRow,158),(s6Step286EntryGvRow,158)] [s6Step286EntryFFresh,s6Step286EntryGFresh,s6Step286EntryFvFresh,s6Step286EntryGvFresh]=
    some (s6Step286EntryGvAfter,[s6Step286EntryFOut,s6Step286EntryGOut,s6Step286EntryFvOut,s6Step286EntryGvOut],(growRow 795 s6Step286EntryFFresh ++ (growRow 777 s6Step286EntryGFresh ++ (growRow 776 s6Step286EntryFvFresh ++ (growRow 775 s6Step286EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step286EntryGvAfter [] []=some (s6Step286EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step286EntryGvBefore s6Step286EntryGvAfter s6Step286EntryGvAfter
    s6Step286EntryGvRow s6Step286EntryGvOut 158 s6Step286EntryGvFresh [] [] []
    (growRow 775 s6Step286EntryGvFresh) ([]) s6Step286EntryGv_Incoming s6Step286EntryGv_checked h4 s6Step286EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step286EntryFvBefore s6Step286EntryFvAfter s6Step286EntryGvAfter
    s6Step286EntryFvRow s6Step286EntryFvOut 158 s6Step286EntryFvFresh [(s6Step286EntryGvRow,158)] [s6Step286EntryGvFresh] [s6Step286EntryGvOut]
    (growRow 776 s6Step286EntryFvFresh) ((growRow 775 s6Step286EntryGvFresh ++ [])) s6Step286EntryFv_Incoming s6Step286EntryFv_checked h3 s6Step286EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step286EntryGBefore s6Step286EntryGAfter s6Step286EntryGvAfter
    s6Step286EntryGRow s6Step286EntryGOut 128 s6Step286EntryGFresh [(s6Step286EntryFvRow,158),(s6Step286EntryGvRow,158)] [s6Step286EntryFvFresh,s6Step286EntryGvFresh] [s6Step286EntryFvOut,s6Step286EntryGvOut]
    (growRow 777 s6Step286EntryGFresh) ((growRow 776 s6Step286EntryFvFresh ++ (growRow 775 s6Step286EntryGvFresh ++ []))) s6Step286EntryG_Incoming s6Step286EntryG_checked h2 s6Step286EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step286EntryFBefore s6Step286EntryFAfter s6Step286EntryGvAfter
    s6Step286EntryFRow s6Step286EntryFOut 128 s6Step286EntryFFresh [(s6Step286EntryGRow,128),(s6Step286EntryFvRow,158),(s6Step286EntryGvRow,158)] [s6Step286EntryGFresh,s6Step286EntryFvFresh,s6Step286EntryGvFresh] [s6Step286EntryGOut,s6Step286EntryFvOut,s6Step286EntryGvOut]
    (growRow 795 s6Step286EntryFFresh) ((growRow 777 s6Step286EntryGFresh ++ (growRow 776 s6Step286EntryFvFresh ++ (growRow 775 s6Step286EntryGvFresh ++ [])))) s6Step286EntryF_Incoming s6Step286EntryF_checked h1 s6Step286EntryF_Outgoing
  exact h0

private theorem s6Step286EntryBank_checked : compileHmrBankResizeLog .entry s6Step286EntryFBefore ⟨s6Step286EntryFRow,s6Step286EntryGRow,s6Step286EntryFvRow,s6Step286EntryGvRow⟩ ⟨128,128,158,158⟩ [s6Step286EntryFFresh,s6Step286EntryGFresh,s6Step286EntryFvFresh,s6Step286EntryGvFresh]=
    some (s6Step286EntryGvAfter,⟨s6Step286EntryFOut,s6Step286EntryGOut,s6Step286EntryFvOut,s6Step286EntryGvOut⟩,(growRow 795 s6Step286EntryFFresh ++ (growRow 777 s6Step286EntryGFresh ++ (growRow 776 s6Step286EntryFvFresh ++ (growRow 775 s6Step286EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step286EntryBank_rows]
  rfl

private def s6Step286ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286ExitFBefore : Arena := s6Step286ExitGAfter

private def s6Step286ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 892],795⟩

private def s6Step286ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩

private def s6Step286ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 887, 875],777⟩

private def s6Step286ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 858],775⟩

private theorem s6Step286ExitBank_incomingDistinct : ([s6Step286ExitGRow,s6Step286ExitFRow,s6Step286ExitFvRow,s6Step286ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286ExitF_Incoming : rowsOwned s6Step286ExitFBefore [s6Step286ExitFRow,s6Step286ExitFvRow,s6Step286ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286ExitGRow,s6Step286ExitFRow,s6Step286ExitFvRow,s6Step286ExitGvRow] 1 s6Step286ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286ExitFBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286ExitBank_outgoingOwned : rowsOwned s6Step286ExitGvAfter [s6Step286ExitGOut,s6Step286ExitFOut,s6Step286ExitFvOut,s6Step286ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step286ExitGvAfter (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286ExitF_Outgoing : rowsOwned s6Step286ExitGvAfter [s6Step286ExitFOut,s6Step286ExitFvOut,s6Step286ExitGvOut] :=
  hmrRows_owned_drop s6Step286ExitGvAfter [s6Step286ExitGOut,s6Step286ExitFOut,s6Step286ExitFvOut,s6Step286ExitGvOut] 1 s6Step286ExitBank_outgoingOwned

private theorem s6Step286ExitF_distinct : (s6Step286ExitFRow.sign::s6Step286ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286ExitF_owned : (s6Step286ExitFRow.sign::s6Step286ExitFRow.payload).toFinset⊆s6Step286ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286ExitFBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286ExitF_retired : s6Step286ExitFBefore.retireSet s6Step286ExitFExtra.toFinset=s6Step286ExitFAfter := by
  unfold Arena.retireSet s6Step286ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step286ExitFBefore,s6Step286ExitGAfter,s6Step286ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step286ExitF_checked : planRowResizeLog s6Step286ExitFBefore s6Step286ExitFRow 128 []=
    some (s6Step286ExitFAfter,s6Step286ExitFOut,shrinkRow 795 s6Step286ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step286ExitFBefore s6Step286ExitFRow 128 s6Step286ExitF_distinct s6Step286ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step286ExitFRow.payload.take 128) s6Step286ExitFRow.sign=s6Step286ExitFOut := by decide +kernel
  have hi : s6Step286ExitFRow.payload.drop 128=s6Step286ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step286ExitF_retired] at result
  exact result

private def s6Step286ExitFvAfter : Arena := s6Step286ExitFAfter

private def s6Step286ExitFvBefore : Arena := s6Step286ExitFAfter

private theorem s6Step286ExitFv_Incoming : rowsOwned s6Step286ExitFvBefore [s6Step286ExitFvRow,s6Step286ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286ExitGRow,s6Step286ExitFRow,s6Step286ExitFvRow,s6Step286ExitGvRow] 2 s6Step286ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286ExitFvBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286ExitFv_Outgoing : rowsOwned s6Step286ExitGvAfter [s6Step286ExitFvOut,s6Step286ExitGvOut] :=
  hmrRows_owned_drop s6Step286ExitGvAfter [s6Step286ExitGOut,s6Step286ExitFOut,s6Step286ExitFvOut,s6Step286ExitGvOut] 2 s6Step286ExitBank_outgoingOwned

private theorem s6Step286ExitFv_distinct : (s6Step286ExitFvRow.sign::s6Step286ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286ExitFv_owned : (s6Step286ExitFvRow.sign::s6Step286ExitFvRow.payload).toFinset⊆s6Step286ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286ExitFvBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286ExitFv_reserved : s6Step286ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step286ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step286ExitFv_checked : planRowResizeLog s6Step286ExitFvBefore s6Step286ExitFvRow 159 []=
    some (s6Step286ExitFvAfter,s6Step286ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step286ExitFvBefore s6Step286ExitFvAfter s6Step286ExitFvRow 159 []
    s6Step286ExitFv_distinct s6Step286ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step286ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step286ExitFvRow.payload++[]) s6Step286ExitFvRow.sign=s6Step286ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step286ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step286ExitG_Incoming : rowsOwned s6Step286ExitGBefore [s6Step286ExitGRow,s6Step286ExitFRow,s6Step286ExitFvRow,s6Step286ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286ExitGRow,s6Step286ExitFRow,s6Step286ExitFvRow,s6Step286ExitGvRow] 0 s6Step286ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286ExitG_Outgoing : rowsOwned s6Step286ExitGvAfter [s6Step286ExitGOut,s6Step286ExitFOut,s6Step286ExitFvOut,s6Step286ExitGvOut] :=
  hmrRows_owned_drop s6Step286ExitGvAfter [s6Step286ExitGOut,s6Step286ExitFOut,s6Step286ExitFvOut,s6Step286ExitGvOut] 0 s6Step286ExitBank_outgoingOwned

private theorem s6Step286ExitG_distinct : (s6Step286ExitGRow.sign::s6Step286ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286ExitG_owned : (s6Step286ExitGRow.sign::s6Step286ExitGRow.payload).toFinset⊆s6Step286ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286ExitGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286ExitG_retired : s6Step286ExitGBefore.retireSet s6Step286ExitGExtra.toFinset=s6Step286ExitGAfter := by
  unfold Arena.retireSet s6Step286ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step286ExitGBefore,s6Step286ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step286ExitG_checked : planRowResizeLog s6Step286ExitGBefore s6Step286ExitGRow 126 []=
    some (s6Step286ExitGAfter,s6Step286ExitGOut,shrinkRow 777 s6Step286ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step286ExitGBefore s6Step286ExitGRow 126 s6Step286ExitG_distinct s6Step286ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step286ExitGRow.payload.take 126) s6Step286ExitGRow.sign=s6Step286ExitGOut := by decide +kernel
  have hi : s6Step286ExitGRow.payload.drop 126=s6Step286ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step286ExitG_retired] at result
  exact result

private def s6Step286ExitGvBefore : Arena := s6Step286ExitFAfter

private theorem s6Step286ExitGv_Incoming : rowsOwned s6Step286ExitGvBefore [s6Step286ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286ExitGRow,s6Step286ExitFRow,s6Step286ExitFvRow,s6Step286ExitGvRow] 3 s6Step286ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286ExitGvBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286ExitGv_Outgoing : rowsOwned s6Step286ExitGvAfter [s6Step286ExitGvOut] :=
  hmrRows_owned_drop s6Step286ExitGvAfter [s6Step286ExitGOut,s6Step286ExitFOut,s6Step286ExitFvOut,s6Step286ExitGvOut] 3 s6Step286ExitBank_outgoingOwned

private theorem s6Step286ExitGv_distinct : (s6Step286ExitGvRow.sign::s6Step286ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286ExitGv_owned : (s6Step286ExitGvRow.sign::s6Step286ExitGvRow.payload).toFinset⊆s6Step286ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286ExitGvBefore (fun q => (0≤q ∧ q<126) ∨ (127≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286ExitGv_retired : s6Step286ExitGvBefore.retireSet s6Step286ExitGvExtra.toFinset=s6Step286ExitGvAfter := by
  unfold Arena.retireSet s6Step286ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step286ExitGvBefore,s6Step286ExitFAfter,s6Step286ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step286ExitGv_checked : planRowResizeLog s6Step286ExitGvBefore s6Step286ExitGvRow 158 []=
    some (s6Step286ExitGvAfter,s6Step286ExitGvOut,shrinkRow 775 s6Step286ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step286ExitGvBefore s6Step286ExitGvRow 158 s6Step286ExitGv_distinct s6Step286ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step286ExitGvRow.payload.take 158) s6Step286ExitGvRow.sign=s6Step286ExitGvOut := by decide +kernel
  have hi : s6Step286ExitGvRow.payload.drop 158=s6Step286ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step286ExitGv_retired] at result
  exact result

private theorem s6Step286ExitBank_rows : planWindowRowsLog s6Step286ExitGBefore [(s6Step286ExitGRow,126),(s6Step286ExitFRow,128),(s6Step286ExitFvRow,159),(s6Step286ExitGvRow,158)] [[],[],[],[]]=
    some (s6Step286ExitGvAfter,[s6Step286ExitGOut,s6Step286ExitFOut,s6Step286ExitFvOut,s6Step286ExitGvOut],(shrinkRow 777 s6Step286ExitGExtra ++ (shrinkRow 795 s6Step286ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step286ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step286ExitGvAfter [] []=some (s6Step286ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step286ExitGvBefore s6Step286ExitGvAfter s6Step286ExitGvAfter
    s6Step286ExitGvRow s6Step286ExitGvOut 158 [] [] [] []
    (shrinkRow 775 s6Step286ExitGvExtra) ([]) s6Step286ExitGv_Incoming s6Step286ExitGv_checked h4 s6Step286ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step286ExitFvBefore s6Step286ExitFvAfter s6Step286ExitGvAfter
    s6Step286ExitFvRow s6Step286ExitFvOut 159 [] [(s6Step286ExitGvRow,158)] [[]] [s6Step286ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step286ExitGvExtra ++ [])) s6Step286ExitFv_Incoming s6Step286ExitFv_checked h3 s6Step286ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step286ExitFBefore s6Step286ExitFAfter s6Step286ExitGvAfter
    s6Step286ExitFRow s6Step286ExitFOut 128 [] [(s6Step286ExitFvRow,159),(s6Step286ExitGvRow,158)] [[],[]] [s6Step286ExitFvOut,s6Step286ExitGvOut]
    (shrinkRow 795 s6Step286ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step286ExitGvExtra ++ []))) s6Step286ExitF_Incoming s6Step286ExitF_checked h2 s6Step286ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step286ExitGBefore s6Step286ExitGAfter s6Step286ExitGvAfter
    s6Step286ExitGRow s6Step286ExitGOut 126 [] [(s6Step286ExitFRow,128),(s6Step286ExitFvRow,159),(s6Step286ExitGvRow,158)] [[],[],[]] [s6Step286ExitFOut,s6Step286ExitFvOut,s6Step286ExitGvOut]
    (shrinkRow 777 s6Step286ExitGExtra) ((shrinkRow 795 s6Step286ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step286ExitGvExtra ++ [])))) s6Step286ExitG_Incoming s6Step286ExitG_checked h1 s6Step286ExitG_Outgoing
  exact h0

private theorem s6Step286ExitBank_checked : compileHmrBankResizeLog .exit s6Step286ExitGBefore ⟨s6Step286ExitFRow,s6Step286ExitGRow,s6Step286ExitFvRow,s6Step286ExitGvRow⟩ ⟨128,126,159,158⟩ [[],[],[],[]]=
    some (s6Step286ExitGvAfter,⟨s6Step286ExitFOut,s6Step286ExitGOut,s6Step286ExitFvOut,s6Step286ExitGvOut⟩,(shrinkRow 777 s6Step286ExitGExtra ++ (shrinkRow 795 s6Step286ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step286ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step286ExitBank_rows]
  rfl

private theorem s6Step286Add0_apart : Disjoint s6Step286Add0Arena.live s6Step286Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step286Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286Add0_card : s6Step286Add0Arena.live.card=900 := by
  decide +kernel

private theorem s6Step286Add0_borrowed : s6Step286Add0Arena.checkBorrow (hmrHybridCount s6Step286Add0Arena s6Step286Add0B.length) s6Step286Add0Work=some s6Step286Add0During := by
  have len : s6Step286Add0Work.length=hmrHybridCount s6Step286Add0Arena s6Step286Add0B.length := by
    rw [hmrHybridCount,s6Step286Add0_card]
    decide +kernel
  have nd : s6Step286Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step286Add0Arena s6Step286Add0During s6Step286Add0Work.toFinset s6Step286Add0_bounded s6Step286Add0_apart rfl

private theorem s6Step286Add0_distinct : (779::807::882::(s6Step286Add0A++s6Step286Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286Add0_owned : (779::807::882::(s6Step286Add0A++s6Step286Add0B)).toFinset⊆s6Step286Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step286Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286Add0_checked : compileHmrHybridCinLog s6Step286Add0Arena 807 779 882 s6Step286Add0A s6Step286Add0B s6Step286Add0Work=some s6Step286Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step286Add0Arena s6Step286Add0During 807 779 882 s6Step286Add0A s6Step286Add0B s6Step286Add0Work
    (by decide +kernel) (by decide +kernel) s6Step286Add0_distinct
    (fun q hq => s6Step286Add0_owned (List.mem_toFinset.mpr hq)) s6Step286Add0_borrowed

private theorem s6Step286Add1_apart : Disjoint s6Step286Add1Arena.live s6Step286Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step286Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286Add1_card : s6Step286Add1Arena.live.card=900 := by
  decide +kernel

private theorem s6Step286Add1_borrowed : s6Step286Add1Arena.checkBorrow (hmrHybridCount s6Step286Add1Arena s6Step286Add1B.length) s6Step286Add1Work=some s6Step286Add1During := by
  have len : s6Step286Add1Work.length=hmrHybridCount s6Step286Add1Arena s6Step286Add1B.length := by
    rw [hmrHybridCount,s6Step286Add1_card]
    decide +kernel
  have nd : s6Step286Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step286Add1Arena s6Step286Add1During s6Step286Add1Work.toFinset s6Step286Add1_bounded s6Step286Add1_apart rfl

private theorem s6Step286Add1_distinct : (779::807::882::(s6Step286Add1A++s6Step286Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286Add1_owned : (779::807::882::(s6Step286Add1A++s6Step286Add1B)).toFinset⊆s6Step286Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step286Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286Add1_checked : compileHmrHybridCinLog s6Step286Add1Arena 807 779 882 s6Step286Add1A s6Step286Add1B s6Step286Add1Work=some s6Step286Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step286Add1Arena s6Step286Add1During 807 779 882 s6Step286Add1A s6Step286Add1B s6Step286Add1Work
    (by decide +kernel) (by decide +kernel) s6Step286Add1_distinct
    (fun q hq => s6Step286Add1_owned (List.mem_toFinset.mpr hq)) s6Step286Add1_borrowed

private theorem s6Step286F4_apart : Disjoint (s6Step286Add0A++s6Step286Add0B).toFinset (s6Step286Add1A++s6Step286Add1B).toFinset := by
  have nd : ((s6Step286Add0A++s6Step286Add0B)++(s6Step286Add1A++s6Step286Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step286F4_carry : s6Step286F4FlagArena.checkBorrow 1 [882]=some s6Step286Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step286F4FlagArena,s6Step286HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step286F4FlagArena,s6Step286HeadFvAfter,s6Step286Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step286F4_distinct : (828::807::779::882::((s6Step286Add0A++s6Step286Add1A)++(s6Step286Add0B++s6Step286Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286F4_flag : s6Step286HeadFvAfter.checkBorrow 1 [779]=some s6Step286F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step286HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step286F4_owned : (828::807::((s6Step286Add0A++s6Step286Add1A)++(s6Step286Add0B++s6Step286Add1B))).toFinset⊆s6Step286HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step286HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286F4_checked : compileHmrHybridF4Log s6Step286HeadFvAfter 828 807 s6Step286Add0A s6Step286Add0B s6Step286Add1A s6Step286Add1B [779] [882] s6Step286Add0Work s6Step286Add1Work=some s6Step286F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step286HeadFvAfter s6Step286F4FlagArena s6Step286Add0Arena s6Step286Add0During s6Step286Add1During 828 807
    s6Step286Add0A s6Step286Add0B s6Step286Add1A s6Step286Add1B [779] [882] s6Step286Add0Work s6Step286Add1Work
    (fun q hq => s6Step286F4_owned (List.mem_toFinset.mpr hq)) s6Step286F4_flag s6Step286F4_carry
    s6Step286F4_distinct s6Step286F4_apart s6Step286Add0_checked s6Step286Add1_checked

private theorem s6Step286Front_branch : s6Step286FrontSigmaArena.checkBorrow 1 [807]=some s6Step286HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step286FrontSigmaArena,s6Step286EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step286FrontSigmaArena,s6Step286EntryGvAfter,s6Step286HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step286Front_entry : HmrFrontEntryValid s6Step286EntryFBefore s6Step286FrontBank 128 158 ⟨128,126,159,158⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step286FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step286EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step286EntryFBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(814,815),(818,819),(821,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,873),(874,875),(876,882),(883,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step286FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step286Front_sigma : s6Step286EntryGvAfter.checkBorrow 1 [828]=some s6Step286FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step286EntryGvAfter,arenaWires]
  · rfl

private def s6Step286HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286HeadFBefore : Arena := s6Step286HeadGAfter

private def s6Step286HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383],795⟩

private def s6Step286HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809],776⟩

private def s6Step286HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 887],777⟩

private def s6Step286HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873],775⟩

private theorem s6Step286HeadBank_incomingDistinct : ([s6Step286HeadGRow,s6Step286HeadFRow,s6Step286HeadGvRow,s6Step286HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286HeadF_Incoming : rowsOwned s6Step286HeadFBefore [s6Step286HeadFRow,s6Step286HeadGvRow,s6Step286HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286HeadGRow,s6Step286HeadFRow,s6Step286HeadGvRow,s6Step286HeadFvRow] 1 s6Step286HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286HeadBank_outgoingOwned : rowsOwned s6Step286HeadFvAfter [s6Step286HeadGOut,s6Step286HeadFOut,s6Step286HeadGvOut,s6Step286HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step286HeadFvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286HeadF_Outgoing : rowsOwned s6Step286HeadFvAfter [s6Step286HeadFOut,s6Step286HeadGvOut,s6Step286HeadFvOut] :=
  hmrRows_owned_drop s6Step286HeadFvAfter [s6Step286HeadGOut,s6Step286HeadFOut,s6Step286HeadGvOut,s6Step286HeadFvOut] 1 s6Step286HeadBank_outgoingOwned

private theorem s6Step286HeadF_distinct : (s6Step286HeadFRow.sign::s6Step286HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286HeadF_owned : (s6Step286HeadFRow.sign::s6Step286HeadFRow.payload).toFinset⊆s6Step286HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286HeadF_reserved : s6Step286HeadFBefore.reserve s6Step286HeadFFresh.toFinset=some s6Step286HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step286HeadFFresh,arenaWires]
  · norm_num [s6Step286HeadFBefore,s6Step286HeadGAfter,s6Step286HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step286HeadFAfter,s6Step286HeadFBefore,s6Step286HeadGAfter,s6Step286HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step286HeadF_checked : planRowResizeLog s6Step286HeadFBefore s6Step286HeadFRow 129 s6Step286HeadFFresh=
    some (s6Step286HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 892],795⟩,growRow 795 s6Step286HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step286HeadFBefore s6Step286HeadFAfter s6Step286HeadFRow 129 s6Step286HeadFFresh
    s6Step286HeadF_distinct s6Step286HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step286HeadF_reserved
  have rowEq : WindowRow.mk (s6Step286HeadFRow.payload++s6Step286HeadFFresh) s6Step286HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 892],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step286HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step286HeadFvBefore : Arena := s6Step286HeadGvAfter

private theorem s6Step286HeadFv_Incoming : rowsOwned s6Step286HeadFvBefore [s6Step286HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286HeadGRow,s6Step286HeadFRow,s6Step286HeadGvRow,s6Step286HeadFvRow] 3 s6Step286HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286HeadFv_Outgoing : rowsOwned s6Step286HeadFvAfter [s6Step286HeadFvOut] :=
  hmrRows_owned_drop s6Step286HeadFvAfter [s6Step286HeadGOut,s6Step286HeadFOut,s6Step286HeadGvOut,s6Step286HeadFvOut] 3 s6Step286HeadBank_outgoingOwned

private theorem s6Step286HeadFv_distinct : (s6Step286HeadFvRow.sign::s6Step286HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286HeadFv_owned : (s6Step286HeadFvRow.sign::s6Step286HeadFvRow.payload).toFinset⊆s6Step286HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286HeadFv_reserved : s6Step286HeadFvBefore.reserve s6Step286HeadFvFresh.toFinset=some s6Step286HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step286HeadFvFresh,arenaWires]
  · norm_num [s6Step286HeadFvBefore,s6Step286HeadGvAfter,s6Step286HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step286HeadFvAfter,s6Step286HeadFvBefore,s6Step286HeadGvAfter,s6Step286HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step286HeadFv_checked : planRowResizeLog s6Step286HeadFvBefore s6Step286HeadFvRow 159 s6Step286HeadFvFresh=
    some (s6Step286HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩,growRow 776 s6Step286HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step286HeadFvBefore s6Step286HeadFvAfter s6Step286HeadFvRow 159 s6Step286HeadFvFresh
    s6Step286HeadFv_distinct s6Step286HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step286HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step286HeadFvRow.payload++s6Step286HeadFvFresh) s6Step286HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 856, 823, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step286HeadG_Incoming : rowsOwned s6Step286HeadGBefore [s6Step286HeadGRow,s6Step286HeadFRow,s6Step286HeadGvRow,s6Step286HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286HeadGRow,s6Step286HeadFRow,s6Step286HeadGvRow,s6Step286HeadFvRow] 0 s6Step286HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286HeadG_Outgoing : rowsOwned s6Step286HeadFvAfter [s6Step286HeadGOut,s6Step286HeadFOut,s6Step286HeadGvOut,s6Step286HeadFvOut] :=
  hmrRows_owned_drop s6Step286HeadFvAfter [s6Step286HeadGOut,s6Step286HeadFOut,s6Step286HeadGvOut,s6Step286HeadFvOut] 0 s6Step286HeadBank_outgoingOwned

private theorem s6Step286HeadG_distinct : (s6Step286HeadGRow.sign::s6Step286HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286HeadG_owned : (s6Step286HeadGRow.sign::s6Step286HeadGRow.payload).toFinset⊆s6Step286HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286HeadG_reserved : s6Step286HeadGBefore.reserve s6Step286HeadGFresh.toFinset=some s6Step286HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step286HeadGFresh,arenaWires]
  · norm_num [s6Step286HeadGBefore,s6Step286HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step286HeadGAfter,s6Step286HeadGBefore,s6Step286HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step286HeadG_checked : planRowResizeLog s6Step286HeadGBefore s6Step286HeadGRow 129 s6Step286HeadGFresh=
    some (s6Step286HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 887, 875],777⟩,growRow 777 s6Step286HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step286HeadGBefore s6Step286HeadGAfter s6Step286HeadGRow 129 s6Step286HeadGFresh
    s6Step286HeadG_distinct s6Step286HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step286HeadG_reserved
  have rowEq : WindowRow.mk (s6Step286HeadGRow.payload++s6Step286HeadGFresh) s6Step286HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 887, 875],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step286HeadGvBefore : Arena := s6Step286HeadFAfter

private theorem s6Step286HeadGv_Incoming : rowsOwned s6Step286HeadGvBefore [s6Step286HeadGvRow,s6Step286HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step286HeadGRow,s6Step286HeadFRow,s6Step286HeadGvRow,s6Step286HeadFvRow] 2 s6Step286HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step286HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step286HeadGv_Outgoing : rowsOwned s6Step286HeadFvAfter [s6Step286HeadGvOut,s6Step286HeadFvOut] :=
  hmrRows_owned_drop s6Step286HeadFvAfter [s6Step286HeadGOut,s6Step286HeadFOut,s6Step286HeadGvOut,s6Step286HeadFvOut] 2 s6Step286HeadBank_outgoingOwned

private theorem s6Step286HeadGv_distinct : (s6Step286HeadGvRow.sign::s6Step286HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step286HeadGv_owned : (s6Step286HeadGvRow.sign::s6Step286HeadGvRow.payload).toFinset⊆s6Step286HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step286HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step286HeadGv_reserved : s6Step286HeadGvBefore.reserve s6Step286HeadGvFresh.toFinset=some s6Step286HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step286HeadGvFresh,arenaWires]
  · norm_num [s6Step286HeadGvBefore,s6Step286HeadFAfter,s6Step286HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step286HeadGvAfter,s6Step286HeadGvBefore,s6Step286HeadFAfter,s6Step286HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step286HeadGv_checked : planRowResizeLog s6Step286HeadGvBefore s6Step286HeadGvRow 159 s6Step286HeadGvFresh=
    some (s6Step286HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 858],775⟩,growRow 775 s6Step286HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step286HeadGvBefore s6Step286HeadGvAfter s6Step286HeadGvRow 159 s6Step286HeadGvFresh
    s6Step286HeadGv_distinct s6Step286HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step286HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step286HeadGvRow.payload++s6Step286HeadGvFresh) s6Step286HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 789, 879, 922, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 858],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step286HeadBank_rows : planWindowRowsLog s6Step286HeadGBefore [(s6Step286HeadGRow,129),(s6Step286HeadFRow,129),(s6Step286HeadGvRow,159),(s6Step286HeadFvRow,159)] [s6Step286HeadGFresh,s6Step286HeadFFresh,s6Step286HeadGvFresh,s6Step286HeadFvFresh]=
    some (s6Step286HeadFvAfter,[s6Step286HeadGOut,s6Step286HeadFOut,s6Step286HeadGvOut,s6Step286HeadFvOut],(growRow 777 s6Step286HeadGFresh ++ (growRow 795 s6Step286HeadFFresh ++ (growRow 775 s6Step286HeadGvFresh ++ (growRow 776 s6Step286HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step286HeadFvAfter [] []=some (s6Step286HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step286HeadFvBefore s6Step286HeadFvAfter s6Step286HeadFvAfter
    s6Step286HeadFvRow s6Step286HeadFvOut 159 s6Step286HeadFvFresh [] [] []
    (growRow 776 s6Step286HeadFvFresh) ([]) s6Step286HeadFv_Incoming s6Step286HeadFv_checked h4 s6Step286HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step286HeadGvBefore s6Step286HeadGvAfter s6Step286HeadFvAfter
    s6Step286HeadGvRow s6Step286HeadGvOut 159 s6Step286HeadGvFresh [(s6Step286HeadFvRow,159)] [s6Step286HeadFvFresh] [s6Step286HeadFvOut]
    (growRow 775 s6Step286HeadGvFresh) ((growRow 776 s6Step286HeadFvFresh ++ [])) s6Step286HeadGv_Incoming s6Step286HeadGv_checked h3 s6Step286HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step286HeadFBefore s6Step286HeadFAfter s6Step286HeadFvAfter
    s6Step286HeadFRow s6Step286HeadFOut 129 s6Step286HeadFFresh [(s6Step286HeadGvRow,159),(s6Step286HeadFvRow,159)] [s6Step286HeadGvFresh,s6Step286HeadFvFresh] [s6Step286HeadGvOut,s6Step286HeadFvOut]
    (growRow 795 s6Step286HeadFFresh) ((growRow 775 s6Step286HeadGvFresh ++ (growRow 776 s6Step286HeadFvFresh ++ []))) s6Step286HeadF_Incoming s6Step286HeadF_checked h2 s6Step286HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step286HeadGBefore s6Step286HeadGAfter s6Step286HeadFvAfter
    s6Step286HeadGRow s6Step286HeadGOut 129 s6Step286HeadGFresh [(s6Step286HeadFRow,129),(s6Step286HeadGvRow,159),(s6Step286HeadFvRow,159)] [s6Step286HeadFFresh,s6Step286HeadGvFresh,s6Step286HeadFvFresh] [s6Step286HeadFOut,s6Step286HeadGvOut,s6Step286HeadFvOut]
    (growRow 777 s6Step286HeadGFresh) ((growRow 795 s6Step286HeadFFresh ++ (growRow 775 s6Step286HeadGvFresh ++ (growRow 776 s6Step286HeadFvFresh ++ [])))) s6Step286HeadG_Incoming s6Step286HeadG_checked h1 s6Step286HeadG_Outgoing
  exact h0

private theorem s6Step286HeadBank_checked : compileHmrBankResizeLog .headroom s6Step286HeadGBefore ⟨s6Step286HeadFRow,s6Step286HeadGRow,s6Step286HeadFvRow,s6Step286HeadGvRow⟩ ⟨129,129,159,159⟩ [s6Step286HeadGFresh,s6Step286HeadFFresh,s6Step286HeadGvFresh,s6Step286HeadFvFresh]=
    some (s6Step286HeadFvAfter,⟨s6Step286HeadFOut,s6Step286HeadGOut,s6Step286HeadFvOut,s6Step286HeadGvOut⟩,(growRow 777 s6Step286HeadGFresh ++ (growRow 795 s6Step286HeadFFresh ++ (growRow 775 s6Step286HeadGvFresh ++ (growRow 776 s6Step286HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step286HeadBank_rows]
  rfl

private theorem s6Step286Front_checked : compileHmrSourceFrontLog s6Step286EntryFBefore s6Step286FrontBank 128 158 ⟨128,126,159,158⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step286FrontLog=some s6Step286FrontPlan := by
  have pairEq : s6Step286FrontPair=⟨s6Step286HeadFRow,s6Step286HeadGRow,s6Step286HeadFvRow,s6Step286HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step286FrontHead=⟨s6Step286ExitFRow,s6Step286ExitGRow,s6Step286ExitFvRow,s6Step286ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step286Add0A=s6Step286FrontHead.f.wires := by decide +kernel
  have gEq : s6Step286Add0B=s6Step286FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step286Add1A=s6Step286FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step286Add1B=s6Step286FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step286EntryFBefore s6Step286FrontBank 128 158 ⟨128,126,159,158⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step286FrontLog s6Step286FrontPlan
  · exact s6Step286Front_entry
  · exact s6Step286EntryBank_checked
  · exact s6Step286Front_sigma
  · rfl
  · exact s6Step286Front_branch
  · rfl
  · simpa only [s6Step286FrontPlan,pairEq] using s6Step286HeadBank_checked
  · simpa only [s6Step286FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step286F4_checked
  · exact s6Step286Counter_checked
  · rfl
  · simpa only [s6Step286FrontPlan,headEq] using s6Step286ExitBank_checked

private theorem s6Step286Complete_explicit_checked : compileHmrEarlyStepLog s6Step286EntryFBefore s6Step286FrontBank 128 158 ⟨128,126,159,158⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step286CompleteLog=some s6Step286CompletePlan := by
  let Q := s6Step286EarlyControlPlan
  have hq := s6Step286EarlyControl_plan_checked
  have fv1 : s6Step286CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step286CompleteOut.fv.payload[2]?.getD s6Step286CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step286CompleteOut.fv.payload[3]?.getD s6Step286CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step286CompleteOut.fv.payload[4]?.getD s6Step286CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step286EntryFBefore s6Step286EarlyControlArena s6Step286FrontBank 128 158 ⟨128,126,159,158⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step286CompleteLog s6Step286FrontPlan Q
    s6Step286Front_checked s6Step286Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step286Complete_owned s6Step286Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step286EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 828 s6Step286CompleteOut.fv.second (s6Step286CompleteOut.fv.payload[2]?.getD s6Step286CompleteOut.fv.sign) (s6Step286CompleteOut.fv.payload[3]?.getD s6Step286CompleteOut.fv.sign) (s6Step286CompleteOut.fv.payload[4]?.getD s6Step286CompleteOut.fv.sign) 807 54 s6Step286EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep286Arena : Arena := s6Step286EntryFBefore
def s6PrivateStep286Bank : WindowBank := s6Step286FrontBank
def s6PrivateStep286Spec : HmrSourceWalkStepLog := ⟨128,158,⟨128,126,159,158⟩,54,.early s6Step286CompleteLog⟩
def s6PrivateStep286Plan : HmrSourceStepPlan := .early s6Step286CompletePlan
theorem s6PrivateStep286_source : s6PrivateStep286Spec=s6ObservedLogs272[14] := rfl
theorem s6PrivateStep286_checked : compileHmrSourceStepLog s6PrivateStep286Arena s6PrivateStep286Bank
    s6PrivateStep286Spec.fgWidth s6PrivateStep286Spec.vWidth s6PrivateStep286Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]
    6 498 286 s6PrivateStep286Spec.need none s6PrivateStep286Spec.log=some s6PrivateStep286Plan := by
  change compileHmrSourceStepLog s6Step286EntryFBefore s6Step286FrontBank 128 158 ⟨128,126,159,158⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 6 498 286 54 none (.early s6Step286CompleteLog)=some (.early s6Step286CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 286<498)]
  rw [s6Step286Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
