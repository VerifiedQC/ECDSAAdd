import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep216
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

private def s6Step218CompleteMoves : List (Wire × Wire) := []

private def s6Step218EarlyControlLog : HmrEarlyControlLog := ⟨[845, 807, 873, 858, 855],[822],[825],[869, 786, 810, 809, 817, 804],[]⟩

private def s6Step218FrontLog : HmrFrontAllocationLog := ⟨⟨[[807], [], [], []],[[855], [873], [845], [882]],[[], [], [], []]⟩,[875],[768],[822],[825],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step218CompleteLog : HmrEarlyStepLog := ⟨s6Step218FrontLog,s6Step218CompleteMoves,s6Step218EarlyControlLog⟩

private def s6Step218ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416],795⟩

private def s6Step218ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882],776⟩

private def s6Step218ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],777⟩

private def s6Step218ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩

private def s6Step218FrontOut : WindowBank := ⟨s6Step218ExitFOut,s6Step218ExitGOut,s6Step218ExitFvOut,s6Step218ExitGvOut⟩

private def s6Step218CompleteOut : WindowBank := s6Step218FrontOut.repacked s6Step218CompleteMoves

private def s6Step218EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step218EarlyControlPositiveArena,[822],s6Step218EarlyControlEqualityArena,[825],⟨⟨875,false⟩,[⟨⟨822,false⟩,825⟩]⟩⟩

private def s6Step218EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step218EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨772,false⟩,807⟩,⟨⟨771,false⟩,873⟩,⟨⟨770,false⟩,858⟩,⟨⟨769,false⟩,855⟩]⟩

private def s6Step218EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step218EarlyControlZeroArena,s6Step218EarlyControlZeroPlan,s6Step218EarlyControlClassPlan,s6Step218EarlyControlFlagArena,s6Step218EarlyControlFittedArena,s6Step218EarlyControlHistoryArena,s6Step218EarlyControlSigmaArena,s6Step218EarlyControlOutputArena,s6Step218EarlyControlLog⟩

private def s6Step218CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step218Counter_bounded : s6Step218CounterWork.toFinset⊆arenaWires := by norm_num [s6Step218CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step218HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218CounterDuring : Arena := ⟨s6Step218HeadFvAfter.live∪s6Step218CounterWork.toFinset,Finset.union_subset s6Step218HeadFvAfter.bounded s6Step218Counter_bounded⟩

private def s6Step218EntryFFresh : List Wire := [807]

private def s6Step218EntryFvFresh : List Wire := []

private def s6Step218EntryGFresh : List Wire := []

private def s6Step218EntryFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step218EntryGvAfter : Arena := s6Step218EntryFAfter

private def s6Step218EntryGvFresh : List Wire := []

private def s6Step218ExitFExtra : List Wire := [807, 873]

private def s6Step218ExitGExtra : List Wire := [858, 855]

private def s6Step218ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218ExitGvExtra : List Wire := [845]

private def s6Step218Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218Add0Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step218Add0_bounded : s6Step218Add0Work.toFinset⊆arenaWires := by
  have h : s6Step218Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step218Add0During : Arena := ⟨s6Step218Add0Arena.live∪s6Step218Add0Work.toFinset,Finset.union_subset s6Step218Add0Arena.bounded s6Step218Add0_bounded⟩

private def s6Step218Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218Add1Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step218Add1_bounded : s6Step218Add1Work.toFinset⊆arenaWires := by
  have h : s6Step218Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step218Add1During : Arena := ⟨s6Step218Add1Arena.live∪s6Step218Add1Work.toFinset,Finset.union_subset s6Step218Add1Arena.bounded s6Step218Add1_bounded⟩

private def s6Step218F4FlagArena : Arena := ⟨s6Step218HeadFvAfter.live∪{822},Finset.union_subset s6Step218HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step218F4Plan : HmrHybridF4Plan := ⟨s6Step218F4FlagArena,[822],s6Step218Add0Arena,[825],s6Step218Add0During,s6Step218Add0Work,s6Step218Add1During,s6Step218Add1Work⟩

private def s6Step218HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 807, 873],795⟩

private def s6Step218HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882],776⟩

private def s6Step218HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858, 855],777⟩

private def s6Step218HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 845],775⟩

private def s6Step218FrontHead : WindowBank := ⟨s6Step218HeadFOut,s6Step218HeadGOut,s6Step218HeadFvOut,s6Step218HeadGvOut⟩

private def s6Step218EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 807],795⟩

private def s6Step218EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802],776⟩

private def s6Step218EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858],777⟩

private def s6Step218EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩

private def s6Step218FrontPair : WindowBank := ⟨s6Step218EntryFOut,s6Step218EntryGOut,s6Step218EntryFvOut,s6Step218EntryGvOut⟩

private def s6Step218FrontSigmaArena : Arena := ⟨s6Step218EntryGvAfter.live∪{875},Finset.union_subset s6Step218EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step218HeadFFresh : List Wire := [873]

private def s6Step218HeadFvFresh : List Wire := [882]

private def s6Step218HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218HeadGFresh : List Wire := [855]

private def s6Step218HeadGvFresh : List Wire := [845]

private def s6Step218FrontPlan : HmrSourceFront := ⟨s6Step218EntryGvAfter,s6Step218FrontPair,(growRow 795 s6Step218EntryFFresh ++ (growRow 777 s6Step218EntryGFresh ++ (growRow 776 s6Step218EntryFvFresh ++ (growRow 775 s6Step218EntryGvFresh ++ [])))),s6Step218FrontSigmaArena,[875],s6Step218HeadGBefore,[768],
  s6Step218HeadFvAfter,s6Step218FrontHead,(growRow 777 s6Step218HeadGFresh ++ (growRow 795 s6Step218HeadFFresh ++ (growRow 775 s6Step218HeadGvFresh ++ (growRow 776 s6Step218HeadFvFresh ++ [])))),s6Step218F4Plan,s6Step218CounterDuring,s6Step218CounterWork,s6Step218ExitGvAfter,s6Step218FrontOut,(shrinkRow 777 s6Step218ExitGExtra ++ (shrinkRow 795 s6Step218ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step218ExitGvExtra ++ []))))⟩

private def s6Step218CompletePlan : HmrEarlyStepPlan := ⟨s6Step218FrontPlan,s6Step218EarlyControlArena,s6Step218EarlyControlPlan,s6Step218CompleteMoves⟩

