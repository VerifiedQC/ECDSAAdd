import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep162
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

private def s6Step164CompleteMoves : List (Wire × Wire) := [(805,443)]

private def s6Step164EarlyControlLog : HmrEarlyControlLog := ⟨[805, 879, 922, 876, 857],[818],[863],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step164FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [857, 818], [], [789, 879]],[[863], [876], [922], [887]],[[], [], [], []]⟩,[828],[890],[891],[903],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step164CompleteLog : HmrEarlyStepLog := ⟨s6Step164FrontLog,s6Step164CompleteMoves,s6Step164EarlyControlLog⟩

private def s6Step164ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step164ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step164ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],777⟩

private def s6Step164ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789],775⟩

private def s6Step164FrontOut : WindowBank := ⟨s6Step164ExitFOut,s6Step164ExitGOut,s6Step164ExitFvOut,s6Step164ExitGvOut⟩

private def s6Step164CompleteOut : WindowBank := s6Step164FrontOut.repacked s6Step164CompleteMoves

private def s6Step164EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step164EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step164EarlyControlPositiveArena,[818],s6Step164EarlyControlEqualityArena,[863],⟨⟨828,false⟩,[⟨⟨818,false⟩,863⟩]⟩⟩

private def s6Step164EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step164EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step164EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step164EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨772,false⟩,879⟩,⟨⟨771,false⟩,922⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,857⟩]⟩

private def s6Step164EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step164EarlyControlZeroArena,s6Step164EarlyControlZeroPlan,s6Step164EarlyControlClassPlan,s6Step164EarlyControlFlagArena,s6Step164EarlyControlFittedArena,s6Step164EarlyControlHistoryArena,s6Step164EarlyControlSigmaArena,s6Step164EarlyControlOutputArena,s6Step164EarlyControlLog⟩

private def s6Step164CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step164Counter_bounded : s6Step164CounterWork.toFinset⊆arenaWires := by norm_num [s6Step164CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step164HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164CounterDuring : Arena := ⟨s6Step164HeadFvAfter.live∪s6Step164CounterWork.toFinset,Finset.union_subset s6Step164HeadFvAfter.bounded s6Step164Counter_bounded⟩

private def s6Step164EntryFFresh : List Wire := []

private def s6Step164EntryFvFresh : List Wire := []

private def s6Step164EntryGFresh : List Wire := [857, 818]

private def s6Step164EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step164EntryGvFresh : List Wire := [789, 879]

private def s6Step164ExitFExtra : List Wire := [443, 876]

private def s6Step164ExitGExtra : List Wire := [857, 818, 863]

private def s6Step164ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,443),(444,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step164ExitGvExtra : List Wire := [879, 922]

private def s6Step164Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164Add0Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step164Add0_bounded : s6Step164Add0Work.toFinset⊆arenaWires := by
  have h : s6Step164Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step164Add0During : Arena := ⟨s6Step164Add0Arena.live∪s6Step164Add0Work.toFinset,Finset.union_subset s6Step164Add0Arena.bounded s6Step164Add0_bounded⟩

private def s6Step164Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164Add1Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step164Add1_bounded : s6Step164Add1Work.toFinset⊆arenaWires := by
  have h : s6Step164Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step164Add1During : Arena := ⟨s6Step164Add1Arena.live∪s6Step164Add1Work.toFinset,Finset.union_subset s6Step164Add1Arena.bounded s6Step164Add1_bounded⟩

private def s6Step164F4FlagArena : Arena := ⟨s6Step164HeadFvAfter.live∪{891},Finset.union_subset s6Step164HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step164F4Plan : HmrHybridF4Plan := ⟨s6Step164F4FlagArena,[891],s6Step164Add0Arena,[903],s6Step164Add0During,s6Step164Add0Work,s6Step164Add1During,s6Step164Add1Work⟩

private def s6Step164HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 876],795⟩

private def s6Step164HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step164HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 857, 818, 863],777⟩

private def s6Step164HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 879, 922],775⟩

private def s6Step164FrontHead : WindowBank := ⟨s6Step164HeadFOut,s6Step164HeadGOut,s6Step164HeadFvOut,s6Step164HeadGvOut⟩

private def s6Step164EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step164EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908],776⟩

private def s6Step164EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 857, 818],777⟩

private def s6Step164EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 879],775⟩

private def s6Step164FrontPair : WindowBank := ⟨s6Step164EntryFOut,s6Step164EntryGOut,s6Step164EntryFvOut,s6Step164EntryGvOut⟩

private def s6Step164FrontSigmaArena : Arena := ⟨s6Step164EntryGvAfter.live∪{828},Finset.union_subset s6Step164EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step164HeadFFresh : List Wire := [876]

private def s6Step164HeadFvFresh : List Wire := [887]

private def s6Step164HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step164HeadGFresh : List Wire := [863]

private def s6Step164HeadGvFresh : List Wire := [922]

private def s6Step164FrontPlan : HmrSourceFront := ⟨s6Step164EntryGvAfter,s6Step164FrontPair,(growRow 795 s6Step164EntryFFresh ++ (growRow 777 s6Step164EntryGFresh ++ (growRow 776 s6Step164EntryFvFresh ++ (growRow 775 s6Step164EntryGvFresh ++ [])))),s6Step164FrontSigmaArena,[828],s6Step164HeadGBefore,[890],
  s6Step164HeadFvAfter,s6Step164FrontHead,(growRow 777 s6Step164HeadGFresh ++ (growRow 795 s6Step164HeadFFresh ++ (growRow 775 s6Step164HeadGvFresh ++ (growRow 776 s6Step164HeadFvFresh ++ [])))),s6Step164F4Plan,s6Step164CounterDuring,s6Step164CounterWork,s6Step164ExitGvAfter,s6Step164FrontOut,(shrinkRow 777 s6Step164ExitGExtra ++ (shrinkRow 795 s6Step164ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step164ExitGvExtra ++ []))))⟩

private def s6Step164CompletePlan : HmrEarlyStepPlan := ⟨s6Step164FrontPlan,s6Step164EarlyControlArena,s6Step164EarlyControlPlan,s6Step164CompleteMoves⟩

