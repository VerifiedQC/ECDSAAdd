import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep209
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

private def s6Step211CompleteMoves : List (Wire × Wire) := [(873,163),(779,419),(881,420)]

private def s6Step211EarlyControlLog : HmrEarlyControlLog := ⟨[881, 779, 873, 813, 855],[802],[882],[807, 822, 825, 869, 786, 810],[]⟩

private def s6Step211FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [882], [874], []],[[807], [802], [813], [855]],[[], [], [], []]⟩,[858],[838],[822],[825],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 825, 869, 786]⟩

private def s6Step211CompleteLog : HmrEarlyStepLog := ⟨s6Step211FrontLog,s6Step211CompleteMoves,s6Step211EarlyControlLog⟩

private def s6Step211ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418],795⟩

private def s6Step211ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874],776⟩

private def s6Step211ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],777⟩

private def s6Step211ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩

private def s6Step211FrontOut : WindowBank := ⟨s6Step211ExitFOut,s6Step211ExitGOut,s6Step211ExitFvOut,s6Step211ExitGvOut⟩

private def s6Step211CompleteOut : WindowBank := s6Step211FrontOut.repacked s6Step211CompleteMoves

private def s6Step211EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step211EarlyControlPositiveArena,[802],s6Step211EarlyControlEqualityArena,[882],⟨⟨858,false⟩,[⟨⟨802,false⟩,882⟩]⟩⟩

private def s6Step211EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step211EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,881⟩,⟨⟨772,false⟩,779⟩,⟨⟨771,false⟩,873⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,855⟩]⟩

private def s6Step211EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step211EarlyControlZeroArena,s6Step211EarlyControlZeroPlan,s6Step211EarlyControlClassPlan,s6Step211EarlyControlFlagArena,s6Step211EarlyControlFittedArena,s6Step211EarlyControlHistoryArena,s6Step211EarlyControlSigmaArena,s6Step211EarlyControlOutputArena,s6Step211EarlyControlLog⟩

private def s6Step211CounterWork : List Wire := [822, 825, 869, 786]

private theorem s6Step211Counter_bounded : s6Step211CounterWork.toFinset⊆arenaWires := by norm_num [s6Step211CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step211HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211CounterDuring : Arena := ⟨s6Step211HeadFvAfter.live∪s6Step211CounterWork.toFinset,Finset.union_subset s6Step211HeadFvAfter.bounded s6Step211Counter_bounded⟩

private def s6Step211EntryFFresh : List Wire := []

private def s6Step211EntryFvFresh : List Wire := [874]

private def s6Step211EntryGFresh : List Wire := [882]

private def s6Step211EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211EntryGvAfter : Arena := s6Step211EntryFvAfter

private def s6Step211EntryGvFresh : List Wire := []

private def s6Step211ExitFExtra : List Wire := [419, 420, 802]

private def s6Step211ExitFvExtra : List Wire := [855]

private def s6Step211ExitGExtra : List Wire := [163, 882, 807]

private def s6Step211ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<419) ∨ (421≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211ExitGvExtra : List Wire := [813]

private def s6Step211Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211Add0Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step211Add0_bounded : s6Step211Add0Work.toFinset⊆arenaWires := by
  have h : s6Step211Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step211Add0During : Arena := ⟨s6Step211Add0Arena.live∪s6Step211Add0Work.toFinset,Finset.union_subset s6Step211Add0Arena.bounded s6Step211Add0_bounded⟩

private def s6Step211Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211Add1Work : List Wire := [869, 786, 810, 809, 817, 804, 812, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step211Add1_bounded : s6Step211Add1Work.toFinset⊆arenaWires := by
  have h : s6Step211Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step211Add1During : Arena := ⟨s6Step211Add1Arena.live∪s6Step211Add1Work.toFinset,Finset.union_subset s6Step211Add1Arena.bounded s6Step211Add1_bounded⟩

private def s6Step211F4FlagArena : Arena := ⟨s6Step211HeadFvAfter.live∪{822},Finset.union_subset s6Step211HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step211F4Plan : HmrHybridF4Plan := ⟨s6Step211F4FlagArena,[822],s6Step211Add0Arena,[825],s6Step211Add0During,s6Step211Add0Work,s6Step211Add1During,s6Step211Add1Work⟩

private def s6Step211HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 802],795⟩

private def s6Step211HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 855],776⟩

private def s6Step211HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 882, 807],777⟩

private def s6Step211HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 813],775⟩

private def s6Step211FrontHead : WindowBank := ⟨s6Step211HeadFOut,s6Step211HeadGOut,s6Step211HeadFvOut,s6Step211HeadGvOut⟩

private def s6Step211EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420],795⟩

private def s6Step211EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874],776⟩

private def s6Step211EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 882],777⟩

private def s6Step211EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩

private def s6Step211FrontPair : WindowBank := ⟨s6Step211EntryFOut,s6Step211EntryGOut,s6Step211EntryFvOut,s6Step211EntryGvOut⟩

private def s6Step211FrontSigmaArena : Arena := ⟨s6Step211EntryGvAfter.live∪{858},Finset.union_subset s6Step211EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step211HeadFFresh : List Wire := [802]

private def s6Step211HeadFvFresh : List Wire := [855]

private def s6Step211HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211HeadGFresh : List Wire := [807]

private def s6Step211HeadGvFresh : List Wire := [813]

private def s6Step211FrontPlan : HmrSourceFront := ⟨s6Step211EntryGvAfter,s6Step211FrontPair,(growRow 795 s6Step211EntryFFresh ++ (growRow 777 s6Step211EntryGFresh ++ (growRow 776 s6Step211EntryFvFresh ++ (growRow 775 s6Step211EntryGvFresh ++ [])))),s6Step211FrontSigmaArena,[858],s6Step211HeadGBefore,[838],
  s6Step211HeadFvAfter,s6Step211FrontHead,(growRow 777 s6Step211HeadGFresh ++ (growRow 795 s6Step211HeadFFresh ++ (growRow 775 s6Step211HeadGvFresh ++ (growRow 776 s6Step211HeadFvFresh ++ [])))),s6Step211F4Plan,s6Step211CounterDuring,s6Step211CounterWork,s6Step211ExitGvAfter,s6Step211FrontOut,(shrinkRow 777 s6Step211ExitGExtra ++ (shrinkRow 795 s6Step211ExitFExtra ++ (shrinkRow 776 s6Step211ExitFvExtra ++ (shrinkRow 775 s6Step211ExitGvExtra ++ []))))⟩

private def s6Step211CompletePlan : HmrEarlyStepPlan := ⟨s6Step211FrontPlan,s6Step211EarlyControlArena,s6Step211EarlyControlPlan,s6Step211CompleteMoves⟩

