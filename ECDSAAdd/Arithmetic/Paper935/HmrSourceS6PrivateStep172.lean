import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep170
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

private def s6Step172CompleteMoves : List (Wire × Wire) := [(907,439)]

private def s6Step172EarlyControlLog : HmrEarlyControlLog := ⟨[907, 793, 922, 857, 876],[863],[890],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step172FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [863], [], [864, 823]],[[890], [876], [793], [857]],[[], [], [], []]⟩,[803],[886],[891],[903],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step172CompleteLog : HmrEarlyStepLog := ⟨s6Step172FrontLog,s6Step172CompleteMoves,s6Step172EarlyControlLog⟩

private def s6Step172ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩

private def s6Step172ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩

private def s6Step172ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],777⟩

private def s6Step172ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private def s6Step172FrontOut : WindowBank := ⟨s6Step172ExitFOut,s6Step172ExitGOut,s6Step172ExitFvOut,s6Step172ExitGvOut⟩

private def s6Step172CompleteOut : WindowBank := s6Step172FrontOut.repacked s6Step172CompleteMoves

private def s6Step172EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step172EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step172EarlyControlPositiveArena,[863],s6Step172EarlyControlEqualityArena,[890],⟨⟨803,false⟩,[⟨⟨863,false⟩,890⟩]⟩⟩

private def s6Step172EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step172EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step172EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step172EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,907⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,922⟩,⟨⟨770,false⟩,857⟩,⟨⟨769,false⟩,876⟩]⟩

private def s6Step172EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step172EarlyControlZeroArena,s6Step172EarlyControlZeroPlan,s6Step172EarlyControlClassPlan,s6Step172EarlyControlFlagArena,s6Step172EarlyControlFittedArena,s6Step172EarlyControlHistoryArena,s6Step172EarlyControlSigmaArena,s6Step172EarlyControlOutputArena,s6Step172EarlyControlLog⟩

private def s6Step172CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step172Counter_bounded : s6Step172CounterWork.toFinset⊆arenaWires := by norm_num [s6Step172CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step172HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172CounterDuring : Arena := ⟨s6Step172HeadFvAfter.live∪s6Step172CounterWork.toFinset,Finset.union_subset s6Step172HeadFvAfter.bounded s6Step172Counter_bounded⟩

private def s6Step172EntryFFresh : List Wire := []

private def s6Step172EntryFvFresh : List Wire := []

private def s6Step172EntryGFresh : List Wire := [863]

private def s6Step172EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step172EntryGvFresh : List Wire := [864, 823]

private def s6Step172ExitFExtra : List Wire := [439, 876]

private def s6Step172ExitFvExtra : List Wire := [922, 857]

private def s6Step172ExitGExtra : List Wire := [863, 890]

private def s6Step172ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,439),(440,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step172ExitGvExtra : List Wire := [793]

private def s6Step172Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172Add0Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step172Add0_bounded : s6Step172Add0Work.toFinset⊆arenaWires := by
  have h : s6Step172Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step172Add0During : Arena := ⟨s6Step172Add0Arena.live∪s6Step172Add0Work.toFinset,Finset.union_subset s6Step172Add0Arena.bounded s6Step172Add0_bounded⟩

private def s6Step172Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172Add1Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step172Add1_bounded : s6Step172Add1Work.toFinset⊆arenaWires := by
  have h : s6Step172Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step172Add1During : Arena := ⟨s6Step172Add1Arena.live∪s6Step172Add1Work.toFinset,Finset.union_subset s6Step172Add1Arena.bounded s6Step172Add1_bounded⟩

private def s6Step172F4FlagArena : Arena := ⟨s6Step172HeadFvAfter.live∪{891},Finset.union_subset s6Step172HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step172F4Plan : HmrHybridF4Plan := ⟨s6Step172F4FlagArena,[891],s6Step172Add0Arena,[903],s6Step172Add0During,s6Step172Add0Work,s6Step172Add1During,s6Step172Add1Work⟩

private def s6Step172HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 876],795⟩

private def s6Step172HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922, 857],776⟩

private def s6Step172HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 863, 890],777⟩

private def s6Step172HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 793],775⟩

private def s6Step172FrontHead : WindowBank := ⟨s6Step172HeadFOut,s6Step172HeadGOut,s6Step172HeadFvOut,s6Step172HeadGvOut⟩

private def s6Step172EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439],795⟩

private def s6Step172EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922],776⟩

private def s6Step172EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 863],777⟩

private def s6Step172EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private def s6Step172FrontPair : WindowBank := ⟨s6Step172EntryFOut,s6Step172EntryGOut,s6Step172EntryFvOut,s6Step172EntryGvOut⟩

private def s6Step172FrontSigmaArena : Arena := ⟨s6Step172EntryGvAfter.live∪{803},Finset.union_subset s6Step172EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step172HeadFFresh : List Wire := [876]

private def s6Step172HeadFvFresh : List Wire := [857]

private def s6Step172HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172HeadGFresh : List Wire := [890]

private def s6Step172HeadGvFresh : List Wire := [793]

private def s6Step172FrontPlan : HmrSourceFront := ⟨s6Step172EntryGvAfter,s6Step172FrontPair,(growRow 795 s6Step172EntryFFresh ++ (growRow 777 s6Step172EntryGFresh ++ (growRow 776 s6Step172EntryFvFresh ++ (growRow 775 s6Step172EntryGvFresh ++ [])))),s6Step172FrontSigmaArena,[803],s6Step172HeadGBefore,[886],
  s6Step172HeadFvAfter,s6Step172FrontHead,(growRow 777 s6Step172HeadGFresh ++ (growRow 795 s6Step172HeadFFresh ++ (growRow 775 s6Step172HeadGvFresh ++ (growRow 776 s6Step172HeadFvFresh ++ [])))),s6Step172F4Plan,s6Step172CounterDuring,s6Step172CounterWork,s6Step172ExitGvAfter,s6Step172FrontOut,(shrinkRow 777 s6Step172ExitGExtra ++ (shrinkRow 795 s6Step172ExitFExtra ++ (shrinkRow 776 s6Step172ExitFvExtra ++ (shrinkRow 775 s6Step172ExitGvExtra ++ []))))⟩

private def s6Step172CompletePlan : HmrEarlyStepPlan := ⟨s6Step172FrontPlan,s6Step172EarlyControlArena,s6Step172EarlyControlPlan,s6Step172CompleteMoves⟩