private theorem s6Step164Complete_apart : List.Disjoint (s6Step164CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [828, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step164CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[828, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step164Complete_owned : (s6Step164CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step164EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step164CompleteRelocationMove0Borrowed : Arena := ⟨s6Step164ExitGvAfter.live∪{443},Finset.union_subset s6Step164ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step164CompleteRelocation_move0_owned : 805∈s6Step164ExitGvAfter.live := by norm_num [s6Step164ExitGvAfter,arenaWires]

private theorem s6Step164CompleteRelocation_move0_reserve : s6Step164ExitGvAfter.reserve {443}=some s6Step164CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step164ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step164CompleteRelocation_move0_retire : s6Step164CompleteRelocationMove0Borrowed.retireSet {805}=s6Step164EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step164CompleteRelocationMove0Borrowed s6Step164EarlyControlArena {805}
  change s6Step164EarlyControlArena.live=(s6Step164ExitGvAfter.live∪{443})\{805}
  apply hmrArena_update_of_filter_check s6Step164ExitGvAfter s6Step164EarlyControlArena (fun q => ([(0,443),(444,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [443] [805] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step164CompleteRelocation_checked : s6Step164ExitGvAfter.checkRepack [(805,443)]=some s6Step164EarlyControlArena := by
  have tail1 : s6Step164EarlyControlArena.checkRepack []=some s6Step164EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step164ExitGvAfter s6Step164CompleteRelocationMove0Borrowed s6Step164EarlyControlArena s6Step164EarlyControlArena 805 443 []
    s6Step164CompleteRelocation_move0_owned s6Step164CompleteRelocation_move0_reserve s6Step164CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step164Complete_repack : s6Step164ExitGvAfter.checkRepack s6Step164CompleteMoves=some s6Step164EarlyControlArena := by
  simpa only [s6Step164CompleteMoves] using s6Step164CompleteRelocation_checked

private theorem s6Step164EarlyControl_branchOwned : ([890] : List Wire).toFinset⊆s6Step164EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164EarlyControl_branch : compileHmrBranchRetirement s6Step164EarlyControlSigmaArena 890=some s6Step164EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step164EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step164EarlyControlSigmaArena s6Step164EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [890] rfl rfl
    decide +kernel

private theorem s6Step164EarlyControl_classEqualityBorrow : s6Step164EarlyControlPositiveArena.checkBorrow (([828, 818] : List Wire).length-1) s6Step164EarlyControlLog.classWork=some s6Step164EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step164EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step164EarlyControlEqualityArena,s6Step164EarlyControlPositiveArena,s6Step164EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step164EarlyControl_classEqualityOwned : ([828, 818] : List Wire).toFinset⊆s6Step164EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164EarlyControl_classEquality : compileHmrEqualityLog s6Step164EarlyControlPositiveArena [828, 818] 0 s6Step164EarlyControlLog.classWork=some (s6Step164EarlyControlEqualityArena,s6Step164EarlyControlLog.classWork,s6Step164EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step164EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step164EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step164EarlyControl_classOwned : ([769, 857, 828] : List Wire).toFinset⊆s6Step164EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164EarlyControl_positiveBorrow : s6Step164EarlyControlZeroArena.checkBorrow (1) s6Step164EarlyControlLog.positiveWork=some s6Step164EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step164EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step164EarlyControlPositiveArena,s6Step164EarlyControlZeroArena,s6Step164EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step164EarlyControl_class : compileHmrSourceClassLog s6Step164EarlyControlZeroArena false 769 s6Step164EarlyControlZeroPlan.top 0 828 s6Step164EarlyControlLog.positiveWork s6Step164EarlyControlLog.classWork=some s6Step164EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step164EarlyControlClassPlan s6Step164EarlyControlZeroArena false 769 s6Step164EarlyControlZeroPlan.top 0 828
  constructor
  · decide +kernel
  · exact s6Step164EarlyControl_classOwned
  · exact s6Step164EarlyControl_positiveBorrow
  · exact s6Step164EarlyControl_classEquality

private theorem s6Step164EarlyControl_entryRecordOwned : ([890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step164EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164EarlyControl_entrySigmaOwned : ([828, 254] : List Wire).toFinset⊆s6Step164EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164EarlyControl_fitBorrow : s6Step164EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step164EarlyControlLog.recordFresh=some s6Step164EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step164EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step164EarlyControlFittedArena,s6Step164EarlyControlFlagArena,s6Step164EarlyControlLog,arenaWires]

private theorem s6Step164EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step164EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164EarlyControl_fit : compileHmrRecordGrowLog s6Step164EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step164EarlyControlLog.recordFresh=some s6Step164EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step164EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step164EarlyControl_fitBorrow

private theorem s6Step164EarlyControl_flagsBorrow : s6Step164EarlyControlEqualityArena.checkBorrow (6) s6Step164EarlyControlLog.flagWork=some s6Step164EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step164EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step164EarlyControlFlagArena,s6Step164EarlyControlEqualityArena,s6Step164EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step164EarlyControl_flagsOwned : ([863, 253, 252, 251] : List Wire).toFinset⊆s6Step164EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164EarlyControl_flags : compileHmrFlagsLog s6Step164EarlyControlClassPlan.equalityArena s6Step164EarlyControlClassPlan.equality.top 253 252 251 s6Step164EarlyControlLog.flagWork=some s6Step164EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step164EarlyControl_flagsOwned⟩
  · exact s6Step164EarlyControl_flagsBorrow

private theorem s6Step164EarlyControl_historyBorrow : s6Step164EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step164EarlyControlLog.recordFresh=some s6Step164EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step164EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step164EarlyControlArena s6Step164EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step164EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step164EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step164EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164EarlyControl_history : compileHmrRecordGrowLog s6Step164EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step164EarlyControlLog.recordFresh=some s6Step164EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step164EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step164EarlyControl_historyBorrow

private theorem s6Step164EarlyControl_sigmaOwned : ([254, 828] : List Wire).toFinset⊆s6Step164EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164EarlyControl_sigmaReleaseOwned : ([828] : List Wire).toFinset⊆s6Step164EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164EarlyControl_sigmaRelease : s6Step164EarlyControlHistoryArena.release {828} (fun _ => false)=some s6Step164EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step164EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step164EarlyControlHistoryArena s6Step164EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [828] rfl rfl
    decide +kernel

private theorem s6Step164EarlyControl_sigma : compileHmrSigmaDropLog s6Step164EarlyControlHistoryArena false 0 0 254 828 []=some s6Step164EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step164EarlyControl_sigmaOwned⟩
  · exact s6Step164EarlyControl_sigmaRelease

private theorem s6Step164EarlyControl_zeroBorrow : s6Step164EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step164EarlyControlLog.zeroWork=some s6Step164EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step164EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step164EarlyControlArena s6Step164EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step164EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step164EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step164EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step164EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step164EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164EarlyControl_zero : compileHmrEqualityLog s6Step164EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step164EarlyControlLog.zeroWork=some (s6Step164EarlyControlZeroArena,s6Step164EarlyControlLog.zeroWork,s6Step164EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step164EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step164EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step164EarlyControl_logged : s6Step164EarlyControlPlan.Logged s6Step164EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 828 254 253 252 251 890 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step164EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step164EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step164EarlyControl_zero
  · exact s6Step164EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step164EarlyControl_flags
  · exact s6Step164EarlyControl_fit
  · exact s6Step164EarlyControl_history
  · exact s6Step164EarlyControl_sigma
  · exact s6Step164EarlyControl_branch

private theorem s6Step164EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step164EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 828 254 253 252 251 890 42 s6Step164EarlyControlLog=some s6Step164EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step164EarlyControlPlan s6Step164EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 828 254 253 252 251 890 42 s6Step164EarlyControl_logged

private def s6Step164EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step164EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step164EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908],776⟩

private def s6Step164EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],777⟩

private def s6Step164EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩

private def s6Step164FrontBank : WindowBank := ⟨s6Step164EntryFRow,s6Step164EntryGRow,s6Step164EntryFvRow,s6Step164EntryGvRow⟩

private def s6Step164Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 876, 795]

private def s6Step164Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 857, 818, 863, 777]

private def s6Step164Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 776]

private def s6Step164Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 879, 922, 775]

private theorem s6Step164Counter_apart : Disjoint s6Step164HeadFvAfter.live s6Step164CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step164HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164Counter_borrowed : s6Step164HeadFvAfter.checkBorrow 4 s6Step164CounterWork=some s6Step164CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step164HeadFvAfter s6Step164CounterDuring s6Step164CounterWork.toFinset s6Step164Counter_bounded s6Step164Counter_apart rfl

private theorem s6Step164Counter_owned : (828::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step164HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step164HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164Counter_checked : compileHmrCounterStepLog s6Step164HeadFvAfter true 828 [774, 773, 772, 771, 770, 769] s6Step164CounterWork=some s6Step164CounterDuring := by
  have owned : ∀q∈828::[774, 773, 772, 771, 770, 769],q∈s6Step164HeadFvAfter.live := fun q hq => s6Step164Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step164Counter_borrowed

private def s6Step164EntryFAfter : Arena := s6Step164EntryFBefore

private theorem s6Step164EntryBank_incomingDistinct : ([s6Step164EntryFRow,s6Step164EntryGRow,s6Step164EntryFvRow,s6Step164EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164EntryF_Incoming : rowsOwned s6Step164EntryFBefore [s6Step164EntryFRow,s6Step164EntryGRow,s6Step164EntryFvRow,s6Step164EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164EntryFRow,s6Step164EntryGRow,s6Step164EntryFvRow,s6Step164EntryGvRow] 0 s6Step164EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step164EntryBank_outgoingOwned : rowsOwned s6Step164EntryGvAfter [s6Step164EntryFOut,s6Step164EntryGOut,s6Step164EntryFvOut,s6Step164EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step164EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step164EntryF_Outgoing : rowsOwned s6Step164EntryGvAfter [s6Step164EntryFOut,s6Step164EntryGOut,s6Step164EntryFvOut,s6Step164EntryGvOut] :=
  hmrRows_owned_drop s6Step164EntryGvAfter [s6Step164EntryFOut,s6Step164EntryGOut,s6Step164EntryFvOut,s6Step164EntryGvOut] 0 s6Step164EntryBank_outgoingOwned

private theorem s6Step164EntryF_distinct : (s6Step164EntryFRow.sign::s6Step164EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164EntryF_owned : (s6Step164EntryFRow.sign::s6Step164EntryFRow.payload).toFinset⊆s6Step164EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164EntryF_reserved : s6Step164EntryFBefore.reserve s6Step164EntryFFresh.toFinset=some s6Step164EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step164EntryFFresh,arenaWires]
  · norm_num [s6Step164EntryFBefore,s6Step164EntryFFresh,arenaWires]
  · simp only [s6Step164EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step164EntryF_checked : planRowResizeLog s6Step164EntryFBefore s6Step164EntryFRow 188 s6Step164EntryFFresh=
    some (s6Step164EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩,growRow 795 s6Step164EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step164EntryFBefore s6Step164EntryFAfter s6Step164EntryFRow 188 s6Step164EntryFFresh
    s6Step164EntryF_distinct s6Step164EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step164EntryF_reserved
  have rowEq : WindowRow.mk (s6Step164EntryFRow.payload++s6Step164EntryFFresh) s6Step164EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step164EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step164EntryFvAfter : Arena := s6Step164EntryGAfter

private def s6Step164EntryFvBefore : Arena := s6Step164EntryGAfter

private theorem s6Step164EntryFv_Incoming : rowsOwned s6Step164EntryFvBefore [s6Step164EntryFvRow,s6Step164EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164EntryFRow,s6Step164EntryGRow,s6Step164EntryFvRow,s6Step164EntryGvRow] 2 s6Step164EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164EntryFvBefore (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step164EntryFv_Outgoing : rowsOwned s6Step164EntryGvAfter [s6Step164EntryFvOut,s6Step164EntryGvOut] :=
  hmrRows_owned_drop s6Step164EntryGvAfter [s6Step164EntryFOut,s6Step164EntryGOut,s6Step164EntryFvOut,s6Step164EntryGvOut] 2 s6Step164EntryBank_outgoingOwned

private theorem s6Step164EntryFv_distinct : (s6Step164EntryFvRow.sign::s6Step164EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164EntryFv_owned : (s6Step164EntryFvRow.sign::s6Step164EntryFvRow.payload).toFinset⊆s6Step164EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164EntryFvBefore (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164EntryFv_reserved : s6Step164EntryFvBefore.reserve s6Step164EntryFvFresh.toFinset=some s6Step164EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step164EntryFvFresh,arenaWires]
  · norm_num [s6Step164EntryFvBefore,s6Step164EntryGAfter,s6Step164EntryFvFresh,arenaWires]
  · simp only [s6Step164EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step164EntryFv_checked : planRowResizeLog s6Step164EntryFvBefore s6Step164EntryFvRow 97 s6Step164EntryFvFresh=
    some (s6Step164EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908],776⟩,growRow 776 s6Step164EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step164EntryFvBefore s6Step164EntryFvAfter s6Step164EntryFvRow 97 s6Step164EntryFvFresh
    s6Step164EntryFv_distinct s6Step164EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step164EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step164EntryFvRow.payload++s6Step164EntryFvFresh) s6Step164EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step164EntryGBefore : Arena := s6Step164EntryFBefore

private theorem s6Step164EntryG_Incoming : rowsOwned s6Step164EntryGBefore [s6Step164EntryGRow,s6Step164EntryFvRow,s6Step164EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164EntryFRow,s6Step164EntryGRow,s6Step164EntryFvRow,s6Step164EntryGvRow] 1 s6Step164EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164EntryGBefore (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step164EntryG_Outgoing : rowsOwned s6Step164EntryGvAfter [s6Step164EntryGOut,s6Step164EntryFvOut,s6Step164EntryGvOut] :=
  hmrRows_owned_drop s6Step164EntryGvAfter [s6Step164EntryFOut,s6Step164EntryGOut,s6Step164EntryFvOut,s6Step164EntryGvOut] 1 s6Step164EntryBank_outgoingOwned

private theorem s6Step164EntryG_distinct : (s6Step164EntryGRow.sign::s6Step164EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164EntryG_owned : (s6Step164EntryGRow.sign::s6Step164EntryGRow.payload).toFinset⊆s6Step164EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164EntryGBefore (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164EntryG_reserved : s6Step164EntryGBefore.reserve s6Step164EntryGFresh.toFinset=some s6Step164EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step164EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step164EntryGBefore,s6Step164EntryFBefore,s6Step164EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step164EntryGBefore s6Step164EntryGAfter (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step164EntryGFresh rfl rfl
    · norm_num [s6Step164EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step164EntryG_checked : planRowResizeLog s6Step164EntryGBefore s6Step164EntryGRow 188 s6Step164EntryGFresh=
    some (s6Step164EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 857, 818],777⟩,growRow 777 s6Step164EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step164EntryGBefore s6Step164EntryGAfter s6Step164EntryGRow 188 s6Step164EntryGFresh
    s6Step164EntryG_distinct s6Step164EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step164EntryG_reserved
  have rowEq : WindowRow.mk (s6Step164EntryGRow.payload++s6Step164EntryGFresh) s6Step164EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 857, 818],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step164EntryGvBefore : Arena := s6Step164EntryGAfter

private theorem s6Step164EntryGv_Incoming : rowsOwned s6Step164EntryGvBefore [s6Step164EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164EntryFRow,s6Step164EntryGRow,s6Step164EntryFvRow,s6Step164EntryGvRow] 3 s6Step164EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164EntryGvBefore (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step164EntryGv_Outgoing : rowsOwned s6Step164EntryGvAfter [s6Step164EntryGvOut] :=
  hmrRows_owned_drop s6Step164EntryGvAfter [s6Step164EntryFOut,s6Step164EntryGOut,s6Step164EntryFvOut,s6Step164EntryGvOut] 3 s6Step164EntryBank_outgoingOwned

private theorem s6Step164EntryGv_distinct : (s6Step164EntryGvRow.sign::s6Step164EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164EntryGv_owned : (s6Step164EntryGvRow.sign::s6Step164EntryGvRow.payload).toFinset⊆s6Step164EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164EntryGvBefore (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164EntryGv_reserved : s6Step164EntryGvBefore.reserve s6Step164EntryGvFresh.toFinset=some s6Step164EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step164EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step164EntryGvBefore,s6Step164EntryGAfter,s6Step164EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step164EntryGvBefore s6Step164EntryGvAfter (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step164EntryGvFresh rfl rfl
    · norm_num [s6Step164EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step164EntryGv_checked : planRowResizeLog s6Step164EntryGvBefore s6Step164EntryGvRow 97 s6Step164EntryGvFresh=
    some (s6Step164EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 879],775⟩,growRow 775 s6Step164EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step164EntryGvBefore s6Step164EntryGvAfter s6Step164EntryGvRow 97 s6Step164EntryGvFresh
    s6Step164EntryGv_distinct s6Step164EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step164EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step164EntryGvRow.payload++s6Step164EntryGvFresh) s6Step164EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step164EntryBank_rows : planWindowRowsLog s6Step164EntryFBefore [(s6Step164EntryFRow,188),(s6Step164EntryGRow,188),(s6Step164EntryFvRow,97),(s6Step164EntryGvRow,97)] [s6Step164EntryFFresh,s6Step164EntryGFresh,s6Step164EntryFvFresh,s6Step164EntryGvFresh]=
    some (s6Step164EntryGvAfter,[s6Step164EntryFOut,s6Step164EntryGOut,s6Step164EntryFvOut,s6Step164EntryGvOut],(growRow 795 s6Step164EntryFFresh ++ (growRow 777 s6Step164EntryGFresh ++ (growRow 776 s6Step164EntryFvFresh ++ (growRow 775 s6Step164EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step164EntryGvAfter [] []=some (s6Step164EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step164EntryGvBefore s6Step164EntryGvAfter s6Step164EntryGvAfter
    s6Step164EntryGvRow s6Step164EntryGvOut 97 s6Step164EntryGvFresh [] [] []
    (growRow 775 s6Step164EntryGvFresh) ([]) s6Step164EntryGv_Incoming s6Step164EntryGv_checked h4 s6Step164EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step164EntryFvBefore s6Step164EntryFvAfter s6Step164EntryGvAfter
    s6Step164EntryFvRow s6Step164EntryFvOut 97 s6Step164EntryFvFresh [(s6Step164EntryGvRow,97)] [s6Step164EntryGvFresh] [s6Step164EntryGvOut]
    (growRow 776 s6Step164EntryFvFresh) ((growRow 775 s6Step164EntryGvFresh ++ [])) s6Step164EntryFv_Incoming s6Step164EntryFv_checked h3 s6Step164EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step164EntryGBefore s6Step164EntryGAfter s6Step164EntryGvAfter
    s6Step164EntryGRow s6Step164EntryGOut 188 s6Step164EntryGFresh [(s6Step164EntryFvRow,97),(s6Step164EntryGvRow,97)] [s6Step164EntryFvFresh,s6Step164EntryGvFresh] [s6Step164EntryFvOut,s6Step164EntryGvOut]
    (growRow 777 s6Step164EntryGFresh) ((growRow 776 s6Step164EntryFvFresh ++ (growRow 775 s6Step164EntryGvFresh ++ []))) s6Step164EntryG_Incoming s6Step164EntryG_checked h2 s6Step164EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step164EntryFBefore s6Step164EntryFAfter s6Step164EntryGvAfter
    s6Step164EntryFRow s6Step164EntryFOut 188 s6Step164EntryFFresh [(s6Step164EntryGRow,188),(s6Step164EntryFvRow,97),(s6Step164EntryGvRow,97)] [s6Step164EntryGFresh,s6Step164EntryFvFresh,s6Step164EntryGvFresh] [s6Step164EntryGOut,s6Step164EntryFvOut,s6Step164EntryGvOut]
    (growRow 795 s6Step164EntryFFresh) ((growRow 777 s6Step164EntryGFresh ++ (growRow 776 s6Step164EntryFvFresh ++ (growRow 775 s6Step164EntryGvFresh ++ [])))) s6Step164EntryF_Incoming s6Step164EntryF_checked h1 s6Step164EntryF_Outgoing
  exact h0

private theorem s6Step164EntryBank_checked : compileHmrBankResizeLog .entry s6Step164EntryFBefore ⟨s6Step164EntryFRow,s6Step164EntryGRow,s6Step164EntryFvRow,s6Step164EntryGvRow⟩ ⟨188,188,97,97⟩ [s6Step164EntryFFresh,s6Step164EntryGFresh,s6Step164EntryFvFresh,s6Step164EntryGvFresh]=
    some (s6Step164EntryGvAfter,⟨s6Step164EntryFOut,s6Step164EntryGOut,s6Step164EntryFvOut,s6Step164EntryGvOut⟩,(growRow 795 s6Step164EntryFFresh ++ (growRow 777 s6Step164EntryGFresh ++ (growRow 776 s6Step164EntryFvFresh ++ (growRow 775 s6Step164EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step164EntryBank_rows]
  rfl

private def s6Step164ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,443),(444,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step164ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164ExitFBefore : Arena := s6Step164ExitGAfter

private def s6Step164ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 876],795⟩

private def s6Step164ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step164ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 857, 818, 863],777⟩

private def s6Step164ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 879, 922],775⟩

private theorem s6Step164ExitBank_incomingDistinct : ([s6Step164ExitGRow,s6Step164ExitFRow,s6Step164ExitFvRow,s6Step164ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164ExitF_Incoming : rowsOwned s6Step164ExitFBefore [s6Step164ExitFRow,s6Step164ExitFvRow,s6Step164ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164ExitGRow,s6Step164ExitFRow,s6Step164ExitFvRow,s6Step164ExitGvRow] 1 s6Step164ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step164ExitBank_outgoingOwned : rowsOwned s6Step164ExitGvAfter [s6Step164ExitGOut,s6Step164ExitFOut,s6Step164ExitFvOut,s6Step164ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step164ExitGvAfter (fun q => ([(0,443),(444,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step164ExitF_Outgoing : rowsOwned s6Step164ExitGvAfter [s6Step164ExitFOut,s6Step164ExitFvOut,s6Step164ExitGvOut] :=
  hmrRows_owned_drop s6Step164ExitGvAfter [s6Step164ExitGOut,s6Step164ExitFOut,s6Step164ExitFvOut,s6Step164ExitGvOut] 1 s6Step164ExitBank_outgoingOwned

private theorem s6Step164ExitF_distinct : (s6Step164ExitFRow.sign::s6Step164ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164ExitF_owned : (s6Step164ExitFRow.sign::s6Step164ExitFRow.payload).toFinset⊆s6Step164ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164ExitF_retired : s6Step164ExitFBefore.retireSet s6Step164ExitFExtra.toFinset=s6Step164ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step164ExitFBefore s6Step164ExitFAfter s6Step164ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step164ExitFBefore s6Step164ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,443),(444,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step164ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step164ExitF_checked : planRowResizeLog s6Step164ExitFBefore s6Step164ExitFRow 187 []=
    some (s6Step164ExitFAfter,s6Step164ExitFOut,shrinkRow 795 s6Step164ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step164ExitFBefore s6Step164ExitFRow 187 s6Step164ExitF_distinct s6Step164ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step164ExitFRow.payload.take 187) s6Step164ExitFRow.sign=s6Step164ExitFOut := by decide +kernel
  have hi : s6Step164ExitFRow.payload.drop 187=s6Step164ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step164ExitF_retired] at result
  exact result

private def s6Step164ExitFvAfter : Arena := s6Step164ExitFAfter

private def s6Step164ExitFvBefore : Arena := s6Step164ExitFAfter

private theorem s6Step164ExitFv_Incoming : rowsOwned s6Step164ExitFvBefore [s6Step164ExitFvRow,s6Step164ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164ExitGRow,s6Step164ExitFRow,s6Step164ExitFvRow,s6Step164ExitGvRow] 2 s6Step164ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164ExitFvBefore (fun q => ([(0,443),(444,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step164ExitFv_Outgoing : rowsOwned s6Step164ExitGvAfter [s6Step164ExitFvOut,s6Step164ExitGvOut] :=
  hmrRows_owned_drop s6Step164ExitGvAfter [s6Step164ExitGOut,s6Step164ExitFOut,s6Step164ExitFvOut,s6Step164ExitGvOut] 2 s6Step164ExitBank_outgoingOwned

private theorem s6Step164ExitFv_distinct : (s6Step164ExitFvRow.sign::s6Step164ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164ExitFv_owned : (s6Step164ExitFvRow.sign::s6Step164ExitFvRow.payload).toFinset⊆s6Step164ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164ExitFvBefore (fun q => ([(0,443),(444,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164ExitFv_reserved : s6Step164ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step164ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step164ExitFv_checked : planRowResizeLog s6Step164ExitFvBefore s6Step164ExitFvRow 98 []=
    some (s6Step164ExitFvAfter,s6Step164ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step164ExitFvBefore s6Step164ExitFvAfter s6Step164ExitFvRow 98 []
    s6Step164ExitFv_distinct s6Step164ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step164ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step164ExitFvRow.payload++[]) s6Step164ExitFvRow.sign=s6Step164ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step164ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step164ExitG_Incoming : rowsOwned s6Step164ExitGBefore [s6Step164ExitGRow,s6Step164ExitFRow,s6Step164ExitFvRow,s6Step164ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164ExitGRow,s6Step164ExitFRow,s6Step164ExitFvRow,s6Step164ExitGvRow] 0 s6Step164ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step164ExitG_Outgoing : rowsOwned s6Step164ExitGvAfter [s6Step164ExitGOut,s6Step164ExitFOut,s6Step164ExitFvOut,s6Step164ExitGvOut] :=
  hmrRows_owned_drop s6Step164ExitGvAfter [s6Step164ExitGOut,s6Step164ExitFOut,s6Step164ExitFvOut,s6Step164ExitGvOut] 0 s6Step164ExitBank_outgoingOwned

private theorem s6Step164ExitG_distinct : (s6Step164ExitGRow.sign::s6Step164ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164ExitG_owned : (s6Step164ExitGRow.sign::s6Step164ExitGRow.payload).toFinset⊆s6Step164ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164ExitG_retired : s6Step164ExitGBefore.retireSet s6Step164ExitGExtra.toFinset=s6Step164ExitGAfter := by
  unfold Arena.retireSet s6Step164ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step164ExitGBefore,s6Step164ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step164ExitG_checked : planRowResizeLog s6Step164ExitGBefore s6Step164ExitGRow 186 []=
    some (s6Step164ExitGAfter,s6Step164ExitGOut,shrinkRow 777 s6Step164ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step164ExitGBefore s6Step164ExitGRow 186 s6Step164ExitG_distinct s6Step164ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step164ExitGRow.payload.take 186) s6Step164ExitGRow.sign=s6Step164ExitGOut := by decide +kernel
  have hi : s6Step164ExitGRow.payload.drop 186=s6Step164ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step164ExitG_retired] at result
  exact result

private def s6Step164ExitGvBefore : Arena := s6Step164ExitFAfter

private theorem s6Step164ExitGv_Incoming : rowsOwned s6Step164ExitGvBefore [s6Step164ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164ExitGRow,s6Step164ExitFRow,s6Step164ExitFvRow,s6Step164ExitGvRow] 3 s6Step164ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164ExitGvBefore (fun q => ([(0,443),(444,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step164ExitGv_Outgoing : rowsOwned s6Step164ExitGvAfter [s6Step164ExitGvOut] :=
  hmrRows_owned_drop s6Step164ExitGvAfter [s6Step164ExitGOut,s6Step164ExitFOut,s6Step164ExitFvOut,s6Step164ExitGvOut] 3 s6Step164ExitBank_outgoingOwned

private theorem s6Step164ExitGv_distinct : (s6Step164ExitGvRow.sign::s6Step164ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164ExitGv_owned : (s6Step164ExitGvRow.sign::s6Step164ExitGvRow.payload).toFinset⊆s6Step164ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164ExitGvBefore (fun q => ([(0,443),(444,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164ExitGv_retired : s6Step164ExitGvBefore.retireSet s6Step164ExitGvExtra.toFinset=s6Step164ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step164ExitGvBefore s6Step164ExitGvAfter s6Step164ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step164ExitGvBefore s6Step164ExitGvAfter (fun q => ([(0,443),(444,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,443),(444,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step164ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step164ExitGv_checked : planRowResizeLog s6Step164ExitGvBefore s6Step164ExitGvRow 96 []=
    some (s6Step164ExitGvAfter,s6Step164ExitGvOut,shrinkRow 775 s6Step164ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step164ExitGvBefore s6Step164ExitGvRow 96 s6Step164ExitGv_distinct s6Step164ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step164ExitGvRow.payload.take 96) s6Step164ExitGvRow.sign=s6Step164ExitGvOut := by decide +kernel
  have hi : s6Step164ExitGvRow.payload.drop 96=s6Step164ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step164ExitGv_retired] at result
  exact result

private theorem s6Step164ExitBank_rows : planWindowRowsLog s6Step164ExitGBefore [(s6Step164ExitGRow,186),(s6Step164ExitFRow,187),(s6Step164ExitFvRow,98),(s6Step164ExitGvRow,96)] [[],[],[],[]]=
    some (s6Step164ExitGvAfter,[s6Step164ExitGOut,s6Step164ExitFOut,s6Step164ExitFvOut,s6Step164ExitGvOut],(shrinkRow 777 s6Step164ExitGExtra ++ (shrinkRow 795 s6Step164ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step164ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step164ExitGvAfter [] []=some (s6Step164ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step164ExitGvBefore s6Step164ExitGvAfter s6Step164ExitGvAfter
    s6Step164ExitGvRow s6Step164ExitGvOut 96 [] [] [] []
    (shrinkRow 775 s6Step164ExitGvExtra) ([]) s6Step164ExitGv_Incoming s6Step164ExitGv_checked h4 s6Step164ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step164ExitFvBefore s6Step164ExitFvAfter s6Step164ExitGvAfter
    s6Step164ExitFvRow s6Step164ExitFvOut 98 [] [(s6Step164ExitGvRow,96)] [[]] [s6Step164ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step164ExitGvExtra ++ [])) s6Step164ExitFv_Incoming s6Step164ExitFv_checked h3 s6Step164ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step164ExitFBefore s6Step164ExitFAfter s6Step164ExitGvAfter
    s6Step164ExitFRow s6Step164ExitFOut 187 [] [(s6Step164ExitFvRow,98),(s6Step164ExitGvRow,96)] [[],[]] [s6Step164ExitFvOut,s6Step164ExitGvOut]
    (shrinkRow 795 s6Step164ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step164ExitGvExtra ++ []))) s6Step164ExitF_Incoming s6Step164ExitF_checked h2 s6Step164ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step164ExitGBefore s6Step164ExitGAfter s6Step164ExitGvAfter
    s6Step164ExitGRow s6Step164ExitGOut 186 [] [(s6Step164ExitFRow,187),(s6Step164ExitFvRow,98),(s6Step164ExitGvRow,96)] [[],[],[]] [s6Step164ExitFOut,s6Step164ExitFvOut,s6Step164ExitGvOut]
    (shrinkRow 777 s6Step164ExitGExtra) ((shrinkRow 795 s6Step164ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step164ExitGvExtra ++ [])))) s6Step164ExitG_Incoming s6Step164ExitG_checked h1 s6Step164ExitG_Outgoing
  exact h0

private theorem s6Step164ExitBank_checked : compileHmrBankResizeLog .exit s6Step164ExitGBefore ⟨s6Step164ExitFRow,s6Step164ExitGRow,s6Step164ExitFvRow,s6Step164ExitGvRow⟩ ⟨187,186,98,96⟩ [[],[],[],[]]=
    some (s6Step164ExitGvAfter,⟨s6Step164ExitFOut,s6Step164ExitGOut,s6Step164ExitFvOut,s6Step164ExitGvOut⟩,(shrinkRow 777 s6Step164ExitGExtra ++ (shrinkRow 795 s6Step164ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step164ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step164ExitBank_rows]
  rfl

private theorem s6Step164Add0_apart : Disjoint s6Step164Add0Arena.live s6Step164Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step164Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164Add0_card : s6Step164Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step164Add0_borrowed : s6Step164Add0Arena.checkBorrow (hmrHybridCount s6Step164Add0Arena s6Step164Add0B.length) s6Step164Add0Work=some s6Step164Add0During := by
  have len : s6Step164Add0Work.length=hmrHybridCount s6Step164Add0Arena s6Step164Add0B.length := by
    rw [hmrHybridCount,s6Step164Add0_card]
    decide +kernel
  have nd : s6Step164Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step164Add0Arena s6Step164Add0During s6Step164Add0Work.toFinset s6Step164Add0_bounded s6Step164Add0_apart rfl

private theorem s6Step164Add0_distinct : (891::890::903::(s6Step164Add0A++s6Step164Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164Add0_owned : (891::890::903::(s6Step164Add0A++s6Step164Add0B)).toFinset⊆s6Step164Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step164Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164Add0_checked : compileHmrHybridCinLog s6Step164Add0Arena 890 891 903 s6Step164Add0A s6Step164Add0B s6Step164Add0Work=some s6Step164Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step164Add0Arena s6Step164Add0During 890 891 903 s6Step164Add0A s6Step164Add0B s6Step164Add0Work
    (by decide +kernel) (by decide +kernel) s6Step164Add0_distinct
    (fun q hq => s6Step164Add0_owned (List.mem_toFinset.mpr hq)) s6Step164Add0_borrowed

private theorem s6Step164Add1_apart : Disjoint s6Step164Add1Arena.live s6Step164Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step164Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164Add1_card : s6Step164Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step164Add1_borrowed : s6Step164Add1Arena.checkBorrow (hmrHybridCount s6Step164Add1Arena s6Step164Add1B.length) s6Step164Add1Work=some s6Step164Add1During := by
  have len : s6Step164Add1Work.length=hmrHybridCount s6Step164Add1Arena s6Step164Add1B.length := by
    rw [hmrHybridCount,s6Step164Add1_card]
    decide +kernel
  have nd : s6Step164Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step164Add1Arena s6Step164Add1During s6Step164Add1Work.toFinset s6Step164Add1_bounded s6Step164Add1_apart rfl

private theorem s6Step164Add1_distinct : (891::890::903::(s6Step164Add1A++s6Step164Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164Add1_owned : (891::890::903::(s6Step164Add1A++s6Step164Add1B)).toFinset⊆s6Step164Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step164Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164Add1_checked : compileHmrHybridCinLog s6Step164Add1Arena 890 891 903 s6Step164Add1A s6Step164Add1B s6Step164Add1Work=some s6Step164Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step164Add1Arena s6Step164Add1During 890 891 903 s6Step164Add1A s6Step164Add1B s6Step164Add1Work
    (by decide +kernel) (by decide +kernel) s6Step164Add1_distinct
    (fun q hq => s6Step164Add1_owned (List.mem_toFinset.mpr hq)) s6Step164Add1_borrowed

private theorem s6Step164F4_apart : Disjoint (s6Step164Add0A++s6Step164Add0B).toFinset (s6Step164Add1A++s6Step164Add1B).toFinset := by
  have nd : ((s6Step164Add0A++s6Step164Add0B)++(s6Step164Add1A++s6Step164Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step164F4_carry : s6Step164F4FlagArena.checkBorrow 1 [903]=some s6Step164Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step164F4FlagArena,s6Step164HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step164F4FlagArena,s6Step164HeadFvAfter,s6Step164Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step164F4_distinct : (828::890::891::903::((s6Step164Add0A++s6Step164Add1A)++(s6Step164Add0B++s6Step164Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164F4_flag : s6Step164HeadFvAfter.checkBorrow 1 [891]=some s6Step164F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step164HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step164F4_owned : (828::890::((s6Step164Add0A++s6Step164Add1A)++(s6Step164Add0B++s6Step164Add1B))).toFinset⊆s6Step164HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step164HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164F4_checked : compileHmrHybridF4Log s6Step164HeadFvAfter 828 890 s6Step164Add0A s6Step164Add0B s6Step164Add1A s6Step164Add1B [891] [903] s6Step164Add0Work s6Step164Add1Work=some s6Step164F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step164HeadFvAfter s6Step164F4FlagArena s6Step164Add0Arena s6Step164Add0During s6Step164Add1During 828 890
    s6Step164Add0A s6Step164Add0B s6Step164Add1A s6Step164Add1B [891] [903] s6Step164Add0Work s6Step164Add1Work
    (fun q hq => s6Step164F4_owned (List.mem_toFinset.mpr hq)) s6Step164F4_flag s6Step164F4_carry
    s6Step164F4_distinct s6Step164F4_apart s6Step164Add0_checked s6Step164Add1_checked

private theorem s6Step164Front_branch : s6Step164FrontSigmaArena.checkBorrow 1 [890]=some s6Step164HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step164FrontSigmaArena,s6Step164EntryGvAfter,arenaWires]
  · change s6Step164HeadGBefore.live=(s6Step164EntryGvAfter.live∪{828})∪{890}
    apply hmrArena_union_pair_of_filter_check s6Step164EntryGvAfter s6Step164HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 828 890 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step164Front_entry : HmrFrontEntryValid s6Step164EntryFBefore s6Step164FrontBank 188 97 ⟨187,186,98,96⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step164FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step164EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step164EntryFBefore (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step164FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step164Front_sigma : s6Step164EntryGvAfter.checkBorrow 1 [828]=some s6Step164FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step164EntryGvAfter,arenaWires]
  · rfl

private def s6Step164HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164HeadFBefore : Arena := s6Step164HeadGAfter

private def s6Step164HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step164HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908],776⟩

private def s6Step164HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 857, 818],777⟩

private def s6Step164HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 879],775⟩

private theorem s6Step164HeadBank_incomingDistinct : ([s6Step164HeadGRow,s6Step164HeadFRow,s6Step164HeadGvRow,s6Step164HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164HeadF_Incoming : rowsOwned s6Step164HeadFBefore [s6Step164HeadFRow,s6Step164HeadGvRow,s6Step164HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164HeadGRow,s6Step164HeadFRow,s6Step164HeadGvRow,s6Step164HeadFvRow] 1 s6Step164HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step164HeadBank_outgoingOwned : rowsOwned s6Step164HeadFvAfter [s6Step164HeadGOut,s6Step164HeadFOut,s6Step164HeadGvOut,s6Step164HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step164HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step164HeadF_Outgoing : rowsOwned s6Step164HeadFvAfter [s6Step164HeadFOut,s6Step164HeadGvOut,s6Step164HeadFvOut] :=
  hmrRows_owned_drop s6Step164HeadFvAfter [s6Step164HeadGOut,s6Step164HeadFOut,s6Step164HeadGvOut,s6Step164HeadFvOut] 1 s6Step164HeadBank_outgoingOwned

private theorem s6Step164HeadF_distinct : (s6Step164HeadFRow.sign::s6Step164HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164HeadF_owned : (s6Step164HeadFRow.sign::s6Step164HeadFRow.payload).toFinset⊆s6Step164HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164HeadF_reserved : s6Step164HeadFBefore.reserve s6Step164HeadFFresh.toFinset=some s6Step164HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step164HeadFFresh,arenaWires]
  · norm_num [s6Step164HeadFBefore,s6Step164HeadGAfter,s6Step164HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step164HeadFAfter,s6Step164HeadFBefore,s6Step164HeadGAfter,s6Step164HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step164HeadF_checked : planRowResizeLog s6Step164HeadFBefore s6Step164HeadFRow 189 s6Step164HeadFFresh=
    some (s6Step164HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 876],795⟩,growRow 795 s6Step164HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step164HeadFBefore s6Step164HeadFAfter s6Step164HeadFRow 189 s6Step164HeadFFresh
    s6Step164HeadF_distinct s6Step164HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step164HeadF_reserved
  have rowEq : WindowRow.mk (s6Step164HeadFRow.payload++s6Step164HeadFFresh) s6Step164HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step164HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step164HeadFvBefore : Arena := s6Step164HeadGvAfter

private theorem s6Step164HeadFv_Incoming : rowsOwned s6Step164HeadFvBefore [s6Step164HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164HeadGRow,s6Step164HeadFRow,s6Step164HeadGvRow,s6Step164HeadFvRow] 3 s6Step164HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step164HeadFv_Outgoing : rowsOwned s6Step164HeadFvAfter [s6Step164HeadFvOut] :=
  hmrRows_owned_drop s6Step164HeadFvAfter [s6Step164HeadGOut,s6Step164HeadFOut,s6Step164HeadGvOut,s6Step164HeadFvOut] 3 s6Step164HeadBank_outgoingOwned

private theorem s6Step164HeadFv_distinct : (s6Step164HeadFvRow.sign::s6Step164HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164HeadFv_owned : (s6Step164HeadFvRow.sign::s6Step164HeadFvRow.payload).toFinset⊆s6Step164HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164HeadFv_reserved : s6Step164HeadFvBefore.reserve s6Step164HeadFvFresh.toFinset=some s6Step164HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step164HeadFvFresh,arenaWires]
  · norm_num [s6Step164HeadFvBefore,s6Step164HeadGvAfter,s6Step164HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step164HeadFvAfter,s6Step164HeadFvBefore,s6Step164HeadGvAfter,s6Step164HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step164HeadFv_checked : planRowResizeLog s6Step164HeadFvBefore s6Step164HeadFvRow 98 s6Step164HeadFvFresh=
    some (s6Step164HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩,growRow 776 s6Step164HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step164HeadFvBefore s6Step164HeadFvAfter s6Step164HeadFvRow 98 s6Step164HeadFvFresh
    s6Step164HeadFv_distinct s6Step164HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step164HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step164HeadFvRow.payload++s6Step164HeadFvFresh) s6Step164HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step164HeadG_Incoming : rowsOwned s6Step164HeadGBefore [s6Step164HeadGRow,s6Step164HeadFRow,s6Step164HeadGvRow,s6Step164HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164HeadGRow,s6Step164HeadFRow,s6Step164HeadGvRow,s6Step164HeadFvRow] 0 s6Step164HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step164HeadG_Outgoing : rowsOwned s6Step164HeadFvAfter [s6Step164HeadGOut,s6Step164HeadFOut,s6Step164HeadGvOut,s6Step164HeadFvOut] :=
  hmrRows_owned_drop s6Step164HeadFvAfter [s6Step164HeadGOut,s6Step164HeadFOut,s6Step164HeadGvOut,s6Step164HeadFvOut] 0 s6Step164HeadBank_outgoingOwned

private theorem s6Step164HeadG_distinct : (s6Step164HeadGRow.sign::s6Step164HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164HeadG_owned : (s6Step164HeadGRow.sign::s6Step164HeadGRow.payload).toFinset⊆s6Step164HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step164HeadG_reserved : s6Step164HeadGBefore.reserve s6Step164HeadGFresh.toFinset=some s6Step164HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step164HeadGFresh,arenaWires]
  · norm_num [s6Step164HeadGBefore,s6Step164HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step164HeadGBefore s6Step164HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step164HeadGFresh rfl rfl
    · norm_num [s6Step164HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step164HeadG_checked : planRowResizeLog s6Step164HeadGBefore s6Step164HeadGRow 189 s6Step164HeadGFresh=
    some (s6Step164HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 857, 818, 863],777⟩,growRow 777 s6Step164HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step164HeadGBefore s6Step164HeadGAfter s6Step164HeadGRow 189 s6Step164HeadGFresh
    s6Step164HeadG_distinct s6Step164HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step164HeadG_reserved
  have rowEq : WindowRow.mk (s6Step164HeadGRow.payload++s6Step164HeadGFresh) s6Step164HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 857, 818, 863],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step164HeadGvBefore : Arena := s6Step164HeadFAfter

private theorem s6Step164HeadGv_Incoming : rowsOwned s6Step164HeadGvBefore [s6Step164HeadGvRow,s6Step164HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step164HeadGRow,s6Step164HeadFRow,s6Step164HeadGvRow,s6Step164HeadFvRow] 2 s6Step164HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step164HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step164HeadGv_Outgoing : rowsOwned s6Step164HeadFvAfter [s6Step164HeadGvOut,s6Step164HeadFvOut] :=
  hmrRows_owned_drop s6Step164HeadFvAfter [s6Step164HeadGOut,s6Step164HeadFOut,s6Step164HeadGvOut,s6Step164HeadFvOut] 2 s6Step164HeadBank_outgoingOwned

private theorem s6Step164HeadGv_distinct : (s6Step164HeadGvRow.sign::s6Step164HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step164HeadGv_owned : (s6Step164HeadGvRow.sign::s6Step164HeadGvRow.payload).toFinset⊆s6Step164HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step164HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step164HeadGv_reserved : s6Step164HeadGvBefore.reserve s6Step164HeadGvFresh.toFinset=some s6Step164HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step164HeadGvFresh,arenaWires]
  · norm_num [s6Step164HeadGvBefore,s6Step164HeadFAfter,s6Step164HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step164HeadGvAfter,s6Step164HeadGvBefore,s6Step164HeadFAfter,s6Step164HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step164HeadGv_checked : planRowResizeLog s6Step164HeadGvBefore s6Step164HeadGvRow 98 s6Step164HeadGvFresh=
    some (s6Step164HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 879, 922],775⟩,growRow 775 s6Step164HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step164HeadGvBefore s6Step164HeadGvAfter s6Step164HeadGvRow 98 s6Step164HeadGvFresh
    s6Step164HeadGv_distinct s6Step164HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step164HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step164HeadGvRow.payload++s6Step164HeadGvFresh) s6Step164HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 879, 922],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step164HeadBank_rows : planWindowRowsLog s6Step164HeadGBefore [(s6Step164HeadGRow,189),(s6Step164HeadFRow,189),(s6Step164HeadGvRow,98),(s6Step164HeadFvRow,98)] [s6Step164HeadGFresh,s6Step164HeadFFresh,s6Step164HeadGvFresh,s6Step164HeadFvFresh]=
    some (s6Step164HeadFvAfter,[s6Step164HeadGOut,s6Step164HeadFOut,s6Step164HeadGvOut,s6Step164HeadFvOut],(growRow 777 s6Step164HeadGFresh ++ (growRow 795 s6Step164HeadFFresh ++ (growRow 775 s6Step164HeadGvFresh ++ (growRow 776 s6Step164HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step164HeadFvAfter [] []=some (s6Step164HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step164HeadFvBefore s6Step164HeadFvAfter s6Step164HeadFvAfter
    s6Step164HeadFvRow s6Step164HeadFvOut 98 s6Step164HeadFvFresh [] [] []
    (growRow 776 s6Step164HeadFvFresh) ([]) s6Step164HeadFv_Incoming s6Step164HeadFv_checked h4 s6Step164HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step164HeadGvBefore s6Step164HeadGvAfter s6Step164HeadFvAfter
    s6Step164HeadGvRow s6Step164HeadGvOut 98 s6Step164HeadGvFresh [(s6Step164HeadFvRow,98)] [s6Step164HeadFvFresh] [s6Step164HeadFvOut]
    (growRow 775 s6Step164HeadGvFresh) ((growRow 776 s6Step164HeadFvFresh ++ [])) s6Step164HeadGv_Incoming s6Step164HeadGv_checked h3 s6Step164HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step164HeadFBefore s6Step164HeadFAfter s6Step164HeadFvAfter
    s6Step164HeadFRow s6Step164HeadFOut 189 s6Step164HeadFFresh [(s6Step164HeadGvRow,98),(s6Step164HeadFvRow,98)] [s6Step164HeadGvFresh,s6Step164HeadFvFresh] [s6Step164HeadGvOut,s6Step164HeadFvOut]
    (growRow 795 s6Step164HeadFFresh) ((growRow 775 s6Step164HeadGvFresh ++ (growRow 776 s6Step164HeadFvFresh ++ []))) s6Step164HeadF_Incoming s6Step164HeadF_checked h2 s6Step164HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step164HeadGBefore s6Step164HeadGAfter s6Step164HeadFvAfter
    s6Step164HeadGRow s6Step164HeadGOut 189 s6Step164HeadGFresh [(s6Step164HeadFRow,189),(s6Step164HeadGvRow,98),(s6Step164HeadFvRow,98)] [s6Step164HeadFFresh,s6Step164HeadGvFresh,s6Step164HeadFvFresh] [s6Step164HeadFOut,s6Step164HeadGvOut,s6Step164HeadFvOut]
    (growRow 777 s6Step164HeadGFresh) ((growRow 795 s6Step164HeadFFresh ++ (growRow 775 s6Step164HeadGvFresh ++ (growRow 776 s6Step164HeadFvFresh ++ [])))) s6Step164HeadG_Incoming s6Step164HeadG_checked h1 s6Step164HeadG_Outgoing
  exact h0

private theorem s6Step164HeadBank_checked : compileHmrBankResizeLog .headroom s6Step164HeadGBefore ⟨s6Step164HeadFRow,s6Step164HeadGRow,s6Step164HeadFvRow,s6Step164HeadGvRow⟩ ⟨189,189,98,98⟩ [s6Step164HeadGFresh,s6Step164HeadFFresh,s6Step164HeadGvFresh,s6Step164HeadFvFresh]=
    some (s6Step164HeadFvAfter,⟨s6Step164HeadFOut,s6Step164HeadGOut,s6Step164HeadFvOut,s6Step164HeadGvOut⟩,(growRow 777 s6Step164HeadGFresh ++ (growRow 795 s6Step164HeadFFresh ++ (growRow 775 s6Step164HeadGvFresh ++ (growRow 776 s6Step164HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step164HeadBank_rows]
  rfl

private theorem s6Step164Front_checked : compileHmrSourceFrontLog s6Step164EntryFBefore s6Step164FrontBank 188 97 ⟨187,186,98,96⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step164FrontLog=some s6Step164FrontPlan := by
  have pairEq : s6Step164FrontPair=⟨s6Step164HeadFRow,s6Step164HeadGRow,s6Step164HeadFvRow,s6Step164HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step164FrontHead=⟨s6Step164ExitFRow,s6Step164ExitGRow,s6Step164ExitFvRow,s6Step164ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step164Add0A=s6Step164FrontHead.f.wires := by decide +kernel
  have gEq : s6Step164Add0B=s6Step164FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step164Add1A=s6Step164FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step164Add1B=s6Step164FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step164EntryFBefore s6Step164FrontBank 188 97 ⟨187,186,98,96⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step164FrontLog s6Step164FrontPlan
  · exact s6Step164Front_entry
  · exact s6Step164EntryBank_checked
  · exact s6Step164Front_sigma
  · rfl
  · exact s6Step164Front_branch
  · rfl
  · simpa only [s6Step164FrontPlan,pairEq] using s6Step164HeadBank_checked
  · simpa only [s6Step164FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step164F4_checked
  · exact s6Step164Counter_checked
  · rfl
  · simpa only [s6Step164FrontPlan,headEq] using s6Step164ExitBank_checked

private theorem s6Step164Complete_explicit_checked : compileHmrEarlyStepLog s6Step164EntryFBefore s6Step164FrontBank 188 97 ⟨187,186,98,96⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step164CompleteLog=some s6Step164CompletePlan := by
  let Q := s6Step164EarlyControlPlan
  have hq := s6Step164EarlyControl_plan_checked
  have fv1 : s6Step164CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step164CompleteOut.fv.payload[2]?.getD s6Step164CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step164CompleteOut.fv.payload[3]?.getD s6Step164CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step164CompleteOut.fv.payload[4]?.getD s6Step164CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step164EntryFBefore s6Step164EarlyControlArena s6Step164FrontBank 188 97 ⟨187,186,98,96⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step164CompleteLog s6Step164FrontPlan Q
    s6Step164Front_checked s6Step164Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step164Complete_owned s6Step164Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step164EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 828 s6Step164CompleteOut.fv.second (s6Step164CompleteOut.fv.payload[2]?.getD s6Step164CompleteOut.fv.sign) (s6Step164CompleteOut.fv.payload[3]?.getD s6Step164CompleteOut.fv.sign) (s6Step164CompleteOut.fv.payload[4]?.getD s6Step164CompleteOut.fv.sign) 890 42 s6Step164EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep164Arena : Arena := s6Step164EntryFBefore
def s6PrivateStep164Bank : WindowBank := s6Step164FrontBank
def s6PrivateStep164Spec : HmrSourceWalkStepLog := ⟨188,97,⟨187,186,98,96⟩,42,.early s6Step164CompleteLog⟩
def s6PrivateStep164Plan : HmrSourceStepPlan := .early s6Step164CompletePlan
theorem s6PrivateStep164_source : s6PrivateStep164Spec=s6ObservedLogs160[4] := rfl
theorem s6PrivateStep164_checked : compileHmrSourceStepLog s6PrivateStep164Arena s6PrivateStep164Bank
    s6PrivateStep164Spec.fgWidth s6PrivateStep164Spec.vWidth s6PrivateStep164Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 164 s6PrivateStep164Spec.need none s6PrivateStep164Spec.log=some s6PrivateStep164Plan := by
  change compileHmrSourceStepLog s6Step164EntryFBefore s6Step164FrontBank 188 97 ⟨187,186,98,96⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 164 42 none (.early s6Step164CompleteLog)=some (.early s6Step164CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 164<498)]
  rw [s6Step164Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
