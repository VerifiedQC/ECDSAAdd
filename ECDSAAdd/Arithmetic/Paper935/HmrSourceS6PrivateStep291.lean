import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep289
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

private def s6Step291CompleteMoves : List (Wire × Wire) := [(778,124)]

private def s6Step291EarlyControlLog : HmrEarlyControlLog := ⟨[778, 892, 823, 879, 875],[828],[887],[830, 805, 817, 812, 915, 906],[]⟩

private def s6Step291FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[823], [892], [779], [858]],[[], [], [], []]⟩,[807],[922],[879],[875],[828, 887, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[828, 887, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 875, 828, 887]⟩

private def s6Step291CompleteLog : HmrEarlyStepLog := ⟨s6Step291FrontLog,s6Step291CompleteMoves,s6Step291EarlyControlLog⟩

private def s6Step291ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩

private def s6Step291ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858],776⟩

private def s6Step291ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123],777⟩

private def s6Step291ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779],775⟩

private def s6Step291FrontOut : WindowBank := ⟨s6Step291ExitFOut,s6Step291ExitGOut,s6Step291ExitFvOut,s6Step291ExitGvOut⟩

private def s6Step291CompleteOut : WindowBank := s6Step291FrontOut.repacked s6Step291CompleteMoves

private def s6Step291EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step291EarlyControlPositiveArena,[828],s6Step291EarlyControlEqualityArena,[887],⟨⟨807,false⟩,[⟨⟨828,false⟩,887⟩]⟩⟩

private def s6Step291EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step291EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨772,false⟩,892⟩,⟨⟨771,false⟩,823⟩,⟨⟨770,false⟩,879⟩,⟨⟨769,false⟩,875⟩]⟩

private def s6Step291EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step291EarlyControlZeroArena,s6Step291EarlyControlZeroPlan,s6Step291EarlyControlClassPlan,s6Step291EarlyControlFlagArena,s6Step291EarlyControlFittedArena,s6Step291EarlyControlHistoryArena,s6Step291EarlyControlSigmaArena,s6Step291EarlyControlOutputArena,s6Step291EarlyControlLog⟩

private def s6Step291CounterWork : List Wire := [879, 875, 828, 887]

private theorem s6Step291Counter_bounded : s6Step291CounterWork.toFinset⊆arenaWires := by norm_num [s6Step291CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step291HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291CounterDuring : Arena := ⟨s6Step291HeadFvAfter.live∪s6Step291CounterWork.toFinset,Finset.union_subset s6Step291HeadFvAfter.bounded s6Step291Counter_bounded⟩

private def s6Step291EntryFFresh : List Wire := []

private def s6Step291EntryFvFresh : List Wire := []

private def s6Step291EntryGFresh : List Wire := []

private def s6Step291EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step291EntryGvAfter : Arena := s6Step291EntryFBefore

private def s6Step291EntryGvFresh : List Wire := []

private def s6Step291ExitFExtra : List Wire := [892]

private def s6Step291ExitGExtra : List Wire := [124, 823]

private def s6Step291ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291ExitGvAfter : Arena := s6Step291ExitFAfter

private def s6Step291Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291Add0Work : List Wire := [828, 887, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step291Add0_bounded : s6Step291Add0Work.toFinset⊆arenaWires := by
  have h : s6Step291Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step291Add0During : Arena := ⟨s6Step291Add0Arena.live∪s6Step291Add0Work.toFinset,Finset.union_subset s6Step291Add0Arena.bounded s6Step291Add0_bounded⟩

private def s6Step291Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291Add1Work : List Wire := [828, 887, 830, 805, 817, 812, 915, 906, 899, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step291Add1_bounded : s6Step291Add1Work.toFinset⊆arenaWires := by
  have h : s6Step291Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step291Add1During : Arena := ⟨s6Step291Add1Arena.live∪s6Step291Add1Work.toFinset,Finset.union_subset s6Step291Add1Arena.bounded s6Step291Add1_bounded⟩

private def s6Step291F4FlagArena : Arena := ⟨s6Step291HeadFvAfter.live∪{879},Finset.union_subset s6Step291HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step291F4Plan : HmrHybridF4Plan := ⟨s6Step291F4FlagArena,[879],s6Step291Add0Arena,[875],s6Step291Add0During,s6Step291Add0Work,s6Step291Add1During,s6Step291Add1Work⟩

private def s6Step291HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 892],795⟩

private def s6Step291HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858],776⟩

private def s6Step291HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 823],777⟩

private def s6Step291HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779],775⟩

private def s6Step291FrontHead : WindowBank := ⟨s6Step291HeadFOut,s6Step291HeadGOut,s6Step291HeadFvOut,s6Step291HeadGvOut⟩

private def s6Step291EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩

private def s6Step291EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step291EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],777⟩

private def s6Step291EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789],775⟩

private def s6Step291FrontPair : WindowBank := ⟨s6Step291EntryFOut,s6Step291EntryGOut,s6Step291EntryFvOut,s6Step291EntryGvOut⟩

private def s6Step291FrontSigmaArena : Arena := ⟨s6Step291EntryGvAfter.live∪{807},Finset.union_subset s6Step291EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step291HeadFFresh : List Wire := [892]

private def s6Step291HeadFvFresh : List Wire := [858]

private def s6Step291HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step291HeadGFresh : List Wire := [823]

private def s6Step291HeadGvFresh : List Wire := [779]