private theorem s6Step218Complete_apart : List.Disjoint (s6Step218CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [875, 768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step218CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[875, 768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step218Complete_owned : (s6Step218CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step218EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218Complete_repack : s6Step218ExitGvAfter.checkRepack s6Step218CompleteMoves=some s6Step218EarlyControlArena := by rfl

private theorem s6Step218EarlyControl_branchOwned : ([768] : List Wire).toFinset⊆s6Step218EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218EarlyControl_branch : compileHmrBranchRetirement s6Step218EarlyControlSigmaArena 768=some s6Step218EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step218EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step218EarlyControlSigmaArena s6Step218EarlyControlOutputArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,858),(859,869),(870,873),(874,875),(876,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step218EarlyControl_classEqualityBorrow : s6Step218EarlyControlPositiveArena.checkBorrow (([875, 822] : List Wire).length-1) s6Step218EarlyControlLog.classWork=some s6Step218EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step218EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step218EarlyControlEqualityArena,s6Step218EarlyControlPositiveArena,s6Step218EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step218EarlyControl_classEqualityOwned : ([875, 822] : List Wire).toFinset⊆s6Step218EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218EarlyControl_classEquality : compileHmrEqualityLog s6Step218EarlyControlPositiveArena [875, 822] 0 s6Step218EarlyControlLog.classWork=some (s6Step218EarlyControlEqualityArena,s6Step218EarlyControlLog.classWork,s6Step218EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step218EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step218EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step218EarlyControl_classOwned : ([769, 855, 875] : List Wire).toFinset⊆s6Step218EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218EarlyControl_positiveBorrow : s6Step218EarlyControlZeroArena.checkBorrow (1) s6Step218EarlyControlLog.positiveWork=some s6Step218EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step218EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step218EarlyControlPositiveArena,s6Step218EarlyControlZeroArena,s6Step218EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step218EarlyControl_class : compileHmrSourceClassLog s6Step218EarlyControlZeroArena false 769 s6Step218EarlyControlZeroPlan.top 0 875 s6Step218EarlyControlLog.positiveWork s6Step218EarlyControlLog.classWork=some s6Step218EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step218EarlyControlClassPlan s6Step218EarlyControlZeroArena false 769 s6Step218EarlyControlZeroPlan.top 0 875
  constructor
  · decide +kernel
  · exact s6Step218EarlyControl_classOwned
  · exact s6Step218EarlyControl_positiveBorrow
  · exact s6Step218EarlyControl_classEquality

private theorem s6Step218EarlyControl_entryRecordOwned : ([768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step218EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218EarlyControl_entrySigmaOwned : ([875, 254] : List Wire).toFinset⊆s6Step218EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218EarlyControl_fitBorrow : s6Step218EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step218EarlyControlLog.recordFresh=some s6Step218EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step218EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step218EarlyControlFittedArena,s6Step218EarlyControlFlagArena,s6Step218EarlyControlLog,arenaWires]

private theorem s6Step218EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step218EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218EarlyControl_fit : compileHmrRecordGrowLog s6Step218EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step218EarlyControlLog.recordFresh=some s6Step218EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step218EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step218EarlyControl_fitBorrow

private theorem s6Step218EarlyControl_flagsBorrow : s6Step218EarlyControlEqualityArena.checkBorrow (6) s6Step218EarlyControlLog.flagWork=some s6Step218EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step218EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step218EarlyControlFlagArena,s6Step218EarlyControlEqualityArena,s6Step218EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step218EarlyControl_flagsOwned : ([825, 253, 252, 251] : List Wire).toFinset⊆s6Step218EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218EarlyControl_flags : compileHmrFlagsLog s6Step218EarlyControlClassPlan.equalityArena s6Step218EarlyControlClassPlan.equality.top 253 252 251 s6Step218EarlyControlLog.flagWork=some s6Step218EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step218EarlyControl_flagsOwned⟩
  · exact s6Step218EarlyControl_flagsBorrow

private theorem s6Step218EarlyControl_historyBorrow : s6Step218EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step218EarlyControlLog.recordFresh=some s6Step218EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step218EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step218EarlyControlHistoryArena,s6Step218EarlyControlArena,s6Step218EarlyControlLog,arenaWires]

private theorem s6Step218EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step218EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218EarlyControl_history : compileHmrRecordGrowLog s6Step218EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step218EarlyControlLog.recordFresh=some s6Step218EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step218EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step218EarlyControl_historyBorrow

private theorem s6Step218EarlyControl_sigmaOwned : ([254, 875] : List Wire).toFinset⊆s6Step218EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218EarlyControl_sigmaReleaseOwned : ([875] : List Wire).toFinset⊆s6Step218EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218EarlyControl_sigmaRelease : s6Step218EarlyControlHistoryArena.release {875} (fun _ => false)=some s6Step218EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step218EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step218EarlyControlSigmaArena,s6Step218EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step218EarlyControl_sigma : compileHmrSigmaDropLog s6Step218EarlyControlHistoryArena false 0 0 254 875 []=some s6Step218EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step218EarlyControl_sigmaOwned⟩
  · exact s6Step218EarlyControl_sigmaRelease

private theorem s6Step218EarlyControl_zeroBorrow : s6Step218EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step218EarlyControlLog.zeroWork=some s6Step218EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step218EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step218EarlyControlZeroArena,s6Step218EarlyControlArena,s6Step218EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step218EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step218EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step218EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218EarlyControl_zero : compileHmrEqualityLog s6Step218EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step218EarlyControlLog.zeroWork=some (s6Step218EarlyControlZeroArena,s6Step218EarlyControlLog.zeroWork,s6Step218EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step218EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step218EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step218EarlyControl_logged : s6Step218EarlyControlPlan.Logged s6Step218EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 254 253 252 251 768 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step218EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step218EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step218EarlyControl_zero
  · exact s6Step218EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step218EarlyControl_flags
  · exact s6Step218EarlyControl_fit
  · exact s6Step218EarlyControl_history
  · exact s6Step218EarlyControl_sigma
  · exact s6Step218EarlyControl_branch

private theorem s6Step218EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step218EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 254 253 252 251 768 47 s6Step218EarlyControlLog=some s6Step218EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step218EarlyControlPlan s6Step218EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 254 253 252 251 768 47 s6Step218EarlyControl_logged

private def s6Step218EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step218EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416],795⟩

private def s6Step218EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802],776⟩

private def s6Step218EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858],777⟩

private def s6Step218EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩

private def s6Step218FrontBank : WindowBank := ⟨s6Step218EntryFRow,s6Step218EntryGRow,s6Step218EntryFvRow,s6Step218EntryGvRow⟩

private def s6Step218Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 807, 873, 795]

private def s6Step218Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858, 855, 777]

private def s6Step218Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882, 776]

private def s6Step218Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 845, 775]

private theorem s6Step218Counter_apart : Disjoint s6Step218HeadFvAfter.live s6Step218CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step218HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218Counter_borrowed : s6Step218HeadFvAfter.checkBorrow 4 s6Step218CounterWork=some s6Step218CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step218HeadFvAfter s6Step218CounterDuring s6Step218CounterWork.toFinset s6Step218Counter_bounded s6Step218Counter_apart rfl