private theorem s6Step211Complete_apart : List.Disjoint (s6Step211CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [858, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  have nd : ((s6Step211CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[858, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step211Complete_owned : (s6Step211CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step211EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step211CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,419),(421,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(856,869),(870,873),(874,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step211CompleteRelocationMove0Borrowed : Arena := ⟨s6Step211ExitGvAfter.live∪{163},Finset.union_subset s6Step211ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step211CompleteRelocationMove1After : Arena := ⟨arenaWires.filter (fun q => ([(0,420),(421,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,842),(843,849),(850,855),(856,869),(870,873),(874,882),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step211CompleteRelocationMove1Borrowed : Arena := ⟨s6Step211CompleteRelocationMove0After.live∪{419},Finset.union_subset s6Step211CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private def s6Step211CompleteRelocationMove2Borrowed : Arena := ⟨s6Step211CompleteRelocationMove1After.live∪{420},Finset.union_subset s6Step211CompleteRelocationMove1After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step211CompleteRelocation_move0_owned : 873∈s6Step211ExitGvAfter.live := by norm_num [s6Step211ExitGvAfter,arenaWires]

private theorem s6Step211CompleteRelocation_move0_reserve : s6Step211ExitGvAfter.reserve {163}=some s6Step211CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step211ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step211CompleteRelocation_move0_retire : s6Step211CompleteRelocationMove0Borrowed.retireSet {873}=s6Step211CompleteRelocationMove0After := by
  unfold Arena.retireSet s6Step211CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step211CompleteRelocationMove0Borrowed,s6Step211ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step211CompleteRelocation_move1_owned : 779∈s6Step211CompleteRelocationMove0After.live := by norm_num [s6Step211CompleteRelocationMove0After,arenaWires]

private theorem s6Step211CompleteRelocation_move1_reserve : s6Step211CompleteRelocationMove0After.reserve {419}=some s6Step211CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step211CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step211CompleteRelocation_move1_retire : s6Step211CompleteRelocationMove1Borrowed.retireSet {779}=s6Step211CompleteRelocationMove1After := by
  unfold Arena.retireSet s6Step211CompleteRelocationMove1After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step211CompleteRelocationMove1Borrowed,s6Step211CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step211CompleteRelocation_move2_owned : 881∈s6Step211CompleteRelocationMove1After.live := by norm_num [s6Step211CompleteRelocationMove1After,arenaWires]

private theorem s6Step211CompleteRelocation_move2_reserve : s6Step211CompleteRelocationMove1After.reserve {420}=some s6Step211CompleteRelocationMove2Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step211CompleteRelocationMove1After,arenaWires]
  · rfl

private theorem s6Step211CompleteRelocation_move2_retire : s6Step211CompleteRelocationMove2Borrowed.retireSet {881}=s6Step211EarlyControlArena := by
  unfold Arena.retireSet s6Step211EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step211CompleteRelocationMove2Borrowed,s6Step211CompleteRelocationMove1After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s6Step211CompleteRelocation_checked : s6Step211ExitGvAfter.checkRepack [(873,163),(779,419),(881,420)]=some s6Step211EarlyControlArena := by
  have tail3 : s6Step211EarlyControlArena.checkRepack []=some s6Step211EarlyControlArena := rfl
  have tail2 := Arena.checkRepack_cons_of_parts s6Step211CompleteRelocationMove1After s6Step211CompleteRelocationMove2Borrowed s6Step211EarlyControlArena s6Step211EarlyControlArena 881 420 []
    s6Step211CompleteRelocation_move2_owned s6Step211CompleteRelocation_move2_reserve s6Step211CompleteRelocation_move2_retire tail3
  have tail1 := Arena.checkRepack_cons_of_parts s6Step211CompleteRelocationMove0After s6Step211CompleteRelocationMove1Borrowed s6Step211CompleteRelocationMove1After s6Step211EarlyControlArena 779 419 [(881,420)]
    s6Step211CompleteRelocation_move1_owned s6Step211CompleteRelocation_move1_reserve s6Step211CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step211ExitGvAfter s6Step211CompleteRelocationMove0Borrowed s6Step211CompleteRelocationMove0After s6Step211EarlyControlArena 873 163 [(779,419),(881,420)]
    s6Step211CompleteRelocation_move0_owned s6Step211CompleteRelocation_move0_reserve s6Step211CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step211Complete_repack : s6Step211ExitGvAfter.checkRepack s6Step211CompleteMoves=some s6Step211EarlyControlArena := by
  simpa only [s6Step211CompleteMoves] using s6Step211CompleteRelocation_checked

private theorem s6Step211EarlyControl_branchOwned : ([838] : List Wire).toFinset⊆s6Step211EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EarlyControl_branch : compileHmrBranchRetirement s6Step211EarlyControlSigmaArena 838=some s6Step211EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step211EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step211EarlyControlSigmaArena s6Step211EarlyControlOutputArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,779),(780,782),(783,786),(788,790),(791,792),(793,797),(799,800),(803,804),(805,807),(814,815),(818,819),(821,822),(823,825),(826,832),(833,838),(839,842),(843,849),(850,855),(856,858),(859,869),(870,873),(874,881),(883,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [838] rfl rfl
    decide +kernel

private theorem s6Step211EarlyControl_classEqualityBorrow : s6Step211EarlyControlPositiveArena.checkBorrow (([858, 802] : List Wire).length-1) s6Step211EarlyControlLog.classWork=some s6Step211EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step211EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step211EarlyControlEqualityArena,s6Step211EarlyControlPositiveArena,s6Step211EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step211EarlyControl_classEqualityOwned : ([858, 802] : List Wire).toFinset⊆s6Step211EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EarlyControl_classEquality : compileHmrEqualityLog s6Step211EarlyControlPositiveArena [858, 802] 0 s6Step211EarlyControlLog.classWork=some (s6Step211EarlyControlEqualityArena,s6Step211EarlyControlLog.classWork,s6Step211EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step211EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step211EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step211EarlyControl_classOwned : ([769, 855, 858] : List Wire).toFinset⊆s6Step211EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EarlyControl_positiveBorrow : s6Step211EarlyControlZeroArena.checkBorrow (1) s6Step211EarlyControlLog.positiveWork=some s6Step211EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step211EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step211EarlyControlPositiveArena,s6Step211EarlyControlZeroArena,s6Step211EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step211EarlyControl_class : compileHmrSourceClassLog s6Step211EarlyControlZeroArena false 769 s6Step211EarlyControlZeroPlan.top 0 858 s6Step211EarlyControlLog.positiveWork s6Step211EarlyControlLog.classWork=some s6Step211EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step211EarlyControlClassPlan s6Step211EarlyControlZeroArena false 769 s6Step211EarlyControlZeroPlan.top 0 858
  constructor
  · decide +kernel
  · exact s6Step211EarlyControl_classOwned
  · exact s6Step211EarlyControl_positiveBorrow
  · exact s6Step211EarlyControl_classEquality

private theorem s6Step211EarlyControl_entryRecordOwned : ([838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step211EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EarlyControl_entrySigmaOwned : ([858, 254] : List Wire).toFinset⊆s6Step211EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EarlyControl_fitBorrow : s6Step211EarlyControlFlagArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step211EarlyControlLog.recordFresh=some s6Step211EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step211EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step211EarlyControlFittedArena,s6Step211EarlyControlFlagArena,s6Step211EarlyControlLog,arenaWires]

private theorem s6Step211EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step211EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EarlyControl_fit : compileHmrRecordGrowLog s6Step211EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step211EarlyControlLog.recordFresh=some s6Step211EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step211EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step211EarlyControl_fitBorrow

private theorem s6Step211EarlyControl_flagsBorrow : s6Step211EarlyControlEqualityArena.checkBorrow (6) s6Step211EarlyControlLog.flagWork=some s6Step211EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step211EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step211EarlyControlFlagArena,s6Step211EarlyControlEqualityArena,s6Step211EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step211EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s6Step211EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EarlyControl_flags : compileHmrFlagsLog s6Step211EarlyControlClassPlan.equalityArena s6Step211EarlyControlClassPlan.equality.top 253 252 251 s6Step211EarlyControlLog.flagWork=some s6Step211EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step211EarlyControl_flagsOwned⟩
  · exact s6Step211EarlyControl_flagsBorrow

private theorem s6Step211EarlyControl_historyBorrow : s6Step211EarlyControlArena.checkBorrow ((47-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).length)) s6Step211EarlyControlLog.recordFresh=some s6Step211EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step211EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step211EarlyControlHistoryArena,s6Step211EarlyControlArena,s6Step211EarlyControlLog,arenaWires]

private theorem s6Step211EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] : List Wire).toFinset⊆s6Step211EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EarlyControl_history : compileHmrRecordGrowLog s6Step211EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step211EarlyControlLog.recordFresh=some s6Step211EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step211EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step211EarlyControl_historyBorrow

private theorem s6Step211EarlyControl_sigmaOwned : ([254, 858] : List Wire).toFinset⊆s6Step211EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EarlyControl_sigmaReleaseOwned : ([858] : List Wire).toFinset⊆s6Step211EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EarlyControl_sigmaRelease : s6Step211EarlyControlHistoryArena.release {858} (fun _ => false)=some s6Step211EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step211EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step211EarlyControlSigmaArena,s6Step211EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step211EarlyControl_sigma : compileHmrSigmaDropLog s6Step211EarlyControlHistoryArena false 0 0 254 858 []=some s6Step211EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step211EarlyControl_sigmaOwned⟩
  · exact s6Step211EarlyControl_sigmaRelease

private theorem s6Step211EarlyControl_zeroBorrow : s6Step211EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step211EarlyControlLog.zeroWork=some s6Step211EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step211EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step211EarlyControlZeroArena,s6Step211EarlyControlArena,s6Step211EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step211EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step211EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step211EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<873) ∨ (874≤q ∧ q<881) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EarlyControl_zero : compileHmrEqualityLog s6Step211EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step211EarlyControlLog.zeroWork=some (s6Step211EarlyControlZeroArena,s6Step211EarlyControlLog.zeroWork,s6Step211EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step211EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step211EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step211EarlyControl_logged : s6Step211EarlyControlPlan.Logged s6Step211EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 858 254 253 252 251 838 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step211EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step211EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step211EarlyControl_zero
  · exact s6Step211EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step211EarlyControl_flags
  · exact s6Step211EarlyControl_fit
  · exact s6Step211EarlyControl_history
  · exact s6Step211EarlyControl_sigma
  · exact s6Step211EarlyControl_branch

private theorem s6Step211EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step211EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 858 254 253 252 251 838 47 s6Step211EarlyControlLog=some s6Step211EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step211EarlyControlPlan s6Step211EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 858 254 253 252 251 838 47 s6Step211EarlyControl_logged

private def s6Step211EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<874) ∨ (875≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420],795⟩

private def s6Step211EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859],776⟩

private def s6Step211EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163],777⟩

private def s6Step211EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩

private def s6Step211FrontBank : WindowBank := ⟨s6Step211EntryFRow,s6Step211EntryGRow,s6Step211EntryFvRow,s6Step211EntryGvRow⟩

private def s6Step211Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 802, 795]

private def s6Step211Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 882, 807, 777]

private def s6Step211Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 855, 776]

private def s6Step211Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 813, 775]

