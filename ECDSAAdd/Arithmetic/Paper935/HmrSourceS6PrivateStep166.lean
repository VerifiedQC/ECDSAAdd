import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep164
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

private def s6Step166CompleteMoves : List (Wire × Wire) := []

private def s6Step166EarlyControlLog : HmrEarlyControlLog := ⟨[890, 876, 857, 922, 863],[891],[903],[791, 825, 810, 894, 923, 809],[]⟩

private def s6Step166FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [922], [], [879]],[[863], [857], [890], [876]],[[], [], [], []]⟩,[805],[818],[891],[903],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step166CompleteLog : HmrEarlyStepLog := ⟨s6Step166FrontLog,s6Step166CompleteMoves,s6Step166EarlyControlLog⟩

private def s6Step166ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step166ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step166ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],777⟩

private def s6Step166ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩

private def s6Step166FrontOut : WindowBank := ⟨s6Step166ExitFOut,s6Step166ExitGOut,s6Step166ExitFvOut,s6Step166ExitGvOut⟩

private def s6Step166CompleteOut : WindowBank := s6Step166FrontOut.repacked s6Step166CompleteMoves

private def s6Step166EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step166EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step166EarlyControlPositiveArena,[891],s6Step166EarlyControlEqualityArena,[903],⟨⟨805,false⟩,[⟨⟨891,false⟩,903⟩]⟩⟩

private def s6Step166EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step166EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step166EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,890⟩,⟨⟨772,false⟩,876⟩,⟨⟨771,false⟩,857⟩,⟨⟨770,false⟩,922⟩,⟨⟨769,false⟩,863⟩]⟩

private def s6Step166EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step166EarlyControlZeroArena,s6Step166EarlyControlZeroPlan,s6Step166EarlyControlClassPlan,s6Step166EarlyControlFlagArena,s6Step166EarlyControlFittedArena,s6Step166EarlyControlHistoryArena,s6Step166EarlyControlSigmaArena,s6Step166EarlyControlOutputArena,s6Step166EarlyControlLog⟩

private def s6Step166CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step166Counter_bounded : s6Step166CounterWork.toFinset⊆arenaWires := by norm_num [s6Step166CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step166HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166CounterDuring : Arena := ⟨s6Step166HeadFvAfter.live∪s6Step166CounterWork.toFinset,Finset.union_subset s6Step166HeadFvAfter.bounded s6Step166Counter_bounded⟩

private def s6Step166EntryFFresh : List Wire := []

private def s6Step166EntryFvFresh : List Wire := []

private def s6Step166EntryGFresh : List Wire := [922]

private def s6Step166EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166EntryGvFresh : List Wire := [879]

private def s6Step166ExitFExtra : List Wire := [857]

private def s6Step166ExitFvExtra : List Wire := [876]

private def s6Step166ExitGExtra : List Wire := [922, 863]

private def s6Step166ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step166ExitGvExtra : List Wire := [890]

private def s6Step166Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166Add0Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step166Add0_bounded : s6Step166Add0Work.toFinset⊆arenaWires := by
  have h : s6Step166Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step166Add0During : Arena := ⟨s6Step166Add0Arena.live∪s6Step166Add0Work.toFinset,Finset.union_subset s6Step166Add0Arena.bounded s6Step166Add0_bounded⟩

private def s6Step166Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166Add1Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step166Add1_bounded : s6Step166Add1Work.toFinset⊆arenaWires := by
  have h : s6Step166Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step166Add1During : Arena := ⟨s6Step166Add1Arena.live∪s6Step166Add1Work.toFinset,Finset.union_subset s6Step166Add1Arena.bounded s6Step166Add1_bounded⟩

private def s6Step166F4FlagArena : Arena := ⟨s6Step166HeadFvAfter.live∪{891},Finset.union_subset s6Step166HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step166F4Plan : HmrHybridF4Plan := ⟨s6Step166F4FlagArena,[891],s6Step166Add0Arena,[903],s6Step166Add0During,s6Step166Add0Work,s6Step166Add1During,s6Step166Add1Work⟩

private def s6Step166HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩

private def s6Step166HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 876],776⟩

private def s6Step166HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 922, 863],777⟩

private def s6Step166HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 890],775⟩

private def s6Step166FrontHead : WindowBank := ⟨s6Step166HeadFOut,s6Step166HeadGOut,s6Step166HeadFvOut,s6Step166HeadGvOut⟩

private def s6Step166EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step166EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step166EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 922],777⟩

private def s6Step166EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩

private def s6Step166FrontPair : WindowBank := ⟨s6Step166EntryFOut,s6Step166EntryGOut,s6Step166EntryFvOut,s6Step166EntryGvOut⟩

private def s6Step166FrontSigmaArena : Arena := ⟨s6Step166EntryGvAfter.live∪{805},Finset.union_subset s6Step166EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step166HeadFFresh : List Wire := [857]

private def s6Step166HeadFvFresh : List Wire := [876]

private def s6Step166HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step166HeadGFresh : List Wire := [863]

private def s6Step166HeadGvFresh : List Wire := [890]

private def s6Step166FrontPlan : HmrSourceFront := ⟨s6Step166EntryGvAfter,s6Step166FrontPair,(growRow 795 s6Step166EntryFFresh ++ (growRow 777 s6Step166EntryGFresh ++ (growRow 776 s6Step166EntryFvFresh ++ (growRow 775 s6Step166EntryGvFresh ++ [])))),s6Step166FrontSigmaArena,[805],s6Step166HeadGBefore,[818],
  s6Step166HeadFvAfter,s6Step166FrontHead,(growRow 777 s6Step166HeadGFresh ++ (growRow 795 s6Step166HeadFFresh ++ (growRow 775 s6Step166HeadGvFresh ++ (growRow 776 s6Step166HeadFvFresh ++ [])))),s6Step166F4Plan,s6Step166CounterDuring,s6Step166CounterWork,s6Step166ExitGvAfter,s6Step166FrontOut,(shrinkRow 777 s6Step166ExitGExtra ++ (shrinkRow 795 s6Step166ExitFExtra ++ (shrinkRow 776 s6Step166ExitFvExtra ++ (shrinkRow 775 s6Step166ExitGvExtra ++ []))))⟩

private def s6Step166CompletePlan : HmrEarlyStepPlan := ⟨s6Step166FrontPlan,s6Step166EarlyControlArena,s6Step166EarlyControlPlan,s6Step166CompleteMoves⟩

