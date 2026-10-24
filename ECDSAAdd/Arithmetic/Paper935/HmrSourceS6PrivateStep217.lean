import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep215
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

private def s6Step217CompleteMoves : List (Wire × Wire) := [(768,417)]

private def s6Step217EarlyControlLog : HmrEarlyControlLog := ⟨[768, 855, 873, 845, 882],[822],[825],[869, 786, 810, 809, 817, 804],[]⟩

private def s6Step217FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [858], [], [881]],[[882], [845], [855], [873]],[[], [], [], []]⟩,[875],[807],[822],[825],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step217CompleteLog : HmrEarlyStepLog := ⟨s6Step217FrontLog,s6Step217CompleteMoves,s6Step217EarlyControlLog⟩

private def s6Step217ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416],795⟩

private def s6Step217ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802],776⟩

private def s6Step217ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858],777⟩

private def s6Step217ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩

private def s6Step217FrontOut : WindowBank := ⟨s6Step217ExitFOut,s6Step217ExitGOut,s6Step217ExitFvOut,s6Step217ExitGvOut⟩

private def s6Step217CompleteOut : WindowBank := s6Step217FrontOut.repacked s6Step217CompleteMoves

private def s6Step217EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step217EarlyControlPositiveArena,[822],s6Step217EarlyControlEqualityArena,[825],⟨⟨875,false⟩,[⟨⟨822,false⟩,825⟩]⟩⟩

private def s6Step217EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step217EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step217EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,768⟩,⟨⟨772,false⟩,855⟩,⟨⟨771,false⟩,873⟩,⟨⟨770,false⟩,845⟩,⟨⟨769,false⟩,882⟩]⟩

private def s6Step217EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step217EarlyControlZeroArena,s6Step217EarlyControlZeroPlan,s6Step217EarlyControlClassPlan,s6Step217EarlyControlFlagArena,s6Step217EarlyControlFittedArena,s6Step217EarlyControlHistoryArena,s6Step217EarlyControlSigmaArena,s6Step217EarlyControlOutputArena,s6Step217EarlyControlLog⟩

private def s6Step217CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step217Counter_bounded : s6Step217CounterWork.toFinset⊆arenaWires := by norm_num [s6Step217CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step217HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217CounterDuring : Arena := ⟨s6Step217HeadFvAfter.live∪s6Step217CounterWork.toFinset,Finset.union_subset s6Step217HeadFvAfter.bounded s6Step217Counter_bounded⟩

private def s6Step217EntryFFresh : List Wire := []

private def s6Step217EntryFvFresh : List Wire := []

private def s6Step217EntryGFresh : List Wire := [858]

private def s6Step217EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217EntryGvFresh : List Wire := [881]

private def s6Step217ExitFExtra : List Wire := [417, 845]

private def s6Step217ExitFvExtra : List Wire := [873]

private def s6Step217ExitGExtra : List Wire := [882]

private def s6Step217ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<417) ∨ (418≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217ExitGvExtra : List Wire := [855]

private def s6Step217Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217Add0Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step217Add0_bounded : s6Step217Add0Work.toFinset⊆arenaWires := by
  have h : s6Step217Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step217Add0During : Arena := ⟨s6Step217Add0Arena.live∪s6Step217Add0Work.toFinset,Finset.union_subset s6Step217Add0Arena.bounded s6Step217Add0_bounded⟩

private def s6Step217Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217Add1Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step217Add1_bounded : s6Step217Add1Work.toFinset⊆arenaWires := by
  have h : s6Step217Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step217Add1During : Arena := ⟨s6Step217Add1Arena.live∪s6Step217Add1Work.toFinset,Finset.union_subset s6Step217Add1Arena.bounded s6Step217Add1_bounded⟩

private def s6Step217F4FlagArena : Arena := ⟨s6Step217HeadFvAfter.live∪{822},Finset.union_subset s6Step217HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step217F4Plan : HmrHybridF4Plan := ⟨s6Step217F4FlagArena,[822],s6Step217Add0Arena,[825],s6Step217Add0During,s6Step217Add0Work,s6Step217Add1During,s6Step217Add1Work⟩

private def s6Step217HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 845],795⟩

private def s6Step217HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 873],776⟩

private def s6Step217HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858, 882],777⟩

private def s6Step217HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 855],775⟩

private def s6Step217FrontHead : WindowBank := ⟨s6Step217HeadFOut,s6Step217HeadGOut,s6Step217HeadFvOut,s6Step217HeadGvOut⟩

private def s6Step217EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417],795⟩

private def s6Step217EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802],776⟩

private def s6Step217EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858],777⟩

private def s6Step217EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩

private def s6Step217FrontPair : WindowBank := ⟨s6Step217EntryFOut,s6Step217EntryGOut,s6Step217EntryFvOut,s6Step217EntryGvOut⟩

private def s6Step217FrontSigmaArena : Arena := ⟨s6Step217EntryGvAfter.live∪{875},Finset.union_subset s6Step217EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step217HeadFFresh : List Wire := [845]

private def s6Step217HeadFvFresh : List Wire := [873]

private def s6Step217HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217HeadGFresh : List Wire := [882]

private def s6Step217HeadGvFresh : List Wire := [855]

private def s6Step217FrontPlan : HmrSourceFront := ⟨s6Step217EntryGvAfter,s6Step217FrontPair,(growRow 795 s6Step217EntryFFresh ++ (growRow 777 s6Step217EntryGFresh ++ (growRow 776 s6Step217EntryFvFresh ++ (growRow 775 s6Step217EntryGvFresh ++ [])))),s6Step217FrontSigmaArena,[875],s6Step217HeadGBefore,[807],
  s6Step217HeadFvAfter,s6Step217FrontHead,(growRow 777 s6Step217HeadGFresh ++ (growRow 795 s6Step217HeadFFresh ++ (growRow 775 s6Step217HeadGvFresh ++ (growRow 776 s6Step217HeadFvFresh ++ [])))),s6Step217F4Plan,s6Step217CounterDuring,s6Step217CounterWork,s6Step217ExitGvAfter,s6Step217FrontOut,(shrinkRow 777 s6Step217ExitGExtra ++ (shrinkRow 795 s6Step217ExitFExtra ++ (shrinkRow 776 s6Step217ExitFvExtra ++ (shrinkRow 775 s6Step217ExitGvExtra ++ []))))⟩

private def s6Step217CompletePlan : HmrEarlyStepPlan := ⟨s6Step217FrontPlan,s6Step217EarlyControlArena,s6Step217EarlyControlPlan,s6Step217CompleteMoves⟩

