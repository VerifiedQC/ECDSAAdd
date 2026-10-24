import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep192
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

private def s6Step194CompleteMoves : List (Wire × Wire) := [(850,171)]

private def s6Step194EarlyControlLog : HmrEarlyControlLog := ⟨[850, 854, 869, 822, 880],[843],[853],[907, 891, 903, 791, 825, 810],[923]⟩

private def s6Step194FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[822], [869], [854], [860]],[[], [], [], []]⟩,[838],[833],[880],[843],[853, 907, 891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[853, 907, 891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[880, 843, 853, 907]⟩

private def s6Step194CompleteLog : HmrEarlyStepLog := ⟨s6Step194FrontLog,s6Step194CompleteMoves,s6Step194EarlyControlLog⟩

private def s6Step194ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step194ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩

private def s6Step194ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170],777⟩

private def s6Step194ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩

private def s6Step194FrontOut : WindowBank := ⟨s6Step194ExitFOut,s6Step194ExitGOut,s6Step194ExitFvOut,s6Step194ExitGvOut⟩

private def s6Step194CompleteOut : WindowBank := s6Step194FrontOut.repacked s6Step194CompleteMoves

private def s6Step194EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step194EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step194EarlyControlPositiveArena,[843],s6Step194EarlyControlEqualityArena,[853],⟨⟨838,false⟩,[⟨⟨843,false⟩,853⟩]⟩⟩

private def s6Step194EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,838),(839,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step194EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,850⟩,⟨⟨772,false⟩,854⟩,⟨⟨771,false⟩,869⟩,⟨⟨770,false⟩,822⟩,⟨⟨769,false⟩,880⟩]⟩

private def s6Step194EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step194EarlyControlZeroArena,s6Step194EarlyControlZeroPlan,s6Step194EarlyControlClassPlan,s6Step194EarlyControlFlagArena,s6Step194EarlyControlFittedArena,s6Step194EarlyControlHistoryArena,s6Step194EarlyControlSigmaArena,s6Step194EarlyControlOutputArena,s6Step194EarlyControlLog⟩

private def s6Step194CounterWork : List Wire := [880, 843, 853, 907]

private theorem s6Step194Counter_bounded : s6Step194CounterWork.toFinset⊆arenaWires := by norm_num [s6Step194CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step194HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194CounterDuring : Arena := ⟨s6Step194HeadFvAfter.live∪s6Step194CounterWork.toFinset,Finset.union_subset s6Step194HeadFvAfter.bounded s6Step194Counter_bounded⟩

private def s6Step194EntryFFresh : List Wire := []

private def s6Step194EntryFvFresh : List Wire := []

private def s6Step194EntryGFresh : List Wire := []

private def s6Step194EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step194EntryGvAfter : Arena := s6Step194EntryFBefore

private def s6Step194EntryGvFresh : List Wire := []

private def s6Step194ExitFExtra : List Wire := [869]

private def s6Step194ExitGExtra : List Wire := [171, 822]

private def s6Step194ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step194ExitGvExtra : List Wire := [854]

private def s6Step194Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194Add0Work : List Wire := [853, 907, 891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step194Add0_bounded : s6Step194Add0Work.toFinset⊆arenaWires := by
  have h : s6Step194Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step194Add0During : Arena := ⟨s6Step194Add0Arena.live∪s6Step194Add0Work.toFinset,Finset.union_subset s6Step194Add0Arena.bounded s6Step194Add0_bounded⟩

private def s6Step194Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194Add1Work : List Wire := [853, 907, 891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step194Add1_bounded : s6Step194Add1Work.toFinset⊆arenaWires := by
  have h : s6Step194Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step194Add1During : Arena := ⟨s6Step194Add1Arena.live∪s6Step194Add1Work.toFinset,Finset.union_subset s6Step194Add1Arena.bounded s6Step194Add1_bounded⟩

private def s6Step194F4FlagArena : Arena := ⟨s6Step194HeadFvAfter.live∪{880},Finset.union_subset s6Step194HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step194F4Plan : HmrHybridF4Plan := ⟨s6Step194F4FlagArena,[880],s6Step194Add0Arena,[843],s6Step194Add0During,s6Step194Add0Work,s6Step194Add1During,s6Step194Add1Work⟩

private def s6Step194HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 869],795⟩

private def s6Step194HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩

private def s6Step194HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 822],777⟩

private def s6Step194HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 854],775⟩

private def s6Step194FrontHead : WindowBank := ⟨s6Step194HeadFOut,s6Step194HeadGOut,s6Step194HeadFvOut,s6Step194HeadGvOut⟩

private def s6Step194EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step194EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩

private def s6Step194EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],777⟩

private def s6Step194EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩

private def s6Step194FrontPair : WindowBank := ⟨s6Step194EntryFOut,s6Step194EntryGOut,s6Step194EntryFvOut,s6Step194EntryGvOut⟩

private def s6Step194FrontSigmaArena : Arena := ⟨s6Step194EntryGvAfter.live∪{838},Finset.union_subset s6Step194EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step194HeadFFresh : List Wire := [869]

private def s6Step194HeadFvFresh : List Wire := [860]

private def s6Step194HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step194HeadGFresh : List Wire := [822]

private def s6Step194HeadGvFresh : List Wire := [854]

private def s6Step194FrontPlan : HmrSourceFront := ⟨s6Step194EntryGvAfter,s6Step194FrontPair,(growRow 795 s6Step194EntryFFresh ++ (growRow 777 s6Step194EntryGFresh ++ (growRow 776 s6Step194EntryFvFresh ++ (growRow 775 s6Step194EntryGvFresh ++ [])))),s6Step194FrontSigmaArena,[838],s6Step194HeadGBefore,[833],
  s6Step194HeadFvAfter,s6Step194FrontHead,(growRow 777 s6Step194HeadGFresh ++ (growRow 795 s6Step194HeadFFresh ++ (growRow 775 s6Step194HeadGvFresh ++ (growRow 776 s6Step194HeadFvFresh ++ [])))),s6Step194F4Plan,s6Step194CounterDuring,s6Step194CounterWork,s6Step194ExitGvAfter,s6Step194FrontOut,(shrinkRow 777 s6Step194ExitGExtra ++ (shrinkRow 795 s6Step194ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step194ExitGvExtra ++ []))))⟩

private def s6Step194CompletePlan : HmrEarlyStepPlan := ⟨s6Step194FrontPlan,s6Step194EarlyControlArena,s6Step194EarlyControlPlan,s6Step194CompleteMoves⟩