private theorem s6Step166Complete_apart : List.Disjoint (s6Step166CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [805, 818, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step166CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[805, 818, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step166Complete_owned : (s6Step166CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step166EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166Complete_repack : s6Step166ExitGvAfter.checkRepack s6Step166CompleteMoves=some s6Step166EarlyControlArena := by rfl

private theorem s6Step166EarlyControl_branchOwned : ([818] : List Wire).toFinset⊆s6Step166EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166EarlyControl_branch : compileHmrBranchRetirement s6Step166EarlyControlSigmaArena 818=some s6Step166EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step166EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step166EarlyControlSigmaArena s6Step166EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) [818] rfl rfl
    decide +kernel

private theorem s6Step166EarlyControl_classEqualityBorrow : s6Step166EarlyControlPositiveArena.checkBorrow (([805, 891] : List Wire).length-1) s6Step166EarlyControlLog.classWork=some s6Step166EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step166EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step166EarlyControlEqualityArena,s6Step166EarlyControlPositiveArena,s6Step166EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step166EarlyControl_classEqualityOwned : ([805, 891] : List Wire).toFinset⊆s6Step166EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166EarlyControl_classEquality : compileHmrEqualityLog s6Step166EarlyControlPositiveArena [805, 891] 0 s6Step166EarlyControlLog.classWork=some (s6Step166EarlyControlEqualityArena,s6Step166EarlyControlLog.classWork,s6Step166EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step166EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step166EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step166EarlyControl_classOwned : ([769, 863, 805] : List Wire).toFinset⊆s6Step166EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166EarlyControl_positiveBorrow : s6Step166EarlyControlZeroArena.checkBorrow (1) s6Step166EarlyControlLog.positiveWork=some s6Step166EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step166EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step166EarlyControlPositiveArena,s6Step166EarlyControlZeroArena,s6Step166EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step166EarlyControl_class : compileHmrSourceClassLog s6Step166EarlyControlZeroArena false 769 s6Step166EarlyControlZeroPlan.top 0 805 s6Step166EarlyControlLog.positiveWork s6Step166EarlyControlLog.classWork=some s6Step166EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step166EarlyControlClassPlan s6Step166EarlyControlZeroArena false 769 s6Step166EarlyControlZeroPlan.top 0 805
  constructor
  · decide +kernel
  · exact s6Step166EarlyControl_classOwned
  · exact s6Step166EarlyControl_positiveBorrow
  · exact s6Step166EarlyControl_classEquality

private theorem s6Step166EarlyControl_entryRecordOwned : ([818, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step166EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166EarlyControl_entrySigmaOwned : ([805, 254] : List Wire).toFinset⊆s6Step166EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166EarlyControl_fitBorrow : s6Step166EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step166EarlyControlLog.recordFresh=some s6Step166EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step166EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step166EarlyControlFittedArena,s6Step166EarlyControlFlagArena,s6Step166EarlyControlLog,arenaWires]

private theorem s6Step166EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step166EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166EarlyControl_fit : compileHmrRecordGrowLog s6Step166EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step166EarlyControlLog.recordFresh=some s6Step166EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step166EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step166EarlyControl_fitBorrow

private theorem s6Step166EarlyControl_flagsBorrow : s6Step166EarlyControlEqualityArena.checkBorrow (6) s6Step166EarlyControlLog.flagWork=some s6Step166EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step166EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step166EarlyControlFlagArena,s6Step166EarlyControlEqualityArena,s6Step166EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step166EarlyControl_flagsOwned : ([903, 253, 252, 251] : List Wire).toFinset⊆s6Step166EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166EarlyControl_flags : compileHmrFlagsLog s6Step166EarlyControlClassPlan.equalityArena s6Step166EarlyControlClassPlan.equality.top 253 252 251 s6Step166EarlyControlLog.flagWork=some s6Step166EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step166EarlyControl_flagsOwned⟩
  · exact s6Step166EarlyControl_flagsBorrow

private theorem s6Step166EarlyControl_historyBorrow : s6Step166EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step166EarlyControlLog.recordFresh=some s6Step166EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step166EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step166EarlyControlArena s6Step166EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step166EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step166EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step166EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166EarlyControl_history : compileHmrRecordGrowLog s6Step166EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step166EarlyControlLog.recordFresh=some s6Step166EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step166EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step166EarlyControl_historyBorrow

private theorem s6Step166EarlyControl_sigmaOwned : ([254, 805] : List Wire).toFinset⊆s6Step166EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166EarlyControl_sigmaReleaseOwned : ([805] : List Wire).toFinset⊆s6Step166EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166EarlyControl_sigmaRelease : s6Step166EarlyControlHistoryArena.release {805} (fun _ => false)=some s6Step166EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step166EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step166EarlyControlHistoryArena s6Step166EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [805] rfl rfl
    decide +kernel

private theorem s6Step166EarlyControl_sigma : compileHmrSigmaDropLog s6Step166EarlyControlHistoryArena false 0 0 254 805 []=some s6Step166EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step166EarlyControl_sigmaOwned⟩
  · exact s6Step166EarlyControl_sigmaRelease

private theorem s6Step166EarlyControl_zeroBorrow : s6Step166EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step166EarlyControlLog.zeroWork=some s6Step166EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step166EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step166EarlyControlArena s6Step166EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step166EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step166EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step166EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step166EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step166EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166EarlyControl_zero : compileHmrEqualityLog s6Step166EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step166EarlyControlLog.zeroWork=some (s6Step166EarlyControlZeroArena,s6Step166EarlyControlLog.zeroWork,s6Step166EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step166EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step166EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step166EarlyControl_logged : s6Step166EarlyControlPlan.Logged s6Step166EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 805 254 253 252 251 818 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step166EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step166EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step166EarlyControl_zero
  · exact s6Step166EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step166EarlyControl_flags
  · exact s6Step166EarlyControl_fit
  · exact s6Step166EarlyControl_history
  · exact s6Step166EarlyControl_sigma
  · exact s6Step166EarlyControl_branch

private theorem s6Step166EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step166EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 805 254 253 252 251 818 42 s6Step166EarlyControlLog=some s6Step166EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step166EarlyControlPlan s6Step166EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 805 254 253 252 251 818 42 s6Step166EarlyControl_logged

private def s6Step166EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step166EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step166EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step166EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],777⟩

private def s6Step166EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828],775⟩

private def s6Step166FrontBank : WindowBank := ⟨s6Step166EntryFRow,s6Step166EntryGRow,s6Step166EntryFvRow,s6Step166EntryGvRow⟩

private def s6Step166Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857, 795]

private def s6Step166Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 922, 863, 777]

private def s6Step166Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 876, 776]

private def s6Step166Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 890, 775]

private theorem s6Step166Counter_apart : Disjoint s6Step166HeadFvAfter.live s6Step166CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step166HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166Counter_borrowed : s6Step166HeadFvAfter.checkBorrow 4 s6Step166CounterWork=some s6Step166CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step166HeadFvAfter s6Step166CounterDuring s6Step166CounterWork.toFinset s6Step166Counter_bounded s6Step166Counter_apart rfl

