import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep163
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

private def s6Step165CompleteMoves : List (Wire × Wire) := []

private def s6Step165EarlyControlLog : HmrEarlyControlLog := ⟨[805, 818, 863, 857, 890],[876],[891],[903, 791, 825, 810, 894, 923],[]⟩

private def s6Step165FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [890], [], [828, 805]],[[876], [857], [818], [863]],[[], [], [], []]⟩,[879],[922],[891],[903],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step165CompleteLog : HmrEarlyStepLog := ⟨s6Step165FrontLog,s6Step165CompleteMoves,s6Step165EarlyControlLog⟩

private def s6Step165ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step165ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step165ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],777⟩

private def s6Step165ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828],775⟩

private def s6Step165FrontOut : WindowBank := ⟨s6Step165ExitFOut,s6Step165ExitGOut,s6Step165ExitFvOut,s6Step165ExitGvOut⟩

private def s6Step165CompleteOut : WindowBank := s6Step165FrontOut.repacked s6Step165CompleteMoves

private def s6Step165EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step165EarlyControlPositiveArena,[876],s6Step165EarlyControlEqualityArena,[891],⟨⟨879,false⟩,[⟨⟨876,false⟩,891⟩]⟩⟩

private def s6Step165EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step165EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step165EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨772,false⟩,818⟩,⟨⟨771,false⟩,863⟩,⟨⟨770,false⟩,857⟩,⟨⟨769,false⟩,890⟩]⟩

private def s6Step165EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step165EarlyControlZeroArena,s6Step165EarlyControlZeroPlan,s6Step165EarlyControlClassPlan,s6Step165EarlyControlFlagArena,s6Step165EarlyControlFittedArena,s6Step165EarlyControlHistoryArena,s6Step165EarlyControlSigmaArena,s6Step165EarlyControlOutputArena,s6Step165EarlyControlLog⟩

private def s6Step165CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step165Counter_bounded : s6Step165CounterWork.toFinset⊆arenaWires := by norm_num [s6Step165CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step165HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165CounterDuring : Arena := ⟨s6Step165HeadFvAfter.live∪s6Step165CounterWork.toFinset,Finset.union_subset s6Step165HeadFvAfter.bounded s6Step165Counter_bounded⟩

private def s6Step165EntryFFresh : List Wire := []

private def s6Step165EntryFvFresh : List Wire := []

private def s6Step165EntryGFresh : List Wire := [890]

private def s6Step165EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step165EntryGvFresh : List Wire := [828, 805]

private def s6Step165ExitFExtra : List Wire := [857]

private def s6Step165ExitFvExtra : List Wire := [863]

private def s6Step165ExitGExtra : List Wire := [890, 876]

private def s6Step165ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165ExitGvExtra : List Wire := [805, 818]

private def s6Step165Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165Add0Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step165Add0_bounded : s6Step165Add0Work.toFinset⊆arenaWires := by
  have h : s6Step165Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step165Add0During : Arena := ⟨s6Step165Add0Arena.live∪s6Step165Add0Work.toFinset,Finset.union_subset s6Step165Add0Arena.bounded s6Step165Add0_bounded⟩

private def s6Step165Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165Add1Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step165Add1_bounded : s6Step165Add1Work.toFinset⊆arenaWires := by
  have h : s6Step165Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step165Add1During : Arena := ⟨s6Step165Add1Arena.live∪s6Step165Add1Work.toFinset,Finset.union_subset s6Step165Add1Arena.bounded s6Step165Add1_bounded⟩

private def s6Step165F4FlagArena : Arena := ⟨s6Step165HeadFvAfter.live∪{891},Finset.union_subset s6Step165HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step165F4Plan : HmrHybridF4Plan := ⟨s6Step165F4FlagArena,[891],s6Step165Add0Arena,[903],s6Step165Add0During,s6Step165Add0Work,s6Step165Add1During,s6Step165Add1Work⟩

private def s6Step165HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩

private def s6Step165HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩

private def s6Step165HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 890, 876],777⟩

private def s6Step165HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 805, 818],775⟩

private def s6Step165FrontHead : WindowBank := ⟨s6Step165HeadFOut,s6Step165HeadGOut,s6Step165HeadFvOut,s6Step165HeadGvOut⟩

private def s6Step165EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step165EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step165EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 890],777⟩

private def s6Step165EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 805],775⟩

private def s6Step165FrontPair : WindowBank := ⟨s6Step165EntryFOut,s6Step165EntryGOut,s6Step165EntryFvOut,s6Step165EntryGvOut⟩

private def s6Step165FrontSigmaArena : Arena := ⟨s6Step165EntryGvAfter.live∪{879},Finset.union_subset s6Step165EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step165HeadFFresh : List Wire := [857]

private def s6Step165HeadFvFresh : List Wire := [863]

private def s6Step165HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165HeadGFresh : List Wire := [876]

private def s6Step165HeadGvFresh : List Wire := [818]

private def s6Step165FrontPlan : HmrSourceFront := ⟨s6Step165EntryGvAfter,s6Step165FrontPair,(growRow 795 s6Step165EntryFFresh ++ (growRow 777 s6Step165EntryGFresh ++ (growRow 776 s6Step165EntryFvFresh ++ (growRow 775 s6Step165EntryGvFresh ++ [])))),s6Step165FrontSigmaArena,[879],s6Step165HeadGBefore,[922],
  s6Step165HeadFvAfter,s6Step165FrontHead,(growRow 777 s6Step165HeadGFresh ++ (growRow 795 s6Step165HeadFFresh ++ (growRow 775 s6Step165HeadGvFresh ++ (growRow 776 s6Step165HeadFvFresh ++ [])))),s6Step165F4Plan,s6Step165CounterDuring,s6Step165CounterWork,s6Step165ExitGvAfter,s6Step165FrontOut,(shrinkRow 777 s6Step165ExitGExtra ++ (shrinkRow 795 s6Step165ExitFExtra ++ (shrinkRow 776 s6Step165ExitFvExtra ++ (shrinkRow 775 s6Step165ExitGvExtra ++ []))))⟩

private def s6Step165CompletePlan : HmrEarlyStepPlan := ⟨s6Step165FrontPlan,s6Step165EarlyControlArena,s6Step165EarlyControlPlan,s6Step165CompleteMoves⟩

