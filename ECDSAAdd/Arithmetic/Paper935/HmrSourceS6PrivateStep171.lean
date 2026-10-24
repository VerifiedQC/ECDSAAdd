import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep169
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

private def s6Step171CompleteMoves : List (Wire × Wire) := [(803,183),(823,440)]

private def s6Step171EarlyControlLog : HmrEarlyControlLog := ⟨[823, 803, 886, 890, 876],[793],[857],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step171FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [793], [], [886]],[[857], [876], [890], [922]],[[], [], [], []]⟩,[864],[863],[891],[903],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step171CompleteLog : HmrEarlyStepLog := ⟨s6Step171FrontLog,s6Step171CompleteMoves,s6Step171EarlyControlLog⟩

private def s6Step171ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439],795⟩

private def s6Step171ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922],776⟩

private def s6Step171ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],777⟩

private def s6Step171ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩

private def s6Step171FrontOut : WindowBank := ⟨s6Step171ExitFOut,s6Step171ExitGOut,s6Step171ExitFvOut,s6Step171ExitGvOut⟩

private def s6Step171CompleteOut : WindowBank := s6Step171FrontOut.repacked s6Step171CompleteMoves

private def s6Step171EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step171EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step171EarlyControlPositiveArena,[793],s6Step171EarlyControlEqualityArena,[857],⟨⟨864,false⟩,[⟨⟨793,false⟩,857⟩]⟩⟩

private def s6Step171EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step171EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step171EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,864),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step171EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,823⟩,⟨⟨772,false⟩,803⟩,⟨⟨771,false⟩,886⟩,⟨⟨770,false⟩,890⟩,⟨⟨769,false⟩,876⟩]⟩

private def s6Step171EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step171EarlyControlZeroArena,s6Step171EarlyControlZeroPlan,s6Step171EarlyControlClassPlan,s6Step171EarlyControlFlagArena,s6Step171EarlyControlFittedArena,s6Step171EarlyControlHistoryArena,s6Step171EarlyControlSigmaArena,s6Step171EarlyControlOutputArena,s6Step171EarlyControlLog⟩

private def s6Step171CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step171Counter_bounded : s6Step171CounterWork.toFinset⊆arenaWires := by norm_num [s6Step171CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step171HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171CounterDuring : Arena := ⟨s6Step171HeadFvAfter.live∪s6Step171CounterWork.toFinset,Finset.union_subset s6Step171HeadFvAfter.bounded s6Step171Counter_bounded⟩

private def s6Step171EntryFFresh : List Wire := []

private def s6Step171EntryFvFresh : List Wire := []

private def s6Step171EntryGFresh : List Wire := [793]

private def s6Step171EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step171EntryGvFresh : List Wire := [886]

private def s6Step171ExitFExtra : List Wire := [440, 876]

private def s6Step171ExitGExtra : List Wire := [183, 793, 857]

private def s6Step171ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,183),(184,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step171ExitGvExtra : List Wire := [886, 890]

private def s6Step171Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171Add0Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step171Add0_bounded : s6Step171Add0Work.toFinset⊆arenaWires := by
  have h : s6Step171Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step171Add0During : Arena := ⟨s6Step171Add0Arena.live∪s6Step171Add0Work.toFinset,Finset.union_subset s6Step171Add0Arena.bounded s6Step171Add0_bounded⟩

private def s6Step171Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171Add1Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step171Add1_bounded : s6Step171Add1Work.toFinset⊆arenaWires := by
  have h : s6Step171Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step171Add1During : Arena := ⟨s6Step171Add1Arena.live∪s6Step171Add1Work.toFinset,Finset.union_subset s6Step171Add1Arena.bounded s6Step171Add1_bounded⟩

private def s6Step171F4FlagArena : Arena := ⟨s6Step171HeadFvAfter.live∪{891},Finset.union_subset s6Step171HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step171F4Plan : HmrHybridF4Plan := ⟨s6Step171F4FlagArena,[891],s6Step171Add0Arena,[903],s6Step171Add0During,s6Step171Add0Work,s6Step171Add1During,s6Step171Add1Work⟩

private def s6Step171HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 876],795⟩

private def s6Step171HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922],776⟩

private def s6Step171HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 793, 857],777⟩

private def s6Step171HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 886, 890],775⟩

private def s6Step171FrontHead : WindowBank := ⟨s6Step171HeadFOut,s6Step171HeadGOut,s6Step171HeadFvOut,s6Step171HeadGvOut⟩

private def s6Step171EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩

private def s6Step171EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩

private def s6Step171EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 793],777⟩

private def s6Step171EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 886],775⟩

private def s6Step171FrontPair : WindowBank := ⟨s6Step171EntryFOut,s6Step171EntryGOut,s6Step171EntryFvOut,s6Step171EntryGvOut⟩

private def s6Step171FrontSigmaArena : Arena := ⟨s6Step171EntryGvAfter.live∪{864},Finset.union_subset s6Step171EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step171HeadFFresh : List Wire := [876]

private def s6Step171HeadFvFresh : List Wire := [922]

private def s6Step171HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171HeadGFresh : List Wire := [857]

private def s6Step171HeadGvFresh : List Wire := [890]

private def s6Step171FrontPlan : HmrSourceFront := ⟨s6Step171EntryGvAfter,s6Step171FrontPair,(growRow 795 s6Step171EntryFFresh ++ (growRow 777 s6Step171EntryGFresh ++ (growRow 776 s6Step171EntryFvFresh ++ (growRow 775 s6Step171EntryGvFresh ++ [])))),s6Step171FrontSigmaArena,[864],s6Step171HeadGBefore,[863],
  s6Step171HeadFvAfter,s6Step171FrontHead,(growRow 777 s6Step171HeadGFresh ++ (growRow 795 s6Step171HeadFFresh ++ (growRow 775 s6Step171HeadGvFresh ++ (growRow 776 s6Step171HeadFvFresh ++ [])))),s6Step171F4Plan,s6Step171CounterDuring,s6Step171CounterWork,s6Step171ExitGvAfter,s6Step171FrontOut,(shrinkRow 777 s6Step171ExitGExtra ++ (shrinkRow 795 s6Step171ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step171ExitGvExtra ++ []))))⟩

private def s6Step171CompletePlan : HmrEarlyStepPlan := ⟨s6Step171FrontPlan,s6Step171EarlyControlArena,s6Step171EarlyControlPlan,s6Step171CompleteMoves⟩