private theorem s6Step217Complete_apart : List.Disjoint (s6Step217CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [875, 807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step217CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[875, 807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step217Complete_owned : (s6Step217CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step217EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step217CompleteMoveArena : Arena := ⟨s6Step217ExitGvAfter.live∪{417},Finset.union_subset s6Step217ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step217Complete_repack : s6Step217ExitGvAfter.checkRepack s6Step217CompleteMoves=some s6Step217EarlyControlArena := by
  have owned : 768∈s6Step217ExitGvAfter.live := by norm_num [s6Step217ExitGvAfter,arenaWires]
  have reserve : s6Step217ExitGvAfter.reserve {417}=some s6Step217CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step217ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step217CompleteMoveArena.retireSet {768}=s6Step217EarlyControlArena := by
    unfold Arena.retireSet s6Step217EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step217CompleteMoveArena,s6Step217ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step217CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step217CompleteMoveArena.retireSet {768}).checkRepack []=some s6Step217EarlyControlArena
  rw [retired]
  rfl

private theorem s6Step217EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s6Step217EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step217EarlyControl_branch : compileHmrBranchRetirement s6Step217EarlyControlSigmaArena 807=some s6Step217EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step217EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step217EarlyControlSigmaArena s6Step217EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [807] rfl rfl
    decide +kernel

private theorem s6Step217EarlyControl_classEqualityBorrow : s6Step217EarlyControlPositiveArena.checkBorrow (([875, 822] : List Wire).length-1) s6Step217EarlyControlLog.classWork=some s6Step217EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step217EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step217EarlyControlEqualityArena,s6Step217EarlyControlPositiveArena,s6Step217EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step217EarlyControl_classEqualityOwned : ([875, 822] : List Wire).toFinset⊆s6Step217EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EarlyControl_classEquality : compileHmrEqualityLog s6Step217EarlyControlPositiveArena [875, 822] 0 s6Step217EarlyControlLog.classWork=some (s6Step217EarlyControlEqualityArena,s6Step217EarlyControlLog.classWork,s6Step217EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step217EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step217EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step217EarlyControl_classOwned : ([769, 882, 875] : List Wire).toFinset⊆s6Step217EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EarlyControl_positiveBorrow : s6Step217EarlyControlZeroArena.checkBorrow (1) s6Step217EarlyControlLog.positiveWork=some s6Step217EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step217EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step217EarlyControlPositiveArena,s6Step217EarlyControlZeroArena,s6Step217EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step217EarlyControl_class : compileHmrSourceClassLog s6Step217EarlyControlZeroArena false 769 s6Step217EarlyControlZeroPlan.top 0 875 s6Step217EarlyControlLog.positiveWork s6Step217EarlyControlLog.classWork=some s6Step217EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step217EarlyControlClassPlan s6Step217EarlyControlZeroArena false 769 s6Step217EarlyControlZeroPlan.top 0 875
  constructor
  · decide +kernel
  · exact s6Step217EarlyControl_classOwned
  · exact s6Step217EarlyControl_positiveBorrow
  · exact s6Step217EarlyControl_classEquality

private theorem s6Step217EarlyControl_entryRecordOwned : ([807, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step217EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EarlyControl_entrySigmaOwned : ([875, 254] : List Wire).toFinset⊆s6Step217EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EarlyControl_fitBorrow : s6Step217EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step217EarlyControlLog.recordFresh=some s6Step217EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step217EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step217EarlyControlFittedArena,s6Step217EarlyControlFlagArena,s6Step217EarlyControlLog,arenaWires]

private theorem s6Step217EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step217EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EarlyControl_fit : compileHmrRecordGrowLog s6Step217EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step217EarlyControlLog.recordFresh=some s6Step217EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step217EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step217EarlyControl_fitBorrow

private theorem s6Step217EarlyControl_flagsBorrow : s6Step217EarlyControlEqualityArena.checkBorrow (6) s6Step217EarlyControlLog.flagWork=some s6Step217EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step217EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step217EarlyControlFlagArena,s6Step217EarlyControlEqualityArena,s6Step217EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step217EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s6Step217EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EarlyControl_flags : compileHmrFlagsLog s6Step217EarlyControlClassPlan.equalityArena s6Step217EarlyControlClassPlan.equality.top 253 252 251 s6Step217EarlyControlLog.flagWork=some s6Step217EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step217EarlyControl_flagsOwned⟩
  · exact s6Step217EarlyControl_flagsBorrow

private theorem s6Step217EarlyControl_historyBorrow : s6Step217EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step217EarlyControlLog.recordFresh=some s6Step217EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step217EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step217EarlyControlHistoryArena,s6Step217EarlyControlArena,s6Step217EarlyControlLog,arenaWires]

private theorem s6Step217EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step217EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EarlyControl_history : compileHmrRecordGrowLog s6Step217EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step217EarlyControlLog.recordFresh=some s6Step217EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step217EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step217EarlyControl_historyBorrow

private theorem s6Step217EarlyControl_sigmaOwned : ([254, 875] : List Wire).toFinset⊆s6Step217EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EarlyControl_sigmaReleaseOwned : ([875] : List Wire).toFinset⊆s6Step217EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EarlyControl_sigmaRelease : s6Step217EarlyControlHistoryArena.release {875} (fun _ => false)=some s6Step217EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step217EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step217EarlyControlHistoryArena s6Step217EarlyControlSigmaArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [875] rfl rfl
    decide +kernel

private theorem s6Step217EarlyControl_sigma : compileHmrSigmaDropLog s6Step217EarlyControlHistoryArena false 0 0 254 875 []=some s6Step217EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step217EarlyControl_sigmaOwned⟩
  · exact s6Step217EarlyControl_sigmaRelease

private theorem s6Step217EarlyControl_zeroBorrow : s6Step217EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step217EarlyControlLog.zeroWork=some s6Step217EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step217EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step217EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step217EarlyControlZeroArena,s6Step217EarlyControlArena,s6Step217EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step217EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step217EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step217EarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EarlyControl_zero : compileHmrEqualityLog s6Step217EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step217EarlyControlLog.zeroWork=some (s6Step217EarlyControlZeroArena,s6Step217EarlyControlLog.zeroWork,s6Step217EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step217EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step217EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step217EarlyControl_logged : s6Step217EarlyControlPlan.Logged s6Step217EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 254 253 252 251 807 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step217EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step217EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step217EarlyControl_zero
  · exact s6Step217EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step217EarlyControl_flags
  · exact s6Step217EarlyControl_fit
  · exact s6Step217EarlyControl_history
  · exact s6Step217EarlyControl_sigma
  · exact s6Step217EarlyControl_branch

private theorem s6Step217EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step217EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 254 253 252 251 807 47 s6Step217EarlyControlLog=some s6Step217EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step217EarlyControlPlan s6Step217EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 254 253 252 251 807 47 s6Step217EarlyControl_logged

private def s6Step217EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step217EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417],795⟩

private def s6Step217EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802],776⟩

private def s6Step217EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],777⟩

private def s6Step217EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784],775⟩

private def s6Step217FrontBank : WindowBank := ⟨s6Step217EntryFRow,s6Step217EntryGRow,s6Step217EntryFvRow,s6Step217EntryGvRow⟩

private def s6Step217Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 845, 795]

private def s6Step217Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858, 882, 777]

private def s6Step217Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 873, 776]

private def s6Step217Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 855, 775]

private theorem s6Step217Counter_apart : Disjoint s6Step217HeadFvAfter.live s6Step217CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step217HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217Counter_borrowed : s6Step217HeadFvAfter.checkBorrow 4 s6Step217CounterWork=some s6Step217CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step217HeadFvAfter s6Step217CounterDuring s6Step217CounterWork.toFinset s6Step217Counter_bounded s6Step217Counter_apart rfl