private theorem s6Step165Complete_apart : List.Disjoint (s6Step165CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [879, 922, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step165CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[879, 922, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step165Complete_owned : (s6Step165CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step165EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165Complete_repack : s6Step165ExitGvAfter.checkRepack s6Step165CompleteMoves=some s6Step165EarlyControlArena := by rfl

private theorem s6Step165EarlyControl_branchOwned : ([922] : List Wire).toFinset⊆s6Step165EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step165EarlyControl_branch : compileHmrBranchRetirement s6Step165EarlyControlSigmaArena 922=some s6Step165EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step165EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step165EarlyControlSigmaArena s6Step165EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [922] rfl rfl
    decide +kernel

private theorem s6Step165EarlyControl_classEqualityBorrow : s6Step165EarlyControlPositiveArena.checkBorrow (([879, 876] : List Wire).length-1) s6Step165EarlyControlLog.classWork=some s6Step165EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step165EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step165EarlyControlEqualityArena,s6Step165EarlyControlPositiveArena,s6Step165EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step165EarlyControl_classEqualityOwned : ([879, 876] : List Wire).toFinset⊆s6Step165EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165EarlyControl_classEquality : compileHmrEqualityLog s6Step165EarlyControlPositiveArena [879, 876] 0 s6Step165EarlyControlLog.classWork=some (s6Step165EarlyControlEqualityArena,s6Step165EarlyControlLog.classWork,s6Step165EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step165EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step165EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step165EarlyControl_classOwned : ([769, 890, 879] : List Wire).toFinset⊆s6Step165EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165EarlyControl_positiveBorrow : s6Step165EarlyControlZeroArena.checkBorrow (1) s6Step165EarlyControlLog.positiveWork=some s6Step165EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step165EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step165EarlyControlPositiveArena,s6Step165EarlyControlZeroArena,s6Step165EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step165EarlyControl_class : compileHmrSourceClassLog s6Step165EarlyControlZeroArena false 769 s6Step165EarlyControlZeroPlan.top 0 879 s6Step165EarlyControlLog.positiveWork s6Step165EarlyControlLog.classWork=some s6Step165EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step165EarlyControlClassPlan s6Step165EarlyControlZeroArena false 769 s6Step165EarlyControlZeroPlan.top 0 879
  constructor
  · decide +kernel
  · exact s6Step165EarlyControl_classOwned
  · exact s6Step165EarlyControl_positiveBorrow
  · exact s6Step165EarlyControl_classEquality

private theorem s6Step165EarlyControl_entryRecordOwned : ([922, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step165EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165EarlyControl_entrySigmaOwned : ([879, 254] : List Wire).toFinset⊆s6Step165EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165EarlyControl_fitBorrow : s6Step165EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step165EarlyControlLog.recordFresh=some s6Step165EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step165EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step165EarlyControlFittedArena,s6Step165EarlyControlFlagArena,s6Step165EarlyControlLog,arenaWires]

private theorem s6Step165EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step165EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165EarlyControl_fit : compileHmrRecordGrowLog s6Step165EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step165EarlyControlLog.recordFresh=some s6Step165EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step165EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step165EarlyControl_fitBorrow

private theorem s6Step165EarlyControl_flagsBorrow : s6Step165EarlyControlEqualityArena.checkBorrow (6) s6Step165EarlyControlLog.flagWork=some s6Step165EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step165EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step165EarlyControlFlagArena,s6Step165EarlyControlEqualityArena,s6Step165EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step165EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s6Step165EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165EarlyControl_flags : compileHmrFlagsLog s6Step165EarlyControlClassPlan.equalityArena s6Step165EarlyControlClassPlan.equality.top 253 252 251 s6Step165EarlyControlLog.flagWork=some s6Step165EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step165EarlyControl_flagsOwned⟩
  · exact s6Step165EarlyControl_flagsBorrow

private theorem s6Step165EarlyControl_historyBorrow : s6Step165EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step165EarlyControlLog.recordFresh=some s6Step165EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step165EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step165EarlyControlHistoryArena,s6Step165EarlyControlArena,s6Step165EarlyControlLog,arenaWires]

private theorem s6Step165EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step165EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165EarlyControl_history : compileHmrRecordGrowLog s6Step165EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step165EarlyControlLog.recordFresh=some s6Step165EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step165EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step165EarlyControl_historyBorrow

private theorem s6Step165EarlyControl_sigmaOwned : ([254, 879] : List Wire).toFinset⊆s6Step165EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165EarlyControl_sigmaReleaseOwned : ([879] : List Wire).toFinset⊆s6Step165EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165EarlyControl_sigmaRelease : s6Step165EarlyControlHistoryArena.release {879} (fun _ => false)=some s6Step165EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step165EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step165EarlyControlHistoryArena s6Step165EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [879] rfl rfl
    decide +kernel

private theorem s6Step165EarlyControl_sigma : compileHmrSigmaDropLog s6Step165EarlyControlHistoryArena false 0 0 254 879 []=some s6Step165EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step165EarlyControl_sigmaOwned⟩
  · exact s6Step165EarlyControl_sigmaRelease

private theorem s6Step165EarlyControl_zeroBorrow : s6Step165EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step165EarlyControlLog.zeroWork=some s6Step165EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step165EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step165EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step165EarlyControlZeroArena,s6Step165EarlyControlArena,s6Step165EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step165EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step165EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step165EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165EarlyControl_zero : compileHmrEqualityLog s6Step165EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step165EarlyControlLog.zeroWork=some (s6Step165EarlyControlZeroArena,s6Step165EarlyControlLog.zeroWork,s6Step165EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step165EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step165EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step165EarlyControl_logged : s6Step165EarlyControlPlan.Logged s6Step165EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 254 253 252 251 922 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step165EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step165EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step165EarlyControl_zero
  · exact s6Step165EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step165EarlyControl_flags
  · exact s6Step165EarlyControl_fit
  · exact s6Step165EarlyControl_history
  · exact s6Step165EarlyControl_sigma
  · exact s6Step165EarlyControl_branch

private theorem s6Step165EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step165EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 254 253 252 251 922 42 s6Step165EarlyControlLog=some s6Step165EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step165EarlyControlPlan s6Step165EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 254 253 252 251 922 42 s6Step165EarlyControl_logged

private def s6Step165EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step165EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step165EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step165EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],777⟩

private def s6Step165EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789],775⟩

private def s6Step165FrontBank : WindowBank := ⟨s6Step165EntryFRow,s6Step165EntryGRow,s6Step165EntryFvRow,s6Step165EntryGvRow⟩

private def s6Step165Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857, 795]

private def s6Step165Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 890, 876, 777]

private def s6Step165Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863, 776]

private def s6Step165Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 805, 818, 775]

private theorem s6Step165Counter_apart : Disjoint s6Step165HeadFvAfter.live s6Step165CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step165HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165Counter_borrowed : s6Step165HeadFvAfter.checkBorrow 4 s6Step165CounterWork=some s6Step165CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step165HeadFvAfter s6Step165CounterDuring s6Step165CounterWork.toFinset s6Step165Counter_bounded s6Step165Counter_apart rfl