private theorem s6Step211Counter_apart : Disjoint s6Step211HeadFvAfter.live s6Step211CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step211HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211Counter_borrowed : s6Step211HeadFvAfter.checkBorrow 4 s6Step211CounterWork=some s6Step211CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step211HeadFvAfter s6Step211CounterDuring s6Step211CounterWork.toFinset s6Step211Counter_bounded s6Step211Counter_apart rfl

private theorem s6Step211Counter_owned : (858::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step211HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step211HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211Counter_checked : compileHmrCounterStepLog s6Step211HeadFvAfter true 858 [774, 773, 772, 771, 770, 769] s6Step211CounterWork=some s6Step211CounterDuring := by
  have owned : ∀q∈858::[774, 773, 772, 771, 770, 769],q∈s6Step211HeadFvAfter.live := fun q hq => s6Step211Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step211Counter_borrowed

private def s6Step211EntryFAfter : Arena := s6Step211EntryFBefore

private theorem s6Step211EntryBank_incomingDistinct : ([s6Step211EntryFRow,s6Step211EntryGRow,s6Step211EntryFvRow,s6Step211EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211EntryF_Incoming : rowsOwned s6Step211EntryFBefore [s6Step211EntryFRow,s6Step211EntryGRow,s6Step211EntryFvRow,s6Step211EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211EntryFRow,s6Step211EntryGRow,s6Step211EntryFvRow,s6Step211EntryGvRow] 0 s6Step211EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<874) ∨ (875≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211EntryBank_outgoingOwned : rowsOwned s6Step211EntryGvAfter [s6Step211EntryFOut,s6Step211EntryGOut,s6Step211EntryFvOut,s6Step211EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step211EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211EntryF_Outgoing : rowsOwned s6Step211EntryGvAfter [s6Step211EntryFOut,s6Step211EntryGOut,s6Step211EntryFvOut,s6Step211EntryGvOut] :=
  hmrRows_owned_drop s6Step211EntryGvAfter [s6Step211EntryFOut,s6Step211EntryGOut,s6Step211EntryFvOut,s6Step211EntryGvOut] 0 s6Step211EntryBank_outgoingOwned

private theorem s6Step211EntryF_distinct : (s6Step211EntryFRow.sign::s6Step211EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211EntryF_owned : (s6Step211EntryFRow.sign::s6Step211EntryFRow.payload).toFinset⊆s6Step211EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<874) ∨ (875≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EntryF_reserved : s6Step211EntryFBefore.reserve s6Step211EntryFFresh.toFinset=some s6Step211EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step211EntryFFresh,arenaWires]
  · norm_num [s6Step211EntryFBefore,s6Step211EntryFFresh,arenaWires]
  · simp only [s6Step211EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step211EntryF_checked : planRowResizeLog s6Step211EntryFBefore s6Step211EntryFRow 165 s6Step211EntryFFresh=
    some (s6Step211EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420],795⟩,growRow 795 s6Step211EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step211EntryFBefore s6Step211EntryFAfter s6Step211EntryFRow 165 s6Step211EntryFFresh
    s6Step211EntryF_distinct s6Step211EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step211EntryF_reserved
  have rowEq : WindowRow.mk (s6Step211EntryFRow.payload++s6Step211EntryFFresh) s6Step211EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step211EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211EntryFvBefore : Arena := s6Step211EntryGAfter

private theorem s6Step211EntryFv_Incoming : rowsOwned s6Step211EntryFvBefore [s6Step211EntryFvRow,s6Step211EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211EntryFRow,s6Step211EntryGRow,s6Step211EntryFvRow,s6Step211EntryGvRow] 2 s6Step211EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211EntryFv_Outgoing : rowsOwned s6Step211EntryGvAfter [s6Step211EntryFvOut,s6Step211EntryGvOut] :=
  hmrRows_owned_drop s6Step211EntryGvAfter [s6Step211EntryFOut,s6Step211EntryGOut,s6Step211EntryFvOut,s6Step211EntryGvOut] 2 s6Step211EntryBank_outgoingOwned

private theorem s6Step211EntryFv_distinct : (s6Step211EntryFvRow.sign::s6Step211EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211EntryFv_owned : (s6Step211EntryFvRow.sign::s6Step211EntryFvRow.payload).toFinset⊆s6Step211EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<874) ∨ (875≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EntryFv_reserved : s6Step211EntryFvBefore.reserve s6Step211EntryFvFresh.toFinset=some s6Step211EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step211EntryFvFresh,arenaWires]
  · norm_num [s6Step211EntryFvBefore,s6Step211EntryGAfter,s6Step211EntryFvFresh,arenaWires]
  · ext q
    simp only [s6Step211EntryFvAfter,s6Step211EntryFvBefore,s6Step211EntryGAfter,s6Step211EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step211EntryFv_checked : planRowResizeLog s6Step211EntryFvBefore s6Step211EntryFvRow 120 s6Step211EntryFvFresh=
    some (s6Step211EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874],776⟩,growRow 776 s6Step211EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step211EntryFvBefore s6Step211EntryFvAfter s6Step211EntryFvRow 120 s6Step211EntryFvFresh
    s6Step211EntryFv_distinct s6Step211EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step211EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step211EntryFvRow.payload++s6Step211EntryFvFresh) s6Step211EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step211EntryGBefore : Arena := s6Step211EntryFBefore

private theorem s6Step211EntryG_Incoming : rowsOwned s6Step211EntryGBefore [s6Step211EntryGRow,s6Step211EntryFvRow,s6Step211EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211EntryFRow,s6Step211EntryGRow,s6Step211EntryFvRow,s6Step211EntryGvRow] 1 s6Step211EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<874) ∨ (875≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211EntryG_Outgoing : rowsOwned s6Step211EntryGvAfter [s6Step211EntryGOut,s6Step211EntryFvOut,s6Step211EntryGvOut] :=
  hmrRows_owned_drop s6Step211EntryGvAfter [s6Step211EntryFOut,s6Step211EntryGOut,s6Step211EntryFvOut,s6Step211EntryGvOut] 1 s6Step211EntryBank_outgoingOwned

private theorem s6Step211EntryG_distinct : (s6Step211EntryGRow.sign::s6Step211EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211EntryG_owned : (s6Step211EntryGRow.sign::s6Step211EntryGRow.payload).toFinset⊆s6Step211EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<874) ∨ (875≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EntryG_reserved : s6Step211EntryGBefore.reserve s6Step211EntryGFresh.toFinset=some s6Step211EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step211EntryGFresh,arenaWires]
  · norm_num [s6Step211EntryGBefore,s6Step211EntryFBefore,s6Step211EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step211EntryGAfter,s6Step211EntryGBefore,s6Step211EntryFBefore,s6Step211EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step211EntryG_checked : planRowResizeLog s6Step211EntryGBefore s6Step211EntryGRow 165 s6Step211EntryGFresh=
    some (s6Step211EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 882],777⟩,growRow 777 s6Step211EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step211EntryGBefore s6Step211EntryGAfter s6Step211EntryGRow 165 s6Step211EntryGFresh
    s6Step211EntryG_distinct s6Step211EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step211EntryG_reserved
  have rowEq : WindowRow.mk (s6Step211EntryGRow.payload++s6Step211EntryGFresh) s6Step211EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 882],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step211EntryGvBefore : Arena := s6Step211EntryFvAfter

private theorem s6Step211EntryGv_Incoming : rowsOwned s6Step211EntryGvBefore [s6Step211EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211EntryFRow,s6Step211EntryGRow,s6Step211EntryFvRow,s6Step211EntryGvRow] 3 s6Step211EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211EntryGv_Outgoing : rowsOwned s6Step211EntryGvAfter [s6Step211EntryGvOut] :=
  hmrRows_owned_drop s6Step211EntryGvAfter [s6Step211EntryFOut,s6Step211EntryGOut,s6Step211EntryFvOut,s6Step211EntryGvOut] 3 s6Step211EntryBank_outgoingOwned

private theorem s6Step211EntryGv_distinct : (s6Step211EntryGvRow.sign::s6Step211EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211EntryGv_owned : (s6Step211EntryGvRow.sign::s6Step211EntryGvRow.payload).toFinset⊆s6Step211EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211EntryGv_reserved : s6Step211EntryGvBefore.reserve s6Step211EntryGvFresh.toFinset=some s6Step211EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step211EntryGvFresh,arenaWires]
  · norm_num [s6Step211EntryGvBefore,s6Step211EntryFvAfter,s6Step211EntryGvFresh,arenaWires]
  · simp only [s6Step211EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step211EntryGv_checked : planRowResizeLog s6Step211EntryGvBefore s6Step211EntryGvRow 120 s6Step211EntryGvFresh=
    some (s6Step211EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩,growRow 775 s6Step211EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step211EntryGvBefore s6Step211EntryGvAfter s6Step211EntryGvRow 120 s6Step211EntryGvFresh
    s6Step211EntryGv_distinct s6Step211EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step211EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step211EntryGvRow.payload++s6Step211EntryGvFresh) s6Step211EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step211EntryBank_rows : planWindowRowsLog s6Step211EntryFBefore [(s6Step211EntryFRow,165),(s6Step211EntryGRow,165),(s6Step211EntryFvRow,120),(s6Step211EntryGvRow,120)] [s6Step211EntryFFresh,s6Step211EntryGFresh,s6Step211EntryFvFresh,s6Step211EntryGvFresh]=
    some (s6Step211EntryGvAfter,[s6Step211EntryFOut,s6Step211EntryGOut,s6Step211EntryFvOut,s6Step211EntryGvOut],(growRow 795 s6Step211EntryFFresh ++ (growRow 777 s6Step211EntryGFresh ++ (growRow 776 s6Step211EntryFvFresh ++ (growRow 775 s6Step211EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step211EntryGvAfter [] []=some (s6Step211EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step211EntryGvBefore s6Step211EntryGvAfter s6Step211EntryGvAfter
    s6Step211EntryGvRow s6Step211EntryGvOut 120 s6Step211EntryGvFresh [] [] []
    (growRow 775 s6Step211EntryGvFresh) ([]) s6Step211EntryGv_Incoming s6Step211EntryGv_checked h4 s6Step211EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step211EntryFvBefore s6Step211EntryFvAfter s6Step211EntryGvAfter
    s6Step211EntryFvRow s6Step211EntryFvOut 120 s6Step211EntryFvFresh [(s6Step211EntryGvRow,120)] [s6Step211EntryGvFresh] [s6Step211EntryGvOut]
    (growRow 776 s6Step211EntryFvFresh) ((growRow 775 s6Step211EntryGvFresh ++ [])) s6Step211EntryFv_Incoming s6Step211EntryFv_checked h3 s6Step211EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step211EntryGBefore s6Step211EntryGAfter s6Step211EntryGvAfter
    s6Step211EntryGRow s6Step211EntryGOut 165 s6Step211EntryGFresh [(s6Step211EntryFvRow,120),(s6Step211EntryGvRow,120)] [s6Step211EntryFvFresh,s6Step211EntryGvFresh] [s6Step211EntryFvOut,s6Step211EntryGvOut]
    (growRow 777 s6Step211EntryGFresh) ((growRow 776 s6Step211EntryFvFresh ++ (growRow 775 s6Step211EntryGvFresh ++ []))) s6Step211EntryG_Incoming s6Step211EntryG_checked h2 s6Step211EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step211EntryFBefore s6Step211EntryFAfter s6Step211EntryGvAfter
    s6Step211EntryFRow s6Step211EntryFOut 165 s6Step211EntryFFresh [(s6Step211EntryGRow,165),(s6Step211EntryFvRow,120),(s6Step211EntryGvRow,120)] [s6Step211EntryGFresh,s6Step211EntryFvFresh,s6Step211EntryGvFresh] [s6Step211EntryGOut,s6Step211EntryFvOut,s6Step211EntryGvOut]
    (growRow 795 s6Step211EntryFFresh) ((growRow 777 s6Step211EntryGFresh ++ (growRow 776 s6Step211EntryFvFresh ++ (growRow 775 s6Step211EntryGvFresh ++ [])))) s6Step211EntryF_Incoming s6Step211EntryF_checked h1 s6Step211EntryF_Outgoing
  exact h0

private theorem s6Step211EntryBank_checked : compileHmrBankResizeLog .entry s6Step211EntryFBefore ⟨s6Step211EntryFRow,s6Step211EntryGRow,s6Step211EntryFvRow,s6Step211EntryGvRow⟩ ⟨165,165,120,120⟩ [s6Step211EntryFFresh,s6Step211EntryGFresh,s6Step211EntryFvFresh,s6Step211EntryGvFresh]=
    some (s6Step211EntryGvAfter,⟨s6Step211EntryFOut,s6Step211EntryGOut,s6Step211EntryFvOut,s6Step211EntryGvOut⟩,(growRow 795 s6Step211EntryFFresh ++ (growRow 777 s6Step211EntryGFresh ++ (growRow 776 s6Step211EntryFvFresh ++ (growRow 775 s6Step211EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step211EntryBank_rows]
  rfl

private def s6Step211ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<419) ∨ (421≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211ExitFBefore : Arena := s6Step211ExitGAfter

private def s6Step211ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 802],795⟩

private def s6Step211ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 855],776⟩

private def s6Step211ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 882, 807],777⟩

private def s6Step211ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 813],775⟩

private theorem s6Step211ExitBank_incomingDistinct : ([s6Step211ExitGRow,s6Step211ExitFRow,s6Step211ExitFvRow,s6Step211ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211ExitF_Incoming : rowsOwned s6Step211ExitFBefore [s6Step211ExitFRow,s6Step211ExitFvRow,s6Step211ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211ExitGRow,s6Step211ExitFRow,s6Step211ExitFvRow,s6Step211ExitGvRow] 1 s6Step211ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211ExitFBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211ExitBank_outgoingOwned : rowsOwned s6Step211ExitGvAfter [s6Step211ExitGOut,s6Step211ExitFOut,s6Step211ExitFvOut,s6Step211ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step211ExitGvAfter (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<419) ∨ (421≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211ExitF_Outgoing : rowsOwned s6Step211ExitGvAfter [s6Step211ExitFOut,s6Step211ExitFvOut,s6Step211ExitGvOut] :=
  hmrRows_owned_drop s6Step211ExitGvAfter [s6Step211ExitGOut,s6Step211ExitFOut,s6Step211ExitFvOut,s6Step211ExitGvOut] 1 s6Step211ExitBank_outgoingOwned

private theorem s6Step211ExitF_distinct : (s6Step211ExitFRow.sign::s6Step211ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211ExitF_owned : (s6Step211ExitFRow.sign::s6Step211ExitFRow.payload).toFinset⊆s6Step211ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211ExitFBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211ExitF_retired : s6Step211ExitFBefore.retireSet s6Step211ExitFExtra.toFinset=s6Step211ExitFAfter := by
  unfold Arena.retireSet s6Step211ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step211ExitFBefore,s6Step211ExitGAfter,s6Step211ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step211ExitF_checked : planRowResizeLog s6Step211ExitFBefore s6Step211ExitFRow 163 []=
    some (s6Step211ExitFAfter,s6Step211ExitFOut,shrinkRow 795 s6Step211ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step211ExitFBefore s6Step211ExitFRow 163 s6Step211ExitF_distinct s6Step211ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step211ExitFRow.payload.take 163) s6Step211ExitFRow.sign=s6Step211ExitFOut := by decide +kernel
  have hi : s6Step211ExitFRow.payload.drop 163=s6Step211ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step211ExitF_retired] at result
  exact result

private def s6Step211ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<419) ∨ (421≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211ExitFvBefore : Arena := s6Step211ExitFAfter

private theorem s6Step211ExitFv_Incoming : rowsOwned s6Step211ExitFvBefore [s6Step211ExitFvRow,s6Step211ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211ExitGRow,s6Step211ExitFRow,s6Step211ExitFvRow,s6Step211ExitGvRow] 2 s6Step211ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211ExitFvBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<419) ∨ (421≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211ExitFv_Outgoing : rowsOwned s6Step211ExitGvAfter [s6Step211ExitFvOut,s6Step211ExitGvOut] :=
  hmrRows_owned_drop s6Step211ExitGvAfter [s6Step211ExitGOut,s6Step211ExitFOut,s6Step211ExitFvOut,s6Step211ExitGvOut] 2 s6Step211ExitBank_outgoingOwned

private theorem s6Step211ExitFv_distinct : (s6Step211ExitFvRow.sign::s6Step211ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211ExitFv_owned : (s6Step211ExitFvRow.sign::s6Step211ExitFvRow.payload).toFinset⊆s6Step211ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211ExitFvBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<419) ∨ (421≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211ExitFv_retired : s6Step211ExitFvBefore.retireSet s6Step211ExitFvExtra.toFinset=s6Step211ExitFvAfter := by
  unfold Arena.retireSet s6Step211ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step211ExitFvBefore,s6Step211ExitFAfter,s6Step211ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step211ExitFv_checked : planRowResizeLog s6Step211ExitFvBefore s6Step211ExitFvRow 120 []=
    some (s6Step211ExitFvAfter,s6Step211ExitFvOut,shrinkRow 776 s6Step211ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step211ExitFvBefore s6Step211ExitFvRow 120 s6Step211ExitFv_distinct s6Step211ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step211ExitFvRow.payload.take 120) s6Step211ExitFvRow.sign=s6Step211ExitFvOut := by decide +kernel
  have hi : s6Step211ExitFvRow.payload.drop 120=s6Step211ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step211ExitFv_retired] at result
  exact result

private def s6Step211ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step211ExitG_Incoming : rowsOwned s6Step211ExitGBefore [s6Step211ExitGRow,s6Step211ExitFRow,s6Step211ExitFvRow,s6Step211ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211ExitGRow,s6Step211ExitFRow,s6Step211ExitFvRow,s6Step211ExitGvRow] 0 s6Step211ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211ExitG_Outgoing : rowsOwned s6Step211ExitGvAfter [s6Step211ExitGOut,s6Step211ExitFOut,s6Step211ExitFvOut,s6Step211ExitGvOut] :=
  hmrRows_owned_drop s6Step211ExitGvAfter [s6Step211ExitGOut,s6Step211ExitFOut,s6Step211ExitFvOut,s6Step211ExitGvOut] 0 s6Step211ExitBank_outgoingOwned

private theorem s6Step211ExitG_distinct : (s6Step211ExitGRow.sign::s6Step211ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211ExitG_owned : (s6Step211ExitGRow.sign::s6Step211ExitGRow.payload).toFinset⊆s6Step211ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211ExitG_retired : s6Step211ExitGBefore.retireSet s6Step211ExitGExtra.toFinset=s6Step211ExitGAfter := by
  unfold Arena.retireSet s6Step211ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step211ExitGBefore,s6Step211ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step211ExitG_checked : planRowResizeLog s6Step211ExitGBefore s6Step211ExitGRow 163 []=
    some (s6Step211ExitGAfter,s6Step211ExitGOut,shrinkRow 777 s6Step211ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step211ExitGBefore s6Step211ExitGRow 163 s6Step211ExitG_distinct s6Step211ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step211ExitGRow.payload.take 163) s6Step211ExitGRow.sign=s6Step211ExitGOut := by decide +kernel
  have hi : s6Step211ExitGRow.payload.drop 163=s6Step211ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step211ExitG_retired] at result
  exact result

private def s6Step211ExitGvBefore : Arena := s6Step211ExitFvAfter

private theorem s6Step211ExitGv_Incoming : rowsOwned s6Step211ExitGvBefore [s6Step211ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211ExitGRow,s6Step211ExitFRow,s6Step211ExitFvRow,s6Step211ExitGvRow] 3 s6Step211ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211ExitGvBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<419) ∨ (421≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211ExitGv_Outgoing : rowsOwned s6Step211ExitGvAfter [s6Step211ExitGvOut] :=
  hmrRows_owned_drop s6Step211ExitGvAfter [s6Step211ExitGOut,s6Step211ExitFOut,s6Step211ExitFvOut,s6Step211ExitGvOut] 3 s6Step211ExitBank_outgoingOwned

private theorem s6Step211ExitGv_distinct : (s6Step211ExitGvRow.sign::s6Step211ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211ExitGv_owned : (s6Step211ExitGvRow.sign::s6Step211ExitGvRow.payload).toFinset⊆s6Step211ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211ExitGvBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<419) ∨ (421≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211ExitGv_retired : s6Step211ExitGvBefore.retireSet s6Step211ExitGvExtra.toFinset=s6Step211ExitGvAfter := by
  unfold Arena.retireSet s6Step211ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step211ExitGvBefore,s6Step211ExitFvAfter,s6Step211ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step211ExitGv_checked : planRowResizeLog s6Step211ExitGvBefore s6Step211ExitGvRow 120 []=
    some (s6Step211ExitGvAfter,s6Step211ExitGvOut,shrinkRow 775 s6Step211ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step211ExitGvBefore s6Step211ExitGvRow 120 s6Step211ExitGv_distinct s6Step211ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step211ExitGvRow.payload.take 120) s6Step211ExitGvRow.sign=s6Step211ExitGvOut := by decide +kernel
  have hi : s6Step211ExitGvRow.payload.drop 120=s6Step211ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step211ExitGv_retired] at result
  exact result

private theorem s6Step211ExitBank_rows : planWindowRowsLog s6Step211ExitGBefore [(s6Step211ExitGRow,163),(s6Step211ExitFRow,163),(s6Step211ExitFvRow,120),(s6Step211ExitGvRow,120)] [[],[],[],[]]=
    some (s6Step211ExitGvAfter,[s6Step211ExitGOut,s6Step211ExitFOut,s6Step211ExitFvOut,s6Step211ExitGvOut],(shrinkRow 777 s6Step211ExitGExtra ++ (shrinkRow 795 s6Step211ExitFExtra ++ (shrinkRow 776 s6Step211ExitFvExtra ++ (shrinkRow 775 s6Step211ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step211ExitGvAfter [] []=some (s6Step211ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step211ExitGvBefore s6Step211ExitGvAfter s6Step211ExitGvAfter
    s6Step211ExitGvRow s6Step211ExitGvOut 120 [] [] [] []
    (shrinkRow 775 s6Step211ExitGvExtra) ([]) s6Step211ExitGv_Incoming s6Step211ExitGv_checked h4 s6Step211ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step211ExitFvBefore s6Step211ExitFvAfter s6Step211ExitGvAfter
    s6Step211ExitFvRow s6Step211ExitFvOut 120 [] [(s6Step211ExitGvRow,120)] [[]] [s6Step211ExitGvOut]
    (shrinkRow 776 s6Step211ExitFvExtra) ((shrinkRow 775 s6Step211ExitGvExtra ++ [])) s6Step211ExitFv_Incoming s6Step211ExitFv_checked h3 s6Step211ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step211ExitFBefore s6Step211ExitFAfter s6Step211ExitGvAfter
    s6Step211ExitFRow s6Step211ExitFOut 163 [] [(s6Step211ExitFvRow,120),(s6Step211ExitGvRow,120)] [[],[]] [s6Step211ExitFvOut,s6Step211ExitGvOut]
    (shrinkRow 795 s6Step211ExitFExtra) ((shrinkRow 776 s6Step211ExitFvExtra ++ (shrinkRow 775 s6Step211ExitGvExtra ++ []))) s6Step211ExitF_Incoming s6Step211ExitF_checked h2 s6Step211ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step211ExitGBefore s6Step211ExitGAfter s6Step211ExitGvAfter
    s6Step211ExitGRow s6Step211ExitGOut 163 [] [(s6Step211ExitFRow,163),(s6Step211ExitFvRow,120),(s6Step211ExitGvRow,120)] [[],[],[]] [s6Step211ExitFOut,s6Step211ExitFvOut,s6Step211ExitGvOut]
    (shrinkRow 777 s6Step211ExitGExtra) ((shrinkRow 795 s6Step211ExitFExtra ++ (shrinkRow 776 s6Step211ExitFvExtra ++ (shrinkRow 775 s6Step211ExitGvExtra ++ [])))) s6Step211ExitG_Incoming s6Step211ExitG_checked h1 s6Step211ExitG_Outgoing
  exact h0

private theorem s6Step211ExitBank_checked : compileHmrBankResizeLog .exit s6Step211ExitGBefore ⟨s6Step211ExitFRow,s6Step211ExitGRow,s6Step211ExitFvRow,s6Step211ExitGvRow⟩ ⟨163,163,120,120⟩ [[],[],[],[]]=
    some (s6Step211ExitGvAfter,⟨s6Step211ExitFOut,s6Step211ExitGOut,s6Step211ExitFvOut,s6Step211ExitGvOut⟩,(shrinkRow 777 s6Step211ExitGExtra ++ (shrinkRow 795 s6Step211ExitFExtra ++ (shrinkRow 776 s6Step211ExitFvExtra ++ (shrinkRow 775 s6Step211ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step211ExitBank_rows]
  rfl

private theorem s6Step211Add0_apart : Disjoint s6Step211Add0Arena.live s6Step211Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step211Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211Add0_card : s6Step211Add0Arena.live.card=891 := by
  decide +kernel

private theorem s6Step211Add0_borrowed : s6Step211Add0Arena.checkBorrow (hmrHybridCount s6Step211Add0Arena s6Step211Add0B.length) s6Step211Add0Work=some s6Step211Add0During := by
  have len : s6Step211Add0Work.length=hmrHybridCount s6Step211Add0Arena s6Step211Add0B.length := by
    rw [hmrHybridCount,s6Step211Add0_card]
    decide +kernel
  have nd : s6Step211Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step211Add0Arena s6Step211Add0During s6Step211Add0Work.toFinset s6Step211Add0_bounded s6Step211Add0_apart rfl

private theorem s6Step211Add0_distinct : (822::838::825::(s6Step211Add0A++s6Step211Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211Add0_owned : (822::838::825::(s6Step211Add0A++s6Step211Add0B)).toFinset⊆s6Step211Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step211Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211Add0_checked : compileHmrHybridCinLog s6Step211Add0Arena 838 822 825 s6Step211Add0A s6Step211Add0B s6Step211Add0Work=some s6Step211Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step211Add0Arena s6Step211Add0During 838 822 825 s6Step211Add0A s6Step211Add0B s6Step211Add0Work
    (by decide +kernel) (by decide +kernel) s6Step211Add0_distinct
    (fun q hq => s6Step211Add0_owned (List.mem_toFinset.mpr hq)) s6Step211Add0_borrowed

private theorem s6Step211Add1_apart : Disjoint s6Step211Add1Arena.live s6Step211Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step211Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211Add1_card : s6Step211Add1Arena.live.card=891 := by
  decide +kernel

private theorem s6Step211Add1_borrowed : s6Step211Add1Arena.checkBorrow (hmrHybridCount s6Step211Add1Arena s6Step211Add1B.length) s6Step211Add1Work=some s6Step211Add1During := by
  have len : s6Step211Add1Work.length=hmrHybridCount s6Step211Add1Arena s6Step211Add1B.length := by
    rw [hmrHybridCount,s6Step211Add1_card]
    decide +kernel
  have nd : s6Step211Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step211Add1Arena s6Step211Add1During s6Step211Add1Work.toFinset s6Step211Add1_bounded s6Step211Add1_apart rfl

private theorem s6Step211Add1_distinct : (822::838::825::(s6Step211Add1A++s6Step211Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211Add1_owned : (822::838::825::(s6Step211Add1A++s6Step211Add1B)).toFinset⊆s6Step211Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step211Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211Add1_checked : compileHmrHybridCinLog s6Step211Add1Arena 838 822 825 s6Step211Add1A s6Step211Add1B s6Step211Add1Work=some s6Step211Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step211Add1Arena s6Step211Add1During 838 822 825 s6Step211Add1A s6Step211Add1B s6Step211Add1Work
    (by decide +kernel) (by decide +kernel) s6Step211Add1_distinct
    (fun q hq => s6Step211Add1_owned (List.mem_toFinset.mpr hq)) s6Step211Add1_borrowed

private theorem s6Step211F4_apart : Disjoint (s6Step211Add0A++s6Step211Add0B).toFinset (s6Step211Add1A++s6Step211Add1B).toFinset := by
  have nd : ((s6Step211Add0A++s6Step211Add0B)++(s6Step211Add1A++s6Step211Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step211F4_carry : s6Step211F4FlagArena.checkBorrow 1 [825]=some s6Step211Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step211F4FlagArena,s6Step211HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step211F4FlagArena,s6Step211HeadFvAfter,s6Step211Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step211F4_distinct : (858::838::822::825::((s6Step211Add0A++s6Step211Add1A)++(s6Step211Add0B++s6Step211Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211F4_flag : s6Step211HeadFvAfter.checkBorrow 1 [822]=some s6Step211F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step211HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step211F4_owned : (858::838::((s6Step211Add0A++s6Step211Add1A)++(s6Step211Add0B++s6Step211Add1B))).toFinset⊆s6Step211HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step211HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211F4_checked : compileHmrHybridF4Log s6Step211HeadFvAfter 858 838 s6Step211Add0A s6Step211Add0B s6Step211Add1A s6Step211Add1B [822] [825] s6Step211Add0Work s6Step211Add1Work=some s6Step211F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step211HeadFvAfter s6Step211F4FlagArena s6Step211Add0Arena s6Step211Add0During s6Step211Add1During 858 838
    s6Step211Add0A s6Step211Add0B s6Step211Add1A s6Step211Add1B [822] [825] s6Step211Add0Work s6Step211Add1Work
    (fun q hq => s6Step211F4_owned (List.mem_toFinset.mpr hq)) s6Step211F4_flag s6Step211F4_carry
    s6Step211F4_distinct s6Step211F4_apart s6Step211Add0_checked s6Step211Add1_checked

private theorem s6Step211Front_branch : s6Step211FrontSigmaArena.checkBorrow 1 [838]=some s6Step211HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step211FrontSigmaArena,s6Step211EntryGvAfter,s6Step211EntryFvAfter,arenaWires]
  · ext q
    simp only [s6Step211FrontSigmaArena,s6Step211EntryGvAfter,s6Step211EntryFvAfter,s6Step211HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step211Front_entry : HmrFrontEntryValid s6Step211EntryFBefore s6Step211FrontBank 165 120 ⟨163,163,120,120⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step211FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step211EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step211EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<858) ∨ (859≤q ∧ q<869) ∨ (870≤q ∧ q<874) ∨ (875≤q ∧ q<882) ∨ (883≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step211FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step211Front_sigma : s6Step211EntryGvAfter.checkBorrow 1 [858]=some s6Step211FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step211EntryGvAfter,s6Step211EntryFvAfter,arenaWires]
  · rfl

private def s6Step211HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211HeadFBefore : Arena := s6Step211HeadGAfter

private def s6Step211HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420],795⟩

private def s6Step211HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874],776⟩

private def s6Step211HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 882],777⟩

private def s6Step211HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867],775⟩

private theorem s6Step211HeadBank_incomingDistinct : ([s6Step211HeadGRow,s6Step211HeadFRow,s6Step211HeadGvRow,s6Step211HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211HeadF_Incoming : rowsOwned s6Step211HeadFBefore [s6Step211HeadFRow,s6Step211HeadGvRow,s6Step211HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211HeadGRow,s6Step211HeadFRow,s6Step211HeadGvRow,s6Step211HeadFvRow] 1 s6Step211HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211HeadBank_outgoingOwned : rowsOwned s6Step211HeadFvAfter [s6Step211HeadGOut,s6Step211HeadFOut,s6Step211HeadGvOut,s6Step211HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step211HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211HeadF_Outgoing : rowsOwned s6Step211HeadFvAfter [s6Step211HeadFOut,s6Step211HeadGvOut,s6Step211HeadFvOut] :=
  hmrRows_owned_drop s6Step211HeadFvAfter [s6Step211HeadGOut,s6Step211HeadFOut,s6Step211HeadGvOut,s6Step211HeadFvOut] 1 s6Step211HeadBank_outgoingOwned

private theorem s6Step211HeadF_distinct : (s6Step211HeadFRow.sign::s6Step211HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211HeadF_owned : (s6Step211HeadFRow.sign::s6Step211HeadFRow.payload).toFinset⊆s6Step211HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211HeadF_reserved : s6Step211HeadFBefore.reserve s6Step211HeadFFresh.toFinset=some s6Step211HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step211HeadFFresh,arenaWires]
  · norm_num [s6Step211HeadFBefore,s6Step211HeadGAfter,s6Step211HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step211HeadFAfter,s6Step211HeadFBefore,s6Step211HeadGAfter,s6Step211HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step211HeadF_checked : planRowResizeLog s6Step211HeadFBefore s6Step211HeadFRow 166 s6Step211HeadFFresh=
    some (s6Step211HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 802],795⟩,growRow 795 s6Step211HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step211HeadFBefore s6Step211HeadFAfter s6Step211HeadFRow 166 s6Step211HeadFFresh
    s6Step211HeadF_distinct s6Step211HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step211HeadF_reserved
  have rowEq : WindowRow.mk (s6Step211HeadFRow.payload++s6Step211HeadFFresh) s6Step211HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 802],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step211HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step211HeadFvBefore : Arena := s6Step211HeadGvAfter

private theorem s6Step211HeadFv_Incoming : rowsOwned s6Step211HeadFvBefore [s6Step211HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211HeadGRow,s6Step211HeadFRow,s6Step211HeadGvRow,s6Step211HeadFvRow] 3 s6Step211HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211HeadFv_Outgoing : rowsOwned s6Step211HeadFvAfter [s6Step211HeadFvOut] :=
  hmrRows_owned_drop s6Step211HeadFvAfter [s6Step211HeadGOut,s6Step211HeadFOut,s6Step211HeadGvOut,s6Step211HeadFvOut] 3 s6Step211HeadBank_outgoingOwned

private theorem s6Step211HeadFv_distinct : (s6Step211HeadFvRow.sign::s6Step211HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211HeadFv_owned : (s6Step211HeadFvRow.sign::s6Step211HeadFvRow.payload).toFinset⊆s6Step211HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211HeadFv_reserved : s6Step211HeadFvBefore.reserve s6Step211HeadFvFresh.toFinset=some s6Step211HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step211HeadFvFresh,arenaWires]
  · norm_num [s6Step211HeadFvBefore,s6Step211HeadGvAfter,s6Step211HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step211HeadFvAfter,s6Step211HeadFvBefore,s6Step211HeadGvAfter,s6Step211HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step211HeadFv_checked : planRowResizeLog s6Step211HeadFvBefore s6Step211HeadFvRow 121 s6Step211HeadFvFresh=
    some (s6Step211HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 855],776⟩,growRow 776 s6Step211HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step211HeadFvBefore s6Step211HeadFvAfter s6Step211HeadFvRow 121 s6Step211HeadFvFresh
    s6Step211HeadFv_distinct s6Step211HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step211HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step211HeadFvRow.payload++s6Step211HeadFvFresh) s6Step211HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 843, 833, 907, 927, 903, 791, 859, 874, 855],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step211HeadG_Incoming : rowsOwned s6Step211HeadGBefore [s6Step211HeadGRow,s6Step211HeadFRow,s6Step211HeadGvRow,s6Step211HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211HeadGRow,s6Step211HeadFRow,s6Step211HeadGvRow,s6Step211HeadFvRow] 0 s6Step211HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211HeadG_Outgoing : rowsOwned s6Step211HeadFvAfter [s6Step211HeadGOut,s6Step211HeadFOut,s6Step211HeadGvOut,s6Step211HeadFvOut] :=
  hmrRows_owned_drop s6Step211HeadFvAfter [s6Step211HeadGOut,s6Step211HeadFOut,s6Step211HeadGvOut,s6Step211HeadFvOut] 0 s6Step211HeadBank_outgoingOwned

private theorem s6Step211HeadG_distinct : (s6Step211HeadGRow.sign::s6Step211HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211HeadG_owned : (s6Step211HeadGRow.sign::s6Step211HeadGRow.payload).toFinset⊆s6Step211HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211HeadG_reserved : s6Step211HeadGBefore.reserve s6Step211HeadGFresh.toFinset=some s6Step211HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step211HeadGFresh,arenaWires]
  · norm_num [s6Step211HeadGBefore,s6Step211HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step211HeadGAfter,s6Step211HeadGBefore,s6Step211HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step211HeadG_checked : planRowResizeLog s6Step211HeadGBefore s6Step211HeadGRow 166 s6Step211HeadGFresh=
    some (s6Step211HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 882, 807],777⟩,growRow 777 s6Step211HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step211HeadGBefore s6Step211HeadGAfter s6Step211HeadGRow 166 s6Step211HeadGFresh
    s6Step211HeadG_distinct s6Step211HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step211HeadG_reserved
  have rowEq : WindowRow.mk (s6Step211HeadGRow.payload++s6Step211HeadGFresh) s6Step211HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 882, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step211HeadGvBefore : Arena := s6Step211HeadFAfter

private theorem s6Step211HeadGv_Incoming : rowsOwned s6Step211HeadGvBefore [s6Step211HeadGvRow,s6Step211HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step211HeadGRow,s6Step211HeadFRow,s6Step211HeadGvRow,s6Step211HeadFvRow] 2 s6Step211HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step211HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step211HeadGv_Outgoing : rowsOwned s6Step211HeadFvAfter [s6Step211HeadGvOut,s6Step211HeadFvOut] :=
  hmrRows_owned_drop s6Step211HeadFvAfter [s6Step211HeadGOut,s6Step211HeadFOut,s6Step211HeadGvOut,s6Step211HeadFvOut] 2 s6Step211HeadBank_outgoingOwned

private theorem s6Step211HeadGv_distinct : (s6Step211HeadGvRow.sign::s6Step211HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step211HeadGv_owned : (s6Step211HeadGvRow.sign::s6Step211HeadGvRow.payload).toFinset⊆s6Step211HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step211HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<855) ∨ (856≤q ∧ q<869) ∨ (870≤q ∧ q<896) ∨ (897≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step211HeadGv_reserved : s6Step211HeadGvBefore.reserve s6Step211HeadGvFresh.toFinset=some s6Step211HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step211HeadGvFresh,arenaWires]
  · norm_num [s6Step211HeadGvBefore,s6Step211HeadFAfter,s6Step211HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step211HeadGvAfter,s6Step211HeadGvBefore,s6Step211HeadFAfter,s6Step211HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step211HeadGv_checked : planRowResizeLog s6Step211HeadGvBefore s6Step211HeadGvRow 121 s6Step211HeadGvFresh=
    some (s6Step211HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 813],775⟩,growRow 775 s6Step211HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step211HeadGvBefore s6Step211HeadGvAfter s6Step211HeadGvRow 121 s6Step211HeadGvFresh
    s6Step211HeadGv_distinct s6Step211HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step211HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step211HeadGvRow.payload++s6Step211HeadGvFresh) s6Step211HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 850, 853, 880, 854, 891, 794, 877, 780, 867, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step211HeadBank_rows : planWindowRowsLog s6Step211HeadGBefore [(s6Step211HeadGRow,166),(s6Step211HeadFRow,166),(s6Step211HeadGvRow,121),(s6Step211HeadFvRow,121)] [s6Step211HeadGFresh,s6Step211HeadFFresh,s6Step211HeadGvFresh,s6Step211HeadFvFresh]=
    some (s6Step211HeadFvAfter,[s6Step211HeadGOut,s6Step211HeadFOut,s6Step211HeadGvOut,s6Step211HeadFvOut],(growRow 777 s6Step211HeadGFresh ++ (growRow 795 s6Step211HeadFFresh ++ (growRow 775 s6Step211HeadGvFresh ++ (growRow 776 s6Step211HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step211HeadFvAfter [] []=some (s6Step211HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step211HeadFvBefore s6Step211HeadFvAfter s6Step211HeadFvAfter
    s6Step211HeadFvRow s6Step211HeadFvOut 121 s6Step211HeadFvFresh [] [] []
    (growRow 776 s6Step211HeadFvFresh) ([]) s6Step211HeadFv_Incoming s6Step211HeadFv_checked h4 s6Step211HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step211HeadGvBefore s6Step211HeadGvAfter s6Step211HeadFvAfter
    s6Step211HeadGvRow s6Step211HeadGvOut 121 s6Step211HeadGvFresh [(s6Step211HeadFvRow,121)] [s6Step211HeadFvFresh] [s6Step211HeadFvOut]
    (growRow 775 s6Step211HeadGvFresh) ((growRow 776 s6Step211HeadFvFresh ++ [])) s6Step211HeadGv_Incoming s6Step211HeadGv_checked h3 s6Step211HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step211HeadFBefore s6Step211HeadFAfter s6Step211HeadFvAfter
    s6Step211HeadFRow s6Step211HeadFOut 166 s6Step211HeadFFresh [(s6Step211HeadGvRow,121),(s6Step211HeadFvRow,121)] [s6Step211HeadGvFresh,s6Step211HeadFvFresh] [s6Step211HeadGvOut,s6Step211HeadFvOut]
    (growRow 795 s6Step211HeadFFresh) ((growRow 775 s6Step211HeadGvFresh ++ (growRow 776 s6Step211HeadFvFresh ++ []))) s6Step211HeadF_Incoming s6Step211HeadF_checked h2 s6Step211HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step211HeadGBefore s6Step211HeadGAfter s6Step211HeadFvAfter
    s6Step211HeadGRow s6Step211HeadGOut 166 s6Step211HeadGFresh [(s6Step211HeadFRow,166),(s6Step211HeadGvRow,121),(s6Step211HeadFvRow,121)] [s6Step211HeadFFresh,s6Step211HeadGvFresh,s6Step211HeadFvFresh] [s6Step211HeadFOut,s6Step211HeadGvOut,s6Step211HeadFvOut]
    (growRow 777 s6Step211HeadGFresh) ((growRow 795 s6Step211HeadFFresh ++ (growRow 775 s6Step211HeadGvFresh ++ (growRow 776 s6Step211HeadFvFresh ++ [])))) s6Step211HeadG_Incoming s6Step211HeadG_checked h1 s6Step211HeadG_Outgoing
  exact h0

private theorem s6Step211HeadBank_checked : compileHmrBankResizeLog .headroom s6Step211HeadGBefore ⟨s6Step211HeadFRow,s6Step211HeadGRow,s6Step211HeadFvRow,s6Step211HeadGvRow⟩ ⟨166,166,121,121⟩ [s6Step211HeadGFresh,s6Step211HeadFFresh,s6Step211HeadGvFresh,s6Step211HeadFvFresh]=
    some (s6Step211HeadFvAfter,⟨s6Step211HeadFOut,s6Step211HeadGOut,s6Step211HeadFvOut,s6Step211HeadGvOut⟩,(growRow 777 s6Step211HeadGFresh ++ (growRow 795 s6Step211HeadFFresh ++ (growRow 775 s6Step211HeadGvFresh ++ (growRow 776 s6Step211HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step211HeadBank_rows]
  rfl

private theorem s6Step211Front_checked : compileHmrSourceFrontLog s6Step211EntryFBefore s6Step211FrontBank 165 120 ⟨163,163,120,120⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step211FrontLog=some s6Step211FrontPlan := by
  have pairEq : s6Step211FrontPair=⟨s6Step211HeadFRow,s6Step211HeadGRow,s6Step211HeadFvRow,s6Step211HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step211FrontHead=⟨s6Step211ExitFRow,s6Step211ExitGRow,s6Step211ExitFvRow,s6Step211ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step211Add0A=s6Step211FrontHead.f.wires := by decide +kernel
  have gEq : s6Step211Add0B=s6Step211FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step211Add1A=s6Step211FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step211Add1B=s6Step211FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step211EntryFBefore s6Step211FrontBank 165 120 ⟨163,163,120,120⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step211FrontLog s6Step211FrontPlan
  · exact s6Step211Front_entry
  · exact s6Step211EntryBank_checked
  · exact s6Step211Front_sigma
  · rfl
  · exact s6Step211Front_branch
  · rfl
  · simpa only [s6Step211FrontPlan,pairEq] using s6Step211HeadBank_checked
  · simpa only [s6Step211FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step211F4_checked
  · exact s6Step211Counter_checked
  · rfl
  · simpa only [s6Step211FrontPlan,headEq] using s6Step211ExitBank_checked

private theorem s6Step211Complete_explicit_checked : compileHmrEarlyStepLog s6Step211EntryFBefore s6Step211FrontBank 165 120 ⟨163,163,120,120⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step211CompleteLog=some s6Step211CompletePlan := by
  let Q := s6Step211EarlyControlPlan
  have hq := s6Step211EarlyControl_plan_checked
  have fv1 : s6Step211CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step211CompleteOut.fv.payload[2]?.getD s6Step211CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step211CompleteOut.fv.payload[3]?.getD s6Step211CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step211CompleteOut.fv.payload[4]?.getD s6Step211CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step211EntryFBefore s6Step211EarlyControlArena s6Step211FrontBank 165 120 ⟨163,163,120,120⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 47 s6Step211CompleteLog s6Step211FrontPlan Q
    s6Step211Front_checked s6Step211Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step211Complete_owned s6Step211Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step211EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 769 858 s6Step211CompleteOut.fv.second (s6Step211CompleteOut.fv.payload[2]?.getD s6Step211CompleteOut.fv.sign) (s6Step211CompleteOut.fv.payload[3]?.getD s6Step211CompleteOut.fv.sign) (s6Step211CompleteOut.fv.payload[4]?.getD s6Step211CompleteOut.fv.sign) 838 47 s6Step211EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep211Arena : Arena := s6Step211EntryFBefore
def s6PrivateStep211Bank : WindowBank := s6Step211FrontBank
def s6PrivateStep211Spec : HmrSourceWalkStepLog := ⟨165,120,⟨163,163,120,120⟩,47,.early s6Step211CompleteLog⟩
def s6PrivateStep211Plan : HmrSourceStepPlan := .early s6Step211CompletePlan
theorem s6PrivateStep211_source : s6PrivateStep211Spec=s6ObservedLogs208[3] := rfl
theorem s6PrivateStep211_checked : compileHmrSourceStepLog s6PrivateStep211Arena s6PrivateStep211Bank
    s6PrivateStep211Spec.fgWidth s6PrivateStep211Spec.vWidth s6PrivateStep211Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]
    6 498 211 s6PrivateStep211Spec.need none s6PrivateStep211Spec.log=some s6PrivateStep211Plan := by
  change compileHmrSourceStepLog s6Step211EntryFBefore s6Step211FrontBank 165 120 ⟨163,163,120,120⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] 6 498 211 47 none (.early s6Step211CompleteLog)=some (.early s6Step211CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 211<498)]
  rw [s6Step211Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