private def s6Step291FrontPlan : HmrSourceFront := ⟨s6Step291EntryGvAfter,s6Step291FrontPair,(growRow 795 s6Step291EntryFFresh ++ (growRow 777 s6Step291EntryGFresh ++ (growRow 776 s6Step291EntryFvFresh ++ (growRow 775 s6Step291EntryGvFresh ++ [])))),s6Step291FrontSigmaArena,[807],s6Step291HeadGBefore,[922],
  s6Step291HeadFvAfter,s6Step291FrontHead,(growRow 777 s6Step291HeadGFresh ++ (growRow 795 s6Step291HeadFFresh ++ (growRow 775 s6Step291HeadGvFresh ++ (growRow 776 s6Step291HeadFvFresh ++ [])))),s6Step291F4Plan,s6Step291CounterDuring,s6Step291CounterWork,s6Step291ExitGvAfter,s6Step291FrontOut,(shrinkRow 777 s6Step291ExitGExtra ++ (shrinkRow 795 s6Step291ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step291CompletePlan : HmrEarlyStepPlan := ⟨s6Step291FrontPlan,s6Step291EarlyControlArena,s6Step291EarlyControlPlan,s6Step291CompleteMoves⟩

private theorem s6Step291Complete_apart : List.Disjoint (s6Step291CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [807, 922, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := by
  have nd : ((s6Step291CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[807, 922, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step291Complete_owned : (s6Step291CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step291EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private def s6Step291CompleteMoveArena : Arena := ⟨s6Step291ExitGvAfter.live∪{124},Finset.union_subset s6Step291ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step291Complete_repack : s6Step291ExitGvAfter.checkRepack s6Step291CompleteMoves=some s6Step291EarlyControlArena := by
  have owned : 778∈s6Step291ExitGvAfter.live := by norm_num [s6Step291ExitGvAfter,s6Step291ExitFAfter,arenaWires]
  have reserve : s6Step291ExitGvAfter.reserve {124}=some s6Step291CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step291ExitGvAfter,s6Step291ExitFAfter,arenaWires]
    · rfl
  have retired : s6Step291CompleteMoveArena.retireSet {778}=s6Step291EarlyControlArena := by
    unfold Arena.retireSet s6Step291EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step291CompleteMoveArena,s6Step291ExitGvAfter,s6Step291ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step291CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step291CompleteMoveArena.retireSet {778}).checkRepack []=some s6Step291EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step291EarlyControl_branchOwned : ([922] : List Wire).toFinset⊆s6Step291EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291EarlyControl_branch : compileHmrBranchRetirement s6Step291EarlyControlSigmaArena 922=some s6Step291EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step291EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step291EarlyControlSigmaArena s6Step291EarlyControlOutputArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) (fun q => ([(0,778),(779,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [922] rfl rfl
    decide +kernel

private theorem s6Step291EarlyControl_classEqualityBorrow : s6Step291EarlyControlPositiveArena.checkBorrow (([807, 828] : List Wire).length-1) s6Step291EarlyControlLog.classWork=some s6Step291EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step291EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step291EarlyControlEqualityArena,s6Step291EarlyControlPositiveArena,s6Step291EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step291EarlyControl_classEqualityOwned : ([807, 828] : List Wire).toFinset⊆s6Step291EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291EarlyControl_classEquality : compileHmrEqualityLog s6Step291EarlyControlPositiveArena [807, 828] 0 s6Step291EarlyControlLog.classWork=some (s6Step291EarlyControlEqualityArena,s6Step291EarlyControlLog.classWork,s6Step291EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step291EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step291EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step291EarlyControl_classOwned : ([769, 875, 807] : List Wire).toFinset⊆s6Step291EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291EarlyControl_positiveBorrow : s6Step291EarlyControlZeroArena.checkBorrow (1) s6Step291EarlyControlLog.positiveWork=some s6Step291EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step291EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step291EarlyControlPositiveArena,s6Step291EarlyControlZeroArena,s6Step291EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step291EarlyControl_class : compileHmrSourceClassLog s6Step291EarlyControlZeroArena false 769 s6Step291EarlyControlZeroPlan.top 0 807 s6Step291EarlyControlLog.positiveWork s6Step291EarlyControlLog.classWork=some s6Step291EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step291EarlyControlClassPlan s6Step291EarlyControlZeroArena false 769 s6Step291EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s6Step291EarlyControl_classOwned
  · exact s6Step291EarlyControl_positiveBorrow
  · exact s6Step291EarlyControl_classEquality

private theorem s6Step291EarlyControl_entryRecordOwned : ([922, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step291EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s6Step291EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291EarlyControl_fitBorrow : s6Step291EarlyControlFlagArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step291EarlyControlLog.recordFresh=some s6Step291EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step291EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step291EarlyControlFittedArena,s6Step291EarlyControlFlagArena,s6Step291EarlyControlLog,arenaWires]

private theorem s6Step291EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step291EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291EarlyControl_fit : compileHmrRecordGrowLog s6Step291EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step291EarlyControlLog.recordFresh=some s6Step291EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step291EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step291EarlyControl_fitBorrow

private theorem s6Step291EarlyControl_flagsBorrow : s6Step291EarlyControlEqualityArena.checkBorrow (6) s6Step291EarlyControlLog.flagWork=some s6Step291EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step291EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step291EarlyControlFlagArena,s6Step291EarlyControlEqualityArena,s6Step291EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step291EarlyControl_flagsOwned : ([887, 253, 252, 251] : List Wire).toFinset⊆s6Step291EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291EarlyControl_flags : compileHmrFlagsLog s6Step291EarlyControlClassPlan.equalityArena s6Step291EarlyControlClassPlan.equality.top 253 252 251 s6Step291EarlyControlLog.flagWork=some s6Step291EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step291EarlyControl_flagsOwned⟩
  · exact s6Step291EarlyControl_flagsBorrow

private theorem s6Step291EarlyControl_historyBorrow : s6Step291EarlyControlArena.checkBorrow ((54-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).length)) s6Step291EarlyControlLog.recordFresh=some s6Step291EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step291EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step291EarlyControlHistoryArena,s6Step291EarlyControlArena,s6Step291EarlyControlLog,arenaWires]

private theorem s6Step291EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] : List Wire).toFinset⊆s6Step291EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291EarlyControl_history : compileHmrRecordGrowLog s6Step291EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step291EarlyControlLog.recordFresh=some s6Step291EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step291EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step291EarlyControl_historyBorrow

private theorem s6Step291EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s6Step291EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s6Step291EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291EarlyControl_sigmaRelease : s6Step291EarlyControlHistoryArena.release {807} (fun _ => false)=some s6Step291EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step291EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step291EarlyControlSigmaArena,s6Step291EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step291EarlyControl_sigma : compileHmrSigmaDropLog s6Step291EarlyControlHistoryArena false 0 0 254 807 []=some s6Step291EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step291EarlyControl_sigmaOwned⟩
  · exact s6Step291EarlyControl_sigmaRelease

private theorem s6Step291EarlyControl_zeroBorrow : s6Step291EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step291EarlyControlLog.zeroWork=some s6Step291EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step291EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step291EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
      decide +kernel
    · ext q
      simp [s6Step291EarlyControlZeroArena,s6Step291EarlyControlArena,s6Step291EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step291EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step291EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step291EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291EarlyControl_zero : compileHmrEqualityLog s6Step291EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step291EarlyControlLog.zeroWork=some (s6Step291EarlyControlZeroArena,s6Step291EarlyControlLog.zeroWork,s6Step291EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step291EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step291EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step291EarlyControl_logged : s6Step291EarlyControlPlan.Logged s6Step291EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 254 253 252 251 922 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step291EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step291EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step291EarlyControl_zero
  · exact s6Step291EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step291EarlyControl_flags
  · exact s6Step291EarlyControl_fit
  · exact s6Step291EarlyControl_history
  · exact s6Step291EarlyControl_sigma
  · exact s6Step291EarlyControl_branch

private theorem s6Step291EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step291EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 254 253 252 251 922 54 s6Step291EarlyControlLog=some s6Step291EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step291EarlyControlPlan s6Step291EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 254 253 252 251 922 54 s6Step291EarlyControl_logged

private def s6Step291EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩

private def s6Step291EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step291EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],777⟩

private def s6Step291EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789],775⟩

private def s6Step291FrontBank : WindowBank := ⟨s6Step291EntryFRow,s6Step291EntryGRow,s6Step291EntryFvRow,s6Step291EntryGvRow⟩

private def s6Step291Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 892, 795]

private def s6Step291Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 823, 777]

private def s6Step291Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858, 776]

private def s6Step291Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779, 775]

private theorem s6Step291Counter_apart : Disjoint s6Step291HeadFvAfter.live s6Step291CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step291HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291Counter_borrowed : s6Step291HeadFvAfter.checkBorrow 4 s6Step291CounterWork=some s6Step291CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step291HeadFvAfter s6Step291CounterDuring s6Step291CounterWork.toFinset s6Step291Counter_bounded s6Step291Counter_apart rfl

private theorem s6Step291Counter_owned : (807::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step291HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step291HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291Counter_checked : compileHmrCounterStepLog s6Step291HeadFvAfter true 807 [774, 773, 772, 771, 770, 769] s6Step291CounterWork=some s6Step291CounterDuring := by
  have owned : ∀q∈807::[774, 773, 772, 771, 770, 769],q∈s6Step291HeadFvAfter.live := fun q hq => s6Step291Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step291Counter_borrowed

private def s6Step291EntryFAfter : Arena := s6Step291EntryFBefore

private theorem s6Step291EntryBank_incomingDistinct : ([s6Step291EntryFRow,s6Step291EntryGRow,s6Step291EntryFvRow,s6Step291EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291EntryF_Incoming : rowsOwned s6Step291EntryFBefore [s6Step291EntryFRow,s6Step291EntryGRow,s6Step291EntryFvRow,s6Step291EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291EntryFRow,s6Step291EntryGRow,s6Step291EntryFvRow,s6Step291EntryGvRow] 0 s6Step291EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291EntryFBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step291EntryBank_outgoingOwned : rowsOwned s6Step291EntryGvAfter [s6Step291EntryFOut,s6Step291EntryGOut,s6Step291EntryFvOut,s6Step291EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step291EntryGvAfter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step291EntryF_Outgoing : rowsOwned s6Step291EntryGvAfter [s6Step291EntryFOut,s6Step291EntryGOut,s6Step291EntryFvOut,s6Step291EntryGvOut] :=
  hmrRows_owned_drop s6Step291EntryGvAfter [s6Step291EntryFOut,s6Step291EntryGOut,s6Step291EntryFvOut,s6Step291EntryGvOut] 0 s6Step291EntryBank_outgoingOwned

private theorem s6Step291EntryF_distinct : (s6Step291EntryFRow.sign::s6Step291EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291EntryF_owned : (s6Step291EntryFRow.sign::s6Step291EntryFRow.payload).toFinset⊆s6Step291EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291EntryFBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step291EntryF_reserved : s6Step291EntryFBefore.reserve s6Step291EntryFFresh.toFinset=some s6Step291EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step291EntryFFresh,arenaWires]
  · norm_num [s6Step291EntryFBefore,s6Step291EntryFFresh,arenaWires]
  · simp only [s6Step291EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step291EntryF_checked : planRowResizeLog s6Step291EntryFBefore s6Step291EntryFRow 125 s6Step291EntryFFresh=
    some (s6Step291EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩,growRow 795 s6Step291EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step291EntryFBefore s6Step291EntryFAfter s6Step291EntryFRow 125 s6Step291EntryFFresh
    s6Step291EntryF_distinct s6Step291EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step291EntryF_reserved
  have rowEq : WindowRow.mk (s6Step291EntryFRow.payload++s6Step291EntryFFresh) s6Step291EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step291EntryFvAfter : Arena := s6Step291EntryFBefore

private def s6Step291EntryFvBefore : Arena := s6Step291EntryFBefore

private theorem s6Step291EntryFv_Incoming : rowsOwned s6Step291EntryFvBefore [s6Step291EntryFvRow,s6Step291EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291EntryFRow,s6Step291EntryGRow,s6Step291EntryFvRow,s6Step291EntryGvRow] 2 s6Step291EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291EntryFvBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step291EntryFv_Outgoing : rowsOwned s6Step291EntryGvAfter [s6Step291EntryFvOut,s6Step291EntryGvOut] :=
  hmrRows_owned_drop s6Step291EntryGvAfter [s6Step291EntryFOut,s6Step291EntryGOut,s6Step291EntryFvOut,s6Step291EntryGvOut] 2 s6Step291EntryBank_outgoingOwned

private theorem s6Step291EntryFv_distinct : (s6Step291EntryFvRow.sign::s6Step291EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291EntryFv_owned : (s6Step291EntryFvRow.sign::s6Step291EntryFvRow.payload).toFinset⊆s6Step291EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291EntryFvBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step291EntryFv_reserved : s6Step291EntryFvBefore.reserve s6Step291EntryFvFresh.toFinset=some s6Step291EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step291EntryFvFresh,arenaWires]
  · norm_num [s6Step291EntryFvBefore,s6Step291EntryFBefore,s6Step291EntryFvFresh,arenaWires]
  · simp only [s6Step291EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step291EntryFv_checked : planRowResizeLog s6Step291EntryFvBefore s6Step291EntryFvRow 160 s6Step291EntryFvFresh=
    some (s6Step291EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩,growRow 776 s6Step291EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step291EntryFvBefore s6Step291EntryFvAfter s6Step291EntryFvRow 160 s6Step291EntryFvFresh
    s6Step291EntryFv_distinct s6Step291EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step291EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step291EntryFvRow.payload++s6Step291EntryFvFresh) s6Step291EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step291EntryGAfter : Arena := s6Step291EntryFBefore

private def s6Step291EntryGBefore : Arena := s6Step291EntryFBefore

private theorem s6Step291EntryG_Incoming : rowsOwned s6Step291EntryGBefore [s6Step291EntryGRow,s6Step291EntryFvRow,s6Step291EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291EntryFRow,s6Step291EntryGRow,s6Step291EntryFvRow,s6Step291EntryGvRow] 1 s6Step291EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291EntryGBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step291EntryG_Outgoing : rowsOwned s6Step291EntryGvAfter [s6Step291EntryGOut,s6Step291EntryFvOut,s6Step291EntryGvOut] :=
  hmrRows_owned_drop s6Step291EntryGvAfter [s6Step291EntryFOut,s6Step291EntryGOut,s6Step291EntryFvOut,s6Step291EntryGvOut] 1 s6Step291EntryBank_outgoingOwned

private theorem s6Step291EntryG_distinct : (s6Step291EntryGRow.sign::s6Step291EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291EntryG_owned : (s6Step291EntryGRow.sign::s6Step291EntryGRow.payload).toFinset⊆s6Step291EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291EntryGBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step291EntryG_reserved : s6Step291EntryGBefore.reserve s6Step291EntryGFresh.toFinset=some s6Step291EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step291EntryGFresh,arenaWires]
  · norm_num [s6Step291EntryGBefore,s6Step291EntryFBefore,s6Step291EntryGFresh,arenaWires]
  · simp only [s6Step291EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step291EntryG_checked : planRowResizeLog s6Step291EntryGBefore s6Step291EntryGRow 125 s6Step291EntryGFresh=
    some (s6Step291EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],777⟩,growRow 777 s6Step291EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step291EntryGBefore s6Step291EntryGAfter s6Step291EntryGRow 125 s6Step291EntryGFresh
    s6Step291EntryG_distinct s6Step291EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step291EntryG_reserved
  have rowEq : WindowRow.mk (s6Step291EntryGRow.payload++s6Step291EntryGFresh) s6Step291EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step291EntryGvBefore : Arena := s6Step291EntryFBefore

private theorem s6Step291EntryGv_Incoming : rowsOwned s6Step291EntryGvBefore [s6Step291EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291EntryFRow,s6Step291EntryGRow,s6Step291EntryFvRow,s6Step291EntryGvRow] 3 s6Step291EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291EntryGvBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step291EntryGv_Outgoing : rowsOwned s6Step291EntryGvAfter [s6Step291EntryGvOut] :=
  hmrRows_owned_drop s6Step291EntryGvAfter [s6Step291EntryFOut,s6Step291EntryGOut,s6Step291EntryFvOut,s6Step291EntryGvOut] 3 s6Step291EntryBank_outgoingOwned

private theorem s6Step291EntryGv_distinct : (s6Step291EntryGvRow.sign::s6Step291EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291EntryGv_owned : (s6Step291EntryGvRow.sign::s6Step291EntryGvRow.payload).toFinset⊆s6Step291EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291EntryGvBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step291EntryGv_reserved : s6Step291EntryGvBefore.reserve s6Step291EntryGvFresh.toFinset=some s6Step291EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step291EntryGvFresh,arenaWires]
  · norm_num [s6Step291EntryGvBefore,s6Step291EntryFBefore,s6Step291EntryGvFresh,arenaWires]
  · simp only [s6Step291EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step291EntryGv_checked : planRowResizeLog s6Step291EntryGvBefore s6Step291EntryGvRow 160 s6Step291EntryGvFresh=
    some (s6Step291EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789],775⟩,growRow 775 s6Step291EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step291EntryGvBefore s6Step291EntryGvAfter s6Step291EntryGvRow 160 s6Step291EntryGvFresh
    s6Step291EntryGv_distinct s6Step291EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step291EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step291EntryGvRow.payload++s6Step291EntryGvFresh) s6Step291EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step291EntryBank_rows : planWindowRowsLog s6Step291EntryFBefore [(s6Step291EntryFRow,125),(s6Step291EntryGRow,125),(s6Step291EntryFvRow,160),(s6Step291EntryGvRow,160)] [s6Step291EntryFFresh,s6Step291EntryGFresh,s6Step291EntryFvFresh,s6Step291EntryGvFresh]=
    some (s6Step291EntryGvAfter,[s6Step291EntryFOut,s6Step291EntryGOut,s6Step291EntryFvOut,s6Step291EntryGvOut],(growRow 795 s6Step291EntryFFresh ++ (growRow 777 s6Step291EntryGFresh ++ (growRow 776 s6Step291EntryFvFresh ++ (growRow 775 s6Step291EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step291EntryGvAfter [] []=some (s6Step291EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step291EntryGvBefore s6Step291EntryGvAfter s6Step291EntryGvAfter
    s6Step291EntryGvRow s6Step291EntryGvOut 160 s6Step291EntryGvFresh [] [] []
    (growRow 775 s6Step291EntryGvFresh) ([]) s6Step291EntryGv_Incoming s6Step291EntryGv_checked h4 s6Step291EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step291EntryFvBefore s6Step291EntryFvAfter s6Step291EntryGvAfter
    s6Step291EntryFvRow s6Step291EntryFvOut 160 s6Step291EntryFvFresh [(s6Step291EntryGvRow,160)] [s6Step291EntryGvFresh] [s6Step291EntryGvOut]
    (growRow 776 s6Step291EntryFvFresh) ((growRow 775 s6Step291EntryGvFresh ++ [])) s6Step291EntryFv_Incoming s6Step291EntryFv_checked h3 s6Step291EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step291EntryGBefore s6Step291EntryGAfter s6Step291EntryGvAfter
    s6Step291EntryGRow s6Step291EntryGOut 125 s6Step291EntryGFresh [(s6Step291EntryFvRow,160),(s6Step291EntryGvRow,160)] [s6Step291EntryFvFresh,s6Step291EntryGvFresh] [s6Step291EntryFvOut,s6Step291EntryGvOut]
    (growRow 777 s6Step291EntryGFresh) ((growRow 776 s6Step291EntryFvFresh ++ (growRow 775 s6Step291EntryGvFresh ++ []))) s6Step291EntryG_Incoming s6Step291EntryG_checked h2 s6Step291EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step291EntryFBefore s6Step291EntryFAfter s6Step291EntryGvAfter
    s6Step291EntryFRow s6Step291EntryFOut 125 s6Step291EntryFFresh [(s6Step291EntryGRow,125),(s6Step291EntryFvRow,160),(s6Step291EntryGvRow,160)] [s6Step291EntryGFresh,s6Step291EntryFvFresh,s6Step291EntryGvFresh] [s6Step291EntryGOut,s6Step291EntryFvOut,s6Step291EntryGvOut]
    (growRow 795 s6Step291EntryFFresh) ((growRow 777 s6Step291EntryGFresh ++ (growRow 776 s6Step291EntryFvFresh ++ (growRow 775 s6Step291EntryGvFresh ++ [])))) s6Step291EntryF_Incoming s6Step291EntryF_checked h1 s6Step291EntryF_Outgoing
  exact h0

private theorem s6Step291EntryBank_checked : compileHmrBankResizeLog .entry s6Step291EntryFBefore ⟨s6Step291EntryFRow,s6Step291EntryGRow,s6Step291EntryFvRow,s6Step291EntryGvRow⟩ ⟨125,125,160,160⟩ [s6Step291EntryFFresh,s6Step291EntryGFresh,s6Step291EntryFvFresh,s6Step291EntryGvFresh]=
    some (s6Step291EntryGvAfter,⟨s6Step291EntryFOut,s6Step291EntryGOut,s6Step291EntryFvOut,s6Step291EntryGvOut⟩,(growRow 795 s6Step291EntryFFresh ++ (growRow 777 s6Step291EntryGFresh ++ (growRow 776 s6Step291EntryFvFresh ++ (growRow 775 s6Step291EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step291EntryBank_rows]
  rfl

private def s6Step291ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291ExitFBefore : Arena := s6Step291ExitGAfter

private def s6Step291ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 892],795⟩

private def s6Step291ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858],776⟩

private def s6Step291ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 823],777⟩

private def s6Step291ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779],775⟩

private theorem s6Step291ExitBank_incomingDistinct : ([s6Step291ExitGRow,s6Step291ExitFRow,s6Step291ExitFvRow,s6Step291ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291ExitF_Incoming : rowsOwned s6Step291ExitFBefore [s6Step291ExitFRow,s6Step291ExitFvRow,s6Step291ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291ExitGRow,s6Step291ExitFRow,s6Step291ExitFvRow,s6Step291ExitGvRow] 1 s6Step291ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291ExitFBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step291ExitBank_outgoingOwned : rowsOwned s6Step291ExitGvAfter [s6Step291ExitGOut,s6Step291ExitFOut,s6Step291ExitFvOut,s6Step291ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step291ExitGvAfter (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step291ExitF_Outgoing : rowsOwned s6Step291ExitGvAfter [s6Step291ExitFOut,s6Step291ExitFvOut,s6Step291ExitGvOut] :=
  hmrRows_owned_drop s6Step291ExitGvAfter [s6Step291ExitGOut,s6Step291ExitFOut,s6Step291ExitFvOut,s6Step291ExitGvOut] 1 s6Step291ExitBank_outgoingOwned

private theorem s6Step291ExitF_distinct : (s6Step291ExitFRow.sign::s6Step291ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291ExitF_owned : (s6Step291ExitFRow.sign::s6Step291ExitFRow.payload).toFinset⊆s6Step291ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291ExitFBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291ExitF_retired : s6Step291ExitFBefore.retireSet s6Step291ExitFExtra.toFinset=s6Step291ExitFAfter := by
  unfold Arena.retireSet s6Step291ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step291ExitFBefore,s6Step291ExitGAfter,s6Step291ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step291ExitF_checked : planRowResizeLog s6Step291ExitFBefore s6Step291ExitFRow 125 []=
    some (s6Step291ExitFAfter,s6Step291ExitFOut,shrinkRow 795 s6Step291ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step291ExitFBefore s6Step291ExitFRow 125 s6Step291ExitF_distinct s6Step291ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step291ExitFRow.payload.take 125) s6Step291ExitFRow.sign=s6Step291ExitFOut := by decide +kernel
  have hi : s6Step291ExitFRow.payload.drop 125=s6Step291ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step291ExitF_retired] at result
  exact result

private def s6Step291ExitFvAfter : Arena := s6Step291ExitFAfter

private def s6Step291ExitFvBefore : Arena := s6Step291ExitFAfter

private theorem s6Step291ExitFv_Incoming : rowsOwned s6Step291ExitFvBefore [s6Step291ExitFvRow,s6Step291ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291ExitGRow,s6Step291ExitFRow,s6Step291ExitFvRow,s6Step291ExitGvRow] 2 s6Step291ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291ExitFvBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step291ExitFv_Outgoing : rowsOwned s6Step291ExitGvAfter [s6Step291ExitFvOut,s6Step291ExitGvOut] :=
  hmrRows_owned_drop s6Step291ExitGvAfter [s6Step291ExitGOut,s6Step291ExitFOut,s6Step291ExitFvOut,s6Step291ExitGvOut] 2 s6Step291ExitBank_outgoingOwned

private theorem s6Step291ExitFv_distinct : (s6Step291ExitFvRow.sign::s6Step291ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291ExitFv_owned : (s6Step291ExitFvRow.sign::s6Step291ExitFvRow.payload).toFinset⊆s6Step291ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291ExitFvBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291ExitFv_reserved : s6Step291ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step291ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step291ExitFv_checked : planRowResizeLog s6Step291ExitFvBefore s6Step291ExitFvRow 161 []=
    some (s6Step291ExitFvAfter,s6Step291ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step291ExitFvBefore s6Step291ExitFvAfter s6Step291ExitFvRow 161 []
    s6Step291ExitFv_distinct s6Step291ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step291ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step291ExitFvRow.payload++[]) s6Step291ExitFvRow.sign=s6Step291ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step291ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private theorem s6Step291ExitG_Incoming : rowsOwned s6Step291ExitGBefore [s6Step291ExitGRow,s6Step291ExitFRow,s6Step291ExitFvRow,s6Step291ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291ExitGRow,s6Step291ExitFRow,s6Step291ExitFvRow,s6Step291ExitGvRow] 0 s6Step291ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step291ExitG_Outgoing : rowsOwned s6Step291ExitGvAfter [s6Step291ExitGOut,s6Step291ExitFOut,s6Step291ExitFvOut,s6Step291ExitGvOut] :=
  hmrRows_owned_drop s6Step291ExitGvAfter [s6Step291ExitGOut,s6Step291ExitFOut,s6Step291ExitFvOut,s6Step291ExitGvOut] 0 s6Step291ExitBank_outgoingOwned

private theorem s6Step291ExitG_distinct : (s6Step291ExitGRow.sign::s6Step291ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291ExitG_owned : (s6Step291ExitGRow.sign::s6Step291ExitGRow.payload).toFinset⊆s6Step291ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291ExitG_retired : s6Step291ExitGBefore.retireSet s6Step291ExitGExtra.toFinset=s6Step291ExitGAfter := by
  unfold Arena.retireSet s6Step291ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step291ExitGBefore,s6Step291ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step291ExitG_checked : planRowResizeLog s6Step291ExitGBefore s6Step291ExitGRow 124 []=
    some (s6Step291ExitGAfter,s6Step291ExitGOut,shrinkRow 777 s6Step291ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step291ExitGBefore s6Step291ExitGRow 124 s6Step291ExitG_distinct s6Step291ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step291ExitGRow.payload.take 124) s6Step291ExitGRow.sign=s6Step291ExitGOut := by decide +kernel
  have hi : s6Step291ExitGRow.payload.drop 124=s6Step291ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step291ExitG_retired] at result
  exact result

private def s6Step291ExitGvBefore : Arena := s6Step291ExitFAfter

private theorem s6Step291ExitGv_Incoming : rowsOwned s6Step291ExitGvBefore [s6Step291ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291ExitGRow,s6Step291ExitFRow,s6Step291ExitFvRow,s6Step291ExitGvRow] 3 s6Step291ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291ExitGvBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step291ExitGv_Outgoing : rowsOwned s6Step291ExitGvAfter [s6Step291ExitGvOut] :=
  hmrRows_owned_drop s6Step291ExitGvAfter [s6Step291ExitGOut,s6Step291ExitFOut,s6Step291ExitFvOut,s6Step291ExitGvOut] 3 s6Step291ExitBank_outgoingOwned

private theorem s6Step291ExitGv_distinct : (s6Step291ExitGvRow.sign::s6Step291ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291ExitGv_owned : (s6Step291ExitGvRow.sign::s6Step291ExitGvRow.payload).toFinset⊆s6Step291ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291ExitGvBefore (fun q => (0≤q ∧ q<124) ∨ (125≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<823) ∨ (824≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291ExitGv_reserved : s6Step291ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step291ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step291ExitGv_checked : planRowResizeLog s6Step291ExitGvBefore s6Step291ExitGvRow 161 []=
    some (s6Step291ExitGvAfter,s6Step291ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step291ExitGvBefore s6Step291ExitGvAfter s6Step291ExitGvRow 161 []
    s6Step291ExitGv_distinct s6Step291ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step291ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step291ExitGvRow.payload++[]) s6Step291ExitGvRow.sign=s6Step291ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step291ExitBank_rows : planWindowRowsLog s6Step291ExitGBefore [(s6Step291ExitGRow,124),(s6Step291ExitFRow,125),(s6Step291ExitFvRow,161),(s6Step291ExitGvRow,161)] [[],[],[],[]]=
    some (s6Step291ExitGvAfter,[s6Step291ExitGOut,s6Step291ExitFOut,s6Step291ExitFvOut,s6Step291ExitGvOut],(shrinkRow 777 s6Step291ExitGExtra ++ (shrinkRow 795 s6Step291ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step291ExitGvAfter [] []=some (s6Step291ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step291ExitGvBefore s6Step291ExitGvAfter s6Step291ExitGvAfter
    s6Step291ExitGvRow s6Step291ExitGvOut 161 [] [] [] []
    (growRow 775 []) ([]) s6Step291ExitGv_Incoming s6Step291ExitGv_checked h4 s6Step291ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step291ExitFvBefore s6Step291ExitFvAfter s6Step291ExitGvAfter
    s6Step291ExitFvRow s6Step291ExitFvOut 161 [] [(s6Step291ExitGvRow,161)] [[]] [s6Step291ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step291ExitFv_Incoming s6Step291ExitFv_checked h3 s6Step291ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step291ExitFBefore s6Step291ExitFAfter s6Step291ExitGvAfter
    s6Step291ExitFRow s6Step291ExitFOut 125 [] [(s6Step291ExitFvRow,161),(s6Step291ExitGvRow,161)] [[],[]] [s6Step291ExitFvOut,s6Step291ExitGvOut]
    (shrinkRow 795 s6Step291ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step291ExitF_Incoming s6Step291ExitF_checked h2 s6Step291ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step291ExitGBefore s6Step291ExitGAfter s6Step291ExitGvAfter
    s6Step291ExitGRow s6Step291ExitGOut 124 [] [(s6Step291ExitFRow,125),(s6Step291ExitFvRow,161),(s6Step291ExitGvRow,161)] [[],[],[]] [s6Step291ExitFOut,s6Step291ExitFvOut,s6Step291ExitGvOut]
    (shrinkRow 777 s6Step291ExitGExtra) ((shrinkRow 795 s6Step291ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step291ExitG_Incoming s6Step291ExitG_checked h1 s6Step291ExitG_Outgoing
  exact h0

private theorem s6Step291ExitBank_checked : compileHmrBankResizeLog .exit s6Step291ExitGBefore ⟨s6Step291ExitFRow,s6Step291ExitGRow,s6Step291ExitFvRow,s6Step291ExitGvRow⟩ ⟨125,124,161,161⟩ [[],[],[],[]]=
    some (s6Step291ExitGvAfter,⟨s6Step291ExitFOut,s6Step291ExitGOut,s6Step291ExitFvOut,s6Step291ExitGvOut⟩,(shrinkRow 777 s6Step291ExitGExtra ++ (shrinkRow 795 s6Step291ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step291ExitBank_rows]
  rfl

private theorem s6Step291Add0_apart : Disjoint s6Step291Add0Arena.live s6Step291Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step291Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291Add0_card : s6Step291Add0Arena.live.card=898 := by
  decide +kernel

private theorem s6Step291Add0_borrowed : s6Step291Add0Arena.checkBorrow (hmrHybridCount s6Step291Add0Arena s6Step291Add0B.length) s6Step291Add0Work=some s6Step291Add0During := by
  have len : s6Step291Add0Work.length=hmrHybridCount s6Step291Add0Arena s6Step291Add0B.length := by
    rw [hmrHybridCount,s6Step291Add0_card]
    decide +kernel
  have nd : s6Step291Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step291Add0Arena s6Step291Add0During s6Step291Add0Work.toFinset s6Step291Add0_bounded s6Step291Add0_apart rfl

private theorem s6Step291Add0_distinct : (879::922::875::(s6Step291Add0A++s6Step291Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291Add0_owned : (879::922::875::(s6Step291Add0A++s6Step291Add0B)).toFinset⊆s6Step291Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step291Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291Add0_checked : compileHmrHybridCinLog s6Step291Add0Arena 922 879 875 s6Step291Add0A s6Step291Add0B s6Step291Add0Work=some s6Step291Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step291Add0Arena s6Step291Add0During 922 879 875 s6Step291Add0A s6Step291Add0B s6Step291Add0Work
    (by decide +kernel) (by decide +kernel) s6Step291Add0_distinct
    (fun q hq => s6Step291Add0_owned (List.mem_toFinset.mpr hq)) s6Step291Add0_borrowed

private theorem s6Step291Add1_apart : Disjoint s6Step291Add1Arena.live s6Step291Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step291Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291Add1_card : s6Step291Add1Arena.live.card=898 := by
  decide +kernel

private theorem s6Step291Add1_borrowed : s6Step291Add1Arena.checkBorrow (hmrHybridCount s6Step291Add1Arena s6Step291Add1B.length) s6Step291Add1Work=some s6Step291Add1During := by
  have len : s6Step291Add1Work.length=hmrHybridCount s6Step291Add1Arena s6Step291Add1B.length := by
    rw [hmrHybridCount,s6Step291Add1_card]
    decide +kernel
  have nd : s6Step291Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step291Add1Arena s6Step291Add1During s6Step291Add1Work.toFinset s6Step291Add1_bounded s6Step291Add1_apart rfl

private theorem s6Step291Add1_distinct : (879::922::875::(s6Step291Add1A++s6Step291Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291Add1_owned : (879::922::875::(s6Step291Add1A++s6Step291Add1B)).toFinset⊆s6Step291Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step291Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291Add1_checked : compileHmrHybridCinLog s6Step291Add1Arena 922 879 875 s6Step291Add1A s6Step291Add1B s6Step291Add1Work=some s6Step291Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step291Add1Arena s6Step291Add1During 922 879 875 s6Step291Add1A s6Step291Add1B s6Step291Add1Work
    (by decide +kernel) (by decide +kernel) s6Step291Add1_distinct
    (fun q hq => s6Step291Add1_owned (List.mem_toFinset.mpr hq)) s6Step291Add1_borrowed

private theorem s6Step291F4_apart : Disjoint (s6Step291Add0A++s6Step291Add0B).toFinset (s6Step291Add1A++s6Step291Add1B).toFinset := by
  have nd : ((s6Step291Add0A++s6Step291Add0B)++(s6Step291Add1A++s6Step291Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step291F4_carry : s6Step291F4FlagArena.checkBorrow 1 [875]=some s6Step291Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step291F4FlagArena,s6Step291HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step291F4FlagArena,s6Step291HeadFvAfter,s6Step291Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step291F4_distinct : (807::922::879::875::((s6Step291Add0A++s6Step291Add1A)++(s6Step291Add0B++s6Step291Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291F4_flag : s6Step291HeadFvAfter.checkBorrow 1 [879]=some s6Step291F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step291HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step291F4_owned : (807::922::((s6Step291Add0A++s6Step291Add1A)++(s6Step291Add0B++s6Step291Add1B))).toFinset⊆s6Step291HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step291HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291F4_checked : compileHmrHybridF4Log s6Step291HeadFvAfter 807 922 s6Step291Add0A s6Step291Add0B s6Step291Add1A s6Step291Add1B [879] [875] s6Step291Add0Work s6Step291Add1Work=some s6Step291F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step291HeadFvAfter s6Step291F4FlagArena s6Step291Add0Arena s6Step291Add0During s6Step291Add1During 807 922
    s6Step291Add0A s6Step291Add0B s6Step291Add1A s6Step291Add1B [879] [875] s6Step291Add0Work s6Step291Add1Work
    (fun q hq => s6Step291F4_owned (List.mem_toFinset.mpr hq)) s6Step291F4_flag s6Step291F4_carry
    s6Step291F4_distinct s6Step291F4_apart s6Step291Add0_checked s6Step291Add1_checked

private theorem s6Step291Front_branch : s6Step291FrontSigmaArena.checkBorrow 1 [922]=some s6Step291HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step291FrontSigmaArena,s6Step291EntryGvAfter,s6Step291EntryFBefore,arenaWires]
  · change s6Step291HeadGBefore.live=(s6Step291EntryGvAfter.live∪{807})∪{922}
    apply hmrArena_union_pair_of_filter_check s6Step291EntryGvAfter s6Step291HeadGBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 807 922 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step291Front_entry : HmrFrontEntryValid s6Step291EntryFBefore s6Step291FrontBank 125 160 ⟨125,124,161,161⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step291FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step291EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step291EntryFBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,807),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,922),(923,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step291FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step291Front_sigma : s6Step291EntryGvAfter.checkBorrow 1 [807]=some s6Step291FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step291EntryGvAfter,s6Step291EntryFBefore,arenaWires]
  · rfl

private def s6Step291HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291HeadFBefore : Arena := s6Step291HeadGAfter

private def s6Step291HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380],795⟩

private def s6Step291HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882],776⟩

private def s6Step291HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],777⟩

private def s6Step291HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789],775⟩

private theorem s6Step291HeadBank_incomingDistinct : ([s6Step291HeadGRow,s6Step291HeadFRow,s6Step291HeadGvRow,s6Step291HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291HeadF_Incoming : rowsOwned s6Step291HeadFBefore [s6Step291HeadFRow,s6Step291HeadGvRow,s6Step291HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291HeadGRow,s6Step291HeadFRow,s6Step291HeadGvRow,s6Step291HeadFvRow] 1 s6Step291HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step291HeadBank_outgoingOwned : rowsOwned s6Step291HeadFvAfter [s6Step291HeadGOut,s6Step291HeadFOut,s6Step291HeadGvOut,s6Step291HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step291HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step291HeadF_Outgoing : rowsOwned s6Step291HeadFvAfter [s6Step291HeadFOut,s6Step291HeadGvOut,s6Step291HeadFvOut] :=
  hmrRows_owned_drop s6Step291HeadFvAfter [s6Step291HeadGOut,s6Step291HeadFOut,s6Step291HeadGvOut,s6Step291HeadFvOut] 1 s6Step291HeadBank_outgoingOwned

private theorem s6Step291HeadF_distinct : (s6Step291HeadFRow.sign::s6Step291HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291HeadF_owned : (s6Step291HeadFRow.sign::s6Step291HeadFRow.payload).toFinset⊆s6Step291HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291HeadF_reserved : s6Step291HeadFBefore.reserve s6Step291HeadFFresh.toFinset=some s6Step291HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step291HeadFFresh,arenaWires]
  · norm_num [s6Step291HeadFBefore,s6Step291HeadGAfter,s6Step291HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step291HeadFAfter,s6Step291HeadFBefore,s6Step291HeadGAfter,s6Step291HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step291HeadF_checked : planRowResizeLog s6Step291HeadFBefore s6Step291HeadFRow 126 s6Step291HeadFFresh=
    some (s6Step291HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 892],795⟩,growRow 795 s6Step291HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step291HeadFBefore s6Step291HeadFAfter s6Step291HeadFRow 126 s6Step291HeadFFresh
    s6Step291HeadF_distinct s6Step291HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step291HeadF_reserved
  have rowEq : WindowRow.mk (s6Step291HeadFRow.payload++s6Step291HeadFFresh) s6Step291HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 892],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step291HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩

private def s6Step291HeadFvBefore : Arena := s6Step291HeadGvAfter

private theorem s6Step291HeadFv_Incoming : rowsOwned s6Step291HeadFvBefore [s6Step291HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291HeadGRow,s6Step291HeadFRow,s6Step291HeadGvRow,s6Step291HeadFvRow] 3 s6Step291HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step291HeadFv_Outgoing : rowsOwned s6Step291HeadFvAfter [s6Step291HeadFvOut] :=
  hmrRows_owned_drop s6Step291HeadFvAfter [s6Step291HeadGOut,s6Step291HeadFOut,s6Step291HeadGvOut,s6Step291HeadFvOut] 3 s6Step291HeadBank_outgoingOwned

private theorem s6Step291HeadFv_distinct : (s6Step291HeadFvRow.sign::s6Step291HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291HeadFv_owned : (s6Step291HeadFvRow.sign::s6Step291HeadFvRow.payload).toFinset⊆s6Step291HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291HeadFv_reserved : s6Step291HeadFvBefore.reserve s6Step291HeadFvFresh.toFinset=some s6Step291HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step291HeadFvFresh,arenaWires]
  · norm_num [s6Step291HeadFvBefore,s6Step291HeadGvAfter,s6Step291HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step291HeadFvAfter,s6Step291HeadFvBefore,s6Step291HeadGvAfter,s6Step291HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step291HeadFv_checked : planRowResizeLog s6Step291HeadFvBefore s6Step291HeadFvRow 161 s6Step291HeadFvFresh=
    some (s6Step291HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858],776⟩,growRow 776 s6Step291HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step291HeadFvBefore s6Step291HeadFvAfter s6Step291HeadFvRow 161 s6Step291HeadFvFresh
    s6Step291HeadFv_distinct s6Step291HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step291HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step291HeadFvRow.payload++s6Step291HeadFvFresh) s6Step291HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 778, 793, 825, 848, 857, 869, 898, 814, 841, 818, 839, 786, 864, 880, 868, 891, 810, 862, 907, 794, 874, 780, 802, 867, 881, 845, 809, 813, 882, 858],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step291HeadG_Incoming : rowsOwned s6Step291HeadGBefore [s6Step291HeadGRow,s6Step291HeadFRow,s6Step291HeadGvRow,s6Step291HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291HeadGRow,s6Step291HeadFRow,s6Step291HeadGvRow,s6Step291HeadFvRow] 0 s6Step291HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291HeadGBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step291HeadG_Outgoing : rowsOwned s6Step291HeadFvAfter [s6Step291HeadGOut,s6Step291HeadFOut,s6Step291HeadGvOut,s6Step291HeadFvOut] :=
  hmrRows_owned_drop s6Step291HeadFvAfter [s6Step291HeadGOut,s6Step291HeadFOut,s6Step291HeadGvOut,s6Step291HeadFvOut] 0 s6Step291HeadBank_outgoingOwned

private theorem s6Step291HeadG_distinct : (s6Step291HeadGRow.sign::s6Step291HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291HeadG_owned : (s6Step291HeadGRow.sign::s6Step291HeadGRow.payload).toFinset⊆s6Step291HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291HeadGBefore (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step291HeadG_reserved : s6Step291HeadGBefore.reserve s6Step291HeadGFresh.toFinset=some s6Step291HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step291HeadGFresh,arenaWires]
  · norm_num [s6Step291HeadGBefore,s6Step291HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step291HeadGBefore s6Step291HeadGAfter (fun q => ([(0,779),(780,782),(783,790),(791,792),(793,797),(799,800),(802,805),(806,808),(809,811),(813,815),(818,819),(821,823),(824,828),(829,830),(831,832),(833,842),(843,849),(850,858),(859,875),(876,879),(880,887),(888,892),(893,896),(897,899),(900,906),(907,914),(917,918),(919,920),(921,925),(926,928),(932,933)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) s6Step291HeadGFresh rfl rfl
    · norm_num [s6Step291HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step291HeadG_checked : planRowResizeLog s6Step291HeadGBefore s6Step291HeadGRow 126 s6Step291HeadGFresh=
    some (s6Step291HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 823],777⟩,growRow 777 s6Step291HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step291HeadGBefore s6Step291HeadGAfter s6Step291HeadGRow 126 s6Step291HeadGFresh
    s6Step291HeadG_distinct s6Step291HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step291HeadG_reserved
  have rowEq : WindowRow.mk (s6Step291HeadGRow.payload++s6Step291HeadGFresh) s6Step291HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 823],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step291HeadGvBefore : Arena := s6Step291HeadFAfter

private theorem s6Step291HeadGv_Incoming : rowsOwned s6Step291HeadGvBefore [s6Step291HeadGvRow,s6Step291HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step291HeadGRow,s6Step291HeadFRow,s6Step291HeadGvRow,s6Step291HeadFvRow] 2 s6Step291HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step291HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel

private theorem s6Step291HeadGv_Outgoing : rowsOwned s6Step291HeadFvAfter [s6Step291HeadGvOut,s6Step291HeadFvOut] :=
  hmrRows_owned_drop s6Step291HeadFvAfter [s6Step291HeadGOut,s6Step291HeadFOut,s6Step291HeadGvOut,s6Step291HeadFvOut] 2 s6Step291HeadBank_outgoingOwned

private theorem s6Step291HeadGv_distinct : (s6Step291HeadGvRow.sign::s6Step291HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step291HeadGv_owned : (s6Step291HeadGvRow.sign::s6Step291HeadGvRow.payload).toFinset⊆s6Step291HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step291HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<828) ∨ (829≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<858) ∨ (859≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<887) ∨ (888≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (900≤q ∧ q<906) ∨ (907≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (926≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel

private theorem s6Step291HeadGv_reserved : s6Step291HeadGvBefore.reserve s6Step291HeadGvFresh.toFinset=some s6Step291HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step291HeadGvFresh,arenaWires]
  · norm_num [s6Step291HeadGvBefore,s6Step291HeadFAfter,s6Step291HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step291HeadGvAfter,s6Step291HeadGvBefore,s6Step291HeadFAfter,s6Step291HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step291HeadGv_checked : planRowResizeLog s6Step291HeadGvBefore s6Step291HeadGvRow 161 s6Step291HeadGvFresh=
    some (s6Step291HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779],775⟩,growRow 775 s6Step291HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step291HeadGvBefore s6Step291HeadGvAfter s6Step291HeadGvRow 161 s6Step291HeadGvFresh
    s6Step291HeadGv_distinct s6Step291HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step291HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step291HeadGvRow.payload++s6Step291HeadGvFresh) s6Step291HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 886, 876, 865, 908, 803, 888, 796, 890, 821, 863, 850, 843, 860, 853, 822, 791, 854, 903, 833, 859, 838, 784, 768, 877, 927, 855, 873, 856, 789, 779],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step291HeadBank_rows : planWindowRowsLog s6Step291HeadGBefore [(s6Step291HeadGRow,126),(s6Step291HeadFRow,126),(s6Step291HeadGvRow,161),(s6Step291HeadFvRow,161)] [s6Step291HeadGFresh,s6Step291HeadFFresh,s6Step291HeadGvFresh,s6Step291HeadFvFresh]=
    some (s6Step291HeadFvAfter,[s6Step291HeadGOut,s6Step291HeadFOut,s6Step291HeadGvOut,s6Step291HeadFvOut],(growRow 777 s6Step291HeadGFresh ++ (growRow 795 s6Step291HeadFFresh ++ (growRow 775 s6Step291HeadGvFresh ++ (growRow 776 s6Step291HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step291HeadFvAfter [] []=some (s6Step291HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step291HeadFvBefore s6Step291HeadFvAfter s6Step291HeadFvAfter
    s6Step291HeadFvRow s6Step291HeadFvOut 161 s6Step291HeadFvFresh [] [] []
    (growRow 776 s6Step291HeadFvFresh) ([]) s6Step291HeadFv_Incoming s6Step291HeadFv_checked h4 s6Step291HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step291HeadGvBefore s6Step291HeadGvAfter s6Step291HeadFvAfter
    s6Step291HeadGvRow s6Step291HeadGvOut 161 s6Step291HeadGvFresh [(s6Step291HeadFvRow,161)] [s6Step291HeadFvFresh] [s6Step291HeadFvOut]
    (growRow 775 s6Step291HeadGvFresh) ((growRow 776 s6Step291HeadFvFresh ++ [])) s6Step291HeadGv_Incoming s6Step291HeadGv_checked h3 s6Step291HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step291HeadFBefore s6Step291HeadFAfter s6Step291HeadFvAfter
    s6Step291HeadFRow s6Step291HeadFOut 126 s6Step291HeadFFresh [(s6Step291HeadGvRow,161),(s6Step291HeadFvRow,161)] [s6Step291HeadGvFresh,s6Step291HeadFvFresh] [s6Step291HeadGvOut,s6Step291HeadFvOut]
    (growRow 795 s6Step291HeadFFresh) ((growRow 775 s6Step291HeadGvFresh ++ (growRow 776 s6Step291HeadFvFresh ++ []))) s6Step291HeadF_Incoming s6Step291HeadF_checked h2 s6Step291HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step291HeadGBefore s6Step291HeadGAfter s6Step291HeadFvAfter
    s6Step291HeadGRow s6Step291HeadGOut 126 s6Step291HeadGFresh [(s6Step291HeadFRow,126),(s6Step291HeadGvRow,161),(s6Step291HeadFvRow,161)] [s6Step291HeadFFresh,s6Step291HeadGvFresh,s6Step291HeadFvFresh] [s6Step291HeadFOut,s6Step291HeadGvOut,s6Step291HeadFvOut]
    (growRow 777 s6Step291HeadGFresh) ((growRow 795 s6Step291HeadFFresh ++ (growRow 775 s6Step291HeadGvFresh ++ (growRow 776 s6Step291HeadFvFresh ++ [])))) s6Step291HeadG_Incoming s6Step291HeadG_checked h1 s6Step291HeadG_Outgoing
  exact h0

private theorem s6Step291HeadBank_checked : compileHmrBankResizeLog .headroom s6Step291HeadGBefore ⟨s6Step291HeadFRow,s6Step291HeadGRow,s6Step291HeadFvRow,s6Step291HeadGvRow⟩ ⟨126,126,161,161⟩ [s6Step291HeadGFresh,s6Step291HeadFFresh,s6Step291HeadGvFresh,s6Step291HeadFvFresh]=
    some (s6Step291HeadFvAfter,⟨s6Step291HeadFOut,s6Step291HeadGOut,s6Step291HeadFvOut,s6Step291HeadGvOut⟩,(growRow 777 s6Step291HeadGFresh ++ (growRow 795 s6Step291HeadFFresh ++ (growRow 775 s6Step291HeadGvFresh ++ (growRow 776 s6Step291HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step291HeadBank_rows]
  rfl

private theorem s6Step291Front_checked : compileHmrSourceFrontLog s6Step291EntryFBefore s6Step291FrontBank 125 160 ⟨125,124,161,161⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step291FrontLog=some s6Step291FrontPlan := by
  have pairEq : s6Step291FrontPair=⟨s6Step291HeadFRow,s6Step291HeadGRow,s6Step291HeadFvRow,s6Step291HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step291FrontHead=⟨s6Step291ExitFRow,s6Step291ExitGRow,s6Step291ExitFvRow,s6Step291ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step291Add0A=s6Step291FrontHead.f.wires := by decide +kernel
  have gEq : s6Step291Add0B=s6Step291FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step291Add1A=s6Step291FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step291Add1B=s6Step291FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step291EntryFBefore s6Step291FrontBank 125 160 ⟨125,124,161,161⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step291FrontLog s6Step291FrontPlan
  · exact s6Step291Front_entry
  · exact s6Step291EntryBank_checked
  · exact s6Step291Front_sigma
  · rfl
  · exact s6Step291Front_branch
  · rfl
  · simpa only [s6Step291FrontPlan,pairEq] using s6Step291HeadBank_checked
  · simpa only [s6Step291FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step291F4_checked
  · exact s6Step291Counter_checked
  · rfl
  · simpa only [s6Step291FrontPlan,headEq] using s6Step291ExitBank_checked

private theorem s6Step291Complete_explicit_checked : compileHmrEarlyStepLog s6Step291EntryFBefore s6Step291FrontBank 125 160 ⟨125,124,161,161⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step291CompleteLog=some s6Step291CompletePlan := by
  let Q := s6Step291EarlyControlPlan
  have hq := s6Step291EarlyControl_plan_checked
  have fv1 : s6Step291CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step291CompleteOut.fv.payload[2]?.getD s6Step291CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step291CompleteOut.fv.payload[3]?.getD s6Step291CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step291CompleteOut.fv.payload[4]?.getD s6Step291CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step291EntryFBefore s6Step291EarlyControlArena s6Step291FrontBank 125 160 ⟨125,124,161,161⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 54 s6Step291CompleteLog s6Step291FrontPlan Q
    s6Step291Front_checked s6Step291Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step291Complete_owned s6Step291Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step291EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 769 807 s6Step291CompleteOut.fv.second (s6Step291CompleteOut.fv.payload[2]?.getD s6Step291CompleteOut.fv.sign) (s6Step291CompleteOut.fv.payload[3]?.getD s6Step291CompleteOut.fv.sign) (s6Step291CompleteOut.fv.payload[4]?.getD s6Step291CompleteOut.fv.sign) 922 54 s6Step291EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep291Arena : Arena := s6Step291EntryFBefore
def s6PrivateStep291Bank : WindowBank := s6Step291FrontBank
def s6PrivateStep291Spec : HmrSourceWalkStepLog := ⟨125,160,⟨125,124,161,161⟩,54,.early s6Step291CompleteLog⟩
def s6PrivateStep291Plan : HmrSourceStepPlan := .early s6Step291CompletePlan
theorem s6PrivateStep291_source : s6PrivateStep291Spec=s6ObservedLogs288[3] := rfl
theorem s6PrivateStep291_checked : compileHmrSourceStepLog s6PrivateStep291Arena s6PrivateStep291Bank
    s6PrivateStep291Spec.fgWidth s6PrivateStep291Spec.vWidth s6PrivateStep291Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]
    6 498 291 s6PrivateStep291Spec.need none s6PrivateStep291Spec.log=some s6PrivateStep291Plan := by
  change compileHmrSourceStepLog s6Step291EntryFBefore s6Step291FrontBank 125 160 ⟨125,124,161,161⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] 6 498 291 54 none (.early s6Step291CompleteLog)=some (.early s6Step291CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 291<498)]
  rw [s6Step291Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