private theorem s6Step165Counter_owned : (879::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step165HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step165HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165Counter_checked : compileHmrCounterStepLog s6Step165HeadFvAfter true 879 [774, 773, 772, 771, 770, 769] s6Step165CounterWork=some s6Step165CounterDuring := by
  have owned : ∀q∈879::[774, 773, 772, 771, 770, 769],q∈s6Step165HeadFvAfter.live := fun q hq => s6Step165Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step165Counter_borrowed

private def s6Step165EntryFAfter : Arena := s6Step165EntryFBefore

private theorem s6Step165EntryBank_incomingDistinct : ([s6Step165EntryFRow,s6Step165EntryGRow,s6Step165EntryFvRow,s6Step165EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165EntryF_Incoming : rowsOwned s6Step165EntryFBefore [s6Step165EntryFRow,s6Step165EntryGRow,s6Step165EntryFvRow,s6Step165EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165EntryFRow,s6Step165EntryGRow,s6Step165EntryFvRow,s6Step165EntryGvRow] 0 s6Step165EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step165EntryBank_outgoingOwned : rowsOwned s6Step165EntryGvAfter [s6Step165EntryFOut,s6Step165EntryGOut,s6Step165EntryFvOut,s6Step165EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step165EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step165EntryF_Outgoing : rowsOwned s6Step165EntryGvAfter [s6Step165EntryFOut,s6Step165EntryGOut,s6Step165EntryFvOut,s6Step165EntryGvOut] :=
  hmrRows_owned_drop s6Step165EntryGvAfter [s6Step165EntryFOut,s6Step165EntryGOut,s6Step165EntryFvOut,s6Step165EntryGvOut] 0 s6Step165EntryBank_outgoingOwned

private theorem s6Step165EntryF_distinct : (s6Step165EntryFRow.sign::s6Step165EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165EntryF_owned : (s6Step165EntryFRow.sign::s6Step165EntryFRow.payload).toFinset⊆s6Step165EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step165EntryF_reserved : s6Step165EntryFBefore.reserve s6Step165EntryFFresh.toFinset=some s6Step165EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step165EntryFFresh,arenaWires]
  · norm_num [s6Step165EntryFBefore,s6Step165EntryFFresh,arenaWires]
  · simp only [s6Step165EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step165EntryF_checked : planRowResizeLog s6Step165EntryFBefore s6Step165EntryFRow 187 s6Step165EntryFFresh=
    some (s6Step165EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩,growRow 795 s6Step165EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step165EntryFBefore s6Step165EntryFAfter s6Step165EntryFRow 187 s6Step165EntryFFresh
    s6Step165EntryF_distinct s6Step165EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step165EntryF_reserved
  have rowEq : WindowRow.mk (s6Step165EntryFRow.payload++s6Step165EntryFFresh) s6Step165EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step165EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step165EntryFvAfter : Arena := s6Step165EntryGAfter

private def s6Step165EntryFvBefore : Arena := s6Step165EntryGAfter

private theorem s6Step165EntryFv_Incoming : rowsOwned s6Step165EntryFvBefore [s6Step165EntryFvRow,s6Step165EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165EntryFRow,s6Step165EntryGRow,s6Step165EntryFvRow,s6Step165EntryGvRow] 2 s6Step165EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step165EntryFv_Outgoing : rowsOwned s6Step165EntryGvAfter [s6Step165EntryFvOut,s6Step165EntryGvOut] :=
  hmrRows_owned_drop s6Step165EntryGvAfter [s6Step165EntryFOut,s6Step165EntryGOut,s6Step165EntryFvOut,s6Step165EntryGvOut] 2 s6Step165EntryBank_outgoingOwned

private theorem s6Step165EntryFv_distinct : (s6Step165EntryFvRow.sign::s6Step165EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165EntryFv_owned : (s6Step165EntryFvRow.sign::s6Step165EntryFvRow.payload).toFinset⊆s6Step165EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step165EntryFv_reserved : s6Step165EntryFvBefore.reserve s6Step165EntryFvFresh.toFinset=some s6Step165EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step165EntryFvFresh,arenaWires]
  · norm_num [s6Step165EntryFvBefore,s6Step165EntryGAfter,s6Step165EntryFvFresh,arenaWires]
  · simp only [s6Step165EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step165EntryFv_checked : planRowResizeLog s6Step165EntryFvBefore s6Step165EntryFvRow 98 s6Step165EntryFvFresh=
    some (s6Step165EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩,growRow 776 s6Step165EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step165EntryFvBefore s6Step165EntryFvAfter s6Step165EntryFvRow 98 s6Step165EntryFvFresh
    s6Step165EntryFv_distinct s6Step165EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step165EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step165EntryFvRow.payload++s6Step165EntryFvFresh) s6Step165EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step165EntryGBefore : Arena := s6Step165EntryFBefore

private theorem s6Step165EntryG_Incoming : rowsOwned s6Step165EntryGBefore [s6Step165EntryGRow,s6Step165EntryFvRow,s6Step165EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165EntryFRow,s6Step165EntryGRow,s6Step165EntryFvRow,s6Step165EntryGvRow] 1 s6Step165EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step165EntryG_Outgoing : rowsOwned s6Step165EntryGvAfter [s6Step165EntryGOut,s6Step165EntryFvOut,s6Step165EntryGvOut] :=
  hmrRows_owned_drop s6Step165EntryGvAfter [s6Step165EntryFOut,s6Step165EntryGOut,s6Step165EntryFvOut,s6Step165EntryGvOut] 1 s6Step165EntryBank_outgoingOwned

private theorem s6Step165EntryG_distinct : (s6Step165EntryGRow.sign::s6Step165EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165EntryG_owned : (s6Step165EntryGRow.sign::s6Step165EntryGRow.payload).toFinset⊆s6Step165EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step165EntryG_reserved : s6Step165EntryGBefore.reserve s6Step165EntryGFresh.toFinset=some s6Step165EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step165EntryGFresh,arenaWires]
  · norm_num [s6Step165EntryGBefore,s6Step165EntryFBefore,s6Step165EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step165EntryGBefore s6Step165EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step165EntryGFresh rfl rfl
    · norm_num [s6Step165EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step165EntryG_checked : planRowResizeLog s6Step165EntryGBefore s6Step165EntryGRow 187 s6Step165EntryGFresh=
    some (s6Step165EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 890],777⟩,growRow 777 s6Step165EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step165EntryGBefore s6Step165EntryGAfter s6Step165EntryGRow 187 s6Step165EntryGFresh
    s6Step165EntryG_distinct s6Step165EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step165EntryG_reserved
  have rowEq : WindowRow.mk (s6Step165EntryGRow.payload++s6Step165EntryGFresh) s6Step165EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 890],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step165EntryGvBefore : Arena := s6Step165EntryGAfter

private theorem s6Step165EntryGv_Incoming : rowsOwned s6Step165EntryGvBefore [s6Step165EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165EntryFRow,s6Step165EntryGRow,s6Step165EntryFvRow,s6Step165EntryGvRow] 3 s6Step165EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step165EntryGv_Outgoing : rowsOwned s6Step165EntryGvAfter [s6Step165EntryGvOut] :=
  hmrRows_owned_drop s6Step165EntryGvAfter [s6Step165EntryFOut,s6Step165EntryGOut,s6Step165EntryFvOut,s6Step165EntryGvOut] 3 s6Step165EntryBank_outgoingOwned

private theorem s6Step165EntryGv_distinct : (s6Step165EntryGvRow.sign::s6Step165EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165EntryGv_owned : (s6Step165EntryGvRow.sign::s6Step165EntryGvRow.payload).toFinset⊆s6Step165EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step165EntryGv_reserved : s6Step165EntryGvBefore.reserve s6Step165EntryGvFresh.toFinset=some s6Step165EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step165EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step165EntryGvBefore,s6Step165EntryGAfter,s6Step165EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step165EntryGvBefore s6Step165EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step165EntryGvFresh rfl rfl
    · norm_num [s6Step165EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step165EntryGv_checked : planRowResizeLog s6Step165EntryGvBefore s6Step165EntryGvRow 98 s6Step165EntryGvFresh=
    some (s6Step165EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 805],775⟩,growRow 775 s6Step165EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step165EntryGvBefore s6Step165EntryGvAfter s6Step165EntryGvRow 98 s6Step165EntryGvFresh
    s6Step165EntryGv_distinct s6Step165EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step165EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step165EntryGvRow.payload++s6Step165EntryGvFresh) s6Step165EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 805],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step165EntryBank_rows : planWindowRowsLog s6Step165EntryFBefore [(s6Step165EntryFRow,187),(s6Step165EntryGRow,187),(s6Step165EntryFvRow,98),(s6Step165EntryGvRow,98)] [s6Step165EntryFFresh,s6Step165EntryGFresh,s6Step165EntryFvFresh,s6Step165EntryGvFresh]=
    some (s6Step165EntryGvAfter,[s6Step165EntryFOut,s6Step165EntryGOut,s6Step165EntryFvOut,s6Step165EntryGvOut],(growRow 795 s6Step165EntryFFresh ++ (growRow 777 s6Step165EntryGFresh ++ (growRow 776 s6Step165EntryFvFresh ++ (growRow 775 s6Step165EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step165EntryGvAfter [] []=some (s6Step165EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step165EntryGvBefore s6Step165EntryGvAfter s6Step165EntryGvAfter
    s6Step165EntryGvRow s6Step165EntryGvOut 98 s6Step165EntryGvFresh [] [] []
    (growRow 775 s6Step165EntryGvFresh) ([]) s6Step165EntryGv_Incoming s6Step165EntryGv_checked h4 s6Step165EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step165EntryFvBefore s6Step165EntryFvAfter s6Step165EntryGvAfter
    s6Step165EntryFvRow s6Step165EntryFvOut 98 s6Step165EntryFvFresh [(s6Step165EntryGvRow,98)] [s6Step165EntryGvFresh] [s6Step165EntryGvOut]
    (growRow 776 s6Step165EntryFvFresh) ((growRow 775 s6Step165EntryGvFresh ++ [])) s6Step165EntryFv_Incoming s6Step165EntryFv_checked h3 s6Step165EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step165EntryGBefore s6Step165EntryGAfter s6Step165EntryGvAfter
    s6Step165EntryGRow s6Step165EntryGOut 187 s6Step165EntryGFresh [(s6Step165EntryFvRow,98),(s6Step165EntryGvRow,98)] [s6Step165EntryFvFresh,s6Step165EntryGvFresh] [s6Step165EntryFvOut,s6Step165EntryGvOut]
    (growRow 777 s6Step165EntryGFresh) ((growRow 776 s6Step165EntryFvFresh ++ (growRow 775 s6Step165EntryGvFresh ++ []))) s6Step165EntryG_Incoming s6Step165EntryG_checked h2 s6Step165EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step165EntryFBefore s6Step165EntryFAfter s6Step165EntryGvAfter
    s6Step165EntryFRow s6Step165EntryFOut 187 s6Step165EntryFFresh [(s6Step165EntryGRow,187),(s6Step165EntryFvRow,98),(s6Step165EntryGvRow,98)] [s6Step165EntryGFresh,s6Step165EntryFvFresh,s6Step165EntryGvFresh] [s6Step165EntryGOut,s6Step165EntryFvOut,s6Step165EntryGvOut]
    (growRow 795 s6Step165EntryFFresh) ((growRow 777 s6Step165EntryGFresh ++ (growRow 776 s6Step165EntryFvFresh ++ (growRow 775 s6Step165EntryGvFresh ++ [])))) s6Step165EntryF_Incoming s6Step165EntryF_checked h1 s6Step165EntryF_Outgoing
  exact h0

private theorem s6Step165EntryBank_checked : compileHmrBankResizeLog .entry s6Step165EntryFBefore ⟨s6Step165EntryFRow,s6Step165EntryGRow,s6Step165EntryFvRow,s6Step165EntryGvRow⟩ ⟨187,187,98,98⟩ [s6Step165EntryFFresh,s6Step165EntryGFresh,s6Step165EntryFvFresh,s6Step165EntryGvFresh]=
    some (s6Step165EntryGvAfter,⟨s6Step165EntryFOut,s6Step165EntryGOut,s6Step165EntryFvOut,s6Step165EntryGvOut⟩,(growRow 795 s6Step165EntryFFresh ++ (growRow 777 s6Step165EntryGFresh ++ (growRow 776 s6Step165EntryFvFresh ++ (growRow 775 s6Step165EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step165EntryBank_rows]
  rfl

private def s6Step165ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165ExitFBefore : Arena := s6Step165ExitGAfter

private def s6Step165ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩

private def s6Step165ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩

private def s6Step165ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 890, 876],777⟩

private def s6Step165ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 805, 818],775⟩

private theorem s6Step165ExitBank_incomingDistinct : ([s6Step165ExitGRow,s6Step165ExitFRow,s6Step165ExitFvRow,s6Step165ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165ExitF_Incoming : rowsOwned s6Step165ExitFBefore [s6Step165ExitFRow,s6Step165ExitFvRow,s6Step165ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165ExitGRow,s6Step165ExitFRow,s6Step165ExitFvRow,s6Step165ExitGvRow] 1 s6Step165ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step165ExitBank_outgoingOwned : rowsOwned s6Step165ExitGvAfter [s6Step165ExitGOut,s6Step165ExitFOut,s6Step165ExitFvOut,s6Step165ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step165ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step165ExitF_Outgoing : rowsOwned s6Step165ExitGvAfter [s6Step165ExitFOut,s6Step165ExitFvOut,s6Step165ExitGvOut] :=
  hmrRows_owned_drop s6Step165ExitGvAfter [s6Step165ExitGOut,s6Step165ExitFOut,s6Step165ExitFvOut,s6Step165ExitGvOut] 1 s6Step165ExitBank_outgoingOwned

private theorem s6Step165ExitF_distinct : (s6Step165ExitFRow.sign::s6Step165ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165ExitF_owned : (s6Step165ExitFRow.sign::s6Step165ExitFRow.payload).toFinset⊆s6Step165ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165ExitF_retired : s6Step165ExitFBefore.retireSet s6Step165ExitFExtra.toFinset=s6Step165ExitFAfter := by
  unfold Arena.retireSet s6Step165ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step165ExitFBefore,s6Step165ExitGAfter,s6Step165ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step165ExitF_checked : planRowResizeLog s6Step165ExitFBefore s6Step165ExitFRow 187 []=
    some (s6Step165ExitFAfter,s6Step165ExitFOut,shrinkRow 795 s6Step165ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step165ExitFBefore s6Step165ExitFRow 187 s6Step165ExitF_distinct s6Step165ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step165ExitFRow.payload.take 187) s6Step165ExitFRow.sign=s6Step165ExitFOut := by decide +kernel
  have hi : s6Step165ExitFRow.payload.drop 187=s6Step165ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step165ExitF_retired] at result
  exact result

private def s6Step165ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step165ExitFvBefore : Arena := s6Step165ExitFAfter

private theorem s6Step165ExitFv_Incoming : rowsOwned s6Step165ExitFvBefore [s6Step165ExitFvRow,s6Step165ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165ExitGRow,s6Step165ExitFRow,s6Step165ExitFvRow,s6Step165ExitGvRow] 2 s6Step165ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step165ExitFv_Outgoing : rowsOwned s6Step165ExitGvAfter [s6Step165ExitFvOut,s6Step165ExitGvOut] :=
  hmrRows_owned_drop s6Step165ExitGvAfter [s6Step165ExitGOut,s6Step165ExitFOut,s6Step165ExitFvOut,s6Step165ExitGvOut] 2 s6Step165ExitBank_outgoingOwned

private theorem s6Step165ExitFv_distinct : (s6Step165ExitFvRow.sign::s6Step165ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165ExitFv_owned : (s6Step165ExitFvRow.sign::s6Step165ExitFvRow.payload).toFinset⊆s6Step165ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165ExitFv_retired : s6Step165ExitFvBefore.retireSet s6Step165ExitFvExtra.toFinset=s6Step165ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step165ExitFvBefore s6Step165ExitFvAfter s6Step165ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step165ExitFvBefore s6Step165ExitFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step165ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step165ExitFv_checked : planRowResizeLog s6Step165ExitFvBefore s6Step165ExitFvRow 98 []=
    some (s6Step165ExitFvAfter,s6Step165ExitFvOut,shrinkRow 776 s6Step165ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step165ExitFvBefore s6Step165ExitFvRow 98 s6Step165ExitFv_distinct s6Step165ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step165ExitFvRow.payload.take 98) s6Step165ExitFvRow.sign=s6Step165ExitFvOut := by decide +kernel
  have hi : s6Step165ExitFvRow.payload.drop 98=s6Step165ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step165ExitFv_retired] at result
  exact result

private def s6Step165ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step165ExitG_Incoming : rowsOwned s6Step165ExitGBefore [s6Step165ExitGRow,s6Step165ExitFRow,s6Step165ExitFvRow,s6Step165ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165ExitGRow,s6Step165ExitFRow,s6Step165ExitFvRow,s6Step165ExitGvRow] 0 s6Step165ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step165ExitG_Outgoing : rowsOwned s6Step165ExitGvAfter [s6Step165ExitGOut,s6Step165ExitFOut,s6Step165ExitFvOut,s6Step165ExitGvOut] :=
  hmrRows_owned_drop s6Step165ExitGvAfter [s6Step165ExitGOut,s6Step165ExitFOut,s6Step165ExitFvOut,s6Step165ExitGvOut] 0 s6Step165ExitBank_outgoingOwned

private theorem s6Step165ExitG_distinct : (s6Step165ExitGRow.sign::s6Step165ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165ExitG_owned : (s6Step165ExitGRow.sign::s6Step165ExitGRow.payload).toFinset⊆s6Step165ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165ExitG_retired : s6Step165ExitGBefore.retireSet s6Step165ExitGExtra.toFinset=s6Step165ExitGAfter := by
  unfold Arena.retireSet s6Step165ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step165ExitGBefore,s6Step165ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step165ExitG_checked : planRowResizeLog s6Step165ExitGBefore s6Step165ExitGRow 186 []=
    some (s6Step165ExitGAfter,s6Step165ExitGOut,shrinkRow 777 s6Step165ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step165ExitGBefore s6Step165ExitGRow 186 s6Step165ExitG_distinct s6Step165ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step165ExitGRow.payload.take 186) s6Step165ExitGRow.sign=s6Step165ExitGOut := by decide +kernel
  have hi : s6Step165ExitGRow.payload.drop 186=s6Step165ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step165ExitG_retired] at result
  exact result

private def s6Step165ExitGvBefore : Arena := s6Step165ExitFvAfter

private theorem s6Step165ExitGv_Incoming : rowsOwned s6Step165ExitGvBefore [s6Step165ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165ExitGRow,s6Step165ExitFRow,s6Step165ExitFvRow,s6Step165ExitGvRow] 3 s6Step165ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step165ExitGv_Outgoing : rowsOwned s6Step165ExitGvAfter [s6Step165ExitGvOut] :=
  hmrRows_owned_drop s6Step165ExitGvAfter [s6Step165ExitGOut,s6Step165ExitFOut,s6Step165ExitFvOut,s6Step165ExitGvOut] 3 s6Step165ExitBank_outgoingOwned

private theorem s6Step165ExitGv_distinct : (s6Step165ExitGvRow.sign::s6Step165ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165ExitGv_owned : (s6Step165ExitGvRow.sign::s6Step165ExitGvRow.payload).toFinset⊆s6Step165ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step165ExitGv_retired : s6Step165ExitGvBefore.retireSet s6Step165ExitGvExtra.toFinset=s6Step165ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step165ExitGvBefore s6Step165ExitGvAfter s6Step165ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step165ExitGvBefore s6Step165ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step165ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step165ExitGv_checked : planRowResizeLog s6Step165ExitGvBefore s6Step165ExitGvRow 97 []=
    some (s6Step165ExitGvAfter,s6Step165ExitGvOut,shrinkRow 775 s6Step165ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step165ExitGvBefore s6Step165ExitGvRow 97 s6Step165ExitGv_distinct s6Step165ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step165ExitGvRow.payload.take 97) s6Step165ExitGvRow.sign=s6Step165ExitGvOut := by decide +kernel
  have hi : s6Step165ExitGvRow.payload.drop 97=s6Step165ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step165ExitGv_retired] at result
  exact result

private theorem s6Step165ExitBank_rows : planWindowRowsLog s6Step165ExitGBefore [(s6Step165ExitGRow,186),(s6Step165ExitFRow,187),(s6Step165ExitFvRow,98),(s6Step165ExitGvRow,97)] [[],[],[],[]]=
    some (s6Step165ExitGvAfter,[s6Step165ExitGOut,s6Step165ExitFOut,s6Step165ExitFvOut,s6Step165ExitGvOut],(shrinkRow 777 s6Step165ExitGExtra ++ (shrinkRow 795 s6Step165ExitFExtra ++ (shrinkRow 776 s6Step165ExitFvExtra ++ (shrinkRow 775 s6Step165ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step165ExitGvAfter [] []=some (s6Step165ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step165ExitGvBefore s6Step165ExitGvAfter s6Step165ExitGvAfter
    s6Step165ExitGvRow s6Step165ExitGvOut 97 [] [] [] []
    (shrinkRow 775 s6Step165ExitGvExtra) ([]) s6Step165ExitGv_Incoming s6Step165ExitGv_checked h4 s6Step165ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step165ExitFvBefore s6Step165ExitFvAfter s6Step165ExitGvAfter
    s6Step165ExitFvRow s6Step165ExitFvOut 98 [] [(s6Step165ExitGvRow,97)] [[]] [s6Step165ExitGvOut]
    (shrinkRow 776 s6Step165ExitFvExtra) ((shrinkRow 775 s6Step165ExitGvExtra ++ [])) s6Step165ExitFv_Incoming s6Step165ExitFv_checked h3 s6Step165ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step165ExitFBefore s6Step165ExitFAfter s6Step165ExitGvAfter
    s6Step165ExitFRow s6Step165ExitFOut 187 [] [(s6Step165ExitFvRow,98),(s6Step165ExitGvRow,97)] [[],[]] [s6Step165ExitFvOut,s6Step165ExitGvOut]
    (shrinkRow 795 s6Step165ExitFExtra) ((shrinkRow 776 s6Step165ExitFvExtra ++ (shrinkRow 775 s6Step165ExitGvExtra ++ []))) s6Step165ExitF_Incoming s6Step165ExitF_checked h2 s6Step165ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step165ExitGBefore s6Step165ExitGAfter s6Step165ExitGvAfter
    s6Step165ExitGRow s6Step165ExitGOut 186 [] [(s6Step165ExitFRow,187),(s6Step165ExitFvRow,98),(s6Step165ExitGvRow,97)] [[],[],[]] [s6Step165ExitFOut,s6Step165ExitFvOut,s6Step165ExitGvOut]
    (shrinkRow 777 s6Step165ExitGExtra) ((shrinkRow 795 s6Step165ExitFExtra ++ (shrinkRow 776 s6Step165ExitFvExtra ++ (shrinkRow 775 s6Step165ExitGvExtra ++ [])))) s6Step165ExitG_Incoming s6Step165ExitG_checked h1 s6Step165ExitG_Outgoing
  exact h0

private theorem s6Step165ExitBank_checked : compileHmrBankResizeLog .exit s6Step165ExitGBefore ⟨s6Step165ExitFRow,s6Step165ExitGRow,s6Step165ExitFvRow,s6Step165ExitGvRow⟩ ⟨187,186,98,97⟩ [[],[],[],[]]=
    some (s6Step165ExitGvAfter,⟨s6Step165ExitFOut,s6Step165ExitGOut,s6Step165ExitFvOut,s6Step165ExitGvOut⟩,(shrinkRow 777 s6Step165ExitGExtra ++ (shrinkRow 795 s6Step165ExitFExtra ++ (shrinkRow 776 s6Step165ExitFvExtra ++ (shrinkRow 775 s6Step165ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step165ExitBank_rows]
  rfl

private theorem s6Step165Add0_apart : Disjoint s6Step165Add0Arena.live s6Step165Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step165Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165Add0_card : s6Step165Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step165Add0_borrowed : s6Step165Add0Arena.checkBorrow (hmrHybridCount s6Step165Add0Arena s6Step165Add0B.length) s6Step165Add0Work=some s6Step165Add0During := by
  have len : s6Step165Add0Work.length=hmrHybridCount s6Step165Add0Arena s6Step165Add0B.length := by
    rw [hmrHybridCount,s6Step165Add0_card]
    decide +kernel
  have nd : s6Step165Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step165Add0Arena s6Step165Add0During s6Step165Add0Work.toFinset s6Step165Add0_bounded s6Step165Add0_apart rfl

private theorem s6Step165Add0_distinct : (891::922::903::(s6Step165Add0A++s6Step165Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165Add0_owned : (891::922::903::(s6Step165Add0A++s6Step165Add0B)).toFinset⊆s6Step165Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step165Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165Add0_checked : compileHmrHybridCinLog s6Step165Add0Arena 922 891 903 s6Step165Add0A s6Step165Add0B s6Step165Add0Work=some s6Step165Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step165Add0Arena s6Step165Add0During 922 891 903 s6Step165Add0A s6Step165Add0B s6Step165Add0Work
    (by decide +kernel) (by decide +kernel) s6Step165Add0_distinct
    (fun q hq => s6Step165Add0_owned (List.mem_toFinset.mpr hq)) s6Step165Add0_borrowed

private theorem s6Step165Add1_apart : Disjoint s6Step165Add1Arena.live s6Step165Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step165Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165Add1_card : s6Step165Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step165Add1_borrowed : s6Step165Add1Arena.checkBorrow (hmrHybridCount s6Step165Add1Arena s6Step165Add1B.length) s6Step165Add1Work=some s6Step165Add1During := by
  have len : s6Step165Add1Work.length=hmrHybridCount s6Step165Add1Arena s6Step165Add1B.length := by
    rw [hmrHybridCount,s6Step165Add1_card]
    decide +kernel
  have nd : s6Step165Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step165Add1Arena s6Step165Add1During s6Step165Add1Work.toFinset s6Step165Add1_bounded s6Step165Add1_apart rfl

private theorem s6Step165Add1_distinct : (891::922::903::(s6Step165Add1A++s6Step165Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165Add1_owned : (891::922::903::(s6Step165Add1A++s6Step165Add1B)).toFinset⊆s6Step165Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step165Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165Add1_checked : compileHmrHybridCinLog s6Step165Add1Arena 922 891 903 s6Step165Add1A s6Step165Add1B s6Step165Add1Work=some s6Step165Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step165Add1Arena s6Step165Add1During 922 891 903 s6Step165Add1A s6Step165Add1B s6Step165Add1Work
    (by decide +kernel) (by decide +kernel) s6Step165Add1_distinct
    (fun q hq => s6Step165Add1_owned (List.mem_toFinset.mpr hq)) s6Step165Add1_borrowed

private theorem s6Step165F4_apart : Disjoint (s6Step165Add0A++s6Step165Add0B).toFinset (s6Step165Add1A++s6Step165Add1B).toFinset := by
  have nd : ((s6Step165Add0A++s6Step165Add0B)++(s6Step165Add1A++s6Step165Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step165F4_carry : s6Step165F4FlagArena.checkBorrow 1 [903]=some s6Step165Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step165F4FlagArena,s6Step165HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step165F4FlagArena,s6Step165HeadFvAfter,s6Step165Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step165F4_distinct : (879::922::891::903::((s6Step165Add0A++s6Step165Add1A)++(s6Step165Add0B++s6Step165Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165F4_flag : s6Step165HeadFvAfter.checkBorrow 1 [891]=some s6Step165F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step165HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step165F4_owned : (879::922::((s6Step165Add0A++s6Step165Add1A)++(s6Step165Add0B++s6Step165Add1B))).toFinset⊆s6Step165HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step165HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165F4_checked : compileHmrHybridF4Log s6Step165HeadFvAfter 879 922 s6Step165Add0A s6Step165Add0B s6Step165Add1A s6Step165Add1B [891] [903] s6Step165Add0Work s6Step165Add1Work=some s6Step165F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step165HeadFvAfter s6Step165F4FlagArena s6Step165Add0Arena s6Step165Add0During s6Step165Add1During 879 922
    s6Step165Add0A s6Step165Add0B s6Step165Add1A s6Step165Add1B [891] [903] s6Step165Add0Work s6Step165Add1Work
    (fun q hq => s6Step165F4_owned (List.mem_toFinset.mpr hq)) s6Step165F4_flag s6Step165F4_carry
    s6Step165F4_distinct s6Step165F4_apart s6Step165Add0_checked s6Step165Add1_checked

private theorem s6Step165Front_branch : s6Step165FrontSigmaArena.checkBorrow 1 [922]=some s6Step165HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step165FrontSigmaArena,s6Step165EntryGvAfter,arenaWires]
  · change s6Step165HeadGBefore.live=(s6Step165EntryGvAfter.live∪{879})∪{922}
    apply hmrArena_union_pair_of_filter_check s6Step165EntryGvAfter s6Step165HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 879 922 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step165Front_entry : HmrFrontEntryValid s6Step165EntryFBefore s6Step165FrontBank 187 98 ⟨187,186,98,97⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step165FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step165EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step165EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(806,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step165FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step165Front_sigma : s6Step165EntryGvAfter.checkBorrow 1 [879]=some s6Step165FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step165EntryGvAfter,arenaWires]
  · rfl

private def s6Step165HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165HeadFBefore : Arena := s6Step165HeadGAfter

private def s6Step165HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442],795⟩

private def s6Step165HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step165HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 890],777⟩

private def s6Step165HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 805],775⟩

private theorem s6Step165HeadBank_incomingDistinct : ([s6Step165HeadGRow,s6Step165HeadFRow,s6Step165HeadGvRow,s6Step165HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165HeadF_Incoming : rowsOwned s6Step165HeadFBefore [s6Step165HeadFRow,s6Step165HeadGvRow,s6Step165HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165HeadGRow,s6Step165HeadFRow,s6Step165HeadGvRow,s6Step165HeadFvRow] 1 s6Step165HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step165HeadBank_outgoingOwned : rowsOwned s6Step165HeadFvAfter [s6Step165HeadGOut,s6Step165HeadFOut,s6Step165HeadGvOut,s6Step165HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step165HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step165HeadF_Outgoing : rowsOwned s6Step165HeadFvAfter [s6Step165HeadFOut,s6Step165HeadGvOut,s6Step165HeadFvOut] :=
  hmrRows_owned_drop s6Step165HeadFvAfter [s6Step165HeadGOut,s6Step165HeadFOut,s6Step165HeadGvOut,s6Step165HeadFvOut] 1 s6Step165HeadBank_outgoingOwned

private theorem s6Step165HeadF_distinct : (s6Step165HeadFRow.sign::s6Step165HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165HeadF_owned : (s6Step165HeadFRow.sign::s6Step165HeadFRow.payload).toFinset⊆s6Step165HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165HeadF_reserved : s6Step165HeadFBefore.reserve s6Step165HeadFFresh.toFinset=some s6Step165HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step165HeadFFresh,arenaWires]
  · norm_num [s6Step165HeadFBefore,s6Step165HeadGAfter,s6Step165HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step165HeadFAfter,s6Step165HeadFBefore,s6Step165HeadGAfter,s6Step165HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step165HeadF_checked : planRowResizeLog s6Step165HeadFBefore s6Step165HeadFRow 188 s6Step165HeadFFresh=
    some (s6Step165HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩,growRow 795 s6Step165HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step165HeadFBefore s6Step165HeadFAfter s6Step165HeadFRow 188 s6Step165HeadFFresh
    s6Step165HeadF_distinct s6Step165HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step165HeadF_reserved
  have rowEq : WindowRow.mk (s6Step165HeadFRow.payload++s6Step165HeadFFresh) s6Step165HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step165HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step165HeadFvBefore : Arena := s6Step165HeadGvAfter

private theorem s6Step165HeadFv_Incoming : rowsOwned s6Step165HeadFvBefore [s6Step165HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165HeadGRow,s6Step165HeadFRow,s6Step165HeadGvRow,s6Step165HeadFvRow] 3 s6Step165HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step165HeadFv_Outgoing : rowsOwned s6Step165HeadFvAfter [s6Step165HeadFvOut] :=
  hmrRows_owned_drop s6Step165HeadFvAfter [s6Step165HeadGOut,s6Step165HeadFOut,s6Step165HeadGvOut,s6Step165HeadFvOut] 3 s6Step165HeadBank_outgoingOwned

private theorem s6Step165HeadFv_distinct : (s6Step165HeadFvRow.sign::s6Step165HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165HeadFv_owned : (s6Step165HeadFvRow.sign::s6Step165HeadFvRow.payload).toFinset⊆s6Step165HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165HeadFv_reserved : s6Step165HeadFvBefore.reserve s6Step165HeadFvFresh.toFinset=some s6Step165HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step165HeadFvFresh,arenaWires]
  · norm_num [s6Step165HeadFvBefore,s6Step165HeadGvAfter,s6Step165HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step165HeadFvAfter,s6Step165HeadFvBefore,s6Step165HeadGvAfter,s6Step165HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step165HeadFv_checked : planRowResizeLog s6Step165HeadFvBefore s6Step165HeadFvRow 99 s6Step165HeadFvFresh=
    some (s6Step165HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩,growRow 776 s6Step165HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step165HeadFvBefore s6Step165HeadFvAfter s6Step165HeadFvRow 99 s6Step165HeadFvFresh
    s6Step165HeadFv_distinct s6Step165HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step165HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step165HeadFvRow.payload++s6Step165HeadFvFresh) s6Step165HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step165HeadG_Incoming : rowsOwned s6Step165HeadGBefore [s6Step165HeadGRow,s6Step165HeadFRow,s6Step165HeadGvRow,s6Step165HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165HeadGRow,s6Step165HeadFRow,s6Step165HeadGvRow,s6Step165HeadFvRow] 0 s6Step165HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step165HeadG_Outgoing : rowsOwned s6Step165HeadFvAfter [s6Step165HeadGOut,s6Step165HeadFOut,s6Step165HeadGvOut,s6Step165HeadFvOut] :=
  hmrRows_owned_drop s6Step165HeadFvAfter [s6Step165HeadGOut,s6Step165HeadFOut,s6Step165HeadGvOut,s6Step165HeadFvOut] 0 s6Step165HeadBank_outgoingOwned

private theorem s6Step165HeadG_distinct : (s6Step165HeadGRow.sign::s6Step165HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165HeadG_owned : (s6Step165HeadGRow.sign::s6Step165HeadGRow.payload).toFinset⊆s6Step165HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165HeadG_reserved : s6Step165HeadGBefore.reserve s6Step165HeadGFresh.toFinset=some s6Step165HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step165HeadGFresh,arenaWires]
  · norm_num [s6Step165HeadGBefore,s6Step165HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step165HeadGAfter,s6Step165HeadGBefore,s6Step165HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step165HeadG_checked : planRowResizeLog s6Step165HeadGBefore s6Step165HeadGRow 188 s6Step165HeadGFresh=
    some (s6Step165HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 890, 876],777⟩,growRow 777 s6Step165HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step165HeadGBefore s6Step165HeadGAfter s6Step165HeadGRow 188 s6Step165HeadGFresh
    s6Step165HeadG_distinct s6Step165HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step165HeadG_reserved
  have rowEq : WindowRow.mk (s6Step165HeadGRow.payload++s6Step165HeadGFresh) s6Step165HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 890, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step165HeadGvBefore : Arena := s6Step165HeadFAfter

private theorem s6Step165HeadGv_Incoming : rowsOwned s6Step165HeadGvBefore [s6Step165HeadGvRow,s6Step165HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step165HeadGRow,s6Step165HeadFRow,s6Step165HeadGvRow,s6Step165HeadFvRow] 2 s6Step165HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step165HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step165HeadGv_Outgoing : rowsOwned s6Step165HeadFvAfter [s6Step165HeadGvOut,s6Step165HeadFvOut] :=
  hmrRows_owned_drop s6Step165HeadFvAfter [s6Step165HeadGOut,s6Step165HeadFOut,s6Step165HeadGvOut,s6Step165HeadFvOut] 2 s6Step165HeadBank_outgoingOwned

private theorem s6Step165HeadGv_distinct : (s6Step165HeadGvRow.sign::s6Step165HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step165HeadGv_owned : (s6Step165HeadGvRow.sign::s6Step165HeadGvRow.payload).toFinset⊆s6Step165HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step165HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step165HeadGv_reserved : s6Step165HeadGvBefore.reserve s6Step165HeadGvFresh.toFinset=some s6Step165HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step165HeadGvFresh,arenaWires]
  · norm_num [s6Step165HeadGvBefore,s6Step165HeadFAfter,s6Step165HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step165HeadGvAfter,s6Step165HeadGvBefore,s6Step165HeadFAfter,s6Step165HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step165HeadGv_checked : planRowResizeLog s6Step165HeadGvBefore s6Step165HeadGvRow 99 s6Step165HeadGvFresh=
    some (s6Step165HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 805, 818],775⟩,growRow 775 s6Step165HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step165HeadGvBefore s6Step165HeadGvAfter s6Step165HeadGvRow 99 s6Step165HeadGvFresh
    s6Step165HeadGv_distinct s6Step165HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step165HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step165HeadGvRow.payload++s6Step165HeadGvFresh) s6Step165HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 805, 818],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step165HeadBank_rows : planWindowRowsLog s6Step165HeadGBefore [(s6Step165HeadGRow,188),(s6Step165HeadFRow,188),(s6Step165HeadGvRow,99),(s6Step165HeadFvRow,99)] [s6Step165HeadGFresh,s6Step165HeadFFresh,s6Step165HeadGvFresh,s6Step165HeadFvFresh]=
    some (s6Step165HeadFvAfter,[s6Step165HeadGOut,s6Step165HeadFOut,s6Step165HeadGvOut,s6Step165HeadFvOut],(growRow 777 s6Step165HeadGFresh ++ (growRow 795 s6Step165HeadFFresh ++ (growRow 775 s6Step165HeadGvFresh ++ (growRow 776 s6Step165HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step165HeadFvAfter [] []=some (s6Step165HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step165HeadFvBefore s6Step165HeadFvAfter s6Step165HeadFvAfter
    s6Step165HeadFvRow s6Step165HeadFvOut 99 s6Step165HeadFvFresh [] [] []
    (growRow 776 s6Step165HeadFvFresh) ([]) s6Step165HeadFv_Incoming s6Step165HeadFv_checked h4 s6Step165HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step165HeadGvBefore s6Step165HeadGvAfter s6Step165HeadFvAfter
    s6Step165HeadGvRow s6Step165HeadGvOut 99 s6Step165HeadGvFresh [(s6Step165HeadFvRow,99)] [s6Step165HeadFvFresh] [s6Step165HeadFvOut]
    (growRow 775 s6Step165HeadGvFresh) ((growRow 776 s6Step165HeadFvFresh ++ [])) s6Step165HeadGv_Incoming s6Step165HeadGv_checked h3 s6Step165HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step165HeadFBefore s6Step165HeadFAfter s6Step165HeadFvAfter
    s6Step165HeadFRow s6Step165HeadFOut 188 s6Step165HeadFFresh [(s6Step165HeadGvRow,99),(s6Step165HeadFvRow,99)] [s6Step165HeadGvFresh,s6Step165HeadFvFresh] [s6Step165HeadGvOut,s6Step165HeadFvOut]
    (growRow 795 s6Step165HeadFFresh) ((growRow 775 s6Step165HeadGvFresh ++ (growRow 776 s6Step165HeadFvFresh ++ []))) s6Step165HeadF_Incoming s6Step165HeadF_checked h2 s6Step165HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step165HeadGBefore s6Step165HeadGAfter s6Step165HeadFvAfter
    s6Step165HeadGRow s6Step165HeadGOut 188 s6Step165HeadGFresh [(s6Step165HeadFRow,188),(s6Step165HeadGvRow,99),(s6Step165HeadFvRow,99)] [s6Step165HeadFFresh,s6Step165HeadGvFresh,s6Step165HeadFvFresh] [s6Step165HeadFOut,s6Step165HeadGvOut,s6Step165HeadFvOut]
    (growRow 777 s6Step165HeadGFresh) ((growRow 795 s6Step165HeadFFresh ++ (growRow 775 s6Step165HeadGvFresh ++ (growRow 776 s6Step165HeadFvFresh ++ [])))) s6Step165HeadG_Incoming s6Step165HeadG_checked h1 s6Step165HeadG_Outgoing
  exact h0

private theorem s6Step165HeadBank_checked : compileHmrBankResizeLog .headroom s6Step165HeadGBefore ⟨s6Step165HeadFRow,s6Step165HeadGRow,s6Step165HeadFvRow,s6Step165HeadGvRow⟩ ⟨188,188,99,99⟩ [s6Step165HeadGFresh,s6Step165HeadFFresh,s6Step165HeadGvFresh,s6Step165HeadFvFresh]=
    some (s6Step165HeadFvAfter,⟨s6Step165HeadFOut,s6Step165HeadGOut,s6Step165HeadFvOut,s6Step165HeadGvOut⟩,(growRow 777 s6Step165HeadGFresh ++ (growRow 795 s6Step165HeadFFresh ++ (growRow 775 s6Step165HeadGvFresh ++ (growRow 776 s6Step165HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step165HeadBank_rows]
  rfl

private theorem s6Step165Front_checked : compileHmrSourceFrontLog s6Step165EntryFBefore s6Step165FrontBank 187 98 ⟨187,186,98,97⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step165FrontLog=some s6Step165FrontPlan := by
  have pairEq : s6Step165FrontPair=⟨s6Step165HeadFRow,s6Step165HeadGRow,s6Step165HeadFvRow,s6Step165HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step165FrontHead=⟨s6Step165ExitFRow,s6Step165ExitGRow,s6Step165ExitFvRow,s6Step165ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step165Add0A=s6Step165FrontHead.f.wires := by decide +kernel
  have gEq : s6Step165Add0B=s6Step165FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step165Add1A=s6Step165FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step165Add1B=s6Step165FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step165EntryFBefore s6Step165FrontBank 187 98 ⟨187,186,98,97⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step165FrontLog s6Step165FrontPlan
  · exact s6Step165Front_entry
  · exact s6Step165EntryBank_checked
  · exact s6Step165Front_sigma
  · rfl
  · exact s6Step165Front_branch
  · rfl
  · simpa only [s6Step165FrontPlan,pairEq] using s6Step165HeadBank_checked
  · simpa only [s6Step165FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step165F4_checked
  · exact s6Step165Counter_checked
  · rfl
  · simpa only [s6Step165FrontPlan,headEq] using s6Step165ExitBank_checked

private theorem s6Step165Complete_explicit_checked : compileHmrEarlyStepLog s6Step165EntryFBefore s6Step165FrontBank 187 98 ⟨187,186,98,97⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step165CompleteLog=some s6Step165CompletePlan := by
  let Q := s6Step165EarlyControlPlan
  have hq := s6Step165EarlyControl_plan_checked
  have fv1 : s6Step165CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step165CompleteOut.fv.payload[2]?.getD s6Step165CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step165CompleteOut.fv.payload[3]?.getD s6Step165CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step165CompleteOut.fv.payload[4]?.getD s6Step165CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step165EntryFBefore s6Step165EarlyControlArena s6Step165FrontBank 187 98 ⟨187,186,98,97⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step165CompleteLog s6Step165FrontPlan Q
    s6Step165Front_checked s6Step165Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step165Complete_owned s6Step165Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step165EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 s6Step165CompleteOut.fv.second (s6Step165CompleteOut.fv.payload[2]?.getD s6Step165CompleteOut.fv.sign) (s6Step165CompleteOut.fv.payload[3]?.getD s6Step165CompleteOut.fv.sign) (s6Step165CompleteOut.fv.payload[4]?.getD s6Step165CompleteOut.fv.sign) 922 42 s6Step165EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep165Arena : Arena := s6Step165EntryFBefore
def s6PrivateStep165Bank : WindowBank := s6Step165FrontBank
def s6PrivateStep165Spec : HmrSourceWalkStepLog := ⟨187,98,⟨187,186,98,97⟩,42,.early s6Step165CompleteLog⟩
def s6PrivateStep165Plan : HmrSourceStepPlan := .early s6Step165CompletePlan
theorem s6PrivateStep165_source : s6PrivateStep165Spec=s6ObservedLogs160[5] := rfl
theorem s6PrivateStep165_checked : compileHmrSourceStepLog s6PrivateStep165Arena s6PrivateStep165Bank
    s6PrivateStep165Spec.fgWidth s6PrivateStep165Spec.vWidth s6PrivateStep165Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 165 s6PrivateStep165Spec.need none s6PrivateStep165Spec.log=some s6PrivateStep165Plan := by
  change compileHmrSourceStepLog s6Step165EntryFBefore s6Step165FrontBank 187 98 ⟨187,186,98,97⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 165 42 none (.early s6Step165CompleteLog)=some (.early s6Step165CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 165<498)]
  rw [s6Step165Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