private theorem s6Step194Complete_apart : List.Disjoint (s6Step194CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [838, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  have nd : ((s6Step194CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[838, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step194Complete_owned : (s6Step194CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step194EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step194CompleteRelocationMove0Borrowed : Arena := ⟨s6Step194ExitGvAfter.live∪{171},Finset.union_subset s6Step194ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step194CompleteRelocation_move0_owned : 850∈s6Step194ExitGvAfter.live := by norm_num [s6Step194ExitGvAfter,arenaWires]

private theorem s6Step194CompleteRelocation_move0_reserve : s6Step194ExitGvAfter.reserve {171}=some s6Step194CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step194ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step194CompleteRelocation_move0_retire : s6Step194CompleteRelocationMove0Borrowed.retireSet {850}=s6Step194EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step194CompleteRelocationMove0Borrowed s6Step194EarlyControlArena {850}
  change s6Step194EarlyControlArena.live=(s6Step194ExitGvAfter.live∪{171})\{850}
  apply hmrArena_update_of_filter_check s6Step194ExitGvAfter s6Step194EarlyControlArena (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [171] [850] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step194CompleteRelocation_checked : s6Step194ExitGvAfter.checkRepack [(850,171)]=some s6Step194EarlyControlArena := by
  have tail1 : s6Step194EarlyControlArena.checkRepack []=some s6Step194EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step194ExitGvAfter s6Step194CompleteRelocationMove0Borrowed s6Step194EarlyControlArena s6Step194EarlyControlArena 850 171 []
    s6Step194CompleteRelocation_move0_owned s6Step194CompleteRelocation_move0_reserve s6Step194CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step194Complete_repack : s6Step194ExitGvAfter.checkRepack s6Step194CompleteMoves=some s6Step194EarlyControlArena := by
  simpa only [s6Step194CompleteMoves] using s6Step194CompleteRelocation_checked

private theorem s6Step194EarlyControl_branchOwned : ([833] : List Wire).toFinset⊆s6Step194EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,838),(839,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194EarlyControl_branch : compileHmrBranchRetirement s6Step194EarlyControlSigmaArena 833=some s6Step194EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step194EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step194EarlyControlSigmaArena s6Step194EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,838),(839,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) [833] rfl rfl
    decide +kernel

private theorem s6Step194EarlyControl_classEqualityBorrow : s6Step194EarlyControlPositiveArena.checkBorrow (([838, 843] : List Wire).length-1) s6Step194EarlyControlLog.classWork=some s6Step194EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step194EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step194EarlyControlEqualityArena,s6Step194EarlyControlPositiveArena,s6Step194EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step194EarlyControl_classEqualityOwned : ([838, 843] : List Wire).toFinset⊆s6Step194EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194EarlyControl_classEquality : compileHmrEqualityLog s6Step194EarlyControlPositiveArena [838, 843] 0 s6Step194EarlyControlLog.classWork=some (s6Step194EarlyControlEqualityArena,s6Step194EarlyControlLog.classWork,s6Step194EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step194EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step194EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step194EarlyControl_classOwned : ([769, 880, 838] : List Wire).toFinset⊆s6Step194EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194EarlyControl_positiveBorrow : s6Step194EarlyControlZeroArena.checkBorrow (1) s6Step194EarlyControlLog.positiveWork=some s6Step194EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step194EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step194EarlyControlPositiveArena,s6Step194EarlyControlZeroArena,s6Step194EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step194EarlyControl_class : compileHmrSourceClassLog s6Step194EarlyControlZeroArena false 769 s6Step194EarlyControlZeroPlan.top 0 838 s6Step194EarlyControlLog.positiveWork s6Step194EarlyControlLog.classWork=some s6Step194EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step194EarlyControlClassPlan s6Step194EarlyControlZeroArena false 769 s6Step194EarlyControlZeroPlan.top 0 838
  constructor
  · decide +kernel
  · exact s6Step194EarlyControl_classOwned
  · exact s6Step194EarlyControl_positiveBorrow
  · exact s6Step194EarlyControl_classEquality

private theorem s6Step194EarlyControl_entryRecordOwned : ([833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step194EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194EarlyControl_entrySigmaOwned : ([838, 254] : List Wire).toFinset⊆s6Step194EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194EarlyControl_fitBorrow : s6Step194EarlyControlFlagArena.checkBorrow ((44-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step194EarlyControlLog.recordFresh=some s6Step194EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step194EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step194EarlyControlFittedArena,s6Step194EarlyControlFlagArena,s6Step194EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step194EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step194EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194EarlyControl_fit : compileHmrRecordGrowLog s6Step194EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 44 s6Step194EarlyControlLog.recordFresh=some s6Step194EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step194EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step194EarlyControl_fitBorrow

private theorem s6Step194EarlyControl_flagsBorrow : s6Step194EarlyControlEqualityArena.checkBorrow (6) s6Step194EarlyControlLog.flagWork=some s6Step194EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step194EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step194EarlyControlFlagArena,s6Step194EarlyControlEqualityArena,s6Step194EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step194EarlyControl_flagsOwned : ([853, 253, 252, 251] : List Wire).toFinset⊆s6Step194EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194EarlyControl_flags : compileHmrFlagsLog s6Step194EarlyControlClassPlan.equalityArena s6Step194EarlyControlClassPlan.equality.top 253 252 251 s6Step194EarlyControlLog.flagWork=some s6Step194EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step194EarlyControl_flagsOwned⟩
  · exact s6Step194EarlyControl_flagsBorrow

private theorem s6Step194EarlyControl_historyBorrow : s6Step194EarlyControlArena.checkBorrow ((44-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step194EarlyControlLog.recordFresh=some s6Step194EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step194EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step194EarlyControlArena s6Step194EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step194EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step194EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step194EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194EarlyControl_history : compileHmrRecordGrowLog s6Step194EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 44 s6Step194EarlyControlLog.recordFresh=some s6Step194EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step194EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step194EarlyControl_historyBorrow

private theorem s6Step194EarlyControl_sigmaOwned : ([254, 838] : List Wire).toFinset⊆s6Step194EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194EarlyControl_sigmaReleaseOwned : ([838] : List Wire).toFinset⊆s6Step194EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194EarlyControl_sigmaRelease : s6Step194EarlyControlHistoryArena.release {838} (fun _ => false)=some s6Step194EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step194EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step194EarlyControlHistoryArena s6Step194EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (851≤q ∧ q<853) ∨ (855≤q ∧ q<869) ∨ (870≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,838),(839,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [838] rfl rfl
    decide +kernel

private theorem s6Step194EarlyControl_sigma : compileHmrSigmaDropLog s6Step194EarlyControlHistoryArena false 0 0 254 838 []=some s6Step194EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step194EarlyControl_sigmaOwned⟩
  · exact s6Step194EarlyControl_sigmaRelease

private theorem s6Step194EarlyControl_zeroBorrow : s6Step194EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step194EarlyControlLog.zeroWork=some s6Step194EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step194EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step194EarlyControlArena s6Step194EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step194EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step194EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step194EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step194EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(851,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194EarlyControl_zero : compileHmrEqualityLog s6Step194EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step194EarlyControlLog.zeroWork=some (s6Step194EarlyControlZeroArena,s6Step194EarlyControlLog.zeroWork,s6Step194EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step194EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step194EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step194EarlyControl_logged : s6Step194EarlyControlPlan.Logged s6Step194EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 838 254 253 252 251 833 44 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step194EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step194EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step194EarlyControl_zero
  · exact s6Step194EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step194EarlyControl_flags
  · exact s6Step194EarlyControl_fit
  · exact s6Step194EarlyControl_history
  · exact s6Step194EarlyControl_sigma
  · exact s6Step194EarlyControl_branch

private theorem s6Step194EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step194EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 838 254 253 252 251 833 44 s6Step194EarlyControlLog=some s6Step194EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step194EarlyControlPlan s6Step194EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 838 254 253 252 251 833 44 s6Step194EarlyControl_logged

private def s6Step194EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step194EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩

private def s6Step194EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],777⟩

private def s6Step194EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩

private def s6Step194FrontBank : WindowBank := ⟨s6Step194EntryFRow,s6Step194EntryGRow,s6Step194EntryFvRow,s6Step194EntryGvRow⟩

private def s6Step194Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 869, 795]

private def s6Step194Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 822, 777]

private def s6Step194Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 776]

private def s6Step194Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 854, 775]

private theorem s6Step194Counter_apart : Disjoint s6Step194HeadFvAfter.live s6Step194CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step194HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194Counter_borrowed : s6Step194HeadFvAfter.checkBorrow 4 s6Step194CounterWork=some s6Step194CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step194HeadFvAfter s6Step194CounterDuring s6Step194CounterWork.toFinset s6Step194Counter_bounded s6Step194Counter_apart rfl

private theorem s6Step194Counter_owned : (838::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step194HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step194HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194Counter_checked : compileHmrCounterStepLog s6Step194HeadFvAfter true 838 [774, 773, 772, 771, 770, 769] s6Step194CounterWork=some s6Step194CounterDuring := by
  have owned : ∀q∈838::[774, 773, 772, 771, 770, 769],q∈s6Step194HeadFvAfter.live := fun q hq => s6Step194Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step194Counter_borrowed

private def s6Step194EntryFAfter : Arena := s6Step194EntryFBefore

private theorem s6Step194EntryBank_incomingDistinct : ([s6Step194EntryFRow,s6Step194EntryGRow,s6Step194EntryFvRow,s6Step194EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194EntryF_Incoming : rowsOwned s6Step194EntryFBefore [s6Step194EntryFRow,s6Step194EntryGRow,s6Step194EntryFvRow,s6Step194EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194EntryFRow,s6Step194EntryGRow,s6Step194EntryFvRow,s6Step194EntryGvRow] 0 s6Step194EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step194EntryBank_outgoingOwned : rowsOwned s6Step194EntryGvAfter [s6Step194EntryFOut,s6Step194EntryGOut,s6Step194EntryFvOut,s6Step194EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step194EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step194EntryF_Outgoing : rowsOwned s6Step194EntryGvAfter [s6Step194EntryFOut,s6Step194EntryGOut,s6Step194EntryFvOut,s6Step194EntryGvOut] :=
  hmrRows_owned_drop s6Step194EntryGvAfter [s6Step194EntryFOut,s6Step194EntryGOut,s6Step194EntryFvOut,s6Step194EntryGvOut] 0 s6Step194EntryBank_outgoingOwned

private theorem s6Step194EntryF_distinct : (s6Step194EntryFRow.sign::s6Step194EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194EntryF_owned : (s6Step194EntryFRow.sign::s6Step194EntryFRow.payload).toFinset⊆s6Step194EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194EntryF_reserved : s6Step194EntryFBefore.reserve s6Step194EntryFFresh.toFinset=some s6Step194EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step194EntryFFresh,arenaWires]
  · norm_num [s6Step194EntryFBefore,s6Step194EntryFFresh,arenaWires]
  · simp only [s6Step194EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step194EntryF_checked : planRowResizeLog s6Step194EntryFBefore s6Step194EntryFRow 172 s6Step194EntryFFresh=
    some (s6Step194EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩,growRow 795 s6Step194EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step194EntryFBefore s6Step194EntryFAfter s6Step194EntryFRow 172 s6Step194EntryFFresh
    s6Step194EntryF_distinct s6Step194EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step194EntryF_reserved
  have rowEq : WindowRow.mk (s6Step194EntryFRow.payload++s6Step194EntryFFresh) s6Step194EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step194EntryFvAfter : Arena := s6Step194EntryFBefore

private def s6Step194EntryFvBefore : Arena := s6Step194EntryFBefore

private theorem s6Step194EntryFv_Incoming : rowsOwned s6Step194EntryFvBefore [s6Step194EntryFvRow,s6Step194EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194EntryFRow,s6Step194EntryGRow,s6Step194EntryFvRow,s6Step194EntryGvRow] 2 s6Step194EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step194EntryFv_Outgoing : rowsOwned s6Step194EntryGvAfter [s6Step194EntryFvOut,s6Step194EntryGvOut] :=
  hmrRows_owned_drop s6Step194EntryGvAfter [s6Step194EntryFOut,s6Step194EntryGOut,s6Step194EntryFvOut,s6Step194EntryGvOut] 2 s6Step194EntryBank_outgoingOwned

private theorem s6Step194EntryFv_distinct : (s6Step194EntryFvRow.sign::s6Step194EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194EntryFv_owned : (s6Step194EntryFvRow.sign::s6Step194EntryFvRow.payload).toFinset⊆s6Step194EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194EntryFv_reserved : s6Step194EntryFvBefore.reserve s6Step194EntryFvFresh.toFinset=some s6Step194EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step194EntryFvFresh,arenaWires]
  · norm_num [s6Step194EntryFvBefore,s6Step194EntryFBefore,s6Step194EntryFvFresh,arenaWires]
  · simp only [s6Step194EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step194EntryFv_checked : planRowResizeLog s6Step194EntryFvBefore s6Step194EntryFvRow 111 s6Step194EntryFvFresh=
    some (s6Step194EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩,growRow 776 s6Step194EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step194EntryFvBefore s6Step194EntryFvAfter s6Step194EntryFvRow 111 s6Step194EntryFvFresh
    s6Step194EntryFv_distinct s6Step194EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step194EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step194EntryFvRow.payload++s6Step194EntryFvFresh) s6Step194EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step194EntryGAfter : Arena := s6Step194EntryFBefore

private def s6Step194EntryGBefore : Arena := s6Step194EntryFBefore

private theorem s6Step194EntryG_Incoming : rowsOwned s6Step194EntryGBefore [s6Step194EntryGRow,s6Step194EntryFvRow,s6Step194EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194EntryFRow,s6Step194EntryGRow,s6Step194EntryFvRow,s6Step194EntryGvRow] 1 s6Step194EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step194EntryG_Outgoing : rowsOwned s6Step194EntryGvAfter [s6Step194EntryGOut,s6Step194EntryFvOut,s6Step194EntryGvOut] :=
  hmrRows_owned_drop s6Step194EntryGvAfter [s6Step194EntryFOut,s6Step194EntryGOut,s6Step194EntryFvOut,s6Step194EntryGvOut] 1 s6Step194EntryBank_outgoingOwned

private theorem s6Step194EntryG_distinct : (s6Step194EntryGRow.sign::s6Step194EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194EntryG_owned : (s6Step194EntryGRow.sign::s6Step194EntryGRow.payload).toFinset⊆s6Step194EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194EntryG_reserved : s6Step194EntryGBefore.reserve s6Step194EntryGFresh.toFinset=some s6Step194EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step194EntryGFresh,arenaWires]
  · norm_num [s6Step194EntryGBefore,s6Step194EntryFBefore,s6Step194EntryGFresh,arenaWires]
  · simp only [s6Step194EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step194EntryG_checked : planRowResizeLog s6Step194EntryGBefore s6Step194EntryGRow 172 s6Step194EntryGFresh=
    some (s6Step194EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],777⟩,growRow 777 s6Step194EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step194EntryGBefore s6Step194EntryGAfter s6Step194EntryGRow 172 s6Step194EntryGFresh
    s6Step194EntryG_distinct s6Step194EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step194EntryG_reserved
  have rowEq : WindowRow.mk (s6Step194EntryGRow.payload++s6Step194EntryGFresh) s6Step194EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step194EntryGvBefore : Arena := s6Step194EntryFBefore

private theorem s6Step194EntryGv_Incoming : rowsOwned s6Step194EntryGvBefore [s6Step194EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194EntryFRow,s6Step194EntryGRow,s6Step194EntryFvRow,s6Step194EntryGvRow] 3 s6Step194EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step194EntryGv_Outgoing : rowsOwned s6Step194EntryGvAfter [s6Step194EntryGvOut] :=
  hmrRows_owned_drop s6Step194EntryGvAfter [s6Step194EntryFOut,s6Step194EntryGOut,s6Step194EntryFvOut,s6Step194EntryGvOut] 3 s6Step194EntryBank_outgoingOwned

private theorem s6Step194EntryGv_distinct : (s6Step194EntryGvRow.sign::s6Step194EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194EntryGv_owned : (s6Step194EntryGvRow.sign::s6Step194EntryGvRow.payload).toFinset⊆s6Step194EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194EntryGv_reserved : s6Step194EntryGvBefore.reserve s6Step194EntryGvFresh.toFinset=some s6Step194EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step194EntryGvFresh,arenaWires]
  · norm_num [s6Step194EntryGvBefore,s6Step194EntryFBefore,s6Step194EntryGvFresh,arenaWires]
  · simp only [s6Step194EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step194EntryGv_checked : planRowResizeLog s6Step194EntryGvBefore s6Step194EntryGvRow 111 s6Step194EntryGvFresh=
    some (s6Step194EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩,growRow 775 s6Step194EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step194EntryGvBefore s6Step194EntryGvAfter s6Step194EntryGvRow 111 s6Step194EntryGvFresh
    s6Step194EntryGv_distinct s6Step194EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step194EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step194EntryGvRow.payload++s6Step194EntryGvFresh) s6Step194EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step194EntryBank_rows : planWindowRowsLog s6Step194EntryFBefore [(s6Step194EntryFRow,172),(s6Step194EntryGRow,172),(s6Step194EntryFvRow,111),(s6Step194EntryGvRow,111)] [s6Step194EntryFFresh,s6Step194EntryGFresh,s6Step194EntryFvFresh,s6Step194EntryGvFresh]=
    some (s6Step194EntryGvAfter,[s6Step194EntryFOut,s6Step194EntryGOut,s6Step194EntryFvOut,s6Step194EntryGvOut],(growRow 795 s6Step194EntryFFresh ++ (growRow 777 s6Step194EntryGFresh ++ (growRow 776 s6Step194EntryFvFresh ++ (growRow 775 s6Step194EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step194EntryGvAfter [] []=some (s6Step194EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step194EntryGvBefore s6Step194EntryGvAfter s6Step194EntryGvAfter
    s6Step194EntryGvRow s6Step194EntryGvOut 111 s6Step194EntryGvFresh [] [] []
    (growRow 775 s6Step194EntryGvFresh) ([]) s6Step194EntryGv_Incoming s6Step194EntryGv_checked h4 s6Step194EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step194EntryFvBefore s6Step194EntryFvAfter s6Step194EntryGvAfter
    s6Step194EntryFvRow s6Step194EntryFvOut 111 s6Step194EntryFvFresh [(s6Step194EntryGvRow,111)] [s6Step194EntryGvFresh] [s6Step194EntryGvOut]
    (growRow 776 s6Step194EntryFvFresh) ((growRow 775 s6Step194EntryGvFresh ++ [])) s6Step194EntryFv_Incoming s6Step194EntryFv_checked h3 s6Step194EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step194EntryGBefore s6Step194EntryGAfter s6Step194EntryGvAfter
    s6Step194EntryGRow s6Step194EntryGOut 172 s6Step194EntryGFresh [(s6Step194EntryFvRow,111),(s6Step194EntryGvRow,111)] [s6Step194EntryFvFresh,s6Step194EntryGvFresh] [s6Step194EntryFvOut,s6Step194EntryGvOut]
    (growRow 777 s6Step194EntryGFresh) ((growRow 776 s6Step194EntryFvFresh ++ (growRow 775 s6Step194EntryGvFresh ++ []))) s6Step194EntryG_Incoming s6Step194EntryG_checked h2 s6Step194EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step194EntryFBefore s6Step194EntryFAfter s6Step194EntryGvAfter
    s6Step194EntryFRow s6Step194EntryFOut 172 s6Step194EntryFFresh [(s6Step194EntryGRow,172),(s6Step194EntryFvRow,111),(s6Step194EntryGvRow,111)] [s6Step194EntryGFresh,s6Step194EntryFvFresh,s6Step194EntryGvFresh] [s6Step194EntryGOut,s6Step194EntryFvOut,s6Step194EntryGvOut]
    (growRow 795 s6Step194EntryFFresh) ((growRow 777 s6Step194EntryGFresh ++ (growRow 776 s6Step194EntryFvFresh ++ (growRow 775 s6Step194EntryGvFresh ++ [])))) s6Step194EntryF_Incoming s6Step194EntryF_checked h1 s6Step194EntryF_Outgoing
  exact h0

private theorem s6Step194EntryBank_checked : compileHmrBankResizeLog .entry s6Step194EntryFBefore ⟨s6Step194EntryFRow,s6Step194EntryGRow,s6Step194EntryFvRow,s6Step194EntryGvRow⟩ ⟨172,172,111,111⟩ [s6Step194EntryFFresh,s6Step194EntryGFresh,s6Step194EntryFvFresh,s6Step194EntryGvFresh]=
    some (s6Step194EntryGvAfter,⟨s6Step194EntryFOut,s6Step194EntryGOut,s6Step194EntryFvOut,s6Step194EntryGvOut⟩,(growRow 795 s6Step194EntryFFresh ++ (growRow 777 s6Step194EntryGFresh ++ (growRow 776 s6Step194EntryFvFresh ++ (growRow 775 s6Step194EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step194EntryBank_rows]
  rfl

private def s6Step194ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step194ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step194ExitFBefore : Arena := s6Step194ExitGAfter

private def s6Step194ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 869],795⟩

private def s6Step194ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩

private def s6Step194ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 822],777⟩

private def s6Step194ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 854],775⟩

private theorem s6Step194ExitBank_incomingDistinct : ([s6Step194ExitGRow,s6Step194ExitFRow,s6Step194ExitFvRow,s6Step194ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194ExitF_Incoming : rowsOwned s6Step194ExitFBefore [s6Step194ExitFRow,s6Step194ExitFvRow,s6Step194ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194ExitGRow,s6Step194ExitFRow,s6Step194ExitFvRow,s6Step194ExitGvRow] 1 s6Step194ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194ExitFBefore (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step194ExitBank_outgoingOwned : rowsOwned s6Step194ExitGvAfter [s6Step194ExitGOut,s6Step194ExitFOut,s6Step194ExitFvOut,s6Step194ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step194ExitGvAfter (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step194ExitF_Outgoing : rowsOwned s6Step194ExitGvAfter [s6Step194ExitFOut,s6Step194ExitFvOut,s6Step194ExitGvOut] :=
  hmrRows_owned_drop s6Step194ExitGvAfter [s6Step194ExitGOut,s6Step194ExitFOut,s6Step194ExitFvOut,s6Step194ExitGvOut] 1 s6Step194ExitBank_outgoingOwned

private theorem s6Step194ExitF_distinct : (s6Step194ExitFRow.sign::s6Step194ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194ExitF_owned : (s6Step194ExitFRow.sign::s6Step194ExitFRow.payload).toFinset⊆s6Step194ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194ExitFBefore (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194ExitF_retired : s6Step194ExitFBefore.retireSet s6Step194ExitFExtra.toFinset=s6Step194ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step194ExitFBefore s6Step194ExitFAfter s6Step194ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step194ExitFBefore s6Step194ExitFAfter (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step194ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step194ExitF_checked : planRowResizeLog s6Step194ExitFBefore s6Step194ExitFRow 172 []=
    some (s6Step194ExitFAfter,s6Step194ExitFOut,shrinkRow 795 s6Step194ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step194ExitFBefore s6Step194ExitFRow 172 s6Step194ExitF_distinct s6Step194ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step194ExitFRow.payload.take 172) s6Step194ExitFRow.sign=s6Step194ExitFOut := by decide +kernel
  have hi : s6Step194ExitFRow.payload.drop 172=s6Step194ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step194ExitF_retired] at result
  exact result

private def s6Step194ExitFvAfter : Arena := s6Step194ExitFAfter

private def s6Step194ExitFvBefore : Arena := s6Step194ExitFAfter

private theorem s6Step194ExitFv_Incoming : rowsOwned s6Step194ExitFvBefore [s6Step194ExitFvRow,s6Step194ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194ExitGRow,s6Step194ExitFRow,s6Step194ExitFvRow,s6Step194ExitGvRow] 2 s6Step194ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194ExitFvBefore (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step194ExitFv_Outgoing : rowsOwned s6Step194ExitGvAfter [s6Step194ExitFvOut,s6Step194ExitGvOut] :=
  hmrRows_owned_drop s6Step194ExitGvAfter [s6Step194ExitGOut,s6Step194ExitFOut,s6Step194ExitFvOut,s6Step194ExitGvOut] 2 s6Step194ExitBank_outgoingOwned

private theorem s6Step194ExitFv_distinct : (s6Step194ExitFvRow.sign::s6Step194ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194ExitFv_owned : (s6Step194ExitFvRow.sign::s6Step194ExitFvRow.payload).toFinset⊆s6Step194ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194ExitFvBefore (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194ExitFv_reserved : s6Step194ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step194ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step194ExitFv_checked : planRowResizeLog s6Step194ExitFvBefore s6Step194ExitFvRow 112 []=
    some (s6Step194ExitFvAfter,s6Step194ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step194ExitFvBefore s6Step194ExitFvAfter s6Step194ExitFvRow 112 []
    s6Step194ExitFv_distinct s6Step194ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step194ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step194ExitFvRow.payload++[]) s6Step194ExitFvRow.sign=s6Step194ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step194ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step194ExitG_Incoming : rowsOwned s6Step194ExitGBefore [s6Step194ExitGRow,s6Step194ExitFRow,s6Step194ExitFvRow,s6Step194ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194ExitGRow,s6Step194ExitFRow,s6Step194ExitFvRow,s6Step194ExitGvRow] 0 s6Step194ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step194ExitG_Outgoing : rowsOwned s6Step194ExitGvAfter [s6Step194ExitGOut,s6Step194ExitFOut,s6Step194ExitFvOut,s6Step194ExitGvOut] :=
  hmrRows_owned_drop s6Step194ExitGvAfter [s6Step194ExitGOut,s6Step194ExitFOut,s6Step194ExitFvOut,s6Step194ExitGvOut] 0 s6Step194ExitBank_outgoingOwned

private theorem s6Step194ExitG_distinct : (s6Step194ExitGRow.sign::s6Step194ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194ExitG_owned : (s6Step194ExitGRow.sign::s6Step194ExitGRow.payload).toFinset⊆s6Step194ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194ExitG_retired : s6Step194ExitGBefore.retireSet s6Step194ExitGExtra.toFinset=s6Step194ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step194ExitGBefore s6Step194ExitGAfter s6Step194ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step194ExitGBefore s6Step194ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step194ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step194ExitG_checked : planRowResizeLog s6Step194ExitGBefore s6Step194ExitGRow 171 []=
    some (s6Step194ExitGAfter,s6Step194ExitGOut,shrinkRow 777 s6Step194ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step194ExitGBefore s6Step194ExitGRow 171 s6Step194ExitG_distinct s6Step194ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step194ExitGRow.payload.take 171) s6Step194ExitGRow.sign=s6Step194ExitGOut := by decide +kernel
  have hi : s6Step194ExitGRow.payload.drop 171=s6Step194ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step194ExitG_retired] at result
  exact result

private def s6Step194ExitGvBefore : Arena := s6Step194ExitFAfter

private theorem s6Step194ExitGv_Incoming : rowsOwned s6Step194ExitGvBefore [s6Step194ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194ExitGRow,s6Step194ExitFRow,s6Step194ExitFvRow,s6Step194ExitGvRow] 3 s6Step194ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194ExitGvBefore (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step194ExitGv_Outgoing : rowsOwned s6Step194ExitGvAfter [s6Step194ExitGvOut] :=
  hmrRows_owned_drop s6Step194ExitGvAfter [s6Step194ExitGOut,s6Step194ExitFOut,s6Step194ExitFvOut,s6Step194ExitGvOut] 3 s6Step194ExitBank_outgoingOwned

private theorem s6Step194ExitGv_distinct : (s6Step194ExitGvRow.sign::s6Step194ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194ExitGv_owned : (s6Step194ExitGvRow.sign::s6Step194ExitGvRow.payload).toFinset⊆s6Step194ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194ExitGvBefore (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194ExitGv_retired : s6Step194ExitGvBefore.retireSet s6Step194ExitGvExtra.toFinset=s6Step194ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step194ExitGvBefore s6Step194ExitGvAfter s6Step194ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step194ExitGvBefore s6Step194ExitGvAfter (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,171),(172,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step194ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step194ExitGv_checked : planRowResizeLog s6Step194ExitGvBefore s6Step194ExitGvRow 111 []=
    some (s6Step194ExitGvAfter,s6Step194ExitGvOut,shrinkRow 775 s6Step194ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step194ExitGvBefore s6Step194ExitGvRow 111 s6Step194ExitGv_distinct s6Step194ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step194ExitGvRow.payload.take 111) s6Step194ExitGvRow.sign=s6Step194ExitGvOut := by decide +kernel
  have hi : s6Step194ExitGvRow.payload.drop 111=s6Step194ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step194ExitGv_retired] at result
  exact result

private theorem s6Step194ExitBank_rows : planWindowRowsLog s6Step194ExitGBefore [(s6Step194ExitGRow,171),(s6Step194ExitFRow,172),(s6Step194ExitFvRow,112),(s6Step194ExitGvRow,111)] [[],[],[],[]]=
    some (s6Step194ExitGvAfter,[s6Step194ExitGOut,s6Step194ExitFOut,s6Step194ExitFvOut,s6Step194ExitGvOut],(shrinkRow 777 s6Step194ExitGExtra ++ (shrinkRow 795 s6Step194ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step194ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step194ExitGvAfter [] []=some (s6Step194ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step194ExitGvBefore s6Step194ExitGvAfter s6Step194ExitGvAfter
    s6Step194ExitGvRow s6Step194ExitGvOut 111 [] [] [] []
    (shrinkRow 775 s6Step194ExitGvExtra) ([]) s6Step194ExitGv_Incoming s6Step194ExitGv_checked h4 s6Step194ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step194ExitFvBefore s6Step194ExitFvAfter s6Step194ExitGvAfter
    s6Step194ExitFvRow s6Step194ExitFvOut 112 [] [(s6Step194ExitGvRow,111)] [[]] [s6Step194ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step194ExitGvExtra ++ [])) s6Step194ExitFv_Incoming s6Step194ExitFv_checked h3 s6Step194ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step194ExitFBefore s6Step194ExitFAfter s6Step194ExitGvAfter
    s6Step194ExitFRow s6Step194ExitFOut 172 [] [(s6Step194ExitFvRow,112),(s6Step194ExitGvRow,111)] [[],[]] [s6Step194ExitFvOut,s6Step194ExitGvOut]
    (shrinkRow 795 s6Step194ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step194ExitGvExtra ++ []))) s6Step194ExitF_Incoming s6Step194ExitF_checked h2 s6Step194ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step194ExitGBefore s6Step194ExitGAfter s6Step194ExitGvAfter
    s6Step194ExitGRow s6Step194ExitGOut 171 [] [(s6Step194ExitFRow,172),(s6Step194ExitFvRow,112),(s6Step194ExitGvRow,111)] [[],[],[]] [s6Step194ExitFOut,s6Step194ExitFvOut,s6Step194ExitGvOut]
    (shrinkRow 777 s6Step194ExitGExtra) ((shrinkRow 795 s6Step194ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step194ExitGvExtra ++ [])))) s6Step194ExitG_Incoming s6Step194ExitG_checked h1 s6Step194ExitG_Outgoing
  exact h0

private theorem s6Step194ExitBank_checked : compileHmrBankResizeLog .exit s6Step194ExitGBefore ⟨s6Step194ExitFRow,s6Step194ExitGRow,s6Step194ExitFvRow,s6Step194ExitGvRow⟩ ⟨172,171,112,111⟩ [[],[],[],[]]=
    some (s6Step194ExitGvAfter,⟨s6Step194ExitFOut,s6Step194ExitGOut,s6Step194ExitFvOut,s6Step194ExitGvOut⟩,(shrinkRow 777 s6Step194ExitGExtra ++ (shrinkRow 795 s6Step194ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step194ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step194ExitBank_rows]
  rfl

private theorem s6Step194Add0_apart : Disjoint s6Step194Add0Arena.live s6Step194Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step194Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194Add0_card : s6Step194Add0Arena.live.card=883 := by
  decide +kernel

private theorem s6Step194Add0_borrowed : s6Step194Add0Arena.checkBorrow (hmrHybridCount s6Step194Add0Arena s6Step194Add0B.length) s6Step194Add0Work=some s6Step194Add0During := by
  have len : s6Step194Add0Work.length=hmrHybridCount s6Step194Add0Arena s6Step194Add0B.length := by
    rw [hmrHybridCount,s6Step194Add0_card]
    decide +kernel
  have nd : s6Step194Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step194Add0Arena s6Step194Add0During s6Step194Add0Work.toFinset s6Step194Add0_bounded s6Step194Add0_apart rfl

private theorem s6Step194Add0_distinct : (880::833::843::(s6Step194Add0A++s6Step194Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194Add0_owned : (880::833::843::(s6Step194Add0A++s6Step194Add0B)).toFinset⊆s6Step194Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step194Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194Add0_checked : compileHmrHybridCinLog s6Step194Add0Arena 833 880 843 s6Step194Add0A s6Step194Add0B s6Step194Add0Work=some s6Step194Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step194Add0Arena s6Step194Add0During 833 880 843 s6Step194Add0A s6Step194Add0B s6Step194Add0Work
    (by decide +kernel) (by decide +kernel) s6Step194Add0_distinct
    (fun q hq => s6Step194Add0_owned (List.mem_toFinset.mpr hq)) s6Step194Add0_borrowed

private theorem s6Step194Add1_apart : Disjoint s6Step194Add1Arena.live s6Step194Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step194Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194Add1_card : s6Step194Add1Arena.live.card=883 := by
  decide +kernel

private theorem s6Step194Add1_borrowed : s6Step194Add1Arena.checkBorrow (hmrHybridCount s6Step194Add1Arena s6Step194Add1B.length) s6Step194Add1Work=some s6Step194Add1During := by
  have len : s6Step194Add1Work.length=hmrHybridCount s6Step194Add1Arena s6Step194Add1B.length := by
    rw [hmrHybridCount,s6Step194Add1_card]
    decide +kernel
  have nd : s6Step194Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step194Add1Arena s6Step194Add1During s6Step194Add1Work.toFinset s6Step194Add1_bounded s6Step194Add1_apart rfl

private theorem s6Step194Add1_distinct : (880::833::843::(s6Step194Add1A++s6Step194Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194Add1_owned : (880::833::843::(s6Step194Add1A++s6Step194Add1B)).toFinset⊆s6Step194Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step194Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194Add1_checked : compileHmrHybridCinLog s6Step194Add1Arena 833 880 843 s6Step194Add1A s6Step194Add1B s6Step194Add1Work=some s6Step194Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step194Add1Arena s6Step194Add1During 833 880 843 s6Step194Add1A s6Step194Add1B s6Step194Add1Work
    (by decide +kernel) (by decide +kernel) s6Step194Add1_distinct
    (fun q hq => s6Step194Add1_owned (List.mem_toFinset.mpr hq)) s6Step194Add1_borrowed

private theorem s6Step194F4_apart : Disjoint (s6Step194Add0A++s6Step194Add0B).toFinset (s6Step194Add1A++s6Step194Add1B).toFinset := by
  have nd : ((s6Step194Add0A++s6Step194Add0B)++(s6Step194Add1A++s6Step194Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step194F4_carry : s6Step194F4FlagArena.checkBorrow 1 [843]=some s6Step194Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step194F4FlagArena,s6Step194HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step194F4FlagArena,s6Step194HeadFvAfter,s6Step194Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step194F4_distinct : (838::833::880::843::((s6Step194Add0A++s6Step194Add1A)++(s6Step194Add0B++s6Step194Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194F4_flag : s6Step194HeadFvAfter.checkBorrow 1 [880]=some s6Step194F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step194HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step194F4_owned : (838::833::((s6Step194Add0A++s6Step194Add1A)++(s6Step194Add0B++s6Step194Add1B))).toFinset⊆s6Step194HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step194HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194F4_checked : compileHmrHybridF4Log s6Step194HeadFvAfter 838 833 s6Step194Add0A s6Step194Add0B s6Step194Add1A s6Step194Add1B [880] [843] s6Step194Add0Work s6Step194Add1Work=some s6Step194F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step194HeadFvAfter s6Step194F4FlagArena s6Step194Add0Arena s6Step194Add0During s6Step194Add1During 838 833
    s6Step194Add0A s6Step194Add0B s6Step194Add1A s6Step194Add1B [880] [843] s6Step194Add0Work s6Step194Add1Work
    (fun q hq => s6Step194F4_owned (List.mem_toFinset.mpr hq)) s6Step194F4_flag s6Step194F4_carry
    s6Step194F4_distinct s6Step194F4_apart s6Step194Add0_checked s6Step194Add1_checked

private theorem s6Step194Front_branch : s6Step194FrontSigmaArena.checkBorrow 1 [833]=some s6Step194HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step194FrontSigmaArena,s6Step194EntryGvAfter,s6Step194EntryFBefore,arenaWires]
  · change s6Step194HeadGBefore.live=(s6Step194EntryGvAfter.live∪{838})∪{833}
    apply hmrArena_union_pair_of_filter_check s6Step194EntryGvAfter s6Step194HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 838 833 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step194Front_entry : HmrFrontEntryValid s6Step194EntryFBefore s6Step194FrontBank 172 111 ⟨172,171,112,111⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step194FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step194EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step194EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step194FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step194Front_sigma : s6Step194EntryGvAfter.checkBorrow 1 [838]=some s6Step194FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step194EntryGvAfter,s6Step194EntryFBefore,arenaWires]
  · rfl

private def s6Step194HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step194HeadFBefore : Arena := s6Step194HeadGAfter

private def s6Step194HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step194HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩

private def s6Step194HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],777⟩

private def s6Step194HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩

private theorem s6Step194HeadBank_incomingDistinct : ([s6Step194HeadGRow,s6Step194HeadFRow,s6Step194HeadGvRow,s6Step194HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194HeadF_Incoming : rowsOwned s6Step194HeadFBefore [s6Step194HeadFRow,s6Step194HeadGvRow,s6Step194HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194HeadGRow,s6Step194HeadFRow,s6Step194HeadGvRow,s6Step194HeadFvRow] 1 s6Step194HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step194HeadBank_outgoingOwned : rowsOwned s6Step194HeadFvAfter [s6Step194HeadGOut,s6Step194HeadFOut,s6Step194HeadGvOut,s6Step194HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step194HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step194HeadF_Outgoing : rowsOwned s6Step194HeadFvAfter [s6Step194HeadFOut,s6Step194HeadGvOut,s6Step194HeadFvOut] :=
  hmrRows_owned_drop s6Step194HeadFvAfter [s6Step194HeadGOut,s6Step194HeadFOut,s6Step194HeadGvOut,s6Step194HeadFvOut] 1 s6Step194HeadBank_outgoingOwned

private theorem s6Step194HeadF_distinct : (s6Step194HeadFRow.sign::s6Step194HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194HeadF_owned : (s6Step194HeadFRow.sign::s6Step194HeadFRow.payload).toFinset⊆s6Step194HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194HeadF_reserved : s6Step194HeadFBefore.reserve s6Step194HeadFFresh.toFinset=some s6Step194HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step194HeadFFresh,arenaWires]
  · norm_num [s6Step194HeadFBefore,s6Step194HeadGAfter,s6Step194HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step194HeadFBefore s6Step194HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step194HeadFFresh rfl rfl
    · norm_num [s6Step194HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step194HeadF_checked : planRowResizeLog s6Step194HeadFBefore s6Step194HeadFRow 173 s6Step194HeadFFresh=
    some (s6Step194HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 869],795⟩,growRow 795 s6Step194HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step194HeadFBefore s6Step194HeadFAfter s6Step194HeadFRow 173 s6Step194HeadFFresh
    s6Step194HeadF_distinct s6Step194HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step194HeadF_reserved
  have rowEq : WindowRow.mk (s6Step194HeadFRow.payload++s6Step194HeadFFresh) s6Step194HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 869],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step194HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step194HeadFvBefore : Arena := s6Step194HeadGvAfter

private theorem s6Step194HeadFv_Incoming : rowsOwned s6Step194HeadFvBefore [s6Step194HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194HeadGRow,s6Step194HeadFRow,s6Step194HeadGvRow,s6Step194HeadFvRow] 3 s6Step194HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step194HeadFv_Outgoing : rowsOwned s6Step194HeadFvAfter [s6Step194HeadFvOut] :=
  hmrRows_owned_drop s6Step194HeadFvAfter [s6Step194HeadGOut,s6Step194HeadFOut,s6Step194HeadGvOut,s6Step194HeadFvOut] 3 s6Step194HeadBank_outgoingOwned

private theorem s6Step194HeadFv_distinct : (s6Step194HeadFvRow.sign::s6Step194HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194HeadFv_owned : (s6Step194HeadFvRow.sign::s6Step194HeadFvRow.payload).toFinset⊆s6Step194HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194HeadFv_reserved : s6Step194HeadFvBefore.reserve s6Step194HeadFvFresh.toFinset=some s6Step194HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step194HeadFvFresh,arenaWires]
  · norm_num [s6Step194HeadFvBefore,s6Step194HeadGvAfter,s6Step194HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step194HeadFvAfter,s6Step194HeadFvBefore,s6Step194HeadGvAfter,s6Step194HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step194HeadFv_checked : planRowResizeLog s6Step194HeadFvBefore s6Step194HeadFvRow 112 s6Step194HeadFvFresh=
    some (s6Step194HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩,growRow 776 s6Step194HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step194HeadFvBefore s6Step194HeadFvAfter s6Step194HeadFvRow 112 s6Step194HeadFvFresh
    s6Step194HeadFv_distinct s6Step194HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step194HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step194HeadFvRow.payload++s6Step194HeadFvFresh) s6Step194HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step194HeadG_Incoming : rowsOwned s6Step194HeadGBefore [s6Step194HeadGRow,s6Step194HeadFRow,s6Step194HeadGvRow,s6Step194HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194HeadGRow,s6Step194HeadFRow,s6Step194HeadGvRow,s6Step194HeadFvRow] 0 s6Step194HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step194HeadG_Outgoing : rowsOwned s6Step194HeadFvAfter [s6Step194HeadGOut,s6Step194HeadFOut,s6Step194HeadGvOut,s6Step194HeadFvOut] :=
  hmrRows_owned_drop s6Step194HeadFvAfter [s6Step194HeadGOut,s6Step194HeadFOut,s6Step194HeadGvOut,s6Step194HeadFvOut] 0 s6Step194HeadBank_outgoingOwned

private theorem s6Step194HeadG_distinct : (s6Step194HeadGRow.sign::s6Step194HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194HeadG_owned : (s6Step194HeadGRow.sign::s6Step194HeadGRow.payload).toFinset⊆s6Step194HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step194HeadG_reserved : s6Step194HeadGBefore.reserve s6Step194HeadGFresh.toFinset=some s6Step194HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step194HeadGFresh,arenaWires]
  · norm_num [s6Step194HeadGBefore,s6Step194HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step194HeadGBefore s6Step194HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step194HeadGFresh rfl rfl
    · norm_num [s6Step194HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step194HeadG_checked : planRowResizeLog s6Step194HeadGBefore s6Step194HeadGRow 173 s6Step194HeadGFresh=
    some (s6Step194HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 822],777⟩,growRow 777 s6Step194HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step194HeadGBefore s6Step194HeadGAfter s6Step194HeadGRow 173 s6Step194HeadGFresh
    s6Step194HeadG_distinct s6Step194HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step194HeadG_reserved
  have rowEq : WindowRow.mk (s6Step194HeadGRow.payload++s6Step194HeadGFresh) s6Step194HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 822],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step194HeadGvBefore : Arena := s6Step194HeadFAfter

private theorem s6Step194HeadGv_Incoming : rowsOwned s6Step194HeadGvBefore [s6Step194HeadGvRow,s6Step194HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step194HeadGRow,s6Step194HeadFRow,s6Step194HeadGvRow,s6Step194HeadFvRow] 2 s6Step194HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step194HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step194HeadGv_Outgoing : rowsOwned s6Step194HeadFvAfter [s6Step194HeadGvOut,s6Step194HeadFvOut] :=
  hmrRows_owned_drop s6Step194HeadFvAfter [s6Step194HeadGOut,s6Step194HeadFOut,s6Step194HeadGvOut,s6Step194HeadFvOut] 2 s6Step194HeadBank_outgoingOwned

private theorem s6Step194HeadGv_distinct : (s6Step194HeadGvRow.sign::s6Step194HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step194HeadGv_owned : (s6Step194HeadGvRow.sign::s6Step194HeadGvRow.payload).toFinset⊆s6Step194HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step194HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step194HeadGv_reserved : s6Step194HeadGvBefore.reserve s6Step194HeadGvFresh.toFinset=some s6Step194HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step194HeadGvFresh,arenaWires]
  · norm_num [s6Step194HeadGvBefore,s6Step194HeadFAfter,s6Step194HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step194HeadGvAfter,s6Step194HeadGvBefore,s6Step194HeadFAfter,s6Step194HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step194HeadGv_checked : planRowResizeLog s6Step194HeadGvBefore s6Step194HeadGvRow 112 s6Step194HeadGvFresh=
    some (s6Step194HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 854],775⟩,growRow 775 s6Step194HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step194HeadGvBefore s6Step194HeadGvAfter s6Step194HeadGvRow 112 s6Step194HeadGvFresh
    s6Step194HeadGv_distinct s6Step194HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step194HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step194HeadGvRow.payload++s6Step194HeadGvFresh) s6Step194HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 854],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step194HeadBank_rows : planWindowRowsLog s6Step194HeadGBefore [(s6Step194HeadGRow,173),(s6Step194HeadFRow,173),(s6Step194HeadGvRow,112),(s6Step194HeadFvRow,112)] [s6Step194HeadGFresh,s6Step194HeadFFresh,s6Step194HeadGvFresh,s6Step194HeadFvFresh]=
    some (s6Step194HeadFvAfter,[s6Step194HeadGOut,s6Step194HeadFOut,s6Step194HeadGvOut,s6Step194HeadFvOut],(growRow 777 s6Step194HeadGFresh ++ (growRow 795 s6Step194HeadFFresh ++ (growRow 775 s6Step194HeadGvFresh ++ (growRow 776 s6Step194HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step194HeadFvAfter [] []=some (s6Step194HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step194HeadFvBefore s6Step194HeadFvAfter s6Step194HeadFvAfter
    s6Step194HeadFvRow s6Step194HeadFvOut 112 s6Step194HeadFvFresh [] [] []
    (growRow 776 s6Step194HeadFvFresh) ([]) s6Step194HeadFv_Incoming s6Step194HeadFv_checked h4 s6Step194HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step194HeadGvBefore s6Step194HeadGvAfter s6Step194HeadFvAfter
    s6Step194HeadGvRow s6Step194HeadGvOut 112 s6Step194HeadGvFresh [(s6Step194HeadFvRow,112)] [s6Step194HeadFvFresh] [s6Step194HeadFvOut]
    (growRow 775 s6Step194HeadGvFresh) ((growRow 776 s6Step194HeadFvFresh ++ [])) s6Step194HeadGv_Incoming s6Step194HeadGv_checked h3 s6Step194HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step194HeadFBefore s6Step194HeadFAfter s6Step194HeadFvAfter
    s6Step194HeadFRow s6Step194HeadFOut 173 s6Step194HeadFFresh [(s6Step194HeadGvRow,112),(s6Step194HeadFvRow,112)] [s6Step194HeadGvFresh,s6Step194HeadFvFresh] [s6Step194HeadGvOut,s6Step194HeadFvOut]
    (growRow 795 s6Step194HeadFFresh) ((growRow 775 s6Step194HeadGvFresh ++ (growRow 776 s6Step194HeadFvFresh ++ []))) s6Step194HeadF_Incoming s6Step194HeadF_checked h2 s6Step194HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step194HeadGBefore s6Step194HeadGAfter s6Step194HeadFvAfter
    s6Step194HeadGRow s6Step194HeadGOut 173 s6Step194HeadGFresh [(s6Step194HeadFRow,173),(s6Step194HeadGvRow,112),(s6Step194HeadFvRow,112)] [s6Step194HeadFFresh,s6Step194HeadGvFresh,s6Step194HeadFvFresh] [s6Step194HeadFOut,s6Step194HeadGvOut,s6Step194HeadFvOut]
    (growRow 777 s6Step194HeadGFresh) ((growRow 795 s6Step194HeadFFresh ++ (growRow 775 s6Step194HeadGvFresh ++ (growRow 776 s6Step194HeadFvFresh ++ [])))) s6Step194HeadG_Incoming s6Step194HeadG_checked h1 s6Step194HeadG_Outgoing
  exact h0

private theorem s6Step194HeadBank_checked : compileHmrBankResizeLog .headroom s6Step194HeadGBefore ⟨s6Step194HeadFRow,s6Step194HeadGRow,s6Step194HeadFvRow,s6Step194HeadGvRow⟩ ⟨173,173,112,112⟩ [s6Step194HeadGFresh,s6Step194HeadFFresh,s6Step194HeadGvFresh,s6Step194HeadFvFresh]=
    some (s6Step194HeadFvAfter,⟨s6Step194HeadFOut,s6Step194HeadGOut,s6Step194HeadFvOut,s6Step194HeadGvOut⟩,(growRow 777 s6Step194HeadGFresh ++ (growRow 795 s6Step194HeadFFresh ++ (growRow 775 s6Step194HeadGvFresh ++ (growRow 776 s6Step194HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step194HeadBank_rows]
  rfl

private theorem s6Step194Front_checked : compileHmrSourceFrontLog s6Step194EntryFBefore s6Step194FrontBank 172 111 ⟨172,171,112,111⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step194FrontLog=some s6Step194FrontPlan := by
  have pairEq : s6Step194FrontPair=⟨s6Step194HeadFRow,s6Step194HeadGRow,s6Step194HeadFvRow,s6Step194HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step194FrontHead=⟨s6Step194ExitFRow,s6Step194ExitGRow,s6Step194ExitFvRow,s6Step194ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step194Add0A=s6Step194FrontHead.f.wires := by decide +kernel
  have gEq : s6Step194Add0B=s6Step194FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step194Add1A=s6Step194FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step194Add1B=s6Step194FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step194EntryFBefore s6Step194FrontBank 172 111 ⟨172,171,112,111⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step194FrontLog s6Step194FrontPlan
  · exact s6Step194Front_entry
  · exact s6Step194EntryBank_checked
  · exact s6Step194Front_sigma
  · rfl
  · exact s6Step194Front_branch
  · rfl
  · simpa only [s6Step194FrontPlan,pairEq] using s6Step194HeadBank_checked
  · simpa only [s6Step194FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step194F4_checked
  · exact s6Step194Counter_checked
  · rfl
  · simpa only [s6Step194FrontPlan,headEq] using s6Step194ExitBank_checked

private theorem s6Step194Complete_explicit_checked : compileHmrEarlyStepLog s6Step194EntryFBefore s6Step194FrontBank 172 111 ⟨172,171,112,111⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 44 s6Step194CompleteLog=some s6Step194CompletePlan := by
  let Q := s6Step194EarlyControlPlan
  have hq := s6Step194EarlyControl_plan_checked
  have fv1 : s6Step194CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step194CompleteOut.fv.payload[2]?.getD s6Step194CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step194CompleteOut.fv.payload[3]?.getD s6Step194CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step194CompleteOut.fv.payload[4]?.getD s6Step194CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step194EntryFBefore s6Step194EarlyControlArena s6Step194FrontBank 172 111 ⟨172,171,112,111⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 44 s6Step194CompleteLog s6Step194FrontPlan Q
    s6Step194Front_checked s6Step194Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step194Complete_owned s6Step194Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step194EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 838 s6Step194CompleteOut.fv.second (s6Step194CompleteOut.fv.payload[2]?.getD s6Step194CompleteOut.fv.sign) (s6Step194CompleteOut.fv.payload[3]?.getD s6Step194CompleteOut.fv.sign) (s6Step194CompleteOut.fv.payload[4]?.getD s6Step194CompleteOut.fv.sign) 833 44 s6Step194EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep194Arena : Arena := s6Step194EntryFBefore
def s6PrivateStep194Bank : WindowBank := s6Step194FrontBank
def s6PrivateStep194Spec : HmrSourceWalkStepLog := ⟨172,111,⟨172,171,112,111⟩,44,.early s6Step194CompleteLog⟩
def s6PrivateStep194Plan : HmrSourceStepPlan := .early s6Step194CompletePlan
theorem s6PrivateStep194_source : s6PrivateStep194Spec=s6ObservedLogs192[2] := rfl
theorem s6PrivateStep194_checked : compileHmrSourceStepLog s6PrivateStep194Arena s6PrivateStep194Bank
    s6PrivateStep194Spec.fgWidth s6PrivateStep194Spec.vWidth s6PrivateStep194Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]
    6 498 194 s6PrivateStep194Spec.need none s6PrivateStep194Spec.log=some s6PrivateStep194Plan := by
  change compileHmrSourceStepLog s6Step194EntryFBefore s6Step194FrontBank 172 111 ⟨172,171,112,111⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 6 498 194 44 none (.early s6Step194CompleteLog)=some (.early s6Step194CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 194<498)]
  rw [s6Step194Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