private theorem s6Step171Complete_apart : List.Disjoint (s6Step171CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [864, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step171CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[864, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step171Complete_owned : (s6Step171CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step171EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step171CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step171CompleteRelocationMove0Borrowed : Arena := ⟨s6Step171ExitGvAfter.live∪{183},Finset.union_subset s6Step171ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step171CompleteRelocationMove1Borrowed : Arena := ⟨s6Step171CompleteRelocationMove0After.live∪{440},Finset.union_subset s6Step171CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step171CompleteRelocation_move0_owned : 803∈s6Step171ExitGvAfter.live := by norm_num [s6Step171ExitGvAfter,arenaWires]

private theorem s6Step171CompleteRelocation_move0_reserve : s6Step171ExitGvAfter.reserve {183}=some s6Step171CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step171ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step171CompleteRelocation_move0_retire : s6Step171CompleteRelocationMove0Borrowed.retireSet {803}=s6Step171CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step171CompleteRelocationMove0Borrowed s6Step171CompleteRelocationMove0After {803}
  change s6Step171CompleteRelocationMove0After.live=(s6Step171ExitGvAfter.live∪{183})\{803}
  apply hmrArena_update_of_filter_check s6Step171ExitGvAfter s6Step171CompleteRelocationMove0After (fun q => ([(0,183),(184,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [183] [803] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step171CompleteRelocation_move1_owned : 823∈s6Step171CompleteRelocationMove0After.live := by norm_num [s6Step171CompleteRelocationMove0After,arenaWires]

private theorem s6Step171CompleteRelocation_move1_reserve : s6Step171CompleteRelocationMove0After.reserve {440}=some s6Step171CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step171CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step171CompleteRelocation_move1_retire : s6Step171CompleteRelocationMove1Borrowed.retireSet {823}=s6Step171EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step171CompleteRelocationMove1Borrowed s6Step171EarlyControlArena {823}
  change s6Step171EarlyControlArena.live=(s6Step171CompleteRelocationMove0After.live∪{440})\{823}
  apply hmrArena_update_of_filter_check s6Step171CompleteRelocationMove0After s6Step171EarlyControlArena (fun q => ([(0,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [440] [823] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step171CompleteRelocation_checked : s6Step171ExitGvAfter.checkRepack [(803,183),(823,440)]=some s6Step171EarlyControlArena := by
  have tail2 : s6Step171EarlyControlArena.checkRepack []=some s6Step171EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step171CompleteRelocationMove0After s6Step171CompleteRelocationMove1Borrowed s6Step171EarlyControlArena s6Step171EarlyControlArena 823 440 []
    s6Step171CompleteRelocation_move1_owned s6Step171CompleteRelocation_move1_reserve s6Step171CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step171ExitGvAfter s6Step171CompleteRelocationMove0Borrowed s6Step171CompleteRelocationMove0After s6Step171EarlyControlArena 803 183 [(823,440)]
    s6Step171CompleteRelocation_move0_owned s6Step171CompleteRelocation_move0_reserve s6Step171CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step171Complete_repack : s6Step171ExitGvAfter.checkRepack s6Step171CompleteMoves=some s6Step171EarlyControlArena := by
  simpa only [s6Step171CompleteMoves] using s6Step171CompleteRelocation_checked

private theorem s6Step171EarlyControl_branchOwned : ([863] : List Wire).toFinset⊆s6Step171EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,864),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171EarlyControl_branch : compileHmrBranchRetirement s6Step171EarlyControlSigmaArena 863=some s6Step171EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step171EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step171EarlyControlSigmaArena s6Step171EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,864),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [863] rfl rfl
    decide +kernel

private theorem s6Step171EarlyControl_classEqualityBorrow : s6Step171EarlyControlPositiveArena.checkBorrow (([864, 793] : List Wire).length-1) s6Step171EarlyControlLog.classWork=some s6Step171EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step171EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step171EarlyControlEqualityArena,s6Step171EarlyControlPositiveArena,s6Step171EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step171EarlyControl_classEqualityOwned : ([864, 793] : List Wire).toFinset⊆s6Step171EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171EarlyControl_classEquality : compileHmrEqualityLog s6Step171EarlyControlPositiveArena [864, 793] 0 s6Step171EarlyControlLog.classWork=some (s6Step171EarlyControlEqualityArena,s6Step171EarlyControlLog.classWork,s6Step171EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step171EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step171EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step171EarlyControl_classOwned : ([769, 876, 864] : List Wire).toFinset⊆s6Step171EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171EarlyControl_positiveBorrow : s6Step171EarlyControlZeroArena.checkBorrow (1) s6Step171EarlyControlLog.positiveWork=some s6Step171EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step171EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step171EarlyControlPositiveArena,s6Step171EarlyControlZeroArena,s6Step171EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step171EarlyControl_class : compileHmrSourceClassLog s6Step171EarlyControlZeroArena false 769 s6Step171EarlyControlZeroPlan.top 0 864 s6Step171EarlyControlLog.positiveWork s6Step171EarlyControlLog.classWork=some s6Step171EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step171EarlyControlClassPlan s6Step171EarlyControlZeroArena false 769 s6Step171EarlyControlZeroPlan.top 0 864
  constructor
  · decide +kernel
  · exact s6Step171EarlyControl_classOwned
  · exact s6Step171EarlyControl_positiveBorrow
  · exact s6Step171EarlyControl_classEquality

private theorem s6Step171EarlyControl_entryRecordOwned : ([863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step171EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171EarlyControl_entrySigmaOwned : ([864, 254] : List Wire).toFinset⊆s6Step171EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171EarlyControl_fitBorrow : s6Step171EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step171EarlyControlLog.recordFresh=some s6Step171EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step171EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step171EarlyControlFittedArena,s6Step171EarlyControlFlagArena,s6Step171EarlyControlLog,arenaWires]

private theorem s6Step171EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step171EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171EarlyControl_fit : compileHmrRecordGrowLog s6Step171EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step171EarlyControlLog.recordFresh=some s6Step171EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step171EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step171EarlyControl_fitBorrow

private theorem s6Step171EarlyControl_flagsBorrow : s6Step171EarlyControlEqualityArena.checkBorrow (6) s6Step171EarlyControlLog.flagWork=some s6Step171EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step171EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step171EarlyControlFlagArena,s6Step171EarlyControlEqualityArena,s6Step171EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step171EarlyControl_flagsOwned : ([857, 253, 252, 251] : List Wire).toFinset⊆s6Step171EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171EarlyControl_flags : compileHmrFlagsLog s6Step171EarlyControlClassPlan.equalityArena s6Step171EarlyControlClassPlan.equality.top 253 252 251 s6Step171EarlyControlLog.flagWork=some s6Step171EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step171EarlyControl_flagsOwned⟩
  · exact s6Step171EarlyControl_flagsBorrow

private theorem s6Step171EarlyControl_historyBorrow : s6Step171EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step171EarlyControlLog.recordFresh=some s6Step171EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step171EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step171EarlyControlArena s6Step171EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step171EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step171EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step171EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171EarlyControl_history : compileHmrRecordGrowLog s6Step171EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step171EarlyControlLog.recordFresh=some s6Step171EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step171EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step171EarlyControl_historyBorrow

private theorem s6Step171EarlyControl_sigmaOwned : ([254, 864] : List Wire).toFinset⊆s6Step171EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171EarlyControl_sigmaReleaseOwned : ([864] : List Wire).toFinset⊆s6Step171EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171EarlyControl_sigmaRelease : s6Step171EarlyControlHistoryArena.release {864} (fun _ => false)=some s6Step171EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step171EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step171EarlyControlHistoryArena s6Step171EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,864),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [864] rfl rfl
    decide +kernel

private theorem s6Step171EarlyControl_sigma : compileHmrSigmaDropLog s6Step171EarlyControlHistoryArena false 0 0 254 864 []=some s6Step171EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step171EarlyControl_sigmaOwned⟩
  · exact s6Step171EarlyControl_sigmaRelease

private theorem s6Step171EarlyControl_zeroBorrow : s6Step171EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step171EarlyControlLog.zeroWork=some s6Step171EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step171EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step171EarlyControlArena s6Step171EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step171EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step171EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step171EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step171EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step171EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,823),(824,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171EarlyControl_zero : compileHmrEqualityLog s6Step171EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step171EarlyControlLog.zeroWork=some (s6Step171EarlyControlZeroArena,s6Step171EarlyControlLog.zeroWork,s6Step171EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step171EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step171EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step171EarlyControl_logged : s6Step171EarlyControlPlan.Logged s6Step171EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 864 254 253 252 251 863 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step171EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step171EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step171EarlyControl_zero
  · exact s6Step171EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step171EarlyControl_flags
  · exact s6Step171EarlyControl_fit
  · exact s6Step171EarlyControl_history
  · exact s6Step171EarlyControl_sigma
  · exact s6Step171EarlyControl_branch

private theorem s6Step171EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step171EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 864 254 253 252 251 863 42 s6Step171EarlyControlLog=some s6Step171EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step171EarlyControlPlan s6Step171EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 864 254 253 252 251 863 42 s6Step171EarlyControl_logged

private def s6Step171EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step171EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩

private def s6Step171EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩

private def s6Step171EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183],777⟩

private def s6Step171EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩

private def s6Step171FrontBank : WindowBank := ⟨s6Step171EntryFRow,s6Step171EntryGRow,s6Step171EntryFvRow,s6Step171EntryGvRow⟩

private def s6Step171Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 876, 795]

private def s6Step171Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 793, 857, 777]

private def s6Step171Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922, 776]

private def s6Step171Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 886, 890, 775]

private theorem s6Step171Counter_apart : Disjoint s6Step171HeadFvAfter.live s6Step171CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step171HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171Counter_borrowed : s6Step171HeadFvAfter.checkBorrow 4 s6Step171CounterWork=some s6Step171CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step171HeadFvAfter s6Step171CounterDuring s6Step171CounterWork.toFinset s6Step171Counter_bounded s6Step171Counter_apart rfl

private theorem s6Step171Counter_owned : (864::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step171HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step171HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171Counter_checked : compileHmrCounterStepLog s6Step171HeadFvAfter true 864 [774, 773, 772, 771, 770, 769] s6Step171CounterWork=some s6Step171CounterDuring := by
  have owned : ∀q∈864::[774, 773, 772, 771, 770, 769],q∈s6Step171HeadFvAfter.live := fun q hq => s6Step171Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step171Counter_borrowed

private def s6Step171EntryFAfter : Arena := s6Step171EntryFBefore

private theorem s6Step171EntryBank_incomingDistinct : ([s6Step171EntryFRow,s6Step171EntryGRow,s6Step171EntryFvRow,s6Step171EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171EntryF_Incoming : rowsOwned s6Step171EntryFBefore [s6Step171EntryFRow,s6Step171EntryGRow,s6Step171EntryFvRow,s6Step171EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171EntryFRow,s6Step171EntryGRow,s6Step171EntryFvRow,s6Step171EntryGvRow] 0 s6Step171EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step171EntryBank_outgoingOwned : rowsOwned s6Step171EntryGvAfter [s6Step171EntryFOut,s6Step171EntryGOut,s6Step171EntryFvOut,s6Step171EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step171EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step171EntryF_Outgoing : rowsOwned s6Step171EntryGvAfter [s6Step171EntryFOut,s6Step171EntryGOut,s6Step171EntryFvOut,s6Step171EntryGvOut] :=
  hmrRows_owned_drop s6Step171EntryGvAfter [s6Step171EntryFOut,s6Step171EntryGOut,s6Step171EntryFvOut,s6Step171EntryGvOut] 0 s6Step171EntryBank_outgoingOwned

private theorem s6Step171EntryF_distinct : (s6Step171EntryFRow.sign::s6Step171EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171EntryF_owned : (s6Step171EntryFRow.sign::s6Step171EntryFRow.payload).toFinset⊆s6Step171EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171EntryF_reserved : s6Step171EntryFBefore.reserve s6Step171EntryFFresh.toFinset=some s6Step171EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step171EntryFFresh,arenaWires]
  · norm_num [s6Step171EntryFBefore,s6Step171EntryFFresh,arenaWires]
  · simp only [s6Step171EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step171EntryF_checked : planRowResizeLog s6Step171EntryFBefore s6Step171EntryFRow 185 s6Step171EntryFFresh=
    some (s6Step171EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩,growRow 795 s6Step171EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step171EntryFBefore s6Step171EntryFAfter s6Step171EntryFRow 185 s6Step171EntryFFresh
    s6Step171EntryF_distinct s6Step171EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step171EntryF_reserved
  have rowEq : WindowRow.mk (s6Step171EntryFRow.payload++s6Step171EntryFFresh) s6Step171EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step171EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step171EntryFvAfter : Arena := s6Step171EntryGAfter

private def s6Step171EntryFvBefore : Arena := s6Step171EntryGAfter

private theorem s6Step171EntryFv_Incoming : rowsOwned s6Step171EntryFvBefore [s6Step171EntryFvRow,s6Step171EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171EntryFRow,s6Step171EntryGRow,s6Step171EntryFvRow,s6Step171EntryGvRow] 2 s6Step171EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step171EntryFv_Outgoing : rowsOwned s6Step171EntryGvAfter [s6Step171EntryFvOut,s6Step171EntryGvOut] :=
  hmrRows_owned_drop s6Step171EntryGvAfter [s6Step171EntryFOut,s6Step171EntryGOut,s6Step171EntryFvOut,s6Step171EntryGvOut] 2 s6Step171EntryBank_outgoingOwned

private theorem s6Step171EntryFv_distinct : (s6Step171EntryFvRow.sign::s6Step171EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171EntryFv_owned : (s6Step171EntryFvRow.sign::s6Step171EntryFvRow.payload).toFinset⊆s6Step171EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171EntryFv_reserved : s6Step171EntryFvBefore.reserve s6Step171EntryFvFresh.toFinset=some s6Step171EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step171EntryFvFresh,arenaWires]
  · norm_num [s6Step171EntryFvBefore,s6Step171EntryGAfter,s6Step171EntryFvFresh,arenaWires]
  · simp only [s6Step171EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step171EntryFv_checked : planRowResizeLog s6Step171EntryFvBefore s6Step171EntryFvRow 100 s6Step171EntryFvFresh=
    some (s6Step171EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩,growRow 776 s6Step171EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step171EntryFvBefore s6Step171EntryFvAfter s6Step171EntryFvRow 100 s6Step171EntryFvFresh
    s6Step171EntryFv_distinct s6Step171EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step171EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step171EntryFvRow.payload++s6Step171EntryFvFresh) s6Step171EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step171EntryGBefore : Arena := s6Step171EntryFBefore

private theorem s6Step171EntryG_Incoming : rowsOwned s6Step171EntryGBefore [s6Step171EntryGRow,s6Step171EntryFvRow,s6Step171EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171EntryFRow,s6Step171EntryGRow,s6Step171EntryFvRow,s6Step171EntryGvRow] 1 s6Step171EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step171EntryG_Outgoing : rowsOwned s6Step171EntryGvAfter [s6Step171EntryGOut,s6Step171EntryFvOut,s6Step171EntryGvOut] :=
  hmrRows_owned_drop s6Step171EntryGvAfter [s6Step171EntryFOut,s6Step171EntryGOut,s6Step171EntryFvOut,s6Step171EntryGvOut] 1 s6Step171EntryBank_outgoingOwned

private theorem s6Step171EntryG_distinct : (s6Step171EntryGRow.sign::s6Step171EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171EntryG_owned : (s6Step171EntryGRow.sign::s6Step171EntryGRow.payload).toFinset⊆s6Step171EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171EntryG_reserved : s6Step171EntryGBefore.reserve s6Step171EntryGFresh.toFinset=some s6Step171EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step171EntryGFresh,arenaWires]
  · norm_num [s6Step171EntryGBefore,s6Step171EntryFBefore,s6Step171EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step171EntryGBefore s6Step171EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step171EntryGFresh rfl rfl
    · norm_num [s6Step171EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step171EntryG_checked : planRowResizeLog s6Step171EntryGBefore s6Step171EntryGRow 185 s6Step171EntryGFresh=
    some (s6Step171EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 793],777⟩,growRow 777 s6Step171EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step171EntryGBefore s6Step171EntryGAfter s6Step171EntryGRow 185 s6Step171EntryGFresh
    s6Step171EntryG_distinct s6Step171EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step171EntryG_reserved
  have rowEq : WindowRow.mk (s6Step171EntryGRow.payload++s6Step171EntryGFresh) s6Step171EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 793],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step171EntryGvBefore : Arena := s6Step171EntryGAfter

private theorem s6Step171EntryGv_Incoming : rowsOwned s6Step171EntryGvBefore [s6Step171EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171EntryFRow,s6Step171EntryGRow,s6Step171EntryFvRow,s6Step171EntryGvRow] 3 s6Step171EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step171EntryGv_Outgoing : rowsOwned s6Step171EntryGvAfter [s6Step171EntryGvOut] :=
  hmrRows_owned_drop s6Step171EntryGvAfter [s6Step171EntryFOut,s6Step171EntryGOut,s6Step171EntryFvOut,s6Step171EntryGvOut] 3 s6Step171EntryBank_outgoingOwned

private theorem s6Step171EntryGv_distinct : (s6Step171EntryGvRow.sign::s6Step171EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171EntryGv_owned : (s6Step171EntryGvRow.sign::s6Step171EntryGvRow.payload).toFinset⊆s6Step171EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171EntryGv_reserved : s6Step171EntryGvBefore.reserve s6Step171EntryGvFresh.toFinset=some s6Step171EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step171EntryGvFresh,arenaWires]
  · norm_num [s6Step171EntryGvBefore,s6Step171EntryGAfter,s6Step171EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step171EntryGvBefore s6Step171EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step171EntryGvFresh rfl rfl
    · norm_num [s6Step171EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step171EntryGv_checked : planRowResizeLog s6Step171EntryGvBefore s6Step171EntryGvRow 100 s6Step171EntryGvFresh=
    some (s6Step171EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 886],775⟩,growRow 775 s6Step171EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step171EntryGvBefore s6Step171EntryGvAfter s6Step171EntryGvRow 100 s6Step171EntryGvFresh
    s6Step171EntryGv_distinct s6Step171EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step171EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step171EntryGvRow.payload++s6Step171EntryGvFresh) s6Step171EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 886],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step171EntryBank_rows : planWindowRowsLog s6Step171EntryFBefore [(s6Step171EntryFRow,185),(s6Step171EntryGRow,185),(s6Step171EntryFvRow,100),(s6Step171EntryGvRow,100)] [s6Step171EntryFFresh,s6Step171EntryGFresh,s6Step171EntryFvFresh,s6Step171EntryGvFresh]=
    some (s6Step171EntryGvAfter,[s6Step171EntryFOut,s6Step171EntryGOut,s6Step171EntryFvOut,s6Step171EntryGvOut],(growRow 795 s6Step171EntryFFresh ++ (growRow 777 s6Step171EntryGFresh ++ (growRow 776 s6Step171EntryFvFresh ++ (growRow 775 s6Step171EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step171EntryGvAfter [] []=some (s6Step171EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step171EntryGvBefore s6Step171EntryGvAfter s6Step171EntryGvAfter
    s6Step171EntryGvRow s6Step171EntryGvOut 100 s6Step171EntryGvFresh [] [] []
    (growRow 775 s6Step171EntryGvFresh) ([]) s6Step171EntryGv_Incoming s6Step171EntryGv_checked h4 s6Step171EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step171EntryFvBefore s6Step171EntryFvAfter s6Step171EntryGvAfter
    s6Step171EntryFvRow s6Step171EntryFvOut 100 s6Step171EntryFvFresh [(s6Step171EntryGvRow,100)] [s6Step171EntryGvFresh] [s6Step171EntryGvOut]
    (growRow 776 s6Step171EntryFvFresh) ((growRow 775 s6Step171EntryGvFresh ++ [])) s6Step171EntryFv_Incoming s6Step171EntryFv_checked h3 s6Step171EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step171EntryGBefore s6Step171EntryGAfter s6Step171EntryGvAfter
    s6Step171EntryGRow s6Step171EntryGOut 185 s6Step171EntryGFresh [(s6Step171EntryFvRow,100),(s6Step171EntryGvRow,100)] [s6Step171EntryFvFresh,s6Step171EntryGvFresh] [s6Step171EntryFvOut,s6Step171EntryGvOut]
    (growRow 777 s6Step171EntryGFresh) ((growRow 776 s6Step171EntryFvFresh ++ (growRow 775 s6Step171EntryGvFresh ++ []))) s6Step171EntryG_Incoming s6Step171EntryG_checked h2 s6Step171EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step171EntryFBefore s6Step171EntryFAfter s6Step171EntryGvAfter
    s6Step171EntryFRow s6Step171EntryFOut 185 s6Step171EntryFFresh [(s6Step171EntryGRow,185),(s6Step171EntryFvRow,100),(s6Step171EntryGvRow,100)] [s6Step171EntryGFresh,s6Step171EntryFvFresh,s6Step171EntryGvFresh] [s6Step171EntryGOut,s6Step171EntryFvOut,s6Step171EntryGvOut]
    (growRow 795 s6Step171EntryFFresh) ((growRow 777 s6Step171EntryGFresh ++ (growRow 776 s6Step171EntryFvFresh ++ (growRow 775 s6Step171EntryGvFresh ++ [])))) s6Step171EntryF_Incoming s6Step171EntryF_checked h1 s6Step171EntryF_Outgoing
  exact h0

private theorem s6Step171EntryBank_checked : compileHmrBankResizeLog .entry s6Step171EntryFBefore ⟨s6Step171EntryFRow,s6Step171EntryGRow,s6Step171EntryFvRow,s6Step171EntryGvRow⟩ ⟨185,185,100,100⟩ [s6Step171EntryFFresh,s6Step171EntryGFresh,s6Step171EntryFvFresh,s6Step171EntryGvFresh]=
    some (s6Step171EntryGvAfter,⟨s6Step171EntryFOut,s6Step171EntryGOut,s6Step171EntryFvOut,s6Step171EntryGvOut⟩,(growRow 795 s6Step171EntryFFresh ++ (growRow 777 s6Step171EntryGFresh ++ (growRow 776 s6Step171EntryFvFresh ++ (growRow 775 s6Step171EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step171EntryBank_rows]
  rfl

private def s6Step171ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,183),(184,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step171ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171ExitFBefore : Arena := s6Step171ExitGAfter

private def s6Step171ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 876],795⟩

private def s6Step171ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922],776⟩

private def s6Step171ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 793, 857],777⟩

private def s6Step171ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 886, 890],775⟩

private theorem s6Step171ExitBank_incomingDistinct : ([s6Step171ExitGRow,s6Step171ExitFRow,s6Step171ExitFvRow,s6Step171ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171ExitF_Incoming : rowsOwned s6Step171ExitFBefore [s6Step171ExitFRow,s6Step171ExitFvRow,s6Step171ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171ExitGRow,s6Step171ExitFRow,s6Step171ExitFvRow,s6Step171ExitGvRow] 1 s6Step171ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171ExitFBefore (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step171ExitBank_outgoingOwned : rowsOwned s6Step171ExitGvAfter [s6Step171ExitGOut,s6Step171ExitFOut,s6Step171ExitFvOut,s6Step171ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step171ExitGvAfter (fun q => ([(0,183),(184,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step171ExitF_Outgoing : rowsOwned s6Step171ExitGvAfter [s6Step171ExitFOut,s6Step171ExitFvOut,s6Step171ExitGvOut] :=
  hmrRows_owned_drop s6Step171ExitGvAfter [s6Step171ExitGOut,s6Step171ExitFOut,s6Step171ExitFvOut,s6Step171ExitGvOut] 1 s6Step171ExitBank_outgoingOwned

private theorem s6Step171ExitF_distinct : (s6Step171ExitFRow.sign::s6Step171ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171ExitF_owned : (s6Step171ExitFRow.sign::s6Step171ExitFRow.payload).toFinset⊆s6Step171ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171ExitFBefore (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171ExitF_retired : s6Step171ExitFBefore.retireSet s6Step171ExitFExtra.toFinset=s6Step171ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step171ExitFBefore s6Step171ExitFAfter s6Step171ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step171ExitFBefore s6Step171ExitFAfter (fun q => (0≤q ∧ q<183) ∨ (184≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,183),(184,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step171ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step171ExitF_checked : planRowResizeLog s6Step171ExitFBefore s6Step171ExitFRow 184 []=
    some (s6Step171ExitFAfter,s6Step171ExitFOut,shrinkRow 795 s6Step171ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step171ExitFBefore s6Step171ExitFRow 184 s6Step171ExitF_distinct s6Step171ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step171ExitFRow.payload.take 184) s6Step171ExitFRow.sign=s6Step171ExitFOut := by decide +kernel
  have hi : s6Step171ExitFRow.payload.drop 184=s6Step171ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step171ExitF_retired] at result
  exact result

private def s6Step171ExitFvAfter : Arena := s6Step171ExitFAfter

private def s6Step171ExitFvBefore : Arena := s6Step171ExitFAfter

private theorem s6Step171ExitFv_Incoming : rowsOwned s6Step171ExitFvBefore [s6Step171ExitFvRow,s6Step171ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171ExitGRow,s6Step171ExitFRow,s6Step171ExitFvRow,s6Step171ExitGvRow] 2 s6Step171ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171ExitFvBefore (fun q => ([(0,183),(184,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step171ExitFv_Outgoing : rowsOwned s6Step171ExitGvAfter [s6Step171ExitFvOut,s6Step171ExitGvOut] :=
  hmrRows_owned_drop s6Step171ExitGvAfter [s6Step171ExitGOut,s6Step171ExitFOut,s6Step171ExitFvOut,s6Step171ExitGvOut] 2 s6Step171ExitBank_outgoingOwned

private theorem s6Step171ExitFv_distinct : (s6Step171ExitFvRow.sign::s6Step171ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171ExitFv_owned : (s6Step171ExitFvRow.sign::s6Step171ExitFvRow.payload).toFinset⊆s6Step171ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171ExitFvBefore (fun q => ([(0,183),(184,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171ExitFv_reserved : s6Step171ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step171ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step171ExitFv_checked : planRowResizeLog s6Step171ExitFvBefore s6Step171ExitFvRow 101 []=
    some (s6Step171ExitFvAfter,s6Step171ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step171ExitFvBefore s6Step171ExitFvAfter s6Step171ExitFvRow 101 []
    s6Step171ExitFv_distinct s6Step171ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step171ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step171ExitFvRow.payload++[]) s6Step171ExitFvRow.sign=s6Step171ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step171ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step171ExitG_Incoming : rowsOwned s6Step171ExitGBefore [s6Step171ExitGRow,s6Step171ExitFRow,s6Step171ExitFvRow,s6Step171ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171ExitGRow,s6Step171ExitFRow,s6Step171ExitFvRow,s6Step171ExitGvRow] 0 s6Step171ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step171ExitG_Outgoing : rowsOwned s6Step171ExitGvAfter [s6Step171ExitGOut,s6Step171ExitFOut,s6Step171ExitFvOut,s6Step171ExitGvOut] :=
  hmrRows_owned_drop s6Step171ExitGvAfter [s6Step171ExitGOut,s6Step171ExitFOut,s6Step171ExitFvOut,s6Step171ExitGvOut] 0 s6Step171ExitBank_outgoingOwned

private theorem s6Step171ExitG_distinct : (s6Step171ExitGRow.sign::s6Step171ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171ExitG_owned : (s6Step171ExitGRow.sign::s6Step171ExitGRow.payload).toFinset⊆s6Step171ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171ExitG_retired : s6Step171ExitGBefore.retireSet s6Step171ExitGExtra.toFinset=s6Step171ExitGAfter := by
  unfold Arena.retireSet s6Step171ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step171ExitGBefore,s6Step171ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step171ExitG_checked : planRowResizeLog s6Step171ExitGBefore s6Step171ExitGRow 183 []=
    some (s6Step171ExitGAfter,s6Step171ExitGOut,shrinkRow 777 s6Step171ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step171ExitGBefore s6Step171ExitGRow 183 s6Step171ExitG_distinct s6Step171ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step171ExitGRow.payload.take 183) s6Step171ExitGRow.sign=s6Step171ExitGOut := by decide +kernel
  have hi : s6Step171ExitGRow.payload.drop 183=s6Step171ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step171ExitG_retired] at result
  exact result

private def s6Step171ExitGvBefore : Arena := s6Step171ExitFAfter

private theorem s6Step171ExitGv_Incoming : rowsOwned s6Step171ExitGvBefore [s6Step171ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171ExitGRow,s6Step171ExitFRow,s6Step171ExitFvRow,s6Step171ExitGvRow] 3 s6Step171ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171ExitGvBefore (fun q => ([(0,183),(184,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step171ExitGv_Outgoing : rowsOwned s6Step171ExitGvAfter [s6Step171ExitGvOut] :=
  hmrRows_owned_drop s6Step171ExitGvAfter [s6Step171ExitGOut,s6Step171ExitFOut,s6Step171ExitFvOut,s6Step171ExitGvOut] 3 s6Step171ExitBank_outgoingOwned

private theorem s6Step171ExitGv_distinct : (s6Step171ExitGvRow.sign::s6Step171ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171ExitGv_owned : (s6Step171ExitGvRow.sign::s6Step171ExitGvRow.payload).toFinset⊆s6Step171ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171ExitGvBefore (fun q => ([(0,183),(184,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step171ExitGv_retired : s6Step171ExitGvBefore.retireSet s6Step171ExitGvExtra.toFinset=s6Step171ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step171ExitGvBefore s6Step171ExitGvAfter s6Step171ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step171ExitGvBefore s6Step171ExitGvAfter (fun q => ([(0,183),(184,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,183),(184,440),(441,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step171ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step171ExitGv_checked : planRowResizeLog s6Step171ExitGvBefore s6Step171ExitGvRow 99 []=
    some (s6Step171ExitGvAfter,s6Step171ExitGvOut,shrinkRow 775 s6Step171ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step171ExitGvBefore s6Step171ExitGvRow 99 s6Step171ExitGv_distinct s6Step171ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step171ExitGvRow.payload.take 99) s6Step171ExitGvRow.sign=s6Step171ExitGvOut := by decide +kernel
  have hi : s6Step171ExitGvRow.payload.drop 99=s6Step171ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step171ExitGv_retired] at result
  exact result

private theorem s6Step171ExitBank_rows : planWindowRowsLog s6Step171ExitGBefore [(s6Step171ExitGRow,183),(s6Step171ExitFRow,184),(s6Step171ExitFvRow,101),(s6Step171ExitGvRow,99)] [[],[],[],[]]=
    some (s6Step171ExitGvAfter,[s6Step171ExitGOut,s6Step171ExitFOut,s6Step171ExitFvOut,s6Step171ExitGvOut],(shrinkRow 777 s6Step171ExitGExtra ++ (shrinkRow 795 s6Step171ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step171ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step171ExitGvAfter [] []=some (s6Step171ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step171ExitGvBefore s6Step171ExitGvAfter s6Step171ExitGvAfter
    s6Step171ExitGvRow s6Step171ExitGvOut 99 [] [] [] []
    (shrinkRow 775 s6Step171ExitGvExtra) ([]) s6Step171ExitGv_Incoming s6Step171ExitGv_checked h4 s6Step171ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step171ExitFvBefore s6Step171ExitFvAfter s6Step171ExitGvAfter
    s6Step171ExitFvRow s6Step171ExitFvOut 101 [] [(s6Step171ExitGvRow,99)] [[]] [s6Step171ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step171ExitGvExtra ++ [])) s6Step171ExitFv_Incoming s6Step171ExitFv_checked h3 s6Step171ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step171ExitFBefore s6Step171ExitFAfter s6Step171ExitGvAfter
    s6Step171ExitFRow s6Step171ExitFOut 184 [] [(s6Step171ExitFvRow,101),(s6Step171ExitGvRow,99)] [[],[]] [s6Step171ExitFvOut,s6Step171ExitGvOut]
    (shrinkRow 795 s6Step171ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step171ExitGvExtra ++ []))) s6Step171ExitF_Incoming s6Step171ExitF_checked h2 s6Step171ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step171ExitGBefore s6Step171ExitGAfter s6Step171ExitGvAfter
    s6Step171ExitGRow s6Step171ExitGOut 183 [] [(s6Step171ExitFRow,184),(s6Step171ExitFvRow,101),(s6Step171ExitGvRow,99)] [[],[],[]] [s6Step171ExitFOut,s6Step171ExitFvOut,s6Step171ExitGvOut]
    (shrinkRow 777 s6Step171ExitGExtra) ((shrinkRow 795 s6Step171ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step171ExitGvExtra ++ [])))) s6Step171ExitG_Incoming s6Step171ExitG_checked h1 s6Step171ExitG_Outgoing
  exact h0

private theorem s6Step171ExitBank_checked : compileHmrBankResizeLog .exit s6Step171ExitGBefore ⟨s6Step171ExitFRow,s6Step171ExitGRow,s6Step171ExitFvRow,s6Step171ExitGvRow⟩ ⟨184,183,101,99⟩ [[],[],[],[]]=
    some (s6Step171ExitGvAfter,⟨s6Step171ExitFOut,s6Step171ExitGOut,s6Step171ExitFvOut,s6Step171ExitGvOut⟩,(shrinkRow 777 s6Step171ExitGExtra ++ (shrinkRow 795 s6Step171ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step171ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step171ExitBank_rows]
  rfl

private theorem s6Step171Add0_apart : Disjoint s6Step171Add0Arena.live s6Step171Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step171Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171Add0_card : s6Step171Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step171Add0_borrowed : s6Step171Add0Arena.checkBorrow (hmrHybridCount s6Step171Add0Arena s6Step171Add0B.length) s6Step171Add0Work=some s6Step171Add0During := by
  have len : s6Step171Add0Work.length=hmrHybridCount s6Step171Add0Arena s6Step171Add0B.length := by
    rw [hmrHybridCount,s6Step171Add0_card]
    decide +kernel
  have nd : s6Step171Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step171Add0Arena s6Step171Add0During s6Step171Add0Work.toFinset s6Step171Add0_bounded s6Step171Add0_apart rfl

private theorem s6Step171Add0_distinct : (891::863::903::(s6Step171Add0A++s6Step171Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171Add0_owned : (891::863::903::(s6Step171Add0A++s6Step171Add0B)).toFinset⊆s6Step171Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step171Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171Add0_checked : compileHmrHybridCinLog s6Step171Add0Arena 863 891 903 s6Step171Add0A s6Step171Add0B s6Step171Add0Work=some s6Step171Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step171Add0Arena s6Step171Add0During 863 891 903 s6Step171Add0A s6Step171Add0B s6Step171Add0Work
    (by decide +kernel) (by decide +kernel) s6Step171Add0_distinct
    (fun q hq => s6Step171Add0_owned (List.mem_toFinset.mpr hq)) s6Step171Add0_borrowed

private theorem s6Step171Add1_apart : Disjoint s6Step171Add1Arena.live s6Step171Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step171Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171Add1_card : s6Step171Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step171Add1_borrowed : s6Step171Add1Arena.checkBorrow (hmrHybridCount s6Step171Add1Arena s6Step171Add1B.length) s6Step171Add1Work=some s6Step171Add1During := by
  have len : s6Step171Add1Work.length=hmrHybridCount s6Step171Add1Arena s6Step171Add1B.length := by
    rw [hmrHybridCount,s6Step171Add1_card]
    decide +kernel
  have nd : s6Step171Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step171Add1Arena s6Step171Add1During s6Step171Add1Work.toFinset s6Step171Add1_bounded s6Step171Add1_apart rfl

private theorem s6Step171Add1_distinct : (891::863::903::(s6Step171Add1A++s6Step171Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171Add1_owned : (891::863::903::(s6Step171Add1A++s6Step171Add1B)).toFinset⊆s6Step171Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step171Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171Add1_checked : compileHmrHybridCinLog s6Step171Add1Arena 863 891 903 s6Step171Add1A s6Step171Add1B s6Step171Add1Work=some s6Step171Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step171Add1Arena s6Step171Add1During 863 891 903 s6Step171Add1A s6Step171Add1B s6Step171Add1Work
    (by decide +kernel) (by decide +kernel) s6Step171Add1_distinct
    (fun q hq => s6Step171Add1_owned (List.mem_toFinset.mpr hq)) s6Step171Add1_borrowed

private theorem s6Step171F4_apart : Disjoint (s6Step171Add0A++s6Step171Add0B).toFinset (s6Step171Add1A++s6Step171Add1B).toFinset := by
  have nd : ((s6Step171Add0A++s6Step171Add0B)++(s6Step171Add1A++s6Step171Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step171F4_carry : s6Step171F4FlagArena.checkBorrow 1 [903]=some s6Step171Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step171F4FlagArena,s6Step171HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step171F4FlagArena,s6Step171HeadFvAfter,s6Step171Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step171F4_distinct : (864::863::891::903::((s6Step171Add0A++s6Step171Add1A)++(s6Step171Add0B++s6Step171Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171F4_flag : s6Step171HeadFvAfter.checkBorrow 1 [891]=some s6Step171F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step171HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step171F4_owned : (864::863::((s6Step171Add0A++s6Step171Add1A)++(s6Step171Add0B++s6Step171Add1B))).toFinset⊆s6Step171HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step171HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171F4_checked : compileHmrHybridF4Log s6Step171HeadFvAfter 864 863 s6Step171Add0A s6Step171Add0B s6Step171Add1A s6Step171Add1B [891] [903] s6Step171Add0Work s6Step171Add1Work=some s6Step171F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step171HeadFvAfter s6Step171F4FlagArena s6Step171Add0Arena s6Step171Add0During s6Step171Add1During 864 863
    s6Step171Add0A s6Step171Add0B s6Step171Add1A s6Step171Add1B [891] [903] s6Step171Add0Work s6Step171Add1Work
    (fun q hq => s6Step171F4_owned (List.mem_toFinset.mpr hq)) s6Step171F4_flag s6Step171F4_carry
    s6Step171F4_distinct s6Step171F4_apart s6Step171Add0_checked s6Step171Add1_checked

private theorem s6Step171Front_branch : s6Step171FrontSigmaArena.checkBorrow 1 [863]=some s6Step171HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step171FrontSigmaArena,s6Step171EntryGvAfter,arenaWires]
  · change s6Step171HeadGBefore.live=(s6Step171EntryGvAfter.live∪{864})∪{863}
    apply hmrArena_union_pair_of_filter_check s6Step171EntryGvAfter s6Step171HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 864 863 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step171Front_entry : HmrFrontEntryValid s6Step171EntryFBefore s6Step171FrontBank 185 100 ⟨184,183,101,99⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step171FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step171EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step171EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step171FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step171Front_sigma : s6Step171EntryGvAfter.checkBorrow 1 [864]=some s6Step171FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step171EntryGvAfter,arenaWires]
  · rfl

private def s6Step171HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171HeadFBefore : Arena := s6Step171HeadGAfter

private def s6Step171HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩

private def s6Step171HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩

private def s6Step171HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 793],777⟩

private def s6Step171HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 886],775⟩

private theorem s6Step171HeadBank_incomingDistinct : ([s6Step171HeadGRow,s6Step171HeadFRow,s6Step171HeadGvRow,s6Step171HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171HeadF_Incoming : rowsOwned s6Step171HeadFBefore [s6Step171HeadFRow,s6Step171HeadGvRow,s6Step171HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171HeadGRow,s6Step171HeadFRow,s6Step171HeadGvRow,s6Step171HeadFvRow] 1 s6Step171HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step171HeadBank_outgoingOwned : rowsOwned s6Step171HeadFvAfter [s6Step171HeadGOut,s6Step171HeadFOut,s6Step171HeadGvOut,s6Step171HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step171HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step171HeadF_Outgoing : rowsOwned s6Step171HeadFvAfter [s6Step171HeadFOut,s6Step171HeadGvOut,s6Step171HeadFvOut] :=
  hmrRows_owned_drop s6Step171HeadFvAfter [s6Step171HeadGOut,s6Step171HeadFOut,s6Step171HeadGvOut,s6Step171HeadFvOut] 1 s6Step171HeadBank_outgoingOwned

private theorem s6Step171HeadF_distinct : (s6Step171HeadFRow.sign::s6Step171HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171HeadF_owned : (s6Step171HeadFRow.sign::s6Step171HeadFRow.payload).toFinset⊆s6Step171HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171HeadF_reserved : s6Step171HeadFBefore.reserve s6Step171HeadFFresh.toFinset=some s6Step171HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step171HeadFFresh,arenaWires]
  · norm_num [s6Step171HeadFBefore,s6Step171HeadGAfter,s6Step171HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step171HeadFAfter,s6Step171HeadFBefore,s6Step171HeadGAfter,s6Step171HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step171HeadF_checked : planRowResizeLog s6Step171HeadFBefore s6Step171HeadFRow 186 s6Step171HeadFFresh=
    some (s6Step171HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 876],795⟩,growRow 795 s6Step171HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step171HeadFBefore s6Step171HeadFAfter s6Step171HeadFRow 186 s6Step171HeadFFresh
    s6Step171HeadF_distinct s6Step171HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step171HeadF_reserved
  have rowEq : WindowRow.mk (s6Step171HeadFRow.payload++s6Step171HeadFFresh) s6Step171HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step171HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step171HeadFvBefore : Arena := s6Step171HeadGvAfter

private theorem s6Step171HeadFv_Incoming : rowsOwned s6Step171HeadFvBefore [s6Step171HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171HeadGRow,s6Step171HeadFRow,s6Step171HeadGvRow,s6Step171HeadFvRow] 3 s6Step171HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step171HeadFv_Outgoing : rowsOwned s6Step171HeadFvAfter [s6Step171HeadFvOut] :=
  hmrRows_owned_drop s6Step171HeadFvAfter [s6Step171HeadGOut,s6Step171HeadFOut,s6Step171HeadGvOut,s6Step171HeadFvOut] 3 s6Step171HeadBank_outgoingOwned

private theorem s6Step171HeadFv_distinct : (s6Step171HeadFvRow.sign::s6Step171HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171HeadFv_owned : (s6Step171HeadFvRow.sign::s6Step171HeadFvRow.payload).toFinset⊆s6Step171HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171HeadFv_reserved : s6Step171HeadFvBefore.reserve s6Step171HeadFvFresh.toFinset=some s6Step171HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step171HeadFvFresh,arenaWires]
  · norm_num [s6Step171HeadFvBefore,s6Step171HeadGvAfter,s6Step171HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step171HeadFvAfter,s6Step171HeadFvBefore,s6Step171HeadGvAfter,s6Step171HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step171HeadFv_checked : planRowResizeLog s6Step171HeadFvBefore s6Step171HeadFvRow 101 s6Step171HeadFvFresh=
    some (s6Step171HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922],776⟩,growRow 776 s6Step171HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step171HeadFvBefore s6Step171HeadFvAfter s6Step171HeadFvRow 101 s6Step171HeadFvFresh
    s6Step171HeadFv_distinct s6Step171HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step171HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step171HeadFvRow.payload++s6Step171HeadFvFresh) s6Step171HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 922],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step171HeadG_Incoming : rowsOwned s6Step171HeadGBefore [s6Step171HeadGRow,s6Step171HeadFRow,s6Step171HeadGvRow,s6Step171HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171HeadGRow,s6Step171HeadFRow,s6Step171HeadGvRow,s6Step171HeadFvRow] 0 s6Step171HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step171HeadG_Outgoing : rowsOwned s6Step171HeadFvAfter [s6Step171HeadGOut,s6Step171HeadFOut,s6Step171HeadGvOut,s6Step171HeadFvOut] :=
  hmrRows_owned_drop s6Step171HeadFvAfter [s6Step171HeadGOut,s6Step171HeadFOut,s6Step171HeadGvOut,s6Step171HeadFvOut] 0 s6Step171HeadBank_outgoingOwned

private theorem s6Step171HeadG_distinct : (s6Step171HeadGRow.sign::s6Step171HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171HeadG_owned : (s6Step171HeadGRow.sign::s6Step171HeadGRow.payload).toFinset⊆s6Step171HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171HeadG_reserved : s6Step171HeadGBefore.reserve s6Step171HeadGFresh.toFinset=some s6Step171HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step171HeadGFresh,arenaWires]
  · norm_num [s6Step171HeadGBefore,s6Step171HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step171HeadGAfter,s6Step171HeadGBefore,s6Step171HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step171HeadG_checked : planRowResizeLog s6Step171HeadGBefore s6Step171HeadGRow 186 s6Step171HeadGFresh=
    some (s6Step171HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 793, 857],777⟩,growRow 777 s6Step171HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step171HeadGBefore s6Step171HeadGAfter s6Step171HeadGRow 186 s6Step171HeadGFresh
    s6Step171HeadG_distinct s6Step171HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step171HeadG_reserved
  have rowEq : WindowRow.mk (s6Step171HeadGRow.payload++s6Step171HeadGFresh) s6Step171HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 793, 857],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step171HeadGvBefore : Arena := s6Step171HeadFAfter

private theorem s6Step171HeadGv_Incoming : rowsOwned s6Step171HeadGvBefore [s6Step171HeadGvRow,s6Step171HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step171HeadGRow,s6Step171HeadFRow,s6Step171HeadGvRow,s6Step171HeadFvRow] 2 s6Step171HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step171HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step171HeadGv_Outgoing : rowsOwned s6Step171HeadFvAfter [s6Step171HeadGvOut,s6Step171HeadFvOut] :=
  hmrRows_owned_drop s6Step171HeadFvAfter [s6Step171HeadGOut,s6Step171HeadFOut,s6Step171HeadGvOut,s6Step171HeadFvOut] 2 s6Step171HeadBank_outgoingOwned

private theorem s6Step171HeadGv_distinct : (s6Step171HeadGvRow.sign::s6Step171HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step171HeadGv_owned : (s6Step171HeadGvRow.sign::s6Step171HeadGvRow.payload).toFinset⊆s6Step171HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step171HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step171HeadGv_reserved : s6Step171HeadGvBefore.reserve s6Step171HeadGvFresh.toFinset=some s6Step171HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step171HeadGvFresh,arenaWires]
  · norm_num [s6Step171HeadGvBefore,s6Step171HeadFAfter,s6Step171HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step171HeadGvAfter,s6Step171HeadGvBefore,s6Step171HeadFAfter,s6Step171HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step171HeadGv_checked : planRowResizeLog s6Step171HeadGvBefore s6Step171HeadGvRow 101 s6Step171HeadGvFresh=
    some (s6Step171HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 886, 890],775⟩,growRow 775 s6Step171HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step171HeadGvBefore s6Step171HeadGvAfter s6Step171HeadGvRow 101 s6Step171HeadGvFresh
    s6Step171HeadGv_distinct s6Step171HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step171HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step171HeadGvRow.payload++s6Step171HeadGvFresh) s6Step171HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 886, 890],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step171HeadBank_rows : planWindowRowsLog s6Step171HeadGBefore [(s6Step171HeadGRow,186),(s6Step171HeadFRow,186),(s6Step171HeadGvRow,101),(s6Step171HeadFvRow,101)] [s6Step171HeadGFresh,s6Step171HeadFFresh,s6Step171HeadGvFresh,s6Step171HeadFvFresh]=
    some (s6Step171HeadFvAfter,[s6Step171HeadGOut,s6Step171HeadFOut,s6Step171HeadGvOut,s6Step171HeadFvOut],(growRow 777 s6Step171HeadGFresh ++ (growRow 795 s6Step171HeadFFresh ++ (growRow 775 s6Step171HeadGvFresh ++ (growRow 776 s6Step171HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step171HeadFvAfter [] []=some (s6Step171HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step171HeadFvBefore s6Step171HeadFvAfter s6Step171HeadFvAfter
    s6Step171HeadFvRow s6Step171HeadFvOut 101 s6Step171HeadFvFresh [] [] []
    (growRow 776 s6Step171HeadFvFresh) ([]) s6Step171HeadFv_Incoming s6Step171HeadFv_checked h4 s6Step171HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step171HeadGvBefore s6Step171HeadGvAfter s6Step171HeadFvAfter
    s6Step171HeadGvRow s6Step171HeadGvOut 101 s6Step171HeadGvFresh [(s6Step171HeadFvRow,101)] [s6Step171HeadFvFresh] [s6Step171HeadFvOut]
    (growRow 775 s6Step171HeadGvFresh) ((growRow 776 s6Step171HeadFvFresh ++ [])) s6Step171HeadGv_Incoming s6Step171HeadGv_checked h3 s6Step171HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step171HeadFBefore s6Step171HeadFAfter s6Step171HeadFvAfter
    s6Step171HeadFRow s6Step171HeadFOut 186 s6Step171HeadFFresh [(s6Step171HeadGvRow,101),(s6Step171HeadFvRow,101)] [s6Step171HeadGvFresh,s6Step171HeadFvFresh] [s6Step171HeadGvOut,s6Step171HeadFvOut]
    (growRow 795 s6Step171HeadFFresh) ((growRow 775 s6Step171HeadGvFresh ++ (growRow 776 s6Step171HeadFvFresh ++ []))) s6Step171HeadF_Incoming s6Step171HeadF_checked h2 s6Step171HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step171HeadGBefore s6Step171HeadGAfter s6Step171HeadFvAfter
    s6Step171HeadGRow s6Step171HeadGOut 186 s6Step171HeadGFresh [(s6Step171HeadFRow,186),(s6Step171HeadGvRow,101),(s6Step171HeadFvRow,101)] [s6Step171HeadFFresh,s6Step171HeadGvFresh,s6Step171HeadFvFresh] [s6Step171HeadFOut,s6Step171HeadGvOut,s6Step171HeadFvOut]
    (growRow 777 s6Step171HeadGFresh) ((growRow 795 s6Step171HeadFFresh ++ (growRow 775 s6Step171HeadGvFresh ++ (growRow 776 s6Step171HeadFvFresh ++ [])))) s6Step171HeadG_Incoming s6Step171HeadG_checked h1 s6Step171HeadG_Outgoing
  exact h0

private theorem s6Step171HeadBank_checked : compileHmrBankResizeLog .headroom s6Step171HeadGBefore ⟨s6Step171HeadFRow,s6Step171HeadGRow,s6Step171HeadFvRow,s6Step171HeadGvRow⟩ ⟨186,186,101,101⟩ [s6Step171HeadGFresh,s6Step171HeadFFresh,s6Step171HeadGvFresh,s6Step171HeadFvFresh]=
    some (s6Step171HeadFvAfter,⟨s6Step171HeadFOut,s6Step171HeadGOut,s6Step171HeadFvOut,s6Step171HeadGvOut⟩,(growRow 777 s6Step171HeadGFresh ++ (growRow 795 s6Step171HeadFFresh ++ (growRow 775 s6Step171HeadGvFresh ++ (growRow 776 s6Step171HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step171HeadBank_rows]
  rfl

private theorem s6Step171Front_checked : compileHmrSourceFrontLog s6Step171EntryFBefore s6Step171FrontBank 185 100 ⟨184,183,101,99⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step171FrontLog=some s6Step171FrontPlan := by
  have pairEq : s6Step171FrontPair=⟨s6Step171HeadFRow,s6Step171HeadGRow,s6Step171HeadFvRow,s6Step171HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step171FrontHead=⟨s6Step171ExitFRow,s6Step171ExitGRow,s6Step171ExitFvRow,s6Step171ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step171Add0A=s6Step171FrontHead.f.wires := by decide +kernel
  have gEq : s6Step171Add0B=s6Step171FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step171Add1A=s6Step171FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step171Add1B=s6Step171FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step171EntryFBefore s6Step171FrontBank 185 100 ⟨184,183,101,99⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step171FrontLog s6Step171FrontPlan
  · exact s6Step171Front_entry
  · exact s6Step171EntryBank_checked
  · exact s6Step171Front_sigma
  · rfl
  · exact s6Step171Front_branch
  · rfl
  · simpa only [s6Step171FrontPlan,pairEq] using s6Step171HeadBank_checked
  · simpa only [s6Step171FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step171F4_checked
  · exact s6Step171Counter_checked
  · rfl
  · simpa only [s6Step171FrontPlan,headEq] using s6Step171ExitBank_checked

private theorem s6Step171Complete_explicit_checked : compileHmrEarlyStepLog s6Step171EntryFBefore s6Step171FrontBank 185 100 ⟨184,183,101,99⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step171CompleteLog=some s6Step171CompletePlan := by
  let Q := s6Step171EarlyControlPlan
  have hq := s6Step171EarlyControl_plan_checked
  have fv1 : s6Step171CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step171CompleteOut.fv.payload[2]?.getD s6Step171CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step171CompleteOut.fv.payload[3]?.getD s6Step171CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step171CompleteOut.fv.payload[4]?.getD s6Step171CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step171EntryFBefore s6Step171EarlyControlArena s6Step171FrontBank 185 100 ⟨184,183,101,99⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step171CompleteLog s6Step171FrontPlan Q
    s6Step171Front_checked s6Step171Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step171Complete_owned s6Step171Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step171EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 864 s6Step171CompleteOut.fv.second (s6Step171CompleteOut.fv.payload[2]?.getD s6Step171CompleteOut.fv.sign) (s6Step171CompleteOut.fv.payload[3]?.getD s6Step171CompleteOut.fv.sign) (s6Step171CompleteOut.fv.payload[4]?.getD s6Step171CompleteOut.fv.sign) 863 42 s6Step171EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep171Arena : Arena := s6Step171EntryFBefore
def s6PrivateStep171Bank : WindowBank := s6Step171FrontBank
def s6PrivateStep171Spec : HmrSourceWalkStepLog := ⟨185,100,⟨184,183,101,99⟩,42,.early s6Step171CompleteLog⟩
def s6PrivateStep171Plan : HmrSourceStepPlan := .early s6Step171CompletePlan
theorem s6PrivateStep171_source : s6PrivateStep171Spec=s6ObservedLogs160[11] := rfl
theorem s6PrivateStep171_checked : compileHmrSourceStepLog s6PrivateStep171Arena s6PrivateStep171Bank
    s6PrivateStep171Spec.fgWidth s6PrivateStep171Spec.vWidth s6PrivateStep171Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 171 s6PrivateStep171Spec.need none s6PrivateStep171Spec.log=some s6PrivateStep171Plan := by
  change compileHmrSourceStepLog s6Step171EntryFBefore s6Step171FrontBank 185 100 ⟨184,183,101,99⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 171 42 none (.early s6Step171CompleteLog)=some (.early s6Step171CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 171<498)]
  rw [s6Step171Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