private theorem s6Step217Counter_owned : (875::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step217HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step217HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217Counter_checked : compileHmrCounterStepLog s6Step217HeadFvAfter true 875 [774, 773, 772, 771, 770, 769] s6Step217CounterWork=some s6Step217CounterDuring := by
  have owned : ∀q∈875::[774, 773, 772, 771, 770, 769],q∈s6Step217HeadFvAfter.live := fun q hq => s6Step217Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step217Counter_borrowed

private def s6Step217EntryFAfter : Arena := s6Step217EntryFBefore

private theorem s6Step217EntryBank_incomingDistinct : ([s6Step217EntryFRow,s6Step217EntryGRow,s6Step217EntryFvRow,s6Step217EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217EntryF_Incoming : rowsOwned s6Step217EntryFBefore [s6Step217EntryFRow,s6Step217EntryGRow,s6Step217EntryFvRow,s6Step217EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217EntryFRow,s6Step217EntryGRow,s6Step217EntryFvRow,s6Step217EntryGvRow] 0 s6Step217EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217EntryFBefore (fun q => ([(0,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step217EntryBank_outgoingOwned : rowsOwned s6Step217EntryGvAfter [s6Step217EntryFOut,s6Step217EntryGOut,s6Step217EntryFvOut,s6Step217EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step217EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217EntryF_Outgoing : rowsOwned s6Step217EntryGvAfter [s6Step217EntryFOut,s6Step217EntryGOut,s6Step217EntryFvOut,s6Step217EntryGvOut] :=
  hmrRows_owned_drop s6Step217EntryGvAfter [s6Step217EntryFOut,s6Step217EntryGOut,s6Step217EntryFvOut,s6Step217EntryGvOut] 0 s6Step217EntryBank_outgoingOwned

private theorem s6Step217EntryF_distinct : (s6Step217EntryFRow.sign::s6Step217EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217EntryF_owned : (s6Step217EntryFRow.sign::s6Step217EntryFRow.payload).toFinset⊆s6Step217EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217EntryFBefore (fun q => ([(0,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step217EntryF_reserved : s6Step217EntryFBefore.reserve s6Step217EntryFFresh.toFinset=some s6Step217EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step217EntryFFresh,arenaWires]
  · norm_num [s6Step217EntryFBefore,s6Step217EntryFFresh,arenaWires]
  · simp only [s6Step217EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step217EntryF_checked : planRowResizeLog s6Step217EntryFBefore s6Step217EntryFRow 162 s6Step217EntryFFresh=
    some (s6Step217EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417],795⟩,growRow 795 s6Step217EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step217EntryFBefore s6Step217EntryFAfter s6Step217EntryFRow 162 s6Step217EntryFFresh
    s6Step217EntryF_distinct s6Step217EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step217EntryF_reserved
  have rowEq : WindowRow.mk (s6Step217EntryFRow.payload++s6Step217EntryFFresh) s6Step217EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step217EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217EntryFvAfter : Arena := s6Step217EntryGAfter

private def s6Step217EntryFvBefore : Arena := s6Step217EntryGAfter

private theorem s6Step217EntryFv_Incoming : rowsOwned s6Step217EntryFvBefore [s6Step217EntryFvRow,s6Step217EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217EntryFRow,s6Step217EntryGRow,s6Step217EntryFvRow,s6Step217EntryGvRow] 2 s6Step217EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217EntryFv_Outgoing : rowsOwned s6Step217EntryGvAfter [s6Step217EntryFvOut,s6Step217EntryGvOut] :=
  hmrRows_owned_drop s6Step217EntryGvAfter [s6Step217EntryFOut,s6Step217EntryGOut,s6Step217EntryFvOut,s6Step217EntryGvOut] 2 s6Step217EntryBank_outgoingOwned

private theorem s6Step217EntryFv_distinct : (s6Step217EntryFvRow.sign::s6Step217EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217EntryFv_owned : (s6Step217EntryFvRow.sign::s6Step217EntryFvRow.payload).toFinset⊆s6Step217EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EntryFv_reserved : s6Step217EntryFvBefore.reserve s6Step217EntryFvFresh.toFinset=some s6Step217EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step217EntryFvFresh,arenaWires]
  · norm_num [s6Step217EntryFvBefore,s6Step217EntryGAfter,s6Step217EntryFvFresh,arenaWires]
  · simp only [s6Step217EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step217EntryFv_checked : planRowResizeLog s6Step217EntryFvBefore s6Step217EntryFvRow 123 s6Step217EntryFvFresh=
    some (s6Step217EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802],776⟩,growRow 776 s6Step217EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step217EntryFvBefore s6Step217EntryFvAfter s6Step217EntryFvRow 123 s6Step217EntryFvFresh
    s6Step217EntryFv_distinct s6Step217EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step217EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step217EntryFvRow.payload++s6Step217EntryFvFresh) s6Step217EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step217EntryGBefore : Arena := s6Step217EntryFBefore

private theorem s6Step217EntryG_Incoming : rowsOwned s6Step217EntryGBefore [s6Step217EntryGRow,s6Step217EntryFvRow,s6Step217EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217EntryFRow,s6Step217EntryGRow,s6Step217EntryFvRow,s6Step217EntryGvRow] 1 s6Step217EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217EntryGBefore (fun q => ([(0,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step217EntryG_Outgoing : rowsOwned s6Step217EntryGvAfter [s6Step217EntryGOut,s6Step217EntryFvOut,s6Step217EntryGvOut] :=
  hmrRows_owned_drop s6Step217EntryGvAfter [s6Step217EntryFOut,s6Step217EntryGOut,s6Step217EntryFvOut,s6Step217EntryGvOut] 1 s6Step217EntryBank_outgoingOwned

private theorem s6Step217EntryG_distinct : (s6Step217EntryGRow.sign::s6Step217EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217EntryG_owned : (s6Step217EntryGRow.sign::s6Step217EntryGRow.payload).toFinset⊆s6Step217EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217EntryGBefore (fun q => ([(0,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step217EntryG_reserved : s6Step217EntryGBefore.reserve s6Step217EntryGFresh.toFinset=some s6Step217EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step217EntryGFresh,arenaWires]
  · norm_num [s6Step217EntryGBefore,s6Step217EntryFBefore,s6Step217EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step217EntryGBefore s6Step217EntryGAfter (fun q => ([(0,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step217EntryGFresh rfl rfl
    · norm_num [s6Step217EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step217EntryG_checked : planRowResizeLog s6Step217EntryGBefore s6Step217EntryGRow 162 s6Step217EntryGFresh=
    some (s6Step217EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858],777⟩,growRow 777 s6Step217EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step217EntryGBefore s6Step217EntryGAfter s6Step217EntryGRow 162 s6Step217EntryGFresh
    s6Step217EntryG_distinct s6Step217EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step217EntryG_reserved
  have rowEq : WindowRow.mk (s6Step217EntryGRow.payload++s6Step217EntryGFresh) s6Step217EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step217EntryGvBefore : Arena := s6Step217EntryGAfter

private theorem s6Step217EntryGv_Incoming : rowsOwned s6Step217EntryGvBefore [s6Step217EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217EntryFRow,s6Step217EntryGRow,s6Step217EntryFvRow,s6Step217EntryGvRow] 3 s6Step217EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217EntryGv_Outgoing : rowsOwned s6Step217EntryGvAfter [s6Step217EntryGvOut] :=
  hmrRows_owned_drop s6Step217EntryGvAfter [s6Step217EntryFOut,s6Step217EntryGOut,s6Step217EntryFvOut,s6Step217EntryGvOut] 3 s6Step217EntryBank_outgoingOwned

private theorem s6Step217EntryGv_distinct : (s6Step217EntryGvRow.sign::s6Step217EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217EntryGv_owned : (s6Step217EntryGvRow.sign::s6Step217EntryGvRow.payload).toFinset⊆s6Step217EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217EntryGv_reserved : s6Step217EntryGvBefore.reserve s6Step217EntryGvFresh.toFinset=some s6Step217EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step217EntryGvFresh,arenaWires]
  · norm_num [s6Step217EntryGvBefore,s6Step217EntryGAfter,s6Step217EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step217EntryGvAfter,s6Step217EntryGvBefore,s6Step217EntryGAfter,s6Step217EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step217EntryGv_checked : planRowResizeLog s6Step217EntryGvBefore s6Step217EntryGvRow 123 s6Step217EntryGvFresh=
    some (s6Step217EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩,growRow 775 s6Step217EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step217EntryGvBefore s6Step217EntryGvAfter s6Step217EntryGvRow 123 s6Step217EntryGvFresh
    s6Step217EntryGv_distinct s6Step217EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step217EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step217EntryGvRow.payload++s6Step217EntryGvFresh) s6Step217EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step217EntryBank_rows : planWindowRowsLog s6Step217EntryFBefore [(s6Step217EntryFRow,162),(s6Step217EntryGRow,162),(s6Step217EntryFvRow,123),(s6Step217EntryGvRow,123)] [s6Step217EntryFFresh,s6Step217EntryGFresh,s6Step217EntryFvFresh,s6Step217EntryGvFresh]=
    some (s6Step217EntryGvAfter,[s6Step217EntryFOut,s6Step217EntryGOut,s6Step217EntryFvOut,s6Step217EntryGvOut],(growRow 795 s6Step217EntryFFresh ++ (growRow 777 s6Step217EntryGFresh ++ (growRow 776 s6Step217EntryFvFresh ++ (growRow 775 s6Step217EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step217EntryGvAfter [] []=some (s6Step217EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step217EntryGvBefore s6Step217EntryGvAfter s6Step217EntryGvAfter
    s6Step217EntryGvRow s6Step217EntryGvOut 123 s6Step217EntryGvFresh [] [] []
    (growRow 775 s6Step217EntryGvFresh) ([]) s6Step217EntryGv_Incoming s6Step217EntryGv_checked h4 s6Step217EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step217EntryFvBefore s6Step217EntryFvAfter s6Step217EntryGvAfter
    s6Step217EntryFvRow s6Step217EntryFvOut 123 s6Step217EntryFvFresh [(s6Step217EntryGvRow,123)] [s6Step217EntryGvFresh] [s6Step217EntryGvOut]
    (growRow 776 s6Step217EntryFvFresh) ((growRow 775 s6Step217EntryGvFresh ++ [])) s6Step217EntryFv_Incoming s6Step217EntryFv_checked h3 s6Step217EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step217EntryGBefore s6Step217EntryGAfter s6Step217EntryGvAfter
    s6Step217EntryGRow s6Step217EntryGOut 162 s6Step217EntryGFresh [(s6Step217EntryFvRow,123),(s6Step217EntryGvRow,123)] [s6Step217EntryFvFresh,s6Step217EntryGvFresh] [s6Step217EntryFvOut,s6Step217EntryGvOut]
    (growRow 777 s6Step217EntryGFresh) ((growRow 776 s6Step217EntryFvFresh ++ (growRow 775 s6Step217EntryGvFresh ++ []))) s6Step217EntryG_Incoming s6Step217EntryG_checked h2 s6Step217EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step217EntryFBefore s6Step217EntryFAfter s6Step217EntryGvAfter
    s6Step217EntryFRow s6Step217EntryFOut 162 s6Step217EntryFFresh [(s6Step217EntryGRow,162),(s6Step217EntryFvRow,123),(s6Step217EntryGvRow,123)] [s6Step217EntryGFresh,s6Step217EntryFvFresh,s6Step217EntryGvFresh] [s6Step217EntryGOut,s6Step217EntryFvOut,s6Step217EntryGvOut]
    (growRow 795 s6Step217EntryFFresh) ((growRow 777 s6Step217EntryGFresh ++ (growRow 776 s6Step217EntryFvFresh ++ (growRow 775 s6Step217EntryGvFresh ++ [])))) s6Step217EntryF_Incoming s6Step217EntryF_checked h1 s6Step217EntryF_Outgoing
  exact h0

private theorem s6Step217EntryBank_checked : compileHmrBankResizeLog .entry s6Step217EntryFBefore ⟨s6Step217EntryFRow,s6Step217EntryGRow,s6Step217EntryFvRow,s6Step217EntryGvRow⟩ ⟨162,162,123,123⟩ [s6Step217EntryFFresh,s6Step217EntryGFresh,s6Step217EntryFvFresh,s6Step217EntryGvFresh]=
    some (s6Step217EntryGvAfter,⟨s6Step217EntryFOut,s6Step217EntryGOut,s6Step217EntryFvOut,s6Step217EntryGvOut⟩,(growRow 795 s6Step217EntryFFresh ++ (growRow 777 s6Step217EntryGFresh ++ (growRow 776 s6Step217EntryFvFresh ++ (growRow 775 s6Step217EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step217EntryBank_rows]
  rfl

private def s6Step217ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<417) ∨ (418≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217ExitFBefore : Arena := s6Step217ExitGAfter

private def s6Step217ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 845],795⟩

private def s6Step217ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 873],776⟩

private def s6Step217ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858, 882],777⟩

private def s6Step217ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 855],775⟩

private theorem s6Step217ExitBank_incomingDistinct : ([s6Step217ExitGRow,s6Step217ExitFRow,s6Step217ExitFvRow,s6Step217ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217ExitF_Incoming : rowsOwned s6Step217ExitFBefore [s6Step217ExitFRow,s6Step217ExitFvRow,s6Step217ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217ExitGRow,s6Step217ExitFRow,s6Step217ExitFvRow,s6Step217ExitGvRow] 1 s6Step217ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217ExitBank_outgoingOwned : rowsOwned s6Step217ExitGvAfter [s6Step217ExitGOut,s6Step217ExitFOut,s6Step217ExitFvOut,s6Step217ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step217ExitGvAfter (fun q => (0≤q ∧ q<417) ∨ (418≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217ExitF_Outgoing : rowsOwned s6Step217ExitGvAfter [s6Step217ExitFOut,s6Step217ExitFvOut,s6Step217ExitGvOut] :=
  hmrRows_owned_drop s6Step217ExitGvAfter [s6Step217ExitGOut,s6Step217ExitFOut,s6Step217ExitFvOut,s6Step217ExitGvOut] 1 s6Step217ExitBank_outgoingOwned

private theorem s6Step217ExitF_distinct : (s6Step217ExitFRow.sign::s6Step217ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217ExitF_owned : (s6Step217ExitFRow.sign::s6Step217ExitFRow.payload).toFinset⊆s6Step217ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217ExitF_retired : s6Step217ExitFBefore.retireSet s6Step217ExitFExtra.toFinset=s6Step217ExitFAfter := by
  unfold Arena.retireSet s6Step217ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step217ExitFBefore,s6Step217ExitGAfter,s6Step217ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step217ExitF_checked : planRowResizeLog s6Step217ExitFBefore s6Step217ExitFRow 161 []=
    some (s6Step217ExitFAfter,s6Step217ExitFOut,shrinkRow 795 s6Step217ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step217ExitFBefore s6Step217ExitFRow 161 s6Step217ExitF_distinct s6Step217ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step217ExitFRow.payload.take 161) s6Step217ExitFRow.sign=s6Step217ExitFOut := by decide +kernel
  have hi : s6Step217ExitFRow.payload.drop 161=s6Step217ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step217ExitF_retired] at result
  exact result

private def s6Step217ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<417) ∨ (418≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217ExitFvBefore : Arena := s6Step217ExitFAfter

private theorem s6Step217ExitFv_Incoming : rowsOwned s6Step217ExitFvBefore [s6Step217ExitFvRow,s6Step217ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217ExitGRow,s6Step217ExitFRow,s6Step217ExitFvRow,s6Step217ExitGvRow] 2 s6Step217ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217ExitFvBefore (fun q => (0≤q ∧ q<417) ∨ (418≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217ExitFv_Outgoing : rowsOwned s6Step217ExitGvAfter [s6Step217ExitFvOut,s6Step217ExitGvOut] :=
  hmrRows_owned_drop s6Step217ExitGvAfter [s6Step217ExitGOut,s6Step217ExitFOut,s6Step217ExitFvOut,s6Step217ExitGvOut] 2 s6Step217ExitBank_outgoingOwned

private theorem s6Step217ExitFv_distinct : (s6Step217ExitFvRow.sign::s6Step217ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217ExitFv_owned : (s6Step217ExitFvRow.sign::s6Step217ExitFvRow.payload).toFinset⊆s6Step217ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217ExitFvBefore (fun q => (0≤q ∧ q<417) ∨ (418≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217ExitFv_retired : s6Step217ExitFvBefore.retireSet s6Step217ExitFvExtra.toFinset=s6Step217ExitFvAfter := by
  unfold Arena.retireSet s6Step217ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step217ExitFvBefore,s6Step217ExitFAfter,s6Step217ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step217ExitFv_checked : planRowResizeLog s6Step217ExitFvBefore s6Step217ExitFvRow 123 []=
    some (s6Step217ExitFvAfter,s6Step217ExitFvOut,shrinkRow 776 s6Step217ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step217ExitFvBefore s6Step217ExitFvRow 123 s6Step217ExitFv_distinct s6Step217ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step217ExitFvRow.payload.take 123) s6Step217ExitFvRow.sign=s6Step217ExitFvOut := by decide +kernel
  have hi : s6Step217ExitFvRow.payload.drop 123=s6Step217ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step217ExitFv_retired] at result
  exact result

private def s6Step217ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step217ExitG_Incoming : rowsOwned s6Step217ExitGBefore [s6Step217ExitGRow,s6Step217ExitFRow,s6Step217ExitFvRow,s6Step217ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217ExitGRow,s6Step217ExitFRow,s6Step217ExitFvRow,s6Step217ExitGvRow] 0 s6Step217ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217ExitG_Outgoing : rowsOwned s6Step217ExitGvAfter [s6Step217ExitGOut,s6Step217ExitFOut,s6Step217ExitFvOut,s6Step217ExitGvOut] :=
  hmrRows_owned_drop s6Step217ExitGvAfter [s6Step217ExitGOut,s6Step217ExitFOut,s6Step217ExitFvOut,s6Step217ExitGvOut] 0 s6Step217ExitBank_outgoingOwned

private theorem s6Step217ExitG_distinct : (s6Step217ExitGRow.sign::s6Step217ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217ExitG_owned : (s6Step217ExitGRow.sign::s6Step217ExitGRow.payload).toFinset⊆s6Step217ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217ExitG_retired : s6Step217ExitGBefore.retireSet s6Step217ExitGExtra.toFinset=s6Step217ExitGAfter := by
  unfold Arena.retireSet s6Step217ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step217ExitGBefore,s6Step217ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step217ExitG_checked : planRowResizeLog s6Step217ExitGBefore s6Step217ExitGRow 162 []=
    some (s6Step217ExitGAfter,s6Step217ExitGOut,shrinkRow 777 s6Step217ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step217ExitGBefore s6Step217ExitGRow 162 s6Step217ExitG_distinct s6Step217ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step217ExitGRow.payload.take 162) s6Step217ExitGRow.sign=s6Step217ExitGOut := by decide +kernel
  have hi : s6Step217ExitGRow.payload.drop 162=s6Step217ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step217ExitG_retired] at result
  exact result

private def s6Step217ExitGvBefore : Arena := s6Step217ExitFvAfter

private theorem s6Step217ExitGv_Incoming : rowsOwned s6Step217ExitGvBefore [s6Step217ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217ExitGRow,s6Step217ExitFRow,s6Step217ExitFvRow,s6Step217ExitGvRow] 3 s6Step217ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217ExitGvBefore (fun q => (0≤q ∧ q<417) ∨ (418≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217ExitGv_Outgoing : rowsOwned s6Step217ExitGvAfter [s6Step217ExitGvOut] :=
  hmrRows_owned_drop s6Step217ExitGvAfter [s6Step217ExitGOut,s6Step217ExitFOut,s6Step217ExitFvOut,s6Step217ExitGvOut] 3 s6Step217ExitBank_outgoingOwned

private theorem s6Step217ExitGv_distinct : (s6Step217ExitGvRow.sign::s6Step217ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217ExitGv_owned : (s6Step217ExitGvRow.sign::s6Step217ExitGvRow.payload).toFinset⊆s6Step217ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217ExitGvBefore (fun q => (0≤q ∧ q<417) ∨ (418≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217ExitGv_retired : s6Step217ExitGvBefore.retireSet s6Step217ExitGvExtra.toFinset=s6Step217ExitGvAfter := by
  unfold Arena.retireSet s6Step217ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step217ExitGvBefore,s6Step217ExitFvAfter,s6Step217ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step217ExitGv_checked : planRowResizeLog s6Step217ExitGvBefore s6Step217ExitGvRow 123 []=
    some (s6Step217ExitGvAfter,s6Step217ExitGvOut,shrinkRow 775 s6Step217ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step217ExitGvBefore s6Step217ExitGvRow 123 s6Step217ExitGv_distinct s6Step217ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step217ExitGvRow.payload.take 123) s6Step217ExitGvRow.sign=s6Step217ExitGvOut := by decide +kernel
  have hi : s6Step217ExitGvRow.payload.drop 123=s6Step217ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step217ExitGv_retired] at result
  exact result

private theorem s6Step217ExitBank_rows : planWindowRowsLog s6Step217ExitGBefore [(s6Step217ExitGRow,162),(s6Step217ExitFRow,161),(s6Step217ExitFvRow,123),(s6Step217ExitGvRow,123)] [[],[],[],[]]=
    some (s6Step217ExitGvAfter,[s6Step217ExitGOut,s6Step217ExitFOut,s6Step217ExitFvOut,s6Step217ExitGvOut],(shrinkRow 777 s6Step217ExitGExtra ++ (shrinkRow 795 s6Step217ExitFExtra ++ (shrinkRow 776 s6Step217ExitFvExtra ++ (shrinkRow 775 s6Step217ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step217ExitGvAfter [] []=some (s6Step217ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step217ExitGvBefore s6Step217ExitGvAfter s6Step217ExitGvAfter
    s6Step217ExitGvRow s6Step217ExitGvOut 123 [] [] [] []
    (shrinkRow 775 s6Step217ExitGvExtra) ([]) s6Step217ExitGv_Incoming s6Step217ExitGv_checked h4 s6Step217ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step217ExitFvBefore s6Step217ExitFvAfter s6Step217ExitGvAfter
    s6Step217ExitFvRow s6Step217ExitFvOut 123 [] [(s6Step217ExitGvRow,123)] [[]] [s6Step217ExitGvOut]
    (shrinkRow 776 s6Step217ExitFvExtra) ((shrinkRow 775 s6Step217ExitGvExtra ++ [])) s6Step217ExitFv_Incoming s6Step217ExitFv_checked h3 s6Step217ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step217ExitFBefore s6Step217ExitFAfter s6Step217ExitGvAfter
    s6Step217ExitFRow s6Step217ExitFOut 161 [] [(s6Step217ExitFvRow,123),(s6Step217ExitGvRow,123)] [[],[]] [s6Step217ExitFvOut,s6Step217ExitGvOut]
    (shrinkRow 795 s6Step217ExitFExtra) ((shrinkRow 776 s6Step217ExitFvExtra ++ (shrinkRow 775 s6Step217ExitGvExtra ++ []))) s6Step217ExitF_Incoming s6Step217ExitF_checked h2 s6Step217ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step217ExitGBefore s6Step217ExitGAfter s6Step217ExitGvAfter
    s6Step217ExitGRow s6Step217ExitGOut 162 [] [(s6Step217ExitFRow,161),(s6Step217ExitFvRow,123),(s6Step217ExitGvRow,123)] [[],[],[]] [s6Step217ExitFOut,s6Step217ExitFvOut,s6Step217ExitGvOut]
    (shrinkRow 777 s6Step217ExitGExtra) ((shrinkRow 795 s6Step217ExitFExtra ++ (shrinkRow 776 s6Step217ExitFvExtra ++ (shrinkRow 775 s6Step217ExitGvExtra ++ [])))) s6Step217ExitG_Incoming s6Step217ExitG_checked h1 s6Step217ExitG_Outgoing
  exact h0

private theorem s6Step217ExitBank_checked : compileHmrBankResizeLog .exit s6Step217ExitGBefore ⟨s6Step217ExitFRow,s6Step217ExitGRow,s6Step217ExitFvRow,s6Step217ExitGvRow⟩ ⟨161,162,123,123⟩ [[],[],[],[]]=
    some (s6Step217ExitGvAfter,⟨s6Step217ExitFOut,s6Step217ExitGOut,s6Step217ExitFvOut,s6Step217ExitGvOut⟩,(shrinkRow 777 s6Step217ExitGExtra ++ (shrinkRow 795 s6Step217ExitFExtra ++ (shrinkRow 776 s6Step217ExitFvExtra ++ (shrinkRow 775 s6Step217ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step217ExitBank_rows]
  rfl

private theorem s6Step217Add0_apart : Disjoint s6Step217Add0Arena.live s6Step217Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step217Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217Add0_card : s6Step217Add0Arena.live.card=891 := by
  decide +kernel

private theorem s6Step217Add0_borrowed : s6Step217Add0Arena.checkBorrow (hmrHybridCount s6Step217Add0Arena s6Step217Add0B.length) s6Step217Add0Work=some s6Step217Add0During := by
  have len : s6Step217Add0Work.length=hmrHybridCount s6Step217Add0Arena s6Step217Add0B.length := by
    rw [hmrHybridCount,s6Step217Add0_card]
    decide +kernel
  have nd : s6Step217Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step217Add0Arena s6Step217Add0During s6Step217Add0Work.toFinset s6Step217Add0_bounded s6Step217Add0_apart rfl

private theorem s6Step217Add0_distinct : (822::807::825::(s6Step217Add0A++s6Step217Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217Add0_owned : (822::807::825::(s6Step217Add0A++s6Step217Add0B)).toFinset⊆s6Step217Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step217Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217Add0_checked : compileHmrHybridCinLog s6Step217Add0Arena 807 822 825 s6Step217Add0A s6Step217Add0B s6Step217Add0Work=some s6Step217Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step217Add0Arena s6Step217Add0During 807 822 825 s6Step217Add0A s6Step217Add0B s6Step217Add0Work
    (by decide +kernel) (by decide +kernel) s6Step217Add0_distinct
    (fun q hq => s6Step217Add0_owned (List.mem_toFinset.mpr hq)) s6Step217Add0_borrowed

private theorem s6Step217Add1_apart : Disjoint s6Step217Add1Arena.live s6Step217Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step217Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217Add1_card : s6Step217Add1Arena.live.card=891 := by
  decide +kernel

private theorem s6Step217Add1_borrowed : s6Step217Add1Arena.checkBorrow (hmrHybridCount s6Step217Add1Arena s6Step217Add1B.length) s6Step217Add1Work=some s6Step217Add1During := by
  have len : s6Step217Add1Work.length=hmrHybridCount s6Step217Add1Arena s6Step217Add1B.length := by
    rw [hmrHybridCount,s6Step217Add1_card]
    decide +kernel
  have nd : s6Step217Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step217Add1Arena s6Step217Add1During s6Step217Add1Work.toFinset s6Step217Add1_bounded s6Step217Add1_apart rfl

private theorem s6Step217Add1_distinct : (822::807::825::(s6Step217Add1A++s6Step217Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217Add1_owned : (822::807::825::(s6Step217Add1A++s6Step217Add1B)).toFinset⊆s6Step217Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step217Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217Add1_checked : compileHmrHybridCinLog s6Step217Add1Arena 807 822 825 s6Step217Add1A s6Step217Add1B s6Step217Add1Work=some s6Step217Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step217Add1Arena s6Step217Add1During 807 822 825 s6Step217Add1A s6Step217Add1B s6Step217Add1Work
    (by decide +kernel) (by decide +kernel) s6Step217Add1_distinct
    (fun q hq => s6Step217Add1_owned (List.mem_toFinset.mpr hq)) s6Step217Add1_borrowed

private theorem s6Step217F4_apart : Disjoint (s6Step217Add0A++s6Step217Add0B).toFinset (s6Step217Add1A++s6Step217Add1B).toFinset := by
  have nd : ((s6Step217Add0A++s6Step217Add0B)++(s6Step217Add1A++s6Step217Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step217F4_carry : s6Step217F4FlagArena.checkBorrow 1 [825]=some s6Step217Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step217F4FlagArena,s6Step217HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step217F4FlagArena,s6Step217HeadFvAfter,s6Step217Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step217F4_distinct : (875::807::822::825::((s6Step217Add0A++s6Step217Add1A)++(s6Step217Add0B++s6Step217Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217F4_flag : s6Step217HeadFvAfter.checkBorrow 1 [822]=some s6Step217F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step217HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step217F4_owned : (875::807::((s6Step217Add0A++s6Step217Add1A)++(s6Step217Add0B++s6Step217Add1B))).toFinset⊆s6Step217HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step217HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217F4_checked : compileHmrHybridF4Log s6Step217HeadFvAfter 875 807 s6Step217Add0A s6Step217Add0B s6Step217Add1A s6Step217Add1B [822] [825] s6Step217Add0Work s6Step217Add1Work=some s6Step217F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step217HeadFvAfter s6Step217F4FlagArena s6Step217Add0Arena s6Step217Add0During s6Step217Add1During 875 807
    s6Step217Add0A s6Step217Add0B s6Step217Add1A s6Step217Add1B [822] [825] s6Step217Add0Work s6Step217Add1Work
    (fun q hq => s6Step217F4_owned (List.mem_toFinset.mpr hq)) s6Step217F4_flag s6Step217F4_carry
    s6Step217F4_distinct s6Step217F4_apart s6Step217Add0_checked s6Step217Add1_checked

private theorem s6Step217Front_branch : s6Step217FrontSigmaArena.checkBorrow 1 [807]=some s6Step217HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step217FrontSigmaArena,s6Step217EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step217FrontSigmaArena,s6Step217EntryGvAfter,s6Step217HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step217Front_entry : HmrFrontEntryValid s6Step217EntryFBefore s6Step217FrontBank 162 123 ⟨161,162,123,123⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step217FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step217EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step217EntryFBefore (fun q => ([(0,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step217FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step217Front_sigma : s6Step217EntryGvAfter.checkBorrow 1 [875]=some s6Step217FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step217EntryGvAfter,arenaWires]
  · rfl

private def s6Step217HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217HeadFBefore : Arena := s6Step217HeadGAfter

private def s6Step217HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417],795⟩

private def s6Step217HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802],776⟩

private def s6Step217HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858],777⟩

private def s6Step217HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩

private theorem s6Step217HeadBank_incomingDistinct : ([s6Step217HeadGRow,s6Step217HeadFRow,s6Step217HeadGvRow,s6Step217HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217HeadF_Incoming : rowsOwned s6Step217HeadFBefore [s6Step217HeadFRow,s6Step217HeadGvRow,s6Step217HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217HeadGRow,s6Step217HeadFRow,s6Step217HeadGvRow,s6Step217HeadFvRow] 1 s6Step217HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217HeadBank_outgoingOwned : rowsOwned s6Step217HeadFvAfter [s6Step217HeadGOut,s6Step217HeadFOut,s6Step217HeadGvOut,s6Step217HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step217HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217HeadF_Outgoing : rowsOwned s6Step217HeadFvAfter [s6Step217HeadFOut,s6Step217HeadGvOut,s6Step217HeadFvOut] :=
  hmrRows_owned_drop s6Step217HeadFvAfter [s6Step217HeadGOut,s6Step217HeadFOut,s6Step217HeadGvOut,s6Step217HeadFvOut] 1 s6Step217HeadBank_outgoingOwned

private theorem s6Step217HeadF_distinct : (s6Step217HeadFRow.sign::s6Step217HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217HeadF_owned : (s6Step217HeadFRow.sign::s6Step217HeadFRow.payload).toFinset⊆s6Step217HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217HeadF_reserved : s6Step217HeadFBefore.reserve s6Step217HeadFFresh.toFinset=some s6Step217HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step217HeadFFresh,arenaWires]
  · norm_num [s6Step217HeadFBefore,s6Step217HeadGAfter,s6Step217HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step217HeadFAfter,s6Step217HeadFBefore,s6Step217HeadGAfter,s6Step217HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step217HeadF_checked : planRowResizeLog s6Step217HeadFBefore s6Step217HeadFRow 163 s6Step217HeadFFresh=
    some (s6Step217HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 845],795⟩,growRow 795 s6Step217HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step217HeadFBefore s6Step217HeadFAfter s6Step217HeadFRow 163 s6Step217HeadFFresh
    s6Step217HeadF_distinct s6Step217HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step217HeadF_reserved
  have rowEq : WindowRow.mk (s6Step217HeadFRow.payload++s6Step217HeadFFresh) s6Step217HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 845],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step217HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step217HeadFvBefore : Arena := s6Step217HeadGvAfter

private theorem s6Step217HeadFv_Incoming : rowsOwned s6Step217HeadFvBefore [s6Step217HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217HeadGRow,s6Step217HeadFRow,s6Step217HeadGvRow,s6Step217HeadFvRow] 3 s6Step217HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217HeadFv_Outgoing : rowsOwned s6Step217HeadFvAfter [s6Step217HeadFvOut] :=
  hmrRows_owned_drop s6Step217HeadFvAfter [s6Step217HeadGOut,s6Step217HeadFOut,s6Step217HeadGvOut,s6Step217HeadFvOut] 3 s6Step217HeadBank_outgoingOwned

private theorem s6Step217HeadFv_distinct : (s6Step217HeadFvRow.sign::s6Step217HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217HeadFv_owned : (s6Step217HeadFvRow.sign::s6Step217HeadFvRow.payload).toFinset⊆s6Step217HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217HeadFv_reserved : s6Step217HeadFvBefore.reserve s6Step217HeadFvFresh.toFinset=some s6Step217HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step217HeadFvFresh,arenaWires]
  · norm_num [s6Step217HeadFvBefore,s6Step217HeadGvAfter,s6Step217HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step217HeadFvAfter,s6Step217HeadFvBefore,s6Step217HeadGvAfter,s6Step217HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step217HeadFv_checked : planRowResizeLog s6Step217HeadFvBefore s6Step217HeadFvRow 124 s6Step217HeadFvFresh=
    some (s6Step217HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 873],776⟩,growRow 776 s6Step217HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step217HeadFvBefore s6Step217HeadFvAfter s6Step217HeadFvRow 124 s6Step217HeadFvFresh
    s6Step217HeadFv_distinct s6Step217HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step217HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step217HeadFvRow.payload++s6Step217HeadFvFresh) s6Step217HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 873],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step217HeadG_Incoming : rowsOwned s6Step217HeadGBefore [s6Step217HeadGRow,s6Step217HeadFRow,s6Step217HeadGvRow,s6Step217HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217HeadGRow,s6Step217HeadFRow,s6Step217HeadGvRow,s6Step217HeadFvRow] 0 s6Step217HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217HeadG_Outgoing : rowsOwned s6Step217HeadFvAfter [s6Step217HeadGOut,s6Step217HeadFOut,s6Step217HeadGvOut,s6Step217HeadFvOut] :=
  hmrRows_owned_drop s6Step217HeadFvAfter [s6Step217HeadGOut,s6Step217HeadFOut,s6Step217HeadGvOut,s6Step217HeadFvOut] 0 s6Step217HeadBank_outgoingOwned

private theorem s6Step217HeadG_distinct : (s6Step217HeadGRow.sign::s6Step217HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217HeadG_owned : (s6Step217HeadGRow.sign::s6Step217HeadGRow.payload).toFinset⊆s6Step217HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217HeadG_reserved : s6Step217HeadGBefore.reserve s6Step217HeadGFresh.toFinset=some s6Step217HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step217HeadGFresh,arenaWires]
  · norm_num [s6Step217HeadGBefore,s6Step217HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step217HeadGAfter,s6Step217HeadGBefore,s6Step217HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step217HeadG_checked : planRowResizeLog s6Step217HeadGBefore s6Step217HeadGRow 163 s6Step217HeadGFresh=
    some (s6Step217HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858, 882],777⟩,growRow 777 s6Step217HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step217HeadGBefore s6Step217HeadGAfter s6Step217HeadGRow 163 s6Step217HeadGFresh
    s6Step217HeadG_distinct s6Step217HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step217HeadG_reserved
  have rowEq : WindowRow.mk (s6Step217HeadGRow.payload++s6Step217HeadGFresh) s6Step217HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858, 882],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step217HeadGvBefore : Arena := s6Step217HeadFAfter

private theorem s6Step217HeadGv_Incoming : rowsOwned s6Step217HeadGvBefore [s6Step217HeadGvRow,s6Step217HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step217HeadGRow,s6Step217HeadFRow,s6Step217HeadGvRow,s6Step217HeadFvRow] 2 s6Step217HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step217HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step217HeadGv_Outgoing : rowsOwned s6Step217HeadFvAfter [s6Step217HeadGvOut,s6Step217HeadFvOut] :=
  hmrRows_owned_drop s6Step217HeadFvAfter [s6Step217HeadGOut,s6Step217HeadFOut,s6Step217HeadGvOut,s6Step217HeadFvOut] 2 s6Step217HeadBank_outgoingOwned

private theorem s6Step217HeadGv_distinct : (s6Step217HeadGvRow.sign::s6Step217HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step217HeadGv_owned : (s6Step217HeadGvRow.sign::s6Step217HeadGvRow.payload).toFinset⊆s6Step217HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step217HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step217HeadGv_reserved : s6Step217HeadGvBefore.reserve s6Step217HeadGvFresh.toFinset=some s6Step217HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step217HeadGvFresh,arenaWires]
  · norm_num [s6Step217HeadGvBefore,s6Step217HeadFAfter,s6Step217HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step217HeadGvAfter,s6Step217HeadGvBefore,s6Step217HeadFAfter,s6Step217HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step217HeadGv_checked : planRowResizeLog s6Step217HeadGvBefore s6Step217HeadGvRow 124 s6Step217HeadGvFresh=
    some (s6Step217HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 855],775⟩,growRow 775 s6Step217HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step217HeadGvBefore s6Step217HeadGvAfter s6Step217HeadGvRow 124 s6Step217HeadGvFresh
    s6Step217HeadGv_distinct s6Step217HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step217HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step217HeadGvRow.payload++s6Step217HeadGvFresh) s6Step217HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 855],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step217HeadBank_rows : planWindowRowsLog s6Step217HeadGBefore [(s6Step217HeadGRow,163),(s6Step217HeadFRow,163),(s6Step217HeadGvRow,124),(s6Step217HeadFvRow,124)] [s6Step217HeadGFresh,s6Step217HeadFFresh,s6Step217HeadGvFresh,s6Step217HeadFvFresh]=
    some (s6Step217HeadFvAfter,[s6Step217HeadGOut,s6Step217HeadFOut,s6Step217HeadGvOut,s6Step217HeadFvOut],(growRow 777 s6Step217HeadGFresh ++ (growRow 795 s6Step217HeadFFresh ++ (growRow 775 s6Step217HeadGvFresh ++ (growRow 776 s6Step217HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step217HeadFvAfter [] []=some (s6Step217HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step217HeadFvBefore s6Step217HeadFvAfter s6Step217HeadFvAfter
    s6Step217HeadFvRow s6Step217HeadFvOut 124 s6Step217HeadFvFresh [] [] []
    (growRow 776 s6Step217HeadFvFresh) ([]) s6Step217HeadFv_Incoming s6Step217HeadFv_checked h4 s6Step217HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step217HeadGvBefore s6Step217HeadGvAfter s6Step217HeadFvAfter
    s6Step217HeadGvRow s6Step217HeadGvOut 124 s6Step217HeadGvFresh [(s6Step217HeadFvRow,124)] [s6Step217HeadFvFresh] [s6Step217HeadFvOut]
    (growRow 775 s6Step217HeadGvFresh) ((growRow 776 s6Step217HeadFvFresh ++ [])) s6Step217HeadGv_Incoming s6Step217HeadGv_checked h3 s6Step217HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step217HeadFBefore s6Step217HeadFAfter s6Step217HeadFvAfter
    s6Step217HeadFRow s6Step217HeadFOut 163 s6Step217HeadFFresh [(s6Step217HeadGvRow,124),(s6Step217HeadFvRow,124)] [s6Step217HeadGvFresh,s6Step217HeadFvFresh] [s6Step217HeadGvOut,s6Step217HeadFvOut]
    (growRow 795 s6Step217HeadFFresh) ((growRow 775 s6Step217HeadGvFresh ++ (growRow 776 s6Step217HeadFvFresh ++ []))) s6Step217HeadF_Incoming s6Step217HeadF_checked h2 s6Step217HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step217HeadGBefore s6Step217HeadGAfter s6Step217HeadFvAfter
    s6Step217HeadGRow s6Step217HeadGOut 163 s6Step217HeadGFresh [(s6Step217HeadFRow,163),(s6Step217HeadGvRow,124),(s6Step217HeadFvRow,124)] [s6Step217HeadFFresh,s6Step217HeadGvFresh,s6Step217HeadFvFresh] [s6Step217HeadFOut,s6Step217HeadGvOut,s6Step217HeadFvOut]
    (growRow 777 s6Step217HeadGFresh) ((growRow 795 s6Step217HeadFFresh ++ (growRow 775 s6Step217HeadGvFresh ++ (growRow 776 s6Step217HeadFvFresh ++ [])))) s6Step217HeadG_Incoming s6Step217HeadG_checked h1 s6Step217HeadG_Outgoing
  exact h0

private theorem s6Step217HeadBank_checked : compileHmrBankResizeLog .headroom s6Step217HeadGBefore ⟨s6Step217HeadFRow,s6Step217HeadGRow,s6Step217HeadFvRow,s6Step217HeadGvRow⟩ ⟨163,163,124,124⟩ [s6Step217HeadGFresh,s6Step217HeadFFresh,s6Step217HeadGvFresh,s6Step217HeadFvFresh]=
    some (s6Step217HeadFvAfter,⟨s6Step217HeadFOut,s6Step217HeadGOut,s6Step217HeadFvOut,s6Step217HeadGvOut⟩,(growRow 777 s6Step217HeadGFresh ++ (growRow 795 s6Step217HeadFFresh ++ (growRow 775 s6Step217HeadGvFresh ++ (growRow 776 s6Step217HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step217HeadBank_rows]
  rfl

private theorem s6Step217Front_checked : compileHmrSourceFrontLog s6Step217EntryFBefore s6Step217FrontBank 162 123 ⟨161,162,123,123⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step217FrontLog=some s6Step217FrontPlan := by
  have pairEq : s6Step217FrontPair=⟨s6Step217HeadFRow,s6Step217HeadGRow,s6Step217HeadFvRow,s6Step217HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step217FrontHead=⟨s6Step217ExitFRow,s6Step217ExitGRow,s6Step217ExitFvRow,s6Step217ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step217Add0A=s6Step217FrontHead.f.wires := by decide +kernel
  have gEq : s6Step217Add0B=s6Step217FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step217Add1A=s6Step217FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step217Add1B=s6Step217FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step217EntryFBefore s6Step217FrontBank 162 123 ⟨161,162,123,123⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step217FrontLog s6Step217FrontPlan
  · exact s6Step217Front_entry
  · exact s6Step217EntryBank_checked
  · exact s6Step217Front_sigma
  · rfl
  · exact s6Step217Front_branch
  · rfl
  · simpa only [s6Step217FrontPlan,pairEq] using s6Step217HeadBank_checked
  · simpa only [s6Step217FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step217F4_checked
  · exact s6Step217Counter_checked
  · rfl
  · simpa only [s6Step217FrontPlan,headEq] using s6Step217ExitBank_checked

private theorem s6Step217Complete_explicit_checked : compileHmrEarlyStepLog s6Step217EntryFBefore s6Step217FrontBank 162 123 ⟨161,162,123,123⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step217CompleteLog=some s6Step217CompletePlan := by
  let Q := s6Step217EarlyControlPlan
  have hq := s6Step217EarlyControl_plan_checked
  have fv1 : s6Step217CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step217CompleteOut.fv.payload[2]?.getD s6Step217CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step217CompleteOut.fv.payload[3]?.getD s6Step217CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step217CompleteOut.fv.payload[4]?.getD s6Step217CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step217EntryFBefore s6Step217EarlyControlArena s6Step217FrontBank 162 123 ⟨161,162,123,123⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step217CompleteLog s6Step217FrontPlan Q
    s6Step217Front_checked s6Step217Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step217Complete_owned s6Step217Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step217EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 s6Step217CompleteOut.fv.second (s6Step217CompleteOut.fv.payload[2]?.getD s6Step217CompleteOut.fv.sign) (s6Step217CompleteOut.fv.payload[3]?.getD s6Step217CompleteOut.fv.sign) (s6Step217CompleteOut.fv.payload[4]?.getD s6Step217CompleteOut.fv.sign) 807 47 s6Step217EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep217Arena : Arena := s6Step217EntryFBefore
def s6PrivateStep217Bank : WindowBank := s6Step217FrontBank
def s6PrivateStep217Spec : HmrSourceWalkStepLog := ⟨162,123,⟨161,162,123,123⟩,47,.early s6Step217CompleteLog⟩
def s6PrivateStep217Plan : HmrSourceStepPlan := .early s6Step217CompletePlan
theorem s6PrivateStep217_source : s6PrivateStep217Spec=s6ObservedLogs208[9] := rfl
theorem s6PrivateStep217_checked : compileHmrSourceStepLog s6PrivateStep217Arena s6PrivateStep217Bank
    s6PrivateStep217Spec.fgWidth s6PrivateStep217Spec.vWidth s6PrivateStep217Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 217 s6PrivateStep217Spec.need none s6PrivateStep217Spec.log=some s6PrivateStep217Plan := by
  change compileHmrSourceStepLog s6Step217EntryFBefore s6Step217FrontBank 162 123 ⟨161,162,123,123⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 217 47 none (.early s6Step217CompleteLog)=some (.early s6Step217CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 217<498)]
  rw [s6Step217Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