private theorem s6Step166Counter_owned : (805::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step166HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step166HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166Counter_checked : compileHmrCounterStepLog s6Step166HeadFvAfter true 805 [774, 773, 772, 771, 770, 769] s6Step166CounterWork=some s6Step166CounterDuring := by
  have owned : ∀q∈805::[774, 773, 772, 771, 770, 769],q∈s6Step166HeadFvAfter.live := fun q hq => s6Step166Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step166Counter_borrowed

private def s6Step166EntryFAfter : Arena := s6Step166EntryFBefore

private theorem s6Step166EntryBank_incomingDistinct : ([s6Step166EntryFRow,s6Step166EntryGRow,s6Step166EntryFvRow,s6Step166EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166EntryF_Incoming : rowsOwned s6Step166EntryFBefore [s6Step166EntryFRow,s6Step166EntryGRow,s6Step166EntryFvRow,s6Step166EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166EntryFRow,s6Step166EntryGRow,s6Step166EntryFvRow,s6Step166EntryGvRow] 0 s6Step166EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step166EntryBank_outgoingOwned : rowsOwned s6Step166EntryGvAfter [s6Step166EntryFOut,s6Step166EntryGOut,s6Step166EntryFvOut,s6Step166EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step166EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step166EntryF_Outgoing : rowsOwned s6Step166EntryGvAfter [s6Step166EntryFOut,s6Step166EntryGOut,s6Step166EntryFvOut,s6Step166EntryGvOut] :=
  hmrRows_owned_drop s6Step166EntryGvAfter [s6Step166EntryFOut,s6Step166EntryGOut,s6Step166EntryFvOut,s6Step166EntryGvOut] 0 s6Step166EntryBank_outgoingOwned

private theorem s6Step166EntryF_distinct : (s6Step166EntryFRow.sign::s6Step166EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166EntryF_owned : (s6Step166EntryFRow.sign::s6Step166EntryFRow.payload).toFinset⊆s6Step166EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166EntryF_reserved : s6Step166EntryFBefore.reserve s6Step166EntryFFresh.toFinset=some s6Step166EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step166EntryFFresh,arenaWires]
  · norm_num [s6Step166EntryFBefore,s6Step166EntryFFresh,arenaWires]
  · simp only [s6Step166EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step166EntryF_checked : planRowResizeLog s6Step166EntryFBefore s6Step166EntryFRow 187 s6Step166EntryFFresh=
    some (s6Step166EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩,growRow 795 s6Step166EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step166EntryFBefore s6Step166EntryFAfter s6Step166EntryFRow 187 s6Step166EntryFFresh
    s6Step166EntryF_distinct s6Step166EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step166EntryF_reserved
  have rowEq : WindowRow.mk (s6Step166EntryFRow.payload++s6Step166EntryFFresh) s6Step166EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step166EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step166EntryFvAfter : Arena := s6Step166EntryGAfter

private def s6Step166EntryFvBefore : Arena := s6Step166EntryGAfter

private theorem s6Step166EntryFv_Incoming : rowsOwned s6Step166EntryFvBefore [s6Step166EntryFvRow,s6Step166EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166EntryFRow,s6Step166EntryGRow,s6Step166EntryFvRow,s6Step166EntryGvRow] 2 s6Step166EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step166EntryFv_Outgoing : rowsOwned s6Step166EntryGvAfter [s6Step166EntryFvOut,s6Step166EntryGvOut] :=
  hmrRows_owned_drop s6Step166EntryGvAfter [s6Step166EntryFOut,s6Step166EntryGOut,s6Step166EntryFvOut,s6Step166EntryGvOut] 2 s6Step166EntryBank_outgoingOwned

private theorem s6Step166EntryFv_distinct : (s6Step166EntryFvRow.sign::s6Step166EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166EntryFv_owned : (s6Step166EntryFvRow.sign::s6Step166EntryFvRow.payload).toFinset⊆s6Step166EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166EntryFv_reserved : s6Step166EntryFvBefore.reserve s6Step166EntryFvFresh.toFinset=some s6Step166EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step166EntryFvFresh,arenaWires]
  · norm_num [s6Step166EntryFvBefore,s6Step166EntryGAfter,s6Step166EntryFvFresh,arenaWires]
  · simp only [s6Step166EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step166EntryFv_checked : planRowResizeLog s6Step166EntryFvBefore s6Step166EntryFvRow 98 s6Step166EntryFvFresh=
    some (s6Step166EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩,growRow 776 s6Step166EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step166EntryFvBefore s6Step166EntryFvAfter s6Step166EntryFvRow 98 s6Step166EntryFvFresh
    s6Step166EntryFv_distinct s6Step166EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step166EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step166EntryFvRow.payload++s6Step166EntryFvFresh) s6Step166EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step166EntryGBefore : Arena := s6Step166EntryFBefore

private theorem s6Step166EntryG_Incoming : rowsOwned s6Step166EntryGBefore [s6Step166EntryGRow,s6Step166EntryFvRow,s6Step166EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166EntryFRow,s6Step166EntryGRow,s6Step166EntryFvRow,s6Step166EntryGvRow] 1 s6Step166EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step166EntryG_Outgoing : rowsOwned s6Step166EntryGvAfter [s6Step166EntryGOut,s6Step166EntryFvOut,s6Step166EntryGvOut] :=
  hmrRows_owned_drop s6Step166EntryGvAfter [s6Step166EntryFOut,s6Step166EntryGOut,s6Step166EntryFvOut,s6Step166EntryGvOut] 1 s6Step166EntryBank_outgoingOwned

private theorem s6Step166EntryG_distinct : (s6Step166EntryGRow.sign::s6Step166EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166EntryG_owned : (s6Step166EntryGRow.sign::s6Step166EntryGRow.payload).toFinset⊆s6Step166EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166EntryG_reserved : s6Step166EntryGBefore.reserve s6Step166EntryGFresh.toFinset=some s6Step166EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step166EntryGFresh,arenaWires]
  · norm_num [s6Step166EntryGBefore,s6Step166EntryFBefore,s6Step166EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step166EntryGBefore s6Step166EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step166EntryGFresh rfl rfl
    · norm_num [s6Step166EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step166EntryG_checked : planRowResizeLog s6Step166EntryGBefore s6Step166EntryGRow 187 s6Step166EntryGFresh=
    some (s6Step166EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 922],777⟩,growRow 777 s6Step166EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step166EntryGBefore s6Step166EntryGAfter s6Step166EntryGRow 187 s6Step166EntryGFresh
    s6Step166EntryG_distinct s6Step166EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step166EntryG_reserved
  have rowEq : WindowRow.mk (s6Step166EntryGRow.payload++s6Step166EntryGFresh) s6Step166EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 922],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step166EntryGvBefore : Arena := s6Step166EntryGAfter

private theorem s6Step166EntryGv_Incoming : rowsOwned s6Step166EntryGvBefore [s6Step166EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166EntryFRow,s6Step166EntryGRow,s6Step166EntryFvRow,s6Step166EntryGvRow] 3 s6Step166EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step166EntryGv_Outgoing : rowsOwned s6Step166EntryGvAfter [s6Step166EntryGvOut] :=
  hmrRows_owned_drop s6Step166EntryGvAfter [s6Step166EntryFOut,s6Step166EntryGOut,s6Step166EntryFvOut,s6Step166EntryGvOut] 3 s6Step166EntryBank_outgoingOwned

private theorem s6Step166EntryGv_distinct : (s6Step166EntryGvRow.sign::s6Step166EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166EntryGv_owned : (s6Step166EntryGvRow.sign::s6Step166EntryGvRow.payload).toFinset⊆s6Step166EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166EntryGv_reserved : s6Step166EntryGvBefore.reserve s6Step166EntryGvFresh.toFinset=some s6Step166EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step166EntryGvFresh,arenaWires]
  · norm_num [s6Step166EntryGvBefore,s6Step166EntryGAfter,s6Step166EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step166EntryGvBefore s6Step166EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step166EntryGvFresh rfl rfl
    · norm_num [s6Step166EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step166EntryGv_checked : planRowResizeLog s6Step166EntryGvBefore s6Step166EntryGvRow 98 s6Step166EntryGvFresh=
    some (s6Step166EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩,growRow 775 s6Step166EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step166EntryGvBefore s6Step166EntryGvAfter s6Step166EntryGvRow 98 s6Step166EntryGvFresh
    s6Step166EntryGv_distinct s6Step166EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step166EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step166EntryGvRow.payload++s6Step166EntryGvFresh) s6Step166EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step166EntryBank_rows : planWindowRowsLog s6Step166EntryFBefore [(s6Step166EntryFRow,187),(s6Step166EntryGRow,187),(s6Step166EntryFvRow,98),(s6Step166EntryGvRow,98)] [s6Step166EntryFFresh,s6Step166EntryGFresh,s6Step166EntryFvFresh,s6Step166EntryGvFresh]=
    some (s6Step166EntryGvAfter,[s6Step166EntryFOut,s6Step166EntryGOut,s6Step166EntryFvOut,s6Step166EntryGvOut],(growRow 795 s6Step166EntryFFresh ++ (growRow 777 s6Step166EntryGFresh ++ (growRow 776 s6Step166EntryFvFresh ++ (growRow 775 s6Step166EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step166EntryGvAfter [] []=some (s6Step166EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step166EntryGvBefore s6Step166EntryGvAfter s6Step166EntryGvAfter
    s6Step166EntryGvRow s6Step166EntryGvOut 98 s6Step166EntryGvFresh [] [] []
    (growRow 775 s6Step166EntryGvFresh) ([]) s6Step166EntryGv_Incoming s6Step166EntryGv_checked h4 s6Step166EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step166EntryFvBefore s6Step166EntryFvAfter s6Step166EntryGvAfter
    s6Step166EntryFvRow s6Step166EntryFvOut 98 s6Step166EntryFvFresh [(s6Step166EntryGvRow,98)] [s6Step166EntryGvFresh] [s6Step166EntryGvOut]
    (growRow 776 s6Step166EntryFvFresh) ((growRow 775 s6Step166EntryGvFresh ++ [])) s6Step166EntryFv_Incoming s6Step166EntryFv_checked h3 s6Step166EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step166EntryGBefore s6Step166EntryGAfter s6Step166EntryGvAfter
    s6Step166EntryGRow s6Step166EntryGOut 187 s6Step166EntryGFresh [(s6Step166EntryFvRow,98),(s6Step166EntryGvRow,98)] [s6Step166EntryFvFresh,s6Step166EntryGvFresh] [s6Step166EntryFvOut,s6Step166EntryGvOut]
    (growRow 777 s6Step166EntryGFresh) ((growRow 776 s6Step166EntryFvFresh ++ (growRow 775 s6Step166EntryGvFresh ++ []))) s6Step166EntryG_Incoming s6Step166EntryG_checked h2 s6Step166EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step166EntryFBefore s6Step166EntryFAfter s6Step166EntryGvAfter
    s6Step166EntryFRow s6Step166EntryFOut 187 s6Step166EntryFFresh [(s6Step166EntryGRow,187),(s6Step166EntryFvRow,98),(s6Step166EntryGvRow,98)] [s6Step166EntryGFresh,s6Step166EntryFvFresh,s6Step166EntryGvFresh] [s6Step166EntryGOut,s6Step166EntryFvOut,s6Step166EntryGvOut]
    (growRow 795 s6Step166EntryFFresh) ((growRow 777 s6Step166EntryGFresh ++ (growRow 776 s6Step166EntryFvFresh ++ (growRow 775 s6Step166EntryGvFresh ++ [])))) s6Step166EntryF_Incoming s6Step166EntryF_checked h1 s6Step166EntryF_Outgoing
  exact h0

private theorem s6Step166EntryBank_checked : compileHmrBankResizeLog .entry s6Step166EntryFBefore ⟨s6Step166EntryFRow,s6Step166EntryGRow,s6Step166EntryFvRow,s6Step166EntryGvRow⟩ ⟨187,187,98,98⟩ [s6Step166EntryFFresh,s6Step166EntryGFresh,s6Step166EntryFvFresh,s6Step166EntryGvFresh]=
    some (s6Step166EntryGvAfter,⟨s6Step166EntryFOut,s6Step166EntryGOut,s6Step166EntryFvOut,s6Step166EntryGvOut⟩,(growRow 795 s6Step166EntryFFresh ++ (growRow 777 s6Step166EntryGFresh ++ (growRow 776 s6Step166EntryFvFresh ++ (growRow 775 s6Step166EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step166EntryBank_rows]
  rfl

private def s6Step166ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166ExitFBefore : Arena := s6Step166ExitGAfter

private def s6Step166ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩

private def s6Step166ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 876],776⟩

private def s6Step166ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 922, 863],777⟩

private def s6Step166ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 890],775⟩

private theorem s6Step166ExitBank_incomingDistinct : ([s6Step166ExitGRow,s6Step166ExitFRow,s6Step166ExitFvRow,s6Step166ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166ExitF_Incoming : rowsOwned s6Step166ExitFBefore [s6Step166ExitFRow,s6Step166ExitFvRow,s6Step166ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166ExitGRow,s6Step166ExitFRow,s6Step166ExitFvRow,s6Step166ExitGvRow] 1 s6Step166ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step166ExitBank_outgoingOwned : rowsOwned s6Step166ExitGvAfter [s6Step166ExitGOut,s6Step166ExitFOut,s6Step166ExitFvOut,s6Step166ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step166ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step166ExitF_Outgoing : rowsOwned s6Step166ExitGvAfter [s6Step166ExitFOut,s6Step166ExitFvOut,s6Step166ExitGvOut] :=
  hmrRows_owned_drop s6Step166ExitGvAfter [s6Step166ExitGOut,s6Step166ExitFOut,s6Step166ExitFvOut,s6Step166ExitGvOut] 1 s6Step166ExitBank_outgoingOwned

private theorem s6Step166ExitF_distinct : (s6Step166ExitFRow.sign::s6Step166ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166ExitF_owned : (s6Step166ExitFRow.sign::s6Step166ExitFRow.payload).toFinset⊆s6Step166ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166ExitF_retired : s6Step166ExitFBefore.retireSet s6Step166ExitFExtra.toFinset=s6Step166ExitFAfter := by
  unfold Arena.retireSet s6Step166ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step166ExitFBefore,s6Step166ExitGAfter,s6Step166ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step166ExitF_checked : planRowResizeLog s6Step166ExitFBefore s6Step166ExitFRow 187 []=
    some (s6Step166ExitFAfter,s6Step166ExitFOut,shrinkRow 795 s6Step166ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step166ExitFBefore s6Step166ExitFRow 187 s6Step166ExitF_distinct s6Step166ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step166ExitFRow.payload.take 187) s6Step166ExitFRow.sign=s6Step166ExitFOut := by decide +kernel
  have hi : s6Step166ExitFRow.payload.drop 187=s6Step166ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step166ExitF_retired] at result
  exact result

private def s6Step166ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step166ExitFvBefore : Arena := s6Step166ExitFAfter

private theorem s6Step166ExitFv_Incoming : rowsOwned s6Step166ExitFvBefore [s6Step166ExitFvRow,s6Step166ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166ExitGRow,s6Step166ExitFRow,s6Step166ExitFvRow,s6Step166ExitGvRow] 2 s6Step166ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step166ExitFv_Outgoing : rowsOwned s6Step166ExitGvAfter [s6Step166ExitFvOut,s6Step166ExitGvOut] :=
  hmrRows_owned_drop s6Step166ExitGvAfter [s6Step166ExitGOut,s6Step166ExitFOut,s6Step166ExitFvOut,s6Step166ExitGvOut] 2 s6Step166ExitBank_outgoingOwned

private theorem s6Step166ExitFv_distinct : (s6Step166ExitFvRow.sign::s6Step166ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166ExitFv_owned : (s6Step166ExitFvRow.sign::s6Step166ExitFvRow.payload).toFinset⊆s6Step166ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166ExitFv_retired : s6Step166ExitFvBefore.retireSet s6Step166ExitFvExtra.toFinset=s6Step166ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step166ExitFvBefore s6Step166ExitFvAfter s6Step166ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step166ExitFvBefore s6Step166ExitFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step166ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step166ExitFv_checked : planRowResizeLog s6Step166ExitFvBefore s6Step166ExitFvRow 98 []=
    some (s6Step166ExitFvAfter,s6Step166ExitFvOut,shrinkRow 776 s6Step166ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step166ExitFvBefore s6Step166ExitFvRow 98 s6Step166ExitFv_distinct s6Step166ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step166ExitFvRow.payload.take 98) s6Step166ExitFvRow.sign=s6Step166ExitFvOut := by decide +kernel
  have hi : s6Step166ExitFvRow.payload.drop 98=s6Step166ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step166ExitFv_retired] at result
  exact result

private def s6Step166ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step166ExitG_Incoming : rowsOwned s6Step166ExitGBefore [s6Step166ExitGRow,s6Step166ExitFRow,s6Step166ExitFvRow,s6Step166ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166ExitGRow,s6Step166ExitFRow,s6Step166ExitFvRow,s6Step166ExitGvRow] 0 s6Step166ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step166ExitG_Outgoing : rowsOwned s6Step166ExitGvAfter [s6Step166ExitGOut,s6Step166ExitFOut,s6Step166ExitFvOut,s6Step166ExitGvOut] :=
  hmrRows_owned_drop s6Step166ExitGvAfter [s6Step166ExitGOut,s6Step166ExitFOut,s6Step166ExitFvOut,s6Step166ExitGvOut] 0 s6Step166ExitBank_outgoingOwned

private theorem s6Step166ExitG_distinct : (s6Step166ExitGRow.sign::s6Step166ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166ExitG_owned : (s6Step166ExitGRow.sign::s6Step166ExitGRow.payload).toFinset⊆s6Step166ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166ExitG_retired : s6Step166ExitGBefore.retireSet s6Step166ExitGExtra.toFinset=s6Step166ExitGAfter := by
  unfold Arena.retireSet s6Step166ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step166ExitGBefore,s6Step166ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step166ExitG_checked : planRowResizeLog s6Step166ExitGBefore s6Step166ExitGRow 186 []=
    some (s6Step166ExitGAfter,s6Step166ExitGOut,shrinkRow 777 s6Step166ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step166ExitGBefore s6Step166ExitGRow 186 s6Step166ExitG_distinct s6Step166ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step166ExitGRow.payload.take 186) s6Step166ExitGRow.sign=s6Step166ExitGOut := by decide +kernel
  have hi : s6Step166ExitGRow.payload.drop 186=s6Step166ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step166ExitG_retired] at result
  exact result

private def s6Step166ExitGvBefore : Arena := s6Step166ExitFvAfter

private theorem s6Step166ExitGv_Incoming : rowsOwned s6Step166ExitGvBefore [s6Step166ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166ExitGRow,s6Step166ExitFRow,s6Step166ExitFvRow,s6Step166ExitGvRow] 3 s6Step166ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step166ExitGv_Outgoing : rowsOwned s6Step166ExitGvAfter [s6Step166ExitGvOut] :=
  hmrRows_owned_drop s6Step166ExitGvAfter [s6Step166ExitGOut,s6Step166ExitFOut,s6Step166ExitFvOut,s6Step166ExitGvOut] 3 s6Step166ExitBank_outgoingOwned

private theorem s6Step166ExitGv_distinct : (s6Step166ExitGvRow.sign::s6Step166ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166ExitGv_owned : (s6Step166ExitGvRow.sign::s6Step166ExitGvRow.payload).toFinset⊆s6Step166ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166ExitGv_retired : s6Step166ExitGvBefore.retireSet s6Step166ExitGvExtra.toFinset=s6Step166ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step166ExitGvBefore s6Step166ExitGvAfter s6Step166ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step166ExitGvBefore s6Step166ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step166ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step166ExitGv_checked : planRowResizeLog s6Step166ExitGvBefore s6Step166ExitGvRow 98 []=
    some (s6Step166ExitGvAfter,s6Step166ExitGvOut,shrinkRow 775 s6Step166ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step166ExitGvBefore s6Step166ExitGvRow 98 s6Step166ExitGv_distinct s6Step166ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step166ExitGvRow.payload.take 98) s6Step166ExitGvRow.sign=s6Step166ExitGvOut := by decide +kernel
  have hi : s6Step166ExitGvRow.payload.drop 98=s6Step166ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step166ExitGv_retired] at result
  exact result

private theorem s6Step166ExitBank_rows : planWindowRowsLog s6Step166ExitGBefore [(s6Step166ExitGRow,186),(s6Step166ExitFRow,187),(s6Step166ExitFvRow,98),(s6Step166ExitGvRow,98)] [[],[],[],[]]=
    some (s6Step166ExitGvAfter,[s6Step166ExitGOut,s6Step166ExitFOut,s6Step166ExitFvOut,s6Step166ExitGvOut],(shrinkRow 777 s6Step166ExitGExtra ++ (shrinkRow 795 s6Step166ExitFExtra ++ (shrinkRow 776 s6Step166ExitFvExtra ++ (shrinkRow 775 s6Step166ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step166ExitGvAfter [] []=some (s6Step166ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step166ExitGvBefore s6Step166ExitGvAfter s6Step166ExitGvAfter
    s6Step166ExitGvRow s6Step166ExitGvOut 98 [] [] [] []
    (shrinkRow 775 s6Step166ExitGvExtra) ([]) s6Step166ExitGv_Incoming s6Step166ExitGv_checked h4 s6Step166ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step166ExitFvBefore s6Step166ExitFvAfter s6Step166ExitGvAfter
    s6Step166ExitFvRow s6Step166ExitFvOut 98 [] [(s6Step166ExitGvRow,98)] [[]] [s6Step166ExitGvOut]
    (shrinkRow 776 s6Step166ExitFvExtra) ((shrinkRow 775 s6Step166ExitGvExtra ++ [])) s6Step166ExitFv_Incoming s6Step166ExitFv_checked h3 s6Step166ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step166ExitFBefore s6Step166ExitFAfter s6Step166ExitGvAfter
    s6Step166ExitFRow s6Step166ExitFOut 187 [] [(s6Step166ExitFvRow,98),(s6Step166ExitGvRow,98)] [[],[]] [s6Step166ExitFvOut,s6Step166ExitGvOut]
    (shrinkRow 795 s6Step166ExitFExtra) ((shrinkRow 776 s6Step166ExitFvExtra ++ (shrinkRow 775 s6Step166ExitGvExtra ++ []))) s6Step166ExitF_Incoming s6Step166ExitF_checked h2 s6Step166ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step166ExitGBefore s6Step166ExitGAfter s6Step166ExitGvAfter
    s6Step166ExitGRow s6Step166ExitGOut 186 [] [(s6Step166ExitFRow,187),(s6Step166ExitFvRow,98),(s6Step166ExitGvRow,98)] [[],[],[]] [s6Step166ExitFOut,s6Step166ExitFvOut,s6Step166ExitGvOut]
    (shrinkRow 777 s6Step166ExitGExtra) ((shrinkRow 795 s6Step166ExitFExtra ++ (shrinkRow 776 s6Step166ExitFvExtra ++ (shrinkRow 775 s6Step166ExitGvExtra ++ [])))) s6Step166ExitG_Incoming s6Step166ExitG_checked h1 s6Step166ExitG_Outgoing
  exact h0

private theorem s6Step166ExitBank_checked : compileHmrBankResizeLog .exit s6Step166ExitGBefore ⟨s6Step166ExitFRow,s6Step166ExitGRow,s6Step166ExitFvRow,s6Step166ExitGvRow⟩ ⟨187,186,98,98⟩ [[],[],[],[]]=
    some (s6Step166ExitGvAfter,⟨s6Step166ExitFOut,s6Step166ExitGOut,s6Step166ExitFvOut,s6Step166ExitGvOut⟩,(shrinkRow 777 s6Step166ExitGExtra ++ (shrinkRow 795 s6Step166ExitFExtra ++ (shrinkRow 776 s6Step166ExitFvExtra ++ (shrinkRow 775 s6Step166ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step166ExitBank_rows]
  rfl

private theorem s6Step166Add0_apart : Disjoint s6Step166Add0Arena.live s6Step166Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step166Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166Add0_card : s6Step166Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step166Add0_borrowed : s6Step166Add0Arena.checkBorrow (hmrHybridCount s6Step166Add0Arena s6Step166Add0B.length) s6Step166Add0Work=some s6Step166Add0During := by
  have len : s6Step166Add0Work.length=hmrHybridCount s6Step166Add0Arena s6Step166Add0B.length := by
    rw [hmrHybridCount,s6Step166Add0_card]
    decide +kernel
  have nd : s6Step166Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step166Add0Arena s6Step166Add0During s6Step166Add0Work.toFinset s6Step166Add0_bounded s6Step166Add0_apart rfl

private theorem s6Step166Add0_distinct : (891::818::903::(s6Step166Add0A++s6Step166Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166Add0_owned : (891::818::903::(s6Step166Add0A++s6Step166Add0B)).toFinset⊆s6Step166Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step166Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166Add0_checked : compileHmrHybridCinLog s6Step166Add0Arena 818 891 903 s6Step166Add0A s6Step166Add0B s6Step166Add0Work=some s6Step166Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step166Add0Arena s6Step166Add0During 818 891 903 s6Step166Add0A s6Step166Add0B s6Step166Add0Work
    (by decide +kernel) (by decide +kernel) s6Step166Add0_distinct
    (fun q hq => s6Step166Add0_owned (List.mem_toFinset.mpr hq)) s6Step166Add0_borrowed

private theorem s6Step166Add1_apart : Disjoint s6Step166Add1Arena.live s6Step166Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step166Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166Add1_card : s6Step166Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step166Add1_borrowed : s6Step166Add1Arena.checkBorrow (hmrHybridCount s6Step166Add1Arena s6Step166Add1B.length) s6Step166Add1Work=some s6Step166Add1During := by
  have len : s6Step166Add1Work.length=hmrHybridCount s6Step166Add1Arena s6Step166Add1B.length := by
    rw [hmrHybridCount,s6Step166Add1_card]
    decide +kernel
  have nd : s6Step166Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step166Add1Arena s6Step166Add1During s6Step166Add1Work.toFinset s6Step166Add1_bounded s6Step166Add1_apart rfl

private theorem s6Step166Add1_distinct : (891::818::903::(s6Step166Add1A++s6Step166Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166Add1_owned : (891::818::903::(s6Step166Add1A++s6Step166Add1B)).toFinset⊆s6Step166Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step166Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166Add1_checked : compileHmrHybridCinLog s6Step166Add1Arena 818 891 903 s6Step166Add1A s6Step166Add1B s6Step166Add1Work=some s6Step166Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step166Add1Arena s6Step166Add1During 818 891 903 s6Step166Add1A s6Step166Add1B s6Step166Add1Work
    (by decide +kernel) (by decide +kernel) s6Step166Add1_distinct
    (fun q hq => s6Step166Add1_owned (List.mem_toFinset.mpr hq)) s6Step166Add1_borrowed

private theorem s6Step166F4_apart : Disjoint (s6Step166Add0A++s6Step166Add0B).toFinset (s6Step166Add1A++s6Step166Add1B).toFinset := by
  have nd : ((s6Step166Add0A++s6Step166Add0B)++(s6Step166Add1A++s6Step166Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step166F4_carry : s6Step166F4FlagArena.checkBorrow 1 [903]=some s6Step166Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step166F4FlagArena,s6Step166HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step166F4FlagArena,s6Step166HeadFvAfter,s6Step166Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step166F4_distinct : (805::818::891::903::((s6Step166Add0A++s6Step166Add1A)++(s6Step166Add0B++s6Step166Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166F4_flag : s6Step166HeadFvAfter.checkBorrow 1 [891]=some s6Step166F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step166HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step166F4_owned : (805::818::((s6Step166Add0A++s6Step166Add1A)++(s6Step166Add0B++s6Step166Add1B))).toFinset⊆s6Step166HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step166HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166F4_checked : compileHmrHybridF4Log s6Step166HeadFvAfter 805 818 s6Step166Add0A s6Step166Add0B s6Step166Add1A s6Step166Add1B [891] [903] s6Step166Add0Work s6Step166Add1Work=some s6Step166F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step166HeadFvAfter s6Step166F4FlagArena s6Step166Add0Arena s6Step166Add0During s6Step166Add1During 805 818
    s6Step166Add0A s6Step166Add0B s6Step166Add1A s6Step166Add1B [891] [903] s6Step166Add0Work s6Step166Add1Work
    (fun q hq => s6Step166F4_owned (List.mem_toFinset.mpr hq)) s6Step166F4_flag s6Step166F4_carry
    s6Step166F4_distinct s6Step166F4_apart s6Step166Add0_checked s6Step166Add1_checked

private theorem s6Step166Front_branch : s6Step166FrontSigmaArena.checkBorrow 1 [818]=some s6Step166HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step166FrontSigmaArena,s6Step166EntryGvAfter,arenaWires]
  · change s6Step166HeadGBefore.live=(s6Step166EntryGvAfter.live∪{805})∪{818}
    apply hmrArena_union_pair_of_filter_check s6Step166EntryGvAfter s6Step166HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 805 818 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step166Front_entry : HmrFrontEntryValid s6Step166EntryFBefore s6Step166FrontBank 187 98 ⟨187,186,98,98⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step166FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step166EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step166EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step166FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step166Front_sigma : s6Step166EntryGvAfter.checkBorrow 1 [805]=some s6Step166FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step166EntryGvAfter,arenaWires]
  · rfl

private def s6Step166HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166HeadFBefore : Arena := s6Step166HeadGAfter

private def s6Step166HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step166HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step166HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 922],777⟩

private def s6Step166HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩

private theorem s6Step166HeadBank_incomingDistinct : ([s6Step166HeadGRow,s6Step166HeadFRow,s6Step166HeadGvRow,s6Step166HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166HeadF_Incoming : rowsOwned s6Step166HeadFBefore [s6Step166HeadFRow,s6Step166HeadGvRow,s6Step166HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166HeadGRow,s6Step166HeadFRow,s6Step166HeadGvRow,s6Step166HeadFvRow] 1 s6Step166HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step166HeadBank_outgoingOwned : rowsOwned s6Step166HeadFvAfter [s6Step166HeadGOut,s6Step166HeadFOut,s6Step166HeadGvOut,s6Step166HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step166HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step166HeadF_Outgoing : rowsOwned s6Step166HeadFvAfter [s6Step166HeadFOut,s6Step166HeadGvOut,s6Step166HeadFvOut] :=
  hmrRows_owned_drop s6Step166HeadFvAfter [s6Step166HeadGOut,s6Step166HeadFOut,s6Step166HeadGvOut,s6Step166HeadFvOut] 1 s6Step166HeadBank_outgoingOwned

private theorem s6Step166HeadF_distinct : (s6Step166HeadFRow.sign::s6Step166HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166HeadF_owned : (s6Step166HeadFRow.sign::s6Step166HeadFRow.payload).toFinset⊆s6Step166HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166HeadF_reserved : s6Step166HeadFBefore.reserve s6Step166HeadFFresh.toFinset=some s6Step166HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step166HeadFFresh,arenaWires]
  · norm_num [s6Step166HeadFBefore,s6Step166HeadGAfter,s6Step166HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step166HeadFAfter,s6Step166HeadFBefore,s6Step166HeadGAfter,s6Step166HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step166HeadF_checked : planRowResizeLog s6Step166HeadFBefore s6Step166HeadFRow 188 s6Step166HeadFFresh=
    some (s6Step166HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩,growRow 795 s6Step166HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step166HeadFBefore s6Step166HeadFAfter s6Step166HeadFRow 188 s6Step166HeadFFresh
    s6Step166HeadF_distinct s6Step166HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step166HeadF_reserved
  have rowEq : WindowRow.mk (s6Step166HeadFRow.payload++s6Step166HeadFFresh) s6Step166HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step166HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step166HeadFvBefore : Arena := s6Step166HeadGvAfter

private theorem s6Step166HeadFv_Incoming : rowsOwned s6Step166HeadFvBefore [s6Step166HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166HeadGRow,s6Step166HeadFRow,s6Step166HeadGvRow,s6Step166HeadFvRow] 3 s6Step166HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step166HeadFv_Outgoing : rowsOwned s6Step166HeadFvAfter [s6Step166HeadFvOut] :=
  hmrRows_owned_drop s6Step166HeadFvAfter [s6Step166HeadGOut,s6Step166HeadFOut,s6Step166HeadGvOut,s6Step166HeadFvOut] 3 s6Step166HeadBank_outgoingOwned

private theorem s6Step166HeadFv_distinct : (s6Step166HeadFvRow.sign::s6Step166HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166HeadFv_owned : (s6Step166HeadFvRow.sign::s6Step166HeadFvRow.payload).toFinset⊆s6Step166HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166HeadFv_reserved : s6Step166HeadFvBefore.reserve s6Step166HeadFvFresh.toFinset=some s6Step166HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step166HeadFvFresh,arenaWires]
  · norm_num [s6Step166HeadFvBefore,s6Step166HeadGvAfter,s6Step166HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step166HeadFvAfter,s6Step166HeadFvBefore,s6Step166HeadGvAfter,s6Step166HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step166HeadFv_checked : planRowResizeLog s6Step166HeadFvBefore s6Step166HeadFvRow 99 s6Step166HeadFvFresh=
    some (s6Step166HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 876],776⟩,growRow 776 s6Step166HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step166HeadFvBefore s6Step166HeadFvAfter s6Step166HeadFvRow 99 s6Step166HeadFvFresh
    s6Step166HeadFv_distinct s6Step166HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step166HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step166HeadFvRow.payload++s6Step166HeadFvFresh) s6Step166HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step166HeadG_Incoming : rowsOwned s6Step166HeadGBefore [s6Step166HeadGRow,s6Step166HeadFRow,s6Step166HeadGvRow,s6Step166HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166HeadGRow,s6Step166HeadFRow,s6Step166HeadGvRow,s6Step166HeadFvRow] 0 s6Step166HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step166HeadG_Outgoing : rowsOwned s6Step166HeadFvAfter [s6Step166HeadGOut,s6Step166HeadFOut,s6Step166HeadGvOut,s6Step166HeadFvOut] :=
  hmrRows_owned_drop s6Step166HeadFvAfter [s6Step166HeadGOut,s6Step166HeadFOut,s6Step166HeadGvOut,s6Step166HeadFvOut] 0 s6Step166HeadBank_outgoingOwned

private theorem s6Step166HeadG_distinct : (s6Step166HeadGRow.sign::s6Step166HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166HeadG_owned : (s6Step166HeadGRow.sign::s6Step166HeadGRow.payload).toFinset⊆s6Step166HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step166HeadG_reserved : s6Step166HeadGBefore.reserve s6Step166HeadGFresh.toFinset=some s6Step166HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step166HeadGFresh,arenaWires]
  · norm_num [s6Step166HeadGBefore,s6Step166HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step166HeadGBefore s6Step166HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step166HeadGFresh rfl rfl
    · norm_num [s6Step166HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step166HeadG_checked : planRowResizeLog s6Step166HeadGBefore s6Step166HeadGRow 188 s6Step166HeadGFresh=
    some (s6Step166HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 922, 863],777⟩,growRow 777 s6Step166HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step166HeadGBefore s6Step166HeadGAfter s6Step166HeadGRow 188 s6Step166HeadGFresh
    s6Step166HeadG_distinct s6Step166HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step166HeadG_reserved
  have rowEq : WindowRow.mk (s6Step166HeadGRow.payload++s6Step166HeadGFresh) s6Step166HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 922, 863],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step166HeadGvBefore : Arena := s6Step166HeadFAfter

private theorem s6Step166HeadGv_Incoming : rowsOwned s6Step166HeadGvBefore [s6Step166HeadGvRow,s6Step166HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step166HeadGRow,s6Step166HeadFRow,s6Step166HeadGvRow,s6Step166HeadFvRow] 2 s6Step166HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step166HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step166HeadGv_Outgoing : rowsOwned s6Step166HeadFvAfter [s6Step166HeadGvOut,s6Step166HeadFvOut] :=
  hmrRows_owned_drop s6Step166HeadFvAfter [s6Step166HeadGOut,s6Step166HeadFOut,s6Step166HeadGvOut,s6Step166HeadFvOut] 2 s6Step166HeadBank_outgoingOwned

private theorem s6Step166HeadGv_distinct : (s6Step166HeadGvRow.sign::s6Step166HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step166HeadGv_owned : (s6Step166HeadGvRow.sign::s6Step166HeadGvRow.payload).toFinset⊆s6Step166HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step166HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step166HeadGv_reserved : s6Step166HeadGvBefore.reserve s6Step166HeadGvFresh.toFinset=some s6Step166HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step166HeadGvFresh,arenaWires]
  · norm_num [s6Step166HeadGvBefore,s6Step166HeadFAfter,s6Step166HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step166HeadGvAfter,s6Step166HeadGvBefore,s6Step166HeadFAfter,s6Step166HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step166HeadGv_checked : planRowResizeLog s6Step166HeadGvBefore s6Step166HeadGvRow 99 s6Step166HeadGvFresh=
    some (s6Step166HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 890],775⟩,growRow 775 s6Step166HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step166HeadGvBefore s6Step166HeadGvAfter s6Step166HeadGvRow 99 s6Step166HeadGvFresh
    s6Step166HeadGv_distinct s6Step166HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step166HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step166HeadGvRow.payload++s6Step166HeadGvFresh) s6Step166HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 890],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step166HeadBank_rows : planWindowRowsLog s6Step166HeadGBefore [(s6Step166HeadGRow,188),(s6Step166HeadFRow,188),(s6Step166HeadGvRow,99),(s6Step166HeadFvRow,99)] [s6Step166HeadGFresh,s6Step166HeadFFresh,s6Step166HeadGvFresh,s6Step166HeadFvFresh]=
    some (s6Step166HeadFvAfter,[s6Step166HeadGOut,s6Step166HeadFOut,s6Step166HeadGvOut,s6Step166HeadFvOut],(growRow 777 s6Step166HeadGFresh ++ (growRow 795 s6Step166HeadFFresh ++ (growRow 775 s6Step166HeadGvFresh ++ (growRow 776 s6Step166HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step166HeadFvAfter [] []=some (s6Step166HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step166HeadFvBefore s6Step166HeadFvAfter s6Step166HeadFvAfter
    s6Step166HeadFvRow s6Step166HeadFvOut 99 s6Step166HeadFvFresh [] [] []
    (growRow 776 s6Step166HeadFvFresh) ([]) s6Step166HeadFv_Incoming s6Step166HeadFv_checked h4 s6Step166HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step166HeadGvBefore s6Step166HeadGvAfter s6Step166HeadFvAfter
    s6Step166HeadGvRow s6Step166HeadGvOut 99 s6Step166HeadGvFresh [(s6Step166HeadFvRow,99)] [s6Step166HeadFvFresh] [s6Step166HeadFvOut]
    (growRow 775 s6Step166HeadGvFresh) ((growRow 776 s6Step166HeadFvFresh ++ [])) s6Step166HeadGv_Incoming s6Step166HeadGv_checked h3 s6Step166HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step166HeadFBefore s6Step166HeadFAfter s6Step166HeadFvAfter
    s6Step166HeadFRow s6Step166HeadFOut 188 s6Step166HeadFFresh [(s6Step166HeadGvRow,99),(s6Step166HeadFvRow,99)] [s6Step166HeadGvFresh,s6Step166HeadFvFresh] [s6Step166HeadGvOut,s6Step166HeadFvOut]
    (growRow 795 s6Step166HeadFFresh) ((growRow 775 s6Step166HeadGvFresh ++ (growRow 776 s6Step166HeadFvFresh ++ []))) s6Step166HeadF_Incoming s6Step166HeadF_checked h2 s6Step166HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step166HeadGBefore s6Step166HeadGAfter s6Step166HeadFvAfter
    s6Step166HeadGRow s6Step166HeadGOut 188 s6Step166HeadGFresh [(s6Step166HeadFRow,188),(s6Step166HeadGvRow,99),(s6Step166HeadFvRow,99)] [s6Step166HeadFFresh,s6Step166HeadGvFresh,s6Step166HeadFvFresh] [s6Step166HeadFOut,s6Step166HeadGvOut,s6Step166HeadFvOut]
    (growRow 777 s6Step166HeadGFresh) ((growRow 795 s6Step166HeadFFresh ++ (growRow 775 s6Step166HeadGvFresh ++ (growRow 776 s6Step166HeadFvFresh ++ [])))) s6Step166HeadG_Incoming s6Step166HeadG_checked h1 s6Step166HeadG_Outgoing
  exact h0

private theorem s6Step166HeadBank_checked : compileHmrBankResizeLog .headroom s6Step166HeadGBefore ⟨s6Step166HeadFRow,s6Step166HeadGRow,s6Step166HeadFvRow,s6Step166HeadGvRow⟩ ⟨188,188,99,99⟩ [s6Step166HeadGFresh,s6Step166HeadFFresh,s6Step166HeadGvFresh,s6Step166HeadFvFresh]=
    some (s6Step166HeadFvAfter,⟨s6Step166HeadFOut,s6Step166HeadGOut,s6Step166HeadFvOut,s6Step166HeadGvOut⟩,(growRow 777 s6Step166HeadGFresh ++ (growRow 795 s6Step166HeadFFresh ++ (growRow 775 s6Step166HeadGvFresh ++ (growRow 776 s6Step166HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step166HeadBank_rows]
  rfl

private theorem s6Step166Front_checked : compileHmrSourceFrontLog s6Step166EntryFBefore s6Step166FrontBank 187 98 ⟨187,186,98,98⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step166FrontLog=some s6Step166FrontPlan := by
  have pairEq : s6Step166FrontPair=⟨s6Step166HeadFRow,s6Step166HeadGRow,s6Step166HeadFvRow,s6Step166HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step166FrontHead=⟨s6Step166ExitFRow,s6Step166ExitGRow,s6Step166ExitFvRow,s6Step166ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step166Add0A=s6Step166FrontHead.f.wires := by decide +kernel
  have gEq : s6Step166Add0B=s6Step166FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step166Add1A=s6Step166FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step166Add1B=s6Step166FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step166EntryFBefore s6Step166FrontBank 187 98 ⟨187,186,98,98⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step166FrontLog s6Step166FrontPlan
  · exact s6Step166Front_entry
  · exact s6Step166EntryBank_checked
  · exact s6Step166Front_sigma
  · rfl
  · exact s6Step166Front_branch
  · rfl
  · simpa only [s6Step166FrontPlan,pairEq] using s6Step166HeadBank_checked
  · simpa only [s6Step166FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step166F4_checked
  · exact s6Step166Counter_checked
  · rfl
  · simpa only [s6Step166FrontPlan,headEq] using s6Step166ExitBank_checked

private theorem s6Step166Complete_explicit_checked : compileHmrEarlyStepLog s6Step166EntryFBefore s6Step166FrontBank 187 98 ⟨187,186,98,98⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step166CompleteLog=some s6Step166CompletePlan := by
  let Q := s6Step166EarlyControlPlan
  have hq := s6Step166EarlyControl_plan_checked
  have fv1 : s6Step166CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step166CompleteOut.fv.payload[2]?.getD s6Step166CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step166CompleteOut.fv.payload[3]?.getD s6Step166CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step166CompleteOut.fv.payload[4]?.getD s6Step166CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step166EntryFBefore s6Step166EarlyControlArena s6Step166FrontBank 187 98 ⟨187,186,98,98⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step166CompleteLog s6Step166FrontPlan Q
    s6Step166Front_checked s6Step166Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step166Complete_owned s6Step166Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step166EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 805 s6Step166CompleteOut.fv.second (s6Step166CompleteOut.fv.payload[2]?.getD s6Step166CompleteOut.fv.sign) (s6Step166CompleteOut.fv.payload[3]?.getD s6Step166CompleteOut.fv.sign) (s6Step166CompleteOut.fv.payload[4]?.getD s6Step166CompleteOut.fv.sign) 818 42 s6Step166EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep166Arena : Arena := s6Step166EntryFBefore
def s6PrivateStep166Bank : WindowBank := s6Step166FrontBank
def s6PrivateStep166Spec : HmrSourceWalkStepLog := ⟨187,98,⟨187,186,98,98⟩,42,.early s6Step166CompleteLog⟩
def s6PrivateStep166Plan : HmrSourceStepPlan := .early s6Step166CompletePlan
theorem s6PrivateStep166_source : s6PrivateStep166Spec=s6ObservedLogs160[6] := rfl
theorem s6PrivateStep166_checked : compileHmrSourceStepLog s6PrivateStep166Arena s6PrivateStep166Bank
    s6PrivateStep166Spec.fgWidth s6PrivateStep166Spec.vWidth s6PrivateStep166Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 166 s6PrivateStep166Spec.need none s6PrivateStep166Spec.log=some s6PrivateStep166Plan := by
  change compileHmrSourceStepLog s6Step166EntryFBefore s6Step166FrontBank 187 98 ⟨187,186,98,98⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 166 42 none (.early s6Step166CompleteLog)=some (.early s6Step166CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 166<498)]
  rw [s6Step166Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