private theorem s6Step218Counter_owned : (875::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step218HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step218HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218Counter_checked : compileHmrCounterStepLog s6Step218HeadFvAfter true 875 [774, 773, 772, 771, 770, 769] s6Step218CounterWork=some s6Step218CounterDuring := by
  have owned : ∀q∈875::[774, 773, 772, 771, 770, 769],q∈s6Step218HeadFvAfter.live := fun q hq => s6Step218Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step218Counter_borrowed

private theorem s6Step218EntryBank_incomingDistinct : ([s6Step218EntryFRow,s6Step218EntryGRow,s6Step218EntryFvRow,s6Step218EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218EntryF_Incoming : rowsOwned s6Step218EntryFBefore [s6Step218EntryFRow,s6Step218EntryGRow,s6Step218EntryFvRow,s6Step218EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218EntryFRow,s6Step218EntryGRow,s6Step218EntryFvRow,s6Step218EntryGvRow] 0 s6Step218EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step218EntryBank_outgoingOwned : rowsOwned s6Step218EntryGvAfter [s6Step218EntryFOut,s6Step218EntryGOut,s6Step218EntryFvOut,s6Step218EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step218EntryGvAfter (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step218EntryF_Outgoing : rowsOwned s6Step218EntryGvAfter [s6Step218EntryFOut,s6Step218EntryGOut,s6Step218EntryFvOut,s6Step218EntryGvOut] :=
  hmrRows_owned_drop s6Step218EntryGvAfter [s6Step218EntryFOut,s6Step218EntryGOut,s6Step218EntryFvOut,s6Step218EntryGvOut] 0 s6Step218EntryBank_outgoingOwned

private theorem s6Step218EntryF_distinct : (s6Step218EntryFRow.sign::s6Step218EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218EntryF_owned : (s6Step218EntryFRow.sign::s6Step218EntryFRow.payload).toFinset⊆s6Step218EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step218EntryF_reserved : s6Step218EntryFBefore.reserve s6Step218EntryFFresh.toFinset=some s6Step218EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step218EntryFFresh,arenaWires]
  · norm_num [s6Step218EntryFBefore,s6Step218EntryFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step218EntryFBefore s6Step218EntryFAfter (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step218EntryFFresh rfl rfl
    · norm_num [s6Step218EntryFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step218EntryF_checked : planRowResizeLog s6Step218EntryFBefore s6Step218EntryFRow 162 s6Step218EntryFFresh=
    some (s6Step218EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 807],795⟩,growRow 795 s6Step218EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step218EntryFBefore s6Step218EntryFAfter s6Step218EntryFRow 162 s6Step218EntryFFresh
    s6Step218EntryF_distinct s6Step218EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step218EntryF_reserved
  have rowEq : WindowRow.mk (s6Step218EntryFRow.payload++s6Step218EntryFFresh) s6Step218EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 807],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step218EntryFvAfter : Arena := s6Step218EntryFAfter

private def s6Step218EntryFvBefore : Arena := s6Step218EntryFAfter

private theorem s6Step218EntryFv_Incoming : rowsOwned s6Step218EntryFvBefore [s6Step218EntryFvRow,s6Step218EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218EntryFRow,s6Step218EntryGRow,s6Step218EntryFvRow,s6Step218EntryGvRow] 2 s6Step218EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218EntryFvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step218EntryFv_Outgoing : rowsOwned s6Step218EntryGvAfter [s6Step218EntryFvOut,s6Step218EntryGvOut] :=
  hmrRows_owned_drop s6Step218EntryGvAfter [s6Step218EntryFOut,s6Step218EntryGOut,s6Step218EntryFvOut,s6Step218EntryGvOut] 2 s6Step218EntryBank_outgoingOwned

private theorem s6Step218EntryFv_distinct : (s6Step218EntryFvRow.sign::s6Step218EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218EntryFv_owned : (s6Step218EntryFvRow.sign::s6Step218EntryFvRow.payload).toFinset⊆s6Step218EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218EntryFvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step218EntryFv_reserved : s6Step218EntryFvBefore.reserve s6Step218EntryFvFresh.toFinset=some s6Step218EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step218EntryFvFresh,arenaWires]
  · norm_num [s6Step218EntryFvBefore,s6Step218EntryFAfter,s6Step218EntryFvFresh,arenaWires]
  · simp only [s6Step218EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step218EntryFv_checked : planRowResizeLog s6Step218EntryFvBefore s6Step218EntryFvRow 123 s6Step218EntryFvFresh=
    some (s6Step218EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802],776⟩,growRow 776 s6Step218EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step218EntryFvBefore s6Step218EntryFvAfter s6Step218EntryFvRow 123 s6Step218EntryFvFresh
    s6Step218EntryFv_distinct s6Step218EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step218EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step218EntryFvRow.payload++s6Step218EntryFvFresh) s6Step218EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step218EntryGAfter : Arena := s6Step218EntryFAfter

private def s6Step218EntryGBefore : Arena := s6Step218EntryFAfter

private theorem s6Step218EntryG_Incoming : rowsOwned s6Step218EntryGBefore [s6Step218EntryGRow,s6Step218EntryFvRow,s6Step218EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218EntryFRow,s6Step218EntryGRow,s6Step218EntryFvRow,s6Step218EntryGvRow] 1 s6Step218EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218EntryGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step218EntryG_Outgoing : rowsOwned s6Step218EntryGvAfter [s6Step218EntryGOut,s6Step218EntryFvOut,s6Step218EntryGvOut] :=
  hmrRows_owned_drop s6Step218EntryGvAfter [s6Step218EntryFOut,s6Step218EntryGOut,s6Step218EntryFvOut,s6Step218EntryGvOut] 1 s6Step218EntryBank_outgoingOwned

private theorem s6Step218EntryG_distinct : (s6Step218EntryGRow.sign::s6Step218EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218EntryG_owned : (s6Step218EntryGRow.sign::s6Step218EntryGRow.payload).toFinset⊆s6Step218EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218EntryGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step218EntryG_reserved : s6Step218EntryGBefore.reserve s6Step218EntryGFresh.toFinset=some s6Step218EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step218EntryGFresh,arenaWires]
  · norm_num [s6Step218EntryGBefore,s6Step218EntryFAfter,s6Step218EntryGFresh,arenaWires]
  · simp only [s6Step218EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step218EntryG_checked : planRowResizeLog s6Step218EntryGBefore s6Step218EntryGRow 162 s6Step218EntryGFresh=
    some (s6Step218EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858],777⟩,growRow 777 s6Step218EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step218EntryGBefore s6Step218EntryGAfter s6Step218EntryGRow 162 s6Step218EntryGFresh
    s6Step218EntryG_distinct s6Step218EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step218EntryG_reserved
  have rowEq : WindowRow.mk (s6Step218EntryGRow.payload++s6Step218EntryGFresh) s6Step218EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step218EntryGvBefore : Arena := s6Step218EntryFAfter

private theorem s6Step218EntryGv_Incoming : rowsOwned s6Step218EntryGvBefore [s6Step218EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218EntryFRow,s6Step218EntryGRow,s6Step218EntryFvRow,s6Step218EntryGvRow] 3 s6Step218EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218EntryGvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step218EntryGv_Outgoing : rowsOwned s6Step218EntryGvAfter [s6Step218EntryGvOut] :=
  hmrRows_owned_drop s6Step218EntryGvAfter [s6Step218EntryFOut,s6Step218EntryGOut,s6Step218EntryFvOut,s6Step218EntryGvOut] 3 s6Step218EntryBank_outgoingOwned

private theorem s6Step218EntryGv_distinct : (s6Step218EntryGvRow.sign::s6Step218EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218EntryGv_owned : (s6Step218EntryGvRow.sign::s6Step218EntryGvRow.payload).toFinset⊆s6Step218EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218EntryGvBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step218EntryGv_reserved : s6Step218EntryGvBefore.reserve s6Step218EntryGvFresh.toFinset=some s6Step218EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step218EntryGvFresh,arenaWires]
  · norm_num [s6Step218EntryGvBefore,s6Step218EntryFAfter,s6Step218EntryGvFresh,arenaWires]
  · simp only [s6Step218EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step218EntryGv_checked : planRowResizeLog s6Step218EntryGvBefore s6Step218EntryGvRow 123 s6Step218EntryGvFresh=
    some (s6Step218EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩,growRow 775 s6Step218EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step218EntryGvBefore s6Step218EntryGvAfter s6Step218EntryGvRow 123 s6Step218EntryGvFresh
    s6Step218EntryGv_distinct s6Step218EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step218EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step218EntryGvRow.payload++s6Step218EntryGvFresh) s6Step218EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step218EntryBank_rows : planWindowRowsLog s6Step218EntryFBefore [(s6Step218EntryFRow,162),(s6Step218EntryGRow,162),(s6Step218EntryFvRow,123),(s6Step218EntryGvRow,123)] [s6Step218EntryFFresh,s6Step218EntryGFresh,s6Step218EntryFvFresh,s6Step218EntryGvFresh]=
    some (s6Step218EntryGvAfter,[s6Step218EntryFOut,s6Step218EntryGOut,s6Step218EntryFvOut,s6Step218EntryGvOut],(growRow 795 s6Step218EntryFFresh ++ (growRow 777 s6Step218EntryGFresh ++ (growRow 776 s6Step218EntryFvFresh ++ (growRow 775 s6Step218EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step218EntryGvAfter [] []=some (s6Step218EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step218EntryGvBefore s6Step218EntryGvAfter s6Step218EntryGvAfter
    s6Step218EntryGvRow s6Step218EntryGvOut 123 s6Step218EntryGvFresh [] [] []
    (growRow 775 s6Step218EntryGvFresh) ([]) s6Step218EntryGv_Incoming s6Step218EntryGv_checked h4 s6Step218EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step218EntryFvBefore s6Step218EntryFvAfter s6Step218EntryGvAfter
    s6Step218EntryFvRow s6Step218EntryFvOut 123 s6Step218EntryFvFresh [(s6Step218EntryGvRow,123)] [s6Step218EntryGvFresh] [s6Step218EntryGvOut]
    (growRow 776 s6Step218EntryFvFresh) ((growRow 775 s6Step218EntryGvFresh ++ [])) s6Step218EntryFv_Incoming s6Step218EntryFv_checked h3 s6Step218EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step218EntryGBefore s6Step218EntryGAfter s6Step218EntryGvAfter
    s6Step218EntryGRow s6Step218EntryGOut 162 s6Step218EntryGFresh [(s6Step218EntryFvRow,123),(s6Step218EntryGvRow,123)] [s6Step218EntryFvFresh,s6Step218EntryGvFresh] [s6Step218EntryFvOut,s6Step218EntryGvOut]
    (growRow 777 s6Step218EntryGFresh) ((growRow 776 s6Step218EntryFvFresh ++ (growRow 775 s6Step218EntryGvFresh ++ []))) s6Step218EntryG_Incoming s6Step218EntryG_checked h2 s6Step218EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step218EntryFBefore s6Step218EntryFAfter s6Step218EntryGvAfter
    s6Step218EntryFRow s6Step218EntryFOut 162 s6Step218EntryFFresh [(s6Step218EntryGRow,162),(s6Step218EntryFvRow,123),(s6Step218EntryGvRow,123)] [s6Step218EntryGFresh,s6Step218EntryFvFresh,s6Step218EntryGvFresh] [s6Step218EntryGOut,s6Step218EntryFvOut,s6Step218EntryGvOut]
    (growRow 795 s6Step218EntryFFresh) ((growRow 777 s6Step218EntryGFresh ++ (growRow 776 s6Step218EntryFvFresh ++ (growRow 775 s6Step218EntryGvFresh ++ [])))) s6Step218EntryF_Incoming s6Step218EntryF_checked h1 s6Step218EntryF_Outgoing
  exact h0

private theorem s6Step218EntryBank_checked : compileHmrBankResizeLog .entry s6Step218EntryFBefore ⟨s6Step218EntryFRow,s6Step218EntryGRow,s6Step218EntryFvRow,s6Step218EntryGvRow⟩ ⟨162,162,123,123⟩ [s6Step218EntryFFresh,s6Step218EntryGFresh,s6Step218EntryFvFresh,s6Step218EntryGvFresh]=
    some (s6Step218EntryGvAfter,⟨s6Step218EntryFOut,s6Step218EntryGOut,s6Step218EntryFvOut,s6Step218EntryGvOut⟩,(growRow 795 s6Step218EntryFFresh ++ (growRow 777 s6Step218EntryGFresh ++ (growRow 776 s6Step218EntryFvFresh ++ (growRow 775 s6Step218EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step218EntryBank_rows]
  rfl

private def s6Step218ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218ExitFBefore : Arena := s6Step218ExitGAfter

private def s6Step218ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 807, 873],795⟩

private def s6Step218ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882],776⟩

private def s6Step218ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858, 855],777⟩

private def s6Step218ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 845],775⟩

private theorem s6Step218ExitBank_incomingDistinct : ([s6Step218ExitGRow,s6Step218ExitFRow,s6Step218ExitFvRow,s6Step218ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218ExitF_Incoming : rowsOwned s6Step218ExitFBefore [s6Step218ExitFRow,s6Step218ExitFvRow,s6Step218ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218ExitGRow,s6Step218ExitFRow,s6Step218ExitFvRow,s6Step218ExitGvRow] 1 s6Step218ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step218ExitBank_outgoingOwned : rowsOwned s6Step218ExitGvAfter [s6Step218ExitGOut,s6Step218ExitFOut,s6Step218ExitFvOut,s6Step218ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step218ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step218ExitF_Outgoing : rowsOwned s6Step218ExitGvAfter [s6Step218ExitFOut,s6Step218ExitFvOut,s6Step218ExitGvOut] :=
  hmrRows_owned_drop s6Step218ExitGvAfter [s6Step218ExitGOut,s6Step218ExitFOut,s6Step218ExitFvOut,s6Step218ExitGvOut] 1 s6Step218ExitBank_outgoingOwned

private theorem s6Step218ExitF_distinct : (s6Step218ExitFRow.sign::s6Step218ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218ExitF_owned : (s6Step218ExitFRow.sign::s6Step218ExitFRow.payload).toFinset⊆s6Step218ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218ExitF_retired : s6Step218ExitFBefore.retireSet s6Step218ExitFExtra.toFinset=s6Step218ExitFAfter := by
  unfold Arena.retireSet s6Step218ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step218ExitFBefore,s6Step218ExitGAfter,s6Step218ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step218ExitF_checked : planRowResizeLog s6Step218ExitFBefore s6Step218ExitFRow 161 []=
    some (s6Step218ExitFAfter,s6Step218ExitFOut,shrinkRow 795 s6Step218ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step218ExitFBefore s6Step218ExitFRow 161 s6Step218ExitF_distinct s6Step218ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step218ExitFRow.payload.take 161) s6Step218ExitFRow.sign=s6Step218ExitFOut := by decide +kernel
  have hi : s6Step218ExitFRow.payload.drop 161=s6Step218ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step218ExitF_retired] at result
  exact result

private def s6Step218ExitFvAfter : Arena := s6Step218ExitFAfter

private def s6Step218ExitFvBefore : Arena := s6Step218ExitFAfter

private theorem s6Step218ExitFv_Incoming : rowsOwned s6Step218ExitFvBefore [s6Step218ExitFvRow,s6Step218ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218ExitGRow,s6Step218ExitFRow,s6Step218ExitFvRow,s6Step218ExitGvRow] 2 s6Step218ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step218ExitFv_Outgoing : rowsOwned s6Step218ExitGvAfter [s6Step218ExitFvOut,s6Step218ExitGvOut] :=
  hmrRows_owned_drop s6Step218ExitGvAfter [s6Step218ExitGOut,s6Step218ExitFOut,s6Step218ExitFvOut,s6Step218ExitGvOut] 2 s6Step218ExitBank_outgoingOwned

private theorem s6Step218ExitFv_distinct : (s6Step218ExitFvRow.sign::s6Step218ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218ExitFv_owned : (s6Step218ExitFvRow.sign::s6Step218ExitFvRow.payload).toFinset⊆s6Step218ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218ExitFv_reserved : s6Step218ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step218ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step218ExitFv_checked : planRowResizeLog s6Step218ExitFvBefore s6Step218ExitFvRow 124 []=
    some (s6Step218ExitFvAfter,s6Step218ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step218ExitFvBefore s6Step218ExitFvAfter s6Step218ExitFvRow 124 []
    s6Step218ExitFv_distinct s6Step218ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step218ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step218ExitFvRow.payload++[]) s6Step218ExitFvRow.sign=s6Step218ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step218ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step218ExitG_Incoming : rowsOwned s6Step218ExitGBefore [s6Step218ExitGRow,s6Step218ExitFRow,s6Step218ExitFvRow,s6Step218ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218ExitGRow,s6Step218ExitFRow,s6Step218ExitFvRow,s6Step218ExitGvRow] 0 s6Step218ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step218ExitG_Outgoing : rowsOwned s6Step218ExitGvAfter [s6Step218ExitGOut,s6Step218ExitFOut,s6Step218ExitFvOut,s6Step218ExitGvOut] :=
  hmrRows_owned_drop s6Step218ExitGvAfter [s6Step218ExitGOut,s6Step218ExitFOut,s6Step218ExitFvOut,s6Step218ExitGvOut] 0 s6Step218ExitBank_outgoingOwned

private theorem s6Step218ExitG_distinct : (s6Step218ExitGRow.sign::s6Step218ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218ExitG_owned : (s6Step218ExitGRow.sign::s6Step218ExitGRow.payload).toFinset⊆s6Step218ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218ExitG_retired : s6Step218ExitGBefore.retireSet s6Step218ExitGExtra.toFinset=s6Step218ExitGAfter := by
  unfold Arena.retireSet s6Step218ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step218ExitGBefore,s6Step218ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step218ExitG_checked : planRowResizeLog s6Step218ExitGBefore s6Step218ExitGRow 161 []=
    some (s6Step218ExitGAfter,s6Step218ExitGOut,shrinkRow 777 s6Step218ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step218ExitGBefore s6Step218ExitGRow 161 s6Step218ExitG_distinct s6Step218ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step218ExitGRow.payload.take 161) s6Step218ExitGRow.sign=s6Step218ExitGOut := by decide +kernel
  have hi : s6Step218ExitGRow.payload.drop 161=s6Step218ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step218ExitG_retired] at result
  exact result

private def s6Step218ExitGvBefore : Arena := s6Step218ExitFAfter

private theorem s6Step218ExitGv_Incoming : rowsOwned s6Step218ExitGvBefore [s6Step218ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218ExitGRow,s6Step218ExitFRow,s6Step218ExitFvRow,s6Step218ExitGvRow] 3 s6Step218ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step218ExitGv_Outgoing : rowsOwned s6Step218ExitGvAfter [s6Step218ExitGvOut] :=
  hmrRows_owned_drop s6Step218ExitGvAfter [s6Step218ExitGOut,s6Step218ExitFOut,s6Step218ExitFvOut,s6Step218ExitGvOut] 3 s6Step218ExitBank_outgoingOwned

private theorem s6Step218ExitGv_distinct : (s6Step218ExitGvRow.sign::s6Step218ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218ExitGv_owned : (s6Step218ExitGvRow.sign::s6Step218ExitGvRow.payload).toFinset⊆s6Step218ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218ExitGv_retired : s6Step218ExitGvBefore.retireSet s6Step218ExitGvExtra.toFinset=s6Step218ExitGvAfter := by
  unfold Arena.retireSet s6Step218ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step218ExitGvBefore,s6Step218ExitFAfter,s6Step218ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step218ExitGv_checked : planRowResizeLog s6Step218ExitGvBefore s6Step218ExitGvRow 123 []=
    some (s6Step218ExitGvAfter,s6Step218ExitGvOut,shrinkRow 775 s6Step218ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step218ExitGvBefore s6Step218ExitGvRow 123 s6Step218ExitGv_distinct s6Step218ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step218ExitGvRow.payload.take 123) s6Step218ExitGvRow.sign=s6Step218ExitGvOut := by decide +kernel
  have hi : s6Step218ExitGvRow.payload.drop 123=s6Step218ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step218ExitGv_retired] at result
  exact result

private theorem s6Step218ExitBank_rows : planWindowRowsLog s6Step218ExitGBefore [(s6Step218ExitGRow,161),(s6Step218ExitFRow,161),(s6Step218ExitFvRow,124),(s6Step218ExitGvRow,123)] [[],[],[],[]]=
    some (s6Step218ExitGvAfter,[s6Step218ExitGOut,s6Step218ExitFOut,s6Step218ExitFvOut,s6Step218ExitGvOut],(shrinkRow 777 s6Step218ExitGExtra ++ (shrinkRow 795 s6Step218ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step218ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step218ExitGvAfter [] []=some (s6Step218ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step218ExitGvBefore s6Step218ExitGvAfter s6Step218ExitGvAfter
    s6Step218ExitGvRow s6Step218ExitGvOut 123 [] [] [] []
    (shrinkRow 775 s6Step218ExitGvExtra) ([]) s6Step218ExitGv_Incoming s6Step218ExitGv_checked h4 s6Step218ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step218ExitFvBefore s6Step218ExitFvAfter s6Step218ExitGvAfter
    s6Step218ExitFvRow s6Step218ExitFvOut 124 [] [(s6Step218ExitGvRow,123)] [[]] [s6Step218ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step218ExitGvExtra ++ [])) s6Step218ExitFv_Incoming s6Step218ExitFv_checked h3 s6Step218ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step218ExitFBefore s6Step218ExitFAfter s6Step218ExitGvAfter
    s6Step218ExitFRow s6Step218ExitFOut 161 [] [(s6Step218ExitFvRow,124),(s6Step218ExitGvRow,123)] [[],[]] [s6Step218ExitFvOut,s6Step218ExitGvOut]
    (shrinkRow 795 s6Step218ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step218ExitGvExtra ++ []))) s6Step218ExitF_Incoming s6Step218ExitF_checked h2 s6Step218ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step218ExitGBefore s6Step218ExitGAfter s6Step218ExitGvAfter
    s6Step218ExitGRow s6Step218ExitGOut 161 [] [(s6Step218ExitFRow,161),(s6Step218ExitFvRow,124),(s6Step218ExitGvRow,123)] [[],[],[]] [s6Step218ExitFOut,s6Step218ExitFvOut,s6Step218ExitGvOut]
    (shrinkRow 777 s6Step218ExitGExtra) ((shrinkRow 795 s6Step218ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step218ExitGvExtra ++ [])))) s6Step218ExitG_Incoming s6Step218ExitG_checked h1 s6Step218ExitG_Outgoing
  exact h0

private theorem s6Step218ExitBank_checked : compileHmrBankResizeLog .exit s6Step218ExitGBefore ⟨s6Step218ExitFRow,s6Step218ExitGRow,s6Step218ExitFvRow,s6Step218ExitGvRow⟩ ⟨161,161,124,123⟩ [[],[],[],[]]=
    some (s6Step218ExitGvAfter,⟨s6Step218ExitFOut,s6Step218ExitGOut,s6Step218ExitFvOut,s6Step218ExitGvOut⟩,(shrinkRow 777 s6Step218ExitGExtra ++ (shrinkRow 795 s6Step218ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step218ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step218ExitBank_rows]
  rfl

private theorem s6Step218Add0_apart : Disjoint s6Step218Add0Arena.live s6Step218Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step218Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218Add0_card : s6Step218Add0Arena.live.card=891 := by
  decide +kernel

private theorem s6Step218Add0_borrowed : s6Step218Add0Arena.checkBorrow (hmrHybridCount s6Step218Add0Arena s6Step218Add0B.length) s6Step218Add0Work=some s6Step218Add0During := by
  have len : s6Step218Add0Work.length=hmrHybridCount s6Step218Add0Arena s6Step218Add0B.length := by
    rw [hmrHybridCount,s6Step218Add0_card]
    decide +kernel
  have nd : s6Step218Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step218Add0Arena s6Step218Add0During s6Step218Add0Work.toFinset s6Step218Add0_bounded s6Step218Add0_apart rfl

private theorem s6Step218Add0_distinct : (822::768::825::(s6Step218Add0A++s6Step218Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218Add0_owned : (822::768::825::(s6Step218Add0A++s6Step218Add0B)).toFinset⊆s6Step218Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step218Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218Add0_checked : compileHmrHybridCinLog s6Step218Add0Arena 768 822 825 s6Step218Add0A s6Step218Add0B s6Step218Add0Work=some s6Step218Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step218Add0Arena s6Step218Add0During 768 822 825 s6Step218Add0A s6Step218Add0B s6Step218Add0Work
    (by decide +kernel) (by decide +kernel) s6Step218Add0_distinct
    (fun q hq => s6Step218Add0_owned (List.mem_toFinset.mpr hq)) s6Step218Add0_borrowed

private theorem s6Step218Add1_apart : Disjoint s6Step218Add1Arena.live s6Step218Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step218Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218Add1_card : s6Step218Add1Arena.live.card=891 := by
  decide +kernel

private theorem s6Step218Add1_borrowed : s6Step218Add1Arena.checkBorrow (hmrHybridCount s6Step218Add1Arena s6Step218Add1B.length) s6Step218Add1Work=some s6Step218Add1During := by
  have len : s6Step218Add1Work.length=hmrHybridCount s6Step218Add1Arena s6Step218Add1B.length := by
    rw [hmrHybridCount,s6Step218Add1_card]
    decide +kernel
  have nd : s6Step218Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step218Add1Arena s6Step218Add1During s6Step218Add1Work.toFinset s6Step218Add1_bounded s6Step218Add1_apart rfl

private theorem s6Step218Add1_distinct : (822::768::825::(s6Step218Add1A++s6Step218Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218Add1_owned : (822::768::825::(s6Step218Add1A++s6Step218Add1B)).toFinset⊆s6Step218Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step218Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218Add1_checked : compileHmrHybridCinLog s6Step218Add1Arena 768 822 825 s6Step218Add1A s6Step218Add1B s6Step218Add1Work=some s6Step218Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step218Add1Arena s6Step218Add1During 768 822 825 s6Step218Add1A s6Step218Add1B s6Step218Add1Work
    (by decide +kernel) (by decide +kernel) s6Step218Add1_distinct
    (fun q hq => s6Step218Add1_owned (List.mem_toFinset.mpr hq)) s6Step218Add1_borrowed

private theorem s6Step218F4_apart : Disjoint (s6Step218Add0A++s6Step218Add0B).toFinset (s6Step218Add1A++s6Step218Add1B).toFinset := by
  have nd : ((s6Step218Add0A++s6Step218Add0B)++(s6Step218Add1A++s6Step218Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step218F4_carry : s6Step218F4FlagArena.checkBorrow 1 [825]=some s6Step218Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step218F4FlagArena,s6Step218HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step218F4FlagArena,s6Step218HeadFvAfter,s6Step218Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step218F4_distinct : (875::768::822::825::((s6Step218Add0A++s6Step218Add1A)++(s6Step218Add0B++s6Step218Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218F4_flag : s6Step218HeadFvAfter.checkBorrow 1 [822]=some s6Step218F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step218HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step218F4_owned : (875::768::((s6Step218Add0A++s6Step218Add1A)++(s6Step218Add0B++s6Step218Add1B))).toFinset⊆s6Step218HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step218HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218F4_checked : compileHmrHybridF4Log s6Step218HeadFvAfter 875 768 s6Step218Add0A s6Step218Add0B s6Step218Add1A s6Step218Add1B [822] [825] s6Step218Add0Work s6Step218Add1Work=some s6Step218F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step218HeadFvAfter s6Step218F4FlagArena s6Step218Add0Arena s6Step218Add0During s6Step218Add1During 875 768
    s6Step218Add0A s6Step218Add0B s6Step218Add1A s6Step218Add1B [822] [825] s6Step218Add0Work s6Step218Add1Work
    (fun q hq => s6Step218F4_owned (List.mem_toFinset.mpr hq)) s6Step218F4_flag s6Step218F4_carry
    s6Step218F4_distinct s6Step218F4_apart s6Step218Add0_checked s6Step218Add1_checked

private theorem s6Step218Front_branch : s6Step218FrontSigmaArena.checkBorrow 1 [768]=some s6Step218HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step218FrontSigmaArena,s6Step218EntryGvAfter,s6Step218EntryFAfter,arenaWires]
  · change s6Step218HeadGBefore.live=(s6Step218EntryGvAfter.live∪{875})∪{768}
    apply hmrArena_union_pair_of_filter_check s6Step218EntryGvAfter s6Step218HeadGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 875 768 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step218Front_entry : HmrFrontEntryValid s6Step218EntryFBefore s6Step218FrontBank 162 123 ⟨161,161,124,123⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step218FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step218EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step218EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(791,792),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,845),(846,849),(850,855),(856,869),(870,873),(874,875),(876,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step218FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step218Front_sigma : s6Step218EntryGvAfter.checkBorrow 1 [875]=some s6Step218FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step218EntryGvAfter,s6Step218EntryFAfter,arenaWires]
  · rfl

private def s6Step218HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218HeadFBefore : Arena := s6Step218HeadGAfter

private def s6Step218HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 807],795⟩

private def s6Step218HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802],776⟩

private def s6Step218HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858],777⟩

private def s6Step218HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881],775⟩

private theorem s6Step218HeadBank_incomingDistinct : ([s6Step218HeadGRow,s6Step218HeadFRow,s6Step218HeadGvRow,s6Step218HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218HeadF_Incoming : rowsOwned s6Step218HeadFBefore [s6Step218HeadFRow,s6Step218HeadGvRow,s6Step218HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218HeadGRow,s6Step218HeadFRow,s6Step218HeadGvRow,s6Step218HeadFvRow] 1 s6Step218HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step218HeadBank_outgoingOwned : rowsOwned s6Step218HeadFvAfter [s6Step218HeadGOut,s6Step218HeadFOut,s6Step218HeadGvOut,s6Step218HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step218HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step218HeadF_Outgoing : rowsOwned s6Step218HeadFvAfter [s6Step218HeadFOut,s6Step218HeadGvOut,s6Step218HeadFvOut] :=
  hmrRows_owned_drop s6Step218HeadFvAfter [s6Step218HeadGOut,s6Step218HeadFOut,s6Step218HeadGvOut,s6Step218HeadFvOut] 1 s6Step218HeadBank_outgoingOwned

private theorem s6Step218HeadF_distinct : (s6Step218HeadFRow.sign::s6Step218HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218HeadF_owned : (s6Step218HeadFRow.sign::s6Step218HeadFRow.payload).toFinset⊆s6Step218HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218HeadF_reserved : s6Step218HeadFBefore.reserve s6Step218HeadFFresh.toFinset=some s6Step218HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step218HeadFFresh,arenaWires]
  · norm_num [s6Step218HeadFBefore,s6Step218HeadGAfter,s6Step218HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step218HeadFAfter,s6Step218HeadFBefore,s6Step218HeadGAfter,s6Step218HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step218HeadF_checked : planRowResizeLog s6Step218HeadFBefore s6Step218HeadFRow 163 s6Step218HeadFFresh=
    some (s6Step218HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 807, 873],795⟩,growRow 795 s6Step218HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step218HeadFBefore s6Step218HeadFAfter s6Step218HeadFRow 163 s6Step218HeadFFresh
    s6Step218HeadF_distinct s6Step218HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step218HeadF_reserved
  have rowEq : WindowRow.mk (s6Step218HeadFRow.payload++s6Step218HeadFFresh) s6Step218HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 807, 873],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step218HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step218HeadFvBefore : Arena := s6Step218HeadGvAfter

private theorem s6Step218HeadFv_Incoming : rowsOwned s6Step218HeadFvBefore [s6Step218HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218HeadGRow,s6Step218HeadFRow,s6Step218HeadGvRow,s6Step218HeadFvRow] 3 s6Step218HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step218HeadFv_Outgoing : rowsOwned s6Step218HeadFvAfter [s6Step218HeadFvOut] :=
  hmrRows_owned_drop s6Step218HeadFvAfter [s6Step218HeadGOut,s6Step218HeadFOut,s6Step218HeadGvOut,s6Step218HeadFvOut] 3 s6Step218HeadBank_outgoingOwned

private theorem s6Step218HeadFv_distinct : (s6Step218HeadFvRow.sign::s6Step218HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218HeadFv_owned : (s6Step218HeadFvRow.sign::s6Step218HeadFvRow.payload).toFinset⊆s6Step218HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218HeadFv_reserved : s6Step218HeadFvBefore.reserve s6Step218HeadFvFresh.toFinset=some s6Step218HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step218HeadFvFresh,arenaWires]
  · norm_num [s6Step218HeadFvBefore,s6Step218HeadGvAfter,s6Step218HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step218HeadFvAfter,s6Step218HeadFvBefore,s6Step218HeadGvAfter,s6Step218HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step218HeadFv_checked : planRowResizeLog s6Step218HeadFvBefore s6Step218HeadFvRow 124 s6Step218HeadFvFresh=
    some (s6Step218HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882],776⟩,growRow 776 s6Step218HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step218HeadFvBefore s6Step218HeadFvAfter s6Step218HeadFvRow 124 s6Step218HeadFvFresh
    s6Step218HeadFv_distinct s6Step218HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step218HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step218HeadFvRow.payload++s6Step218HeadFvFresh) s6Step218HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 813, 779, 802, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step218HeadG_Incoming : rowsOwned s6Step218HeadGBefore [s6Step218HeadGRow,s6Step218HeadFRow,s6Step218HeadGvRow,s6Step218HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218HeadGRow,s6Step218HeadFRow,s6Step218HeadGvRow,s6Step218HeadFvRow] 0 s6Step218HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step218HeadG_Outgoing : rowsOwned s6Step218HeadFvAfter [s6Step218HeadGOut,s6Step218HeadFOut,s6Step218HeadGvOut,s6Step218HeadFvOut] :=
  hmrRows_owned_drop s6Step218HeadFvAfter [s6Step218HeadGOut,s6Step218HeadFOut,s6Step218HeadGvOut,s6Step218HeadFvOut] 0 s6Step218HeadBank_outgoingOwned

private theorem s6Step218HeadG_distinct : (s6Step218HeadGRow.sign::s6Step218HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218HeadG_owned : (s6Step218HeadGRow.sign::s6Step218HeadGRow.payload).toFinset⊆s6Step218HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218HeadG_reserved : s6Step218HeadGBefore.reserve s6Step218HeadGFresh.toFinset=some s6Step218HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step218HeadGFresh,arenaWires]
  · norm_num [s6Step218HeadGBefore,s6Step218HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step218HeadGAfter,s6Step218HeadGBefore,s6Step218HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step218HeadG_checked : planRowResizeLog s6Step218HeadGBefore s6Step218HeadGRow 163 s6Step218HeadGFresh=
    some (s6Step218HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858, 855],777⟩,growRow 777 s6Step218HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step218HeadGBefore s6Step218HeadGAfter s6Step218HeadGRow 163 s6Step218HeadGFresh
    s6Step218HeadG_distinct s6Step218HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step218HeadG_reserved
  have rowEq : WindowRow.mk (s6Step218HeadGRow.payload++s6Step218HeadGFresh) s6Step218HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 858, 855],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step218HeadGvBefore : Arena := s6Step218HeadFAfter

private theorem s6Step218HeadGv_Incoming : rowsOwned s6Step218HeadGvBefore [s6Step218HeadGvRow,s6Step218HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step218HeadGRow,s6Step218HeadFRow,s6Step218HeadGvRow,s6Step218HeadFvRow] 2 s6Step218HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step218HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step218HeadGv_Outgoing : rowsOwned s6Step218HeadFvAfter [s6Step218HeadGvOut,s6Step218HeadFvOut] :=
  hmrRows_owned_drop s6Step218HeadFvAfter [s6Step218HeadGOut,s6Step218HeadFOut,s6Step218HeadGvOut,s6Step218HeadFvOut] 2 s6Step218HeadBank_outgoingOwned

private theorem s6Step218HeadGv_distinct : (s6Step218HeadGvRow.sign::s6Step218HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step218HeadGv_owned : (s6Step218HeadGvRow.sign::s6Step218HeadGvRow.payload).toFinset⊆s6Step218HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step218HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step218HeadGv_reserved : s6Step218HeadGvBefore.reserve s6Step218HeadGvFresh.toFinset=some s6Step218HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step218HeadGvFresh,arenaWires]
  · norm_num [s6Step218HeadGvBefore,s6Step218HeadFAfter,s6Step218HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step218HeadGvAfter,s6Step218HeadGvBefore,s6Step218HeadFAfter,s6Step218HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step218HeadGv_checked : planRowResizeLog s6Step218HeadGvBefore s6Step218HeadGvRow 124 s6Step218HeadGvFresh=
    some (s6Step218HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 845],775⟩,growRow 775 s6Step218HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step218HeadGvBefore s6Step218HeadGvAfter s6Step218HeadGvRow 124 s6Step218HeadGvFresh
    s6Step218HeadGv_distinct s6Step218HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step218HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step218HeadGvRow.payload++s6Step218HeadGvFresh) s6Step218HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 838, 784, 881, 845],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step218HeadBank_rows : planWindowRowsLog s6Step218HeadGBefore [(s6Step218HeadGRow,163),(s6Step218HeadFRow,163),(s6Step218HeadGvRow,124),(s6Step218HeadFvRow,124)] [s6Step218HeadGFresh,s6Step218HeadFFresh,s6Step218HeadGvFresh,s6Step218HeadFvFresh]=
    some (s6Step218HeadFvAfter,[s6Step218HeadGOut,s6Step218HeadFOut,s6Step218HeadGvOut,s6Step218HeadFvOut],(growRow 777 s6Step218HeadGFresh ++ (growRow 795 s6Step218HeadFFresh ++ (growRow 775 s6Step218HeadGvFresh ++ (growRow 776 s6Step218HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step218HeadFvAfter [] []=some (s6Step218HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step218HeadFvBefore s6Step218HeadFvAfter s6Step218HeadFvAfter
    s6Step218HeadFvRow s6Step218HeadFvOut 124 s6Step218HeadFvFresh [] [] []
    (growRow 776 s6Step218HeadFvFresh) ([]) s6Step218HeadFv_Incoming s6Step218HeadFv_checked h4 s6Step218HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step218HeadGvBefore s6Step218HeadGvAfter s6Step218HeadFvAfter
    s6Step218HeadGvRow s6Step218HeadGvOut 124 s6Step218HeadGvFresh [(s6Step218HeadFvRow,124)] [s6Step218HeadFvFresh] [s6Step218HeadFvOut]
    (growRow 775 s6Step218HeadGvFresh) ((growRow 776 s6Step218HeadFvFresh ++ [])) s6Step218HeadGv_Incoming s6Step218HeadGv_checked h3 s6Step218HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step218HeadFBefore s6Step218HeadFAfter s6Step218HeadFvAfter
    s6Step218HeadFRow s6Step218HeadFOut 163 s6Step218HeadFFresh [(s6Step218HeadGvRow,124),(s6Step218HeadFvRow,124)] [s6Step218HeadGvFresh,s6Step218HeadFvFresh] [s6Step218HeadGvOut,s6Step218HeadFvOut]
    (growRow 795 s6Step218HeadFFresh) ((growRow 775 s6Step218HeadGvFresh ++ (growRow 776 s6Step218HeadFvFresh ++ []))) s6Step218HeadF_Incoming s6Step218HeadF_checked h2 s6Step218HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step218HeadGBefore s6Step218HeadGAfter s6Step218HeadFvAfter
    s6Step218HeadGRow s6Step218HeadGOut 163 s6Step218HeadGFresh [(s6Step218HeadFRow,163),(s6Step218HeadGvRow,124),(s6Step218HeadFvRow,124)] [s6Step218HeadFFresh,s6Step218HeadGvFresh,s6Step218HeadFvFresh] [s6Step218HeadFOut,s6Step218HeadGvOut,s6Step218HeadFvOut]
    (growRow 777 s6Step218HeadGFresh) ((growRow 795 s6Step218HeadFFresh ++ (growRow 775 s6Step218HeadGvFresh ++ (growRow 776 s6Step218HeadFvFresh ++ [])))) s6Step218HeadG_Incoming s6Step218HeadG_checked h1 s6Step218HeadG_Outgoing
  exact h0

private theorem s6Step218HeadBank_checked : compileHmrBankResizeLog .headroom s6Step218HeadGBefore ⟨s6Step218HeadFRow,s6Step218HeadGRow,s6Step218HeadFvRow,s6Step218HeadGvRow⟩ ⟨163,163,124,124⟩ [s6Step218HeadGFresh,s6Step218HeadFFresh,s6Step218HeadGvFresh,s6Step218HeadFvFresh]=
    some (s6Step218HeadFvAfter,⟨s6Step218HeadFOut,s6Step218HeadGOut,s6Step218HeadFvOut,s6Step218HeadGvOut⟩,(growRow 777 s6Step218HeadGFresh ++ (growRow 795 s6Step218HeadFFresh ++ (growRow 775 s6Step218HeadGvFresh ++ (growRow 776 s6Step218HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step218HeadBank_rows]
  rfl

private theorem s6Step218Front_checked : compileHmrSourceFrontLog s6Step218EntryFBefore s6Step218FrontBank 162 123 ⟨161,161,124,123⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step218FrontLog=some s6Step218FrontPlan := by
  have pairEq : s6Step218FrontPair=⟨s6Step218HeadFRow,s6Step218HeadGRow,s6Step218HeadFvRow,s6Step218HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step218FrontHead=⟨s6Step218ExitFRow,s6Step218ExitGRow,s6Step218ExitFvRow,s6Step218ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step218Add0A=s6Step218FrontHead.f.wires := by decide +kernel
  have gEq : s6Step218Add0B=s6Step218FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step218Add1A=s6Step218FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step218Add1B=s6Step218FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step218EntryFBefore s6Step218FrontBank 162 123 ⟨161,161,124,123⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step218FrontLog s6Step218FrontPlan
  · exact s6Step218Front_entry
  · exact s6Step218EntryBank_checked
  · exact s6Step218Front_sigma
  · rfl
  · exact s6Step218Front_branch
  · rfl
  · simpa only [s6Step218FrontPlan,pairEq] using s6Step218HeadBank_checked
  · simpa only [s6Step218FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step218F4_checked
  · exact s6Step218Counter_checked
  · rfl
  · simpa only [s6Step218FrontPlan,headEq] using s6Step218ExitBank_checked

private theorem s6Step218Complete_explicit_checked : compileHmrEarlyStepLog s6Step218EntryFBefore s6Step218FrontBank 162 123 ⟨161,161,124,123⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step218CompleteLog=some s6Step218CompletePlan := by
  let Q := s6Step218EarlyControlPlan
  have hq := s6Step218EarlyControl_plan_checked
  have fv1 : s6Step218CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step218CompleteOut.fv.payload[2]?.getD s6Step218CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step218CompleteOut.fv.payload[3]?.getD s6Step218CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step218CompleteOut.fv.payload[4]?.getD s6Step218CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step218EntryFBefore s6Step218EarlyControlArena s6Step218FrontBank 162 123 ⟨161,161,124,123⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step218CompleteLog s6Step218FrontPlan Q
    s6Step218Front_checked s6Step218Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step218Complete_owned s6Step218Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step218EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 875 s6Step218CompleteOut.fv.second (s6Step218CompleteOut.fv.payload[2]?.getD s6Step218CompleteOut.fv.sign) (s6Step218CompleteOut.fv.payload[3]?.getD s6Step218CompleteOut.fv.sign) (s6Step218CompleteOut.fv.payload[4]?.getD s6Step218CompleteOut.fv.sign) 768 47 s6Step218EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep218Arena : Arena := s6Step218EntryFBefore
def s6PrivateStep218Bank : WindowBank := s6Step218FrontBank
def s6PrivateStep218Spec : HmrSourceWalkStepLog := ⟨162,123,⟨161,161,124,123⟩,47,.early s6Step218CompleteLog⟩
def s6PrivateStep218Plan : HmrSourceStepPlan := .early s6Step218CompletePlan
theorem s6PrivateStep218_source : s6PrivateStep218Spec=s6ObservedLogs208[10] := rfl
theorem s6PrivateStep218_checked : compileHmrSourceStepLog s6PrivateStep218Arena s6PrivateStep218Bank
    s6PrivateStep218Spec.fgWidth s6PrivateStep218Spec.vWidth s6PrivateStep218Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 218 s6PrivateStep218Spec.need none s6PrivateStep218Spec.log=some s6PrivateStep218Plan := by
  change compileHmrSourceStepLog s6Step218EntryFBefore s6Step218FrontBank 162 123 ⟨161,161,124,123⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 218 47 none (.early s6Step218CompleteLog)=some (.early s6Step218CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 218<498)]
  rw [s6Step218Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