private theorem s6Step172Complete_apart : List.Disjoint (s6Step172CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [803, 886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step172CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[803, 886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step172Complete_owned : (s6Step172CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step172EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step172CompleteRelocationMove0Borrowed : Arena := ⟨s6Step172ExitGvAfter.live∪{439},Finset.union_subset s6Step172ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step172CompleteRelocation_move0_owned : 907∈s6Step172ExitGvAfter.live := by norm_num [s6Step172ExitGvAfter,arenaWires]

private theorem s6Step172CompleteRelocation_move0_reserve : s6Step172ExitGvAfter.reserve {439}=some s6Step172CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step172ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step172CompleteRelocation_move0_retire : s6Step172CompleteRelocationMove0Borrowed.retireSet {907}=s6Step172EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step172CompleteRelocationMove0Borrowed s6Step172EarlyControlArena {907}
  change s6Step172EarlyControlArena.live=(s6Step172ExitGvAfter.live∪{439})\{907}
  apply hmrArena_update_of_filter_check s6Step172ExitGvAfter s6Step172EarlyControlArena (fun q => ([(0,439),(440,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [439] [907] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step172CompleteRelocation_checked : s6Step172ExitGvAfter.checkRepack [(907,439)]=some s6Step172EarlyControlArena := by
  have tail1 : s6Step172EarlyControlArena.checkRepack []=some s6Step172EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step172ExitGvAfter s6Step172CompleteRelocationMove0Borrowed s6Step172EarlyControlArena s6Step172EarlyControlArena 907 439 []
    s6Step172CompleteRelocation_move0_owned s6Step172CompleteRelocation_move0_reserve s6Step172CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step172Complete_repack : s6Step172ExitGvAfter.checkRepack s6Step172CompleteMoves=some s6Step172EarlyControlArena := by
  simpa only [s6Step172CompleteMoves] using s6Step172CompleteRelocation_checked

private theorem s6Step172EarlyControl_branchOwned : ([886] : List Wire).toFinset⊆s6Step172EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172EarlyControl_branch : compileHmrBranchRetirement s6Step172EarlyControlSigmaArena 886=some s6Step172EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step172EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step172EarlyControlSigmaArena s6Step172EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [886] rfl rfl
    decide +kernel

private theorem s6Step172EarlyControl_classEqualityBorrow : s6Step172EarlyControlPositiveArena.checkBorrow (([803, 863] : List Wire).length-1) s6Step172EarlyControlLog.classWork=some s6Step172EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step172EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step172EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step172EarlyControlEqualityArena,s6Step172EarlyControlPositiveArena,s6Step172EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step172EarlyControl_classEqualityOwned : ([803, 863] : List Wire).toFinset⊆s6Step172EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172EarlyControl_classEquality : compileHmrEqualityLog s6Step172EarlyControlPositiveArena [803, 863] 0 s6Step172EarlyControlLog.classWork=some (s6Step172EarlyControlEqualityArena,s6Step172EarlyControlLog.classWork,s6Step172EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step172EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step172EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step172EarlyControl_classOwned : ([769, 876, 803] : List Wire).toFinset⊆s6Step172EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172EarlyControl_positiveBorrow : s6Step172EarlyControlZeroArena.checkBorrow (1) s6Step172EarlyControlLog.positiveWork=some s6Step172EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step172EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step172EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step172EarlyControlPositiveArena,s6Step172EarlyControlZeroArena,s6Step172EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step172EarlyControl_class : compileHmrSourceClassLog s6Step172EarlyControlZeroArena false 769 s6Step172EarlyControlZeroPlan.top 0 803 s6Step172EarlyControlLog.positiveWork s6Step172EarlyControlLog.classWork=some s6Step172EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step172EarlyControlClassPlan s6Step172EarlyControlZeroArena false 769 s6Step172EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s6Step172EarlyControl_classOwned
  · exact s6Step172EarlyControl_positiveBorrow
  · exact s6Step172EarlyControl_classEquality

private theorem s6Step172EarlyControl_entryRecordOwned : ([886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step172EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172EarlyControl_entrySigmaOwned : ([803, 254] : List Wire).toFinset⊆s6Step172EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172EarlyControl_fitBorrow : s6Step172EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step172EarlyControlLog.recordFresh=some s6Step172EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step172EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step172EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step172EarlyControlFittedArena,s6Step172EarlyControlFlagArena,s6Step172EarlyControlLog,arenaWires]

private theorem s6Step172EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step172EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172EarlyControl_fit : compileHmrRecordGrowLog s6Step172EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step172EarlyControlLog.recordFresh=some s6Step172EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step172EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step172EarlyControl_fitBorrow

private theorem s6Step172EarlyControl_flagsBorrow : s6Step172EarlyControlEqualityArena.checkBorrow (6) s6Step172EarlyControlLog.flagWork=some s6Step172EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step172EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step172EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step172EarlyControlFlagArena,s6Step172EarlyControlEqualityArena,s6Step172EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step172EarlyControl_flagsOwned : ([890, 253, 252, 251] : List Wire).toFinset⊆s6Step172EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172EarlyControl_flags : compileHmrFlagsLog s6Step172EarlyControlClassPlan.equalityArena s6Step172EarlyControlClassPlan.equality.top 253 252 251 s6Step172EarlyControlLog.flagWork=some s6Step172EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step172EarlyControl_flagsOwned⟩
  · exact s6Step172EarlyControl_flagsBorrow

private theorem s6Step172EarlyControl_historyBorrow : s6Step172EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step172EarlyControlLog.recordFresh=some s6Step172EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step172EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step172EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step172EarlyControlArena s6Step172EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step172EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step172EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step172EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step172EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172EarlyControl_history : compileHmrRecordGrowLog s6Step172EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step172EarlyControlLog.recordFresh=some s6Step172EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step172EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step172EarlyControl_historyBorrow

private theorem s6Step172EarlyControl_sigmaOwned : ([254, 803] : List Wire).toFinset⊆s6Step172EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s6Step172EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172EarlyControl_sigmaRelease : s6Step172EarlyControlHistoryArena.release {803} (fun _ => false)=some s6Step172EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step172EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step172EarlyControlHistoryArena s6Step172EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step172EarlyControl_sigma : compileHmrSigmaDropLog s6Step172EarlyControlHistoryArena false 0 0 254 803 []=some s6Step172EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step172EarlyControl_sigmaOwned⟩
  · exact s6Step172EarlyControl_sigmaRelease

private theorem s6Step172EarlyControl_zeroBorrow : s6Step172EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step172EarlyControlLog.zeroWork=some s6Step172EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step172EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step172EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step172EarlyControlArena s6Step172EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step172EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step172EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step172EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step172EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step172EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172EarlyControl_zero : compileHmrEqualityLog s6Step172EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step172EarlyControlLog.zeroWork=some (s6Step172EarlyControlZeroArena,s6Step172EarlyControlLog.zeroWork,s6Step172EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step172EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step172EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step172EarlyControl_logged : s6Step172EarlyControlPlan.Logged s6Step172EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 886 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step172EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step172EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step172EarlyControl_zero
  · exact s6Step172EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step172EarlyControl_flags
  · exact s6Step172EarlyControl_fit
  · exact s6Step172EarlyControl_history
  · exact s6Step172EarlyControl_sigma
  · exact s6Step172EarlyControl_branch

private theorem s6Step172EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step172EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 886 42 s6Step172EarlyControlLog=some s6Step172EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step172EarlyControlPlan s6Step172EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 886 42 s6Step172EarlyControl_logged

private def s6Step172EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step172EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439],795⟩

private def s6Step172EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922],776⟩

private def s6Step172EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],777⟩

private def s6Step172EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩

private def s6Step172FrontBank : WindowBank := ⟨s6Step172EntryFRow,s6Step172EntryGRow,s6Step172EntryFvRow,s6Step172EntryGvRow⟩

private def s6Step172Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 876, 795]

private def s6Step172Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 863, 890, 777]

private def s6Step172Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922, 857, 776]

private def s6Step172Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 793, 775]

private theorem s6Step172Counter_apart : Disjoint s6Step172HeadFvAfter.live s6Step172CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step172HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172Counter_borrowed : s6Step172HeadFvAfter.checkBorrow 4 s6Step172CounterWork=some s6Step172CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step172HeadFvAfter s6Step172CounterDuring s6Step172CounterWork.toFinset s6Step172Counter_bounded s6Step172Counter_apart rfl

private theorem s6Step172Counter_owned : (803::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step172HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step172HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172Counter_checked : compileHmrCounterStepLog s6Step172HeadFvAfter true 803 [774, 773, 772, 771, 770, 769] s6Step172CounterWork=some s6Step172CounterDuring := by
  have owned : ∀q∈803::[774, 773, 772, 771, 770, 769],q∈s6Step172HeadFvAfter.live := fun q hq => s6Step172Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step172Counter_borrowed

private def s6Step172EntryFAfter : Arena := s6Step172EntryFBefore

private theorem s6Step172EntryBank_incomingDistinct : ([s6Step172EntryFRow,s6Step172EntryGRow,s6Step172EntryFvRow,s6Step172EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172EntryF_Incoming : rowsOwned s6Step172EntryFBefore [s6Step172EntryFRow,s6Step172EntryGRow,s6Step172EntryFvRow,s6Step172EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172EntryFRow,s6Step172EntryGRow,s6Step172EntryFvRow,s6Step172EntryGvRow] 0 s6Step172EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step172EntryBank_outgoingOwned : rowsOwned s6Step172EntryGvAfter [s6Step172EntryFOut,s6Step172EntryGOut,s6Step172EntryFvOut,s6Step172EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step172EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step172EntryF_Outgoing : rowsOwned s6Step172EntryGvAfter [s6Step172EntryFOut,s6Step172EntryGOut,s6Step172EntryFvOut,s6Step172EntryGvOut] :=
  hmrRows_owned_drop s6Step172EntryGvAfter [s6Step172EntryFOut,s6Step172EntryGOut,s6Step172EntryFvOut,s6Step172EntryGvOut] 0 s6Step172EntryBank_outgoingOwned

private theorem s6Step172EntryF_distinct : (s6Step172EntryFRow.sign::s6Step172EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172EntryF_owned : (s6Step172EntryFRow.sign::s6Step172EntryFRow.payload).toFinset⊆s6Step172EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172EntryF_reserved : s6Step172EntryFBefore.reserve s6Step172EntryFFresh.toFinset=some s6Step172EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step172EntryFFresh,arenaWires]
  · norm_num [s6Step172EntryFBefore,s6Step172EntryFFresh,arenaWires]
  · simp only [s6Step172EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step172EntryF_checked : planRowResizeLog s6Step172EntryFBefore s6Step172EntryFRow 184 s6Step172EntryFFresh=
    some (s6Step172EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439],795⟩,growRow 795 s6Step172EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step172EntryFBefore s6Step172EntryFAfter s6Step172EntryFRow 184 s6Step172EntryFFresh
    s6Step172EntryF_distinct s6Step172EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step172EntryF_reserved
  have rowEq : WindowRow.mk (s6Step172EntryFRow.payload++s6Step172EntryFFresh) s6Step172EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step172EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,864),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step172EntryFvAfter : Arena := s6Step172EntryGAfter

private def s6Step172EntryFvBefore : Arena := s6Step172EntryGAfter

private theorem s6Step172EntryFv_Incoming : rowsOwned s6Step172EntryFvBefore [s6Step172EntryFvRow,s6Step172EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172EntryFRow,s6Step172EntryGRow,s6Step172EntryFvRow,s6Step172EntryGvRow] 2 s6Step172EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,864),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step172EntryFv_Outgoing : rowsOwned s6Step172EntryGvAfter [s6Step172EntryFvOut,s6Step172EntryGvOut] :=
  hmrRows_owned_drop s6Step172EntryGvAfter [s6Step172EntryFOut,s6Step172EntryGOut,s6Step172EntryFvOut,s6Step172EntryGvOut] 2 s6Step172EntryBank_outgoingOwned

private theorem s6Step172EntryFv_distinct : (s6Step172EntryFvRow.sign::s6Step172EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172EntryFv_owned : (s6Step172EntryFvRow.sign::s6Step172EntryFvRow.payload).toFinset⊆s6Step172EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,864),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172EntryFv_reserved : s6Step172EntryFvBefore.reserve s6Step172EntryFvFresh.toFinset=some s6Step172EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step172EntryFvFresh,arenaWires]
  · norm_num [s6Step172EntryFvBefore,s6Step172EntryGAfter,s6Step172EntryFvFresh,arenaWires]
  · simp only [s6Step172EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step172EntryFv_checked : planRowResizeLog s6Step172EntryFvBefore s6Step172EntryFvRow 101 s6Step172EntryFvFresh=
    some (s6Step172EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922],776⟩,growRow 776 s6Step172EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step172EntryFvBefore s6Step172EntryFvAfter s6Step172EntryFvRow 101 s6Step172EntryFvFresh
    s6Step172EntryFv_distinct s6Step172EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step172EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step172EntryFvRow.payload++s6Step172EntryFvFresh) s6Step172EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step172EntryGBefore : Arena := s6Step172EntryFBefore

private theorem s6Step172EntryG_Incoming : rowsOwned s6Step172EntryGBefore [s6Step172EntryGRow,s6Step172EntryFvRow,s6Step172EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172EntryFRow,s6Step172EntryGRow,s6Step172EntryFvRow,s6Step172EntryGvRow] 1 s6Step172EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step172EntryG_Outgoing : rowsOwned s6Step172EntryGvAfter [s6Step172EntryGOut,s6Step172EntryFvOut,s6Step172EntryGvOut] :=
  hmrRows_owned_drop s6Step172EntryGvAfter [s6Step172EntryFOut,s6Step172EntryGOut,s6Step172EntryFvOut,s6Step172EntryGvOut] 1 s6Step172EntryBank_outgoingOwned

private theorem s6Step172EntryG_distinct : (s6Step172EntryGRow.sign::s6Step172EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172EntryG_owned : (s6Step172EntryGRow.sign::s6Step172EntryGRow.payload).toFinset⊆s6Step172EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172EntryG_reserved : s6Step172EntryGBefore.reserve s6Step172EntryGFresh.toFinset=some s6Step172EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step172EntryGFresh,arenaWires]
  · norm_num [s6Step172EntryGBefore,s6Step172EntryFBefore,s6Step172EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step172EntryGBefore s6Step172EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,864),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step172EntryGFresh rfl rfl
    · norm_num [s6Step172EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step172EntryG_checked : planRowResizeLog s6Step172EntryGBefore s6Step172EntryGRow 184 s6Step172EntryGFresh=
    some (s6Step172EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 863],777⟩,growRow 777 s6Step172EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step172EntryGBefore s6Step172EntryGAfter s6Step172EntryGRow 184 s6Step172EntryGFresh
    s6Step172EntryG_distinct s6Step172EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step172EntryG_reserved
  have rowEq : WindowRow.mk (s6Step172EntryGRow.payload++s6Step172EntryGFresh) s6Step172EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 863],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step172EntryGvBefore : Arena := s6Step172EntryGAfter

private theorem s6Step172EntryGv_Incoming : rowsOwned s6Step172EntryGvBefore [s6Step172EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172EntryFRow,s6Step172EntryGRow,s6Step172EntryFvRow,s6Step172EntryGvRow] 3 s6Step172EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,864),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step172EntryGv_Outgoing : rowsOwned s6Step172EntryGvAfter [s6Step172EntryGvOut] :=
  hmrRows_owned_drop s6Step172EntryGvAfter [s6Step172EntryFOut,s6Step172EntryGOut,s6Step172EntryFvOut,s6Step172EntryGvOut] 3 s6Step172EntryBank_outgoingOwned

private theorem s6Step172EntryGv_distinct : (s6Step172EntryGvRow.sign::s6Step172EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172EntryGv_owned : (s6Step172EntryGvRow.sign::s6Step172EntryGvRow.payload).toFinset⊆s6Step172EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,864),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172EntryGv_reserved : s6Step172EntryGvBefore.reserve s6Step172EntryGvFresh.toFinset=some s6Step172EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step172EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step172EntryGvBefore,s6Step172EntryGAfter,s6Step172EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step172EntryGvBefore s6Step172EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,864),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step172EntryGvFresh rfl rfl
    · norm_num [s6Step172EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step172EntryGv_checked : planRowResizeLog s6Step172EntryGvBefore s6Step172EntryGvRow 101 s6Step172EntryGvFresh=
    some (s6Step172EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩,growRow 775 s6Step172EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step172EntryGvBefore s6Step172EntryGvAfter s6Step172EntryGvRow 101 s6Step172EntryGvFresh
    s6Step172EntryGv_distinct s6Step172EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step172EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step172EntryGvRow.payload++s6Step172EntryGvFresh) s6Step172EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step172EntryBank_rows : planWindowRowsLog s6Step172EntryFBefore [(s6Step172EntryFRow,184),(s6Step172EntryGRow,184),(s6Step172EntryFvRow,101),(s6Step172EntryGvRow,101)] [s6Step172EntryFFresh,s6Step172EntryGFresh,s6Step172EntryFvFresh,s6Step172EntryGvFresh]=
    some (s6Step172EntryGvAfter,[s6Step172EntryFOut,s6Step172EntryGOut,s6Step172EntryFvOut,s6Step172EntryGvOut],(growRow 795 s6Step172EntryFFresh ++ (growRow 777 s6Step172EntryGFresh ++ (growRow 776 s6Step172EntryFvFresh ++ (growRow 775 s6Step172EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step172EntryGvAfter [] []=some (s6Step172EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step172EntryGvBefore s6Step172EntryGvAfter s6Step172EntryGvAfter
    s6Step172EntryGvRow s6Step172EntryGvOut 101 s6Step172EntryGvFresh [] [] []
    (growRow 775 s6Step172EntryGvFresh) ([]) s6Step172EntryGv_Incoming s6Step172EntryGv_checked h4 s6Step172EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step172EntryFvBefore s6Step172EntryFvAfter s6Step172EntryGvAfter
    s6Step172EntryFvRow s6Step172EntryFvOut 101 s6Step172EntryFvFresh [(s6Step172EntryGvRow,101)] [s6Step172EntryGvFresh] [s6Step172EntryGvOut]
    (growRow 776 s6Step172EntryFvFresh) ((growRow 775 s6Step172EntryGvFresh ++ [])) s6Step172EntryFv_Incoming s6Step172EntryFv_checked h3 s6Step172EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step172EntryGBefore s6Step172EntryGAfter s6Step172EntryGvAfter
    s6Step172EntryGRow s6Step172EntryGOut 184 s6Step172EntryGFresh [(s6Step172EntryFvRow,101),(s6Step172EntryGvRow,101)] [s6Step172EntryFvFresh,s6Step172EntryGvFresh] [s6Step172EntryFvOut,s6Step172EntryGvOut]
    (growRow 777 s6Step172EntryGFresh) ((growRow 776 s6Step172EntryFvFresh ++ (growRow 775 s6Step172EntryGvFresh ++ []))) s6Step172EntryG_Incoming s6Step172EntryG_checked h2 s6Step172EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step172EntryFBefore s6Step172EntryFAfter s6Step172EntryGvAfter
    s6Step172EntryFRow s6Step172EntryFOut 184 s6Step172EntryFFresh [(s6Step172EntryGRow,184),(s6Step172EntryFvRow,101),(s6Step172EntryGvRow,101)] [s6Step172EntryGFresh,s6Step172EntryFvFresh,s6Step172EntryGvFresh] [s6Step172EntryGOut,s6Step172EntryFvOut,s6Step172EntryGvOut]
    (growRow 795 s6Step172EntryFFresh) ((growRow 777 s6Step172EntryGFresh ++ (growRow 776 s6Step172EntryFvFresh ++ (growRow 775 s6Step172EntryGvFresh ++ [])))) s6Step172EntryF_Incoming s6Step172EntryF_checked h1 s6Step172EntryF_Outgoing
  exact h0

private theorem s6Step172EntryBank_checked : compileHmrBankResizeLog .entry s6Step172EntryFBefore ⟨s6Step172EntryFRow,s6Step172EntryGRow,s6Step172EntryFvRow,s6Step172EntryGvRow⟩ ⟨184,184,101,101⟩ [s6Step172EntryFFresh,s6Step172EntryGFresh,s6Step172EntryFvFresh,s6Step172EntryGvFresh]=
    some (s6Step172EntryGvAfter,⟨s6Step172EntryFOut,s6Step172EntryGOut,s6Step172EntryFvOut,s6Step172EntryGvOut⟩,(growRow 795 s6Step172EntryFFresh ++ (growRow 777 s6Step172EntryGFresh ++ (growRow 776 s6Step172EntryFvFresh ++ (growRow 775 s6Step172EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step172EntryBank_rows]
  rfl

private def s6Step172ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,439),(440,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step172ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172ExitFBefore : Arena := s6Step172ExitGAfter

private def s6Step172ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 876],795⟩

private def s6Step172ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922, 857],776⟩

private def s6Step172ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 863, 890],777⟩

private def s6Step172ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 793],775⟩

private theorem s6Step172ExitBank_incomingDistinct : ([s6Step172ExitGRow,s6Step172ExitFRow,s6Step172ExitFvRow,s6Step172ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172ExitF_Incoming : rowsOwned s6Step172ExitFBefore [s6Step172ExitFRow,s6Step172ExitFvRow,s6Step172ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172ExitGRow,s6Step172ExitFRow,s6Step172ExitFvRow,s6Step172ExitGvRow] 1 s6Step172ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step172ExitBank_outgoingOwned : rowsOwned s6Step172ExitGvAfter [s6Step172ExitGOut,s6Step172ExitFOut,s6Step172ExitFvOut,s6Step172ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step172ExitGvAfter (fun q => ([(0,439),(440,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step172ExitF_Outgoing : rowsOwned s6Step172ExitGvAfter [s6Step172ExitFOut,s6Step172ExitFvOut,s6Step172ExitGvOut] :=
  hmrRows_owned_drop s6Step172ExitGvAfter [s6Step172ExitGOut,s6Step172ExitFOut,s6Step172ExitFvOut,s6Step172ExitGvOut] 1 s6Step172ExitBank_outgoingOwned

private theorem s6Step172ExitF_distinct : (s6Step172ExitFRow.sign::s6Step172ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172ExitF_owned : (s6Step172ExitFRow.sign::s6Step172ExitFRow.payload).toFinset⊆s6Step172ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172ExitF_retired : s6Step172ExitFBefore.retireSet s6Step172ExitFExtra.toFinset=s6Step172ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step172ExitFBefore s6Step172ExitFAfter s6Step172ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step172ExitFBefore s6Step172ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,439),(440,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step172ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step172ExitF_checked : planRowResizeLog s6Step172ExitFBefore s6Step172ExitFRow 183 []=
    some (s6Step172ExitFAfter,s6Step172ExitFOut,shrinkRow 795 s6Step172ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step172ExitFBefore s6Step172ExitFRow 183 s6Step172ExitF_distinct s6Step172ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step172ExitFRow.payload.take 183) s6Step172ExitFRow.sign=s6Step172ExitFOut := by decide +kernel
  have hi : s6Step172ExitFRow.payload.drop 183=s6Step172ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step172ExitF_retired] at result
  exact result

private def s6Step172ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,439),(440,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step172ExitFvBefore : Arena := s6Step172ExitFAfter

private theorem s6Step172ExitFv_Incoming : rowsOwned s6Step172ExitFvBefore [s6Step172ExitFvRow,s6Step172ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172ExitGRow,s6Step172ExitFRow,s6Step172ExitFvRow,s6Step172ExitGvRow] 2 s6Step172ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172ExitFvBefore (fun q => ([(0,439),(440,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step172ExitFv_Outgoing : rowsOwned s6Step172ExitGvAfter [s6Step172ExitFvOut,s6Step172ExitGvOut] :=
  hmrRows_owned_drop s6Step172ExitGvAfter [s6Step172ExitGOut,s6Step172ExitFOut,s6Step172ExitFvOut,s6Step172ExitGvOut] 2 s6Step172ExitBank_outgoingOwned

private theorem s6Step172ExitFv_distinct : (s6Step172ExitFvRow.sign::s6Step172ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172ExitFv_owned : (s6Step172ExitFvRow.sign::s6Step172ExitFvRow.payload).toFinset⊆s6Step172ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172ExitFvBefore (fun q => ([(0,439),(440,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172ExitFv_retired : s6Step172ExitFvBefore.retireSet s6Step172ExitFvExtra.toFinset=s6Step172ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step172ExitFvBefore s6Step172ExitFvAfter s6Step172ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step172ExitFvBefore s6Step172ExitFvAfter (fun q => ([(0,439),(440,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,439),(440,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step172ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step172ExitFv_checked : planRowResizeLog s6Step172ExitFvBefore s6Step172ExitFvRow 100 []=
    some (s6Step172ExitFvAfter,s6Step172ExitFvOut,shrinkRow 776 s6Step172ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step172ExitFvBefore s6Step172ExitFvRow 100 s6Step172ExitFv_distinct s6Step172ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step172ExitFvRow.payload.take 100) s6Step172ExitFvRow.sign=s6Step172ExitFvOut := by decide +kernel
  have hi : s6Step172ExitFvRow.payload.drop 100=s6Step172ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step172ExitFv_retired] at result
  exact result

private def s6Step172ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step172ExitG_Incoming : rowsOwned s6Step172ExitGBefore [s6Step172ExitGRow,s6Step172ExitFRow,s6Step172ExitFvRow,s6Step172ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172ExitGRow,s6Step172ExitFRow,s6Step172ExitFvRow,s6Step172ExitGvRow] 0 s6Step172ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step172ExitG_Outgoing : rowsOwned s6Step172ExitGvAfter [s6Step172ExitGOut,s6Step172ExitFOut,s6Step172ExitFvOut,s6Step172ExitGvOut] :=
  hmrRows_owned_drop s6Step172ExitGvAfter [s6Step172ExitGOut,s6Step172ExitFOut,s6Step172ExitFvOut,s6Step172ExitGvOut] 0 s6Step172ExitBank_outgoingOwned

private theorem s6Step172ExitG_distinct : (s6Step172ExitGRow.sign::s6Step172ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172ExitG_owned : (s6Step172ExitGRow.sign::s6Step172ExitGRow.payload).toFinset⊆s6Step172ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172ExitG_retired : s6Step172ExitGBefore.retireSet s6Step172ExitGExtra.toFinset=s6Step172ExitGAfter := by
  unfold Arena.retireSet s6Step172ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step172ExitGBefore,s6Step172ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step172ExitG_checked : planRowResizeLog s6Step172ExitGBefore s6Step172ExitGRow 183 []=
    some (s6Step172ExitGAfter,s6Step172ExitGOut,shrinkRow 777 s6Step172ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step172ExitGBefore s6Step172ExitGRow 183 s6Step172ExitG_distinct s6Step172ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step172ExitGRow.payload.take 183) s6Step172ExitGRow.sign=s6Step172ExitGOut := by decide +kernel
  have hi : s6Step172ExitGRow.payload.drop 183=s6Step172ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step172ExitG_retired] at result
  exact result

private def s6Step172ExitGvBefore : Arena := s6Step172ExitFvAfter

private theorem s6Step172ExitGv_Incoming : rowsOwned s6Step172ExitGvBefore [s6Step172ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172ExitGRow,s6Step172ExitFRow,s6Step172ExitFvRow,s6Step172ExitGvRow] 3 s6Step172ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172ExitGvBefore (fun q => ([(0,439),(440,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step172ExitGv_Outgoing : rowsOwned s6Step172ExitGvAfter [s6Step172ExitGvOut] :=
  hmrRows_owned_drop s6Step172ExitGvAfter [s6Step172ExitGOut,s6Step172ExitFOut,s6Step172ExitFvOut,s6Step172ExitGvOut] 3 s6Step172ExitBank_outgoingOwned

private theorem s6Step172ExitGv_distinct : (s6Step172ExitGvRow.sign::s6Step172ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172ExitGv_owned : (s6Step172ExitGvRow.sign::s6Step172ExitGvRow.payload).toFinset⊆s6Step172ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172ExitGvBefore (fun q => ([(0,439),(440,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step172ExitGv_retired : s6Step172ExitGvBefore.retireSet s6Step172ExitGvExtra.toFinset=s6Step172ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step172ExitGvBefore s6Step172ExitGvAfter s6Step172ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step172ExitGvBefore s6Step172ExitGvAfter (fun q => ([(0,439),(440,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,439),(440,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step172ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step172ExitGv_checked : planRowResizeLog s6Step172ExitGvBefore s6Step172ExitGvRow 101 []=
    some (s6Step172ExitGvAfter,s6Step172ExitGvOut,shrinkRow 775 s6Step172ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step172ExitGvBefore s6Step172ExitGvRow 101 s6Step172ExitGv_distinct s6Step172ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step172ExitGvRow.payload.take 101) s6Step172ExitGvRow.sign=s6Step172ExitGvOut := by decide +kernel
  have hi : s6Step172ExitGvRow.payload.drop 101=s6Step172ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step172ExitGv_retired] at result
  exact result

private theorem s6Step172ExitBank_rows : planWindowRowsLog s6Step172ExitGBefore [(s6Step172ExitGRow,183),(s6Step172ExitFRow,183),(s6Step172ExitFvRow,100),(s6Step172ExitGvRow,101)] [[],[],[],[]]=
    some (s6Step172ExitGvAfter,[s6Step172ExitGOut,s6Step172ExitFOut,s6Step172ExitFvOut,s6Step172ExitGvOut],(shrinkRow 777 s6Step172ExitGExtra ++ (shrinkRow 795 s6Step172ExitFExtra ++ (shrinkRow 776 s6Step172ExitFvExtra ++ (shrinkRow 775 s6Step172ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step172ExitGvAfter [] []=some (s6Step172ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step172ExitGvBefore s6Step172ExitGvAfter s6Step172ExitGvAfter
    s6Step172ExitGvRow s6Step172ExitGvOut 101 [] [] [] []
    (shrinkRow 775 s6Step172ExitGvExtra) ([]) s6Step172ExitGv_Incoming s6Step172ExitGv_checked h4 s6Step172ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step172ExitFvBefore s6Step172ExitFvAfter s6Step172ExitGvAfter
    s6Step172ExitFvRow s6Step172ExitFvOut 100 [] [(s6Step172ExitGvRow,101)] [[]] [s6Step172ExitGvOut]
    (shrinkRow 776 s6Step172ExitFvExtra) ((shrinkRow 775 s6Step172ExitGvExtra ++ [])) s6Step172ExitFv_Incoming s6Step172ExitFv_checked h3 s6Step172ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step172ExitFBefore s6Step172ExitFAfter s6Step172ExitGvAfter
    s6Step172ExitFRow s6Step172ExitFOut 183 [] [(s6Step172ExitFvRow,100),(s6Step172ExitGvRow,101)] [[],[]] [s6Step172ExitFvOut,s6Step172ExitGvOut]
    (shrinkRow 795 s6Step172ExitFExtra) ((shrinkRow 776 s6Step172ExitFvExtra ++ (shrinkRow 775 s6Step172ExitGvExtra ++ []))) s6Step172ExitF_Incoming s6Step172ExitF_checked h2 s6Step172ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step172ExitGBefore s6Step172ExitGAfter s6Step172ExitGvAfter
    s6Step172ExitGRow s6Step172ExitGOut 183 [] [(s6Step172ExitFRow,183),(s6Step172ExitFvRow,100),(s6Step172ExitGvRow,101)] [[],[],[]] [s6Step172ExitFOut,s6Step172ExitFvOut,s6Step172ExitGvOut]
    (shrinkRow 777 s6Step172ExitGExtra) ((shrinkRow 795 s6Step172ExitFExtra ++ (shrinkRow 776 s6Step172ExitFvExtra ++ (shrinkRow 775 s6Step172ExitGvExtra ++ [])))) s6Step172ExitG_Incoming s6Step172ExitG_checked h1 s6Step172ExitG_Outgoing
  exact h0

private theorem s6Step172ExitBank_checked : compileHmrBankResizeLog .exit s6Step172ExitGBefore ⟨s6Step172ExitFRow,s6Step172ExitGRow,s6Step172ExitFvRow,s6Step172ExitGvRow⟩ ⟨183,183,100,101⟩ [[],[],[],[]]=
    some (s6Step172ExitGvAfter,⟨s6Step172ExitFOut,s6Step172ExitGOut,s6Step172ExitFvOut,s6Step172ExitGvOut⟩,(shrinkRow 777 s6Step172ExitGExtra ++ (shrinkRow 795 s6Step172ExitFExtra ++ (shrinkRow 776 s6Step172ExitFvExtra ++ (shrinkRow 775 s6Step172ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step172ExitBank_rows]
  rfl

private theorem s6Step172Add0_apart : Disjoint s6Step172Add0Arena.live s6Step172Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step172Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172Add0_card : s6Step172Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step172Add0_borrowed : s6Step172Add0Arena.checkBorrow (hmrHybridCount s6Step172Add0Arena s6Step172Add0B.length) s6Step172Add0Work=some s6Step172Add0During := by
  have len : s6Step172Add0Work.length=hmrHybridCount s6Step172Add0Arena s6Step172Add0B.length := by
    rw [hmrHybridCount,s6Step172Add0_card]
    decide +kernel
  have nd : s6Step172Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step172Add0Arena s6Step172Add0During s6Step172Add0Work.toFinset s6Step172Add0_bounded s6Step172Add0_apart rfl

private theorem s6Step172Add0_distinct : (891::886::903::(s6Step172Add0A++s6Step172Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172Add0_owned : (891::886::903::(s6Step172Add0A++s6Step172Add0B)).toFinset⊆s6Step172Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step172Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172Add0_checked : compileHmrHybridCinLog s6Step172Add0Arena 886 891 903 s6Step172Add0A s6Step172Add0B s6Step172Add0Work=some s6Step172Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step172Add0Arena s6Step172Add0During 886 891 903 s6Step172Add0A s6Step172Add0B s6Step172Add0Work
    (by decide +kernel) (by decide +kernel) s6Step172Add0_distinct
    (fun q hq => s6Step172Add0_owned (List.mem_toFinset.mpr hq)) s6Step172Add0_borrowed

private theorem s6Step172Add1_apart : Disjoint s6Step172Add1Arena.live s6Step172Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step172Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172Add1_card : s6Step172Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step172Add1_borrowed : s6Step172Add1Arena.checkBorrow (hmrHybridCount s6Step172Add1Arena s6Step172Add1B.length) s6Step172Add1Work=some s6Step172Add1During := by
  have len : s6Step172Add1Work.length=hmrHybridCount s6Step172Add1Arena s6Step172Add1B.length := by
    rw [hmrHybridCount,s6Step172Add1_card]
    decide +kernel
  have nd : s6Step172Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step172Add1Arena s6Step172Add1During s6Step172Add1Work.toFinset s6Step172Add1_bounded s6Step172Add1_apart rfl

private theorem s6Step172Add1_distinct : (891::886::903::(s6Step172Add1A++s6Step172Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172Add1_owned : (891::886::903::(s6Step172Add1A++s6Step172Add1B)).toFinset⊆s6Step172Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step172Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172Add1_checked : compileHmrHybridCinLog s6Step172Add1Arena 886 891 903 s6Step172Add1A s6Step172Add1B s6Step172Add1Work=some s6Step172Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step172Add1Arena s6Step172Add1During 886 891 903 s6Step172Add1A s6Step172Add1B s6Step172Add1Work
    (by decide +kernel) (by decide +kernel) s6Step172Add1_distinct
    (fun q hq => s6Step172Add1_owned (List.mem_toFinset.mpr hq)) s6Step172Add1_borrowed

private theorem s6Step172F4_apart : Disjoint (s6Step172Add0A++s6Step172Add0B).toFinset (s6Step172Add1A++s6Step172Add1B).toFinset := by
  have nd : ((s6Step172Add0A++s6Step172Add0B)++(s6Step172Add1A++s6Step172Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step172F4_carry : s6Step172F4FlagArena.checkBorrow 1 [903]=some s6Step172Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step172F4FlagArena,s6Step172HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step172F4FlagArena,s6Step172HeadFvAfter,s6Step172Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step172F4_distinct : (803::886::891::903::((s6Step172Add0A++s6Step172Add1A)++(s6Step172Add0B++s6Step172Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172F4_flag : s6Step172HeadFvAfter.checkBorrow 1 [891]=some s6Step172F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step172HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step172F4_owned : (803::886::((s6Step172Add0A++s6Step172Add1A)++(s6Step172Add0B++s6Step172Add1B))).toFinset⊆s6Step172HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step172HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172F4_checked : compileHmrHybridF4Log s6Step172HeadFvAfter 803 886 s6Step172Add0A s6Step172Add0B s6Step172Add1A s6Step172Add1B [891] [903] s6Step172Add0Work s6Step172Add1Work=some s6Step172F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step172HeadFvAfter s6Step172F4FlagArena s6Step172Add0Arena s6Step172Add0During s6Step172Add1During 803 886
    s6Step172Add0A s6Step172Add0B s6Step172Add1A s6Step172Add1B [891] [903] s6Step172Add0Work s6Step172Add1Work
    (fun q hq => s6Step172F4_owned (List.mem_toFinset.mpr hq)) s6Step172F4_flag s6Step172F4_carry
    s6Step172F4_distinct s6Step172F4_apart s6Step172Add0_checked s6Step172Add1_checked

private theorem s6Step172Front_branch : s6Step172FrontSigmaArena.checkBorrow 1 [886]=some s6Step172HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step172FrontSigmaArena,s6Step172EntryGvAfter,arenaWires]
  · change s6Step172HeadGBefore.live=(s6Step172EntryGvAfter.live∪{803})∪{886}
    apply hmrArena_union_pair_of_filter_check s6Step172EntryGvAfter s6Step172HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 803 886 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step172Front_entry : HmrFrontEntryValid s6Step172EntryFBefore s6Step172FrontBank 184 101 ⟨183,183,100,101⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step172FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step172EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step172EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step172FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step172Front_sigma : s6Step172EntryGvAfter.checkBorrow 1 [803]=some s6Step172FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step172EntryGvAfter,arenaWires]
  · rfl

private def s6Step172HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172HeadFBefore : Arena := s6Step172HeadGAfter

private def s6Step172HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439],795⟩

private def s6Step172HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922],776⟩

private def s6Step172HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 863],777⟩

private def s6Step172HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private theorem s6Step172HeadBank_incomingDistinct : ([s6Step172HeadGRow,s6Step172HeadFRow,s6Step172HeadGvRow,s6Step172HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172HeadF_Incoming : rowsOwned s6Step172HeadFBefore [s6Step172HeadFRow,s6Step172HeadGvRow,s6Step172HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172HeadGRow,s6Step172HeadFRow,s6Step172HeadGvRow,s6Step172HeadFvRow] 1 s6Step172HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step172HeadBank_outgoingOwned : rowsOwned s6Step172HeadFvAfter [s6Step172HeadGOut,s6Step172HeadFOut,s6Step172HeadGvOut,s6Step172HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step172HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step172HeadF_Outgoing : rowsOwned s6Step172HeadFvAfter [s6Step172HeadFOut,s6Step172HeadGvOut,s6Step172HeadFvOut] :=
  hmrRows_owned_drop s6Step172HeadFvAfter [s6Step172HeadGOut,s6Step172HeadFOut,s6Step172HeadGvOut,s6Step172HeadFvOut] 1 s6Step172HeadBank_outgoingOwned

private theorem s6Step172HeadF_distinct : (s6Step172HeadFRow.sign::s6Step172HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172HeadF_owned : (s6Step172HeadFRow.sign::s6Step172HeadFRow.payload).toFinset⊆s6Step172HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172HeadF_reserved : s6Step172HeadFBefore.reserve s6Step172HeadFFresh.toFinset=some s6Step172HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step172HeadFFresh,arenaWires]
  · norm_num [s6Step172HeadFBefore,s6Step172HeadGAfter,s6Step172HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step172HeadFAfter,s6Step172HeadFBefore,s6Step172HeadGAfter,s6Step172HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step172HeadF_checked : planRowResizeLog s6Step172HeadFBefore s6Step172HeadFRow 185 s6Step172HeadFFresh=
    some (s6Step172HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 876],795⟩,growRow 795 s6Step172HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step172HeadFBefore s6Step172HeadFAfter s6Step172HeadFRow 185 s6Step172HeadFFresh
    s6Step172HeadF_distinct s6Step172HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step172HeadF_reserved
  have rowEq : WindowRow.mk (s6Step172HeadFRow.payload++s6Step172HeadFFresh) s6Step172HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step172HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step172HeadFvBefore : Arena := s6Step172HeadGvAfter

private theorem s6Step172HeadFv_Incoming : rowsOwned s6Step172HeadFvBefore [s6Step172HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172HeadGRow,s6Step172HeadFRow,s6Step172HeadGvRow,s6Step172HeadFvRow] 3 s6Step172HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step172HeadFv_Outgoing : rowsOwned s6Step172HeadFvAfter [s6Step172HeadFvOut] :=
  hmrRows_owned_drop s6Step172HeadFvAfter [s6Step172HeadGOut,s6Step172HeadFOut,s6Step172HeadGvOut,s6Step172HeadFvOut] 3 s6Step172HeadBank_outgoingOwned

private theorem s6Step172HeadFv_distinct : (s6Step172HeadFvRow.sign::s6Step172HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172HeadFv_owned : (s6Step172HeadFvRow.sign::s6Step172HeadFvRow.payload).toFinset⊆s6Step172HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172HeadFv_reserved : s6Step172HeadFvBefore.reserve s6Step172HeadFvFresh.toFinset=some s6Step172HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step172HeadFvFresh,arenaWires]
  · norm_num [s6Step172HeadFvBefore,s6Step172HeadGvAfter,s6Step172HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step172HeadFvAfter,s6Step172HeadFvBefore,s6Step172HeadGvAfter,s6Step172HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step172HeadFv_checked : planRowResizeLog s6Step172HeadFvBefore s6Step172HeadFvRow 102 s6Step172HeadFvFresh=
    some (s6Step172HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922, 857],776⟩,growRow 776 s6Step172HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step172HeadFvBefore s6Step172HeadFvAfter s6Step172HeadFvRow 102 s6Step172HeadFvFresh
    s6Step172HeadFv_distinct s6Step172HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step172HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step172HeadFvRow.payload++s6Step172HeadFvFresh) s6Step172HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step172HeadG_Incoming : rowsOwned s6Step172HeadGBefore [s6Step172HeadGRow,s6Step172HeadFRow,s6Step172HeadGvRow,s6Step172HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172HeadGRow,s6Step172HeadFRow,s6Step172HeadGvRow,s6Step172HeadFvRow] 0 s6Step172HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step172HeadG_Outgoing : rowsOwned s6Step172HeadFvAfter [s6Step172HeadGOut,s6Step172HeadFOut,s6Step172HeadGvOut,s6Step172HeadFvOut] :=
  hmrRows_owned_drop s6Step172HeadFvAfter [s6Step172HeadGOut,s6Step172HeadFOut,s6Step172HeadGvOut,s6Step172HeadFvOut] 0 s6Step172HeadBank_outgoingOwned

private theorem s6Step172HeadG_distinct : (s6Step172HeadGRow.sign::s6Step172HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172HeadG_owned : (s6Step172HeadGRow.sign::s6Step172HeadGRow.payload).toFinset⊆s6Step172HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172HeadG_reserved : s6Step172HeadGBefore.reserve s6Step172HeadGFresh.toFinset=some s6Step172HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step172HeadGFresh,arenaWires]
  · norm_num [s6Step172HeadGBefore,s6Step172HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step172HeadGAfter,s6Step172HeadGBefore,s6Step172HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step172HeadG_checked : planRowResizeLog s6Step172HeadGBefore s6Step172HeadGRow 185 s6Step172HeadGFresh=
    some (s6Step172HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 863, 890],777⟩,growRow 777 s6Step172HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step172HeadGBefore s6Step172HeadGAfter s6Step172HeadGRow 185 s6Step172HeadGFresh
    s6Step172HeadG_distinct s6Step172HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step172HeadG_reserved
  have rowEq : WindowRow.mk (s6Step172HeadGRow.payload++s6Step172HeadGFresh) s6Step172HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 863, 890],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step172HeadGvBefore : Arena := s6Step172HeadFAfter

private theorem s6Step172HeadGv_Incoming : rowsOwned s6Step172HeadGvBefore [s6Step172HeadGvRow,s6Step172HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step172HeadGRow,s6Step172HeadFRow,s6Step172HeadGvRow,s6Step172HeadFvRow] 2 s6Step172HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step172HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step172HeadGv_Outgoing : rowsOwned s6Step172HeadFvAfter [s6Step172HeadGvOut,s6Step172HeadFvOut] :=
  hmrRows_owned_drop s6Step172HeadFvAfter [s6Step172HeadGOut,s6Step172HeadFOut,s6Step172HeadGvOut,s6Step172HeadFvOut] 2 s6Step172HeadBank_outgoingOwned

private theorem s6Step172HeadGv_distinct : (s6Step172HeadGvRow.sign::s6Step172HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step172HeadGv_owned : (s6Step172HeadGvRow.sign::s6Step172HeadGvRow.payload).toFinset⊆s6Step172HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step172HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step172HeadGv_reserved : s6Step172HeadGvBefore.reserve s6Step172HeadGvFresh.toFinset=some s6Step172HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step172HeadGvFresh,arenaWires]
  · norm_num [s6Step172HeadGvBefore,s6Step172HeadFAfter,s6Step172HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step172HeadGvAfter,s6Step172HeadGvBefore,s6Step172HeadFAfter,s6Step172HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step172HeadGv_checked : planRowResizeLog s6Step172HeadGvBefore s6Step172HeadGvRow 102 s6Step172HeadGvFresh=
    some (s6Step172HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 793],775⟩,growRow 775 s6Step172HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step172HeadGvBefore s6Step172HeadGvAfter s6Step172HeadGvRow 102 s6Step172HeadGvFresh
    s6Step172HeadGv_distinct s6Step172HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step172HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step172HeadGvRow.payload++s6Step172HeadGvFresh) s6Step172HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 793],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step172HeadBank_rows : planWindowRowsLog s6Step172HeadGBefore [(s6Step172HeadGRow,185),(s6Step172HeadFRow,185),(s6Step172HeadGvRow,102),(s6Step172HeadFvRow,102)] [s6Step172HeadGFresh,s6Step172HeadFFresh,s6Step172HeadGvFresh,s6Step172HeadFvFresh]=
    some (s6Step172HeadFvAfter,[s6Step172HeadGOut,s6Step172HeadFOut,s6Step172HeadGvOut,s6Step172HeadFvOut],(growRow 777 s6Step172HeadGFresh ++ (growRow 795 s6Step172HeadFFresh ++ (growRow 775 s6Step172HeadGvFresh ++ (growRow 776 s6Step172HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step172HeadFvAfter [] []=some (s6Step172HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step172HeadFvBefore s6Step172HeadFvAfter s6Step172HeadFvAfter
    s6Step172HeadFvRow s6Step172HeadFvOut 102 s6Step172HeadFvFresh [] [] []
    (growRow 776 s6Step172HeadFvFresh) ([]) s6Step172HeadFv_Incoming s6Step172HeadFv_checked h4 s6Step172HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step172HeadGvBefore s6Step172HeadGvAfter s6Step172HeadFvAfter
    s6Step172HeadGvRow s6Step172HeadGvOut 102 s6Step172HeadGvFresh [(s6Step172HeadFvRow,102)] [s6Step172HeadFvFresh] [s6Step172HeadFvOut]
    (growRow 775 s6Step172HeadGvFresh) ((growRow 776 s6Step172HeadFvFresh ++ [])) s6Step172HeadGv_Incoming s6Step172HeadGv_checked h3 s6Step172HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step172HeadFBefore s6Step172HeadFAfter s6Step172HeadFvAfter
    s6Step172HeadFRow s6Step172HeadFOut 185 s6Step172HeadFFresh [(s6Step172HeadGvRow,102),(s6Step172HeadFvRow,102)] [s6Step172HeadGvFresh,s6Step172HeadFvFresh] [s6Step172HeadGvOut,s6Step172HeadFvOut]
    (growRow 795 s6Step172HeadFFresh) ((growRow 775 s6Step172HeadGvFresh ++ (growRow 776 s6Step172HeadFvFresh ++ []))) s6Step172HeadF_Incoming s6Step172HeadF_checked h2 s6Step172HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step172HeadGBefore s6Step172HeadGAfter s6Step172HeadFvAfter
    s6Step172HeadGRow s6Step172HeadGOut 185 s6Step172HeadGFresh [(s6Step172HeadFRow,185),(s6Step172HeadGvRow,102),(s6Step172HeadFvRow,102)] [s6Step172HeadFFresh,s6Step172HeadGvFresh,s6Step172HeadFvFresh] [s6Step172HeadFOut,s6Step172HeadGvOut,s6Step172HeadFvOut]
    (growRow 777 s6Step172HeadGFresh) ((growRow 795 s6Step172HeadFFresh ++ (growRow 775 s6Step172HeadGvFresh ++ (growRow 776 s6Step172HeadFvFresh ++ [])))) s6Step172HeadG_Incoming s6Step172HeadG_checked h1 s6Step172HeadG_Outgoing
  exact h0

private theorem s6Step172HeadBank_checked : compileHmrBankResizeLog .headroom s6Step172HeadGBefore ⟨s6Step172HeadFRow,s6Step172HeadGRow,s6Step172HeadFvRow,s6Step172HeadGvRow⟩ ⟨185,185,102,102⟩ [s6Step172HeadGFresh,s6Step172HeadFFresh,s6Step172HeadGvFresh,s6Step172HeadFvFresh]=
    some (s6Step172HeadFvAfter,⟨s6Step172HeadFOut,s6Step172HeadGOut,s6Step172HeadFvOut,s6Step172HeadGvOut⟩,(growRow 777 s6Step172HeadGFresh ++ (growRow 795 s6Step172HeadFFresh ++ (growRow 775 s6Step172HeadGvFresh ++ (growRow 776 s6Step172HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step172HeadBank_rows]
  rfl

private theorem s6Step172Front_checked : compileHmrSourceFrontLog s6Step172EntryFBefore s6Step172FrontBank 184 101 ⟨183,183,100,101⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step172FrontLog=some s6Step172FrontPlan := by
  have pairEq : s6Step172FrontPair=⟨s6Step172HeadFRow,s6Step172HeadGRow,s6Step172HeadFvRow,s6Step172HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step172FrontHead=⟨s6Step172ExitFRow,s6Step172ExitGRow,s6Step172ExitFvRow,s6Step172ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step172Add0A=s6Step172FrontHead.f.wires := by decide +kernel
  have gEq : s6Step172Add0B=s6Step172FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step172Add1A=s6Step172FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step172Add1B=s6Step172FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step172EntryFBefore s6Step172FrontBank 184 101 ⟨183,183,100,101⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step172FrontLog s6Step172FrontPlan
  · exact s6Step172Front_entry
  · exact s6Step172EntryBank_checked
  · exact s6Step172Front_sigma
  · rfl
  · exact s6Step172Front_branch
  · rfl
  · simpa only [s6Step172FrontPlan,pairEq] using s6Step172HeadBank_checked
  · simpa only [s6Step172FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step172F4_checked
  · exact s6Step172Counter_checked
  · rfl
  · simpa only [s6Step172FrontPlan,headEq] using s6Step172ExitBank_checked

private theorem s6Step172Complete_explicit_checked : compileHmrEarlyStepLog s6Step172EntryFBefore s6Step172FrontBank 184 101 ⟨183,183,100,101⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step172CompleteLog=some s6Step172CompletePlan := by
  let Q := s6Step172EarlyControlPlan
  have hq := s6Step172EarlyControl_plan_checked
  have fv1 : s6Step172CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step172CompleteOut.fv.payload[2]?.getD s6Step172CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step172CompleteOut.fv.payload[3]?.getD s6Step172CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step172CompleteOut.fv.payload[4]?.getD s6Step172CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step172EntryFBefore s6Step172EarlyControlArena s6Step172FrontBank 184 101 ⟨183,183,100,101⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step172CompleteLog s6Step172FrontPlan Q
    s6Step172Front_checked s6Step172Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step172Complete_owned s6Step172Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step172EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 s6Step172CompleteOut.fv.second (s6Step172CompleteOut.fv.payload[2]?.getD s6Step172CompleteOut.fv.sign) (s6Step172CompleteOut.fv.payload[3]?.getD s6Step172CompleteOut.fv.sign) (s6Step172CompleteOut.fv.payload[4]?.getD s6Step172CompleteOut.fv.sign) 886 42 s6Step172EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep172Arena : Arena := s6Step172EntryFBefore
def s6PrivateStep172Bank : WindowBank := s6Step172FrontBank
def s6PrivateStep172Spec : HmrSourceWalkStepLog := ⟨184,101,⟨183,183,100,101⟩,42,.early s6Step172CompleteLog⟩
def s6PrivateStep172Plan : HmrSourceStepPlan := .early s6Step172CompletePlan
theorem s6PrivateStep172_source : s6PrivateStep172Spec=s6ObservedLogs160[12] := rfl
theorem s6PrivateStep172_checked : compileHmrSourceStepLog s6PrivateStep172Arena s6PrivateStep172Bank
    s6PrivateStep172Spec.fgWidth s6PrivateStep172Spec.vWidth s6PrivateStep172Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 172 s6PrivateStep172Spec.need none s6PrivateStep172Spec.log=some s6PrivateStep172Plan := by
  change compileHmrSourceStepLog s6Step172EntryFBefore s6Step172FrontBank 184 101 ⟨183,183,100,101⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 172 42 none (.early s6Step172CompleteLog)=some (.early s6Step172CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 172<498)]
  rw [s6Step172Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
