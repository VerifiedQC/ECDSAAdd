import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep185
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

private def s6Step187CompleteMoves : List (Wire × Wire) := [(838,175),(839,432)]

private def s6Step187EarlyControlLog : HmrEarlyControlLog := ⟨[839, 838, 863, 890, 814],[853],[907],[891, 903, 791, 825, 810, 923],[]⟩

private def s6Step187FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [853], [], [796]],[[907], [814], [863], [890]],[[], [], [], []]⟩,[821],[880],[891],[903],[791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step187CompleteLog : HmrEarlyStepLog := ⟨s6Step187FrontLog,s6Step187CompleteMoves,s6Step187EarlyControlLog⟩

private def s6Step187ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431],795⟩

private def s6Step187ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803],776⟩

private def s6Step187ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],777⟩

private def s6Step187ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩

private def s6Step187FrontOut : WindowBank := ⟨s6Step187ExitFOut,s6Step187ExitGOut,s6Step187ExitFvOut,s6Step187ExitGvOut⟩

private def s6Step187CompleteOut : WindowBank := s6Step187FrontOut.repacked s6Step187CompleteMoves

private def s6Step187EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step187EarlyControlPositiveArena,[853],s6Step187EarlyControlEqualityArena,[907],⟨⟨821,false⟩,[⟨⟨853,false⟩,907⟩]⟩⟩

private def s6Step187EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step187EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,839⟩,⟨⟨772,false⟩,838⟩,⟨⟨771,false⟩,863⟩,⟨⟨770,false⟩,890⟩,⟨⟨769,false⟩,814⟩]⟩

private def s6Step187EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step187EarlyControlZeroArena,s6Step187EarlyControlZeroPlan,s6Step187EarlyControlClassPlan,s6Step187EarlyControlFlagArena,s6Step187EarlyControlFittedArena,s6Step187EarlyControlHistoryArena,s6Step187EarlyControlSigmaArena,s6Step187EarlyControlOutputArena,s6Step187EarlyControlLog⟩

private def s6Step187CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step187Counter_bounded : s6Step187CounterWork.toFinset⊆arenaWires := by norm_num [s6Step187CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step187HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187CounterDuring : Arena := ⟨s6Step187HeadFvAfter.live∪s6Step187CounterWork.toFinset,Finset.union_subset s6Step187HeadFvAfter.bounded s6Step187Counter_bounded⟩

private def s6Step187EntryFFresh : List Wire := []

private def s6Step187EntryFvFresh : List Wire := []

private def s6Step187EntryGFresh : List Wire := [853]

private def s6Step187EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187EntryGvFresh : List Wire := [796]

private def s6Step187ExitFExtra : List Wire := [432, 814]

private def s6Step187ExitFvExtra : List Wire := [890]

private def s6Step187ExitGExtra : List Wire := [175, 853, 907]

private def s6Step187ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,175),(176,432),(433,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step187ExitGvExtra : List Wire := [863]

private def s6Step187Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187Add0Work : List Wire := [791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step187Add0_bounded : s6Step187Add0Work.toFinset⊆arenaWires := by
  have h : s6Step187Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step187Add0During : Arena := ⟨s6Step187Add0Arena.live∪s6Step187Add0Work.toFinset,Finset.union_subset s6Step187Add0Arena.bounded s6Step187Add0_bounded⟩

private def s6Step187Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187Add1Work : List Wire := [791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step187Add1_bounded : s6Step187Add1Work.toFinset⊆arenaWires := by
  have h : s6Step187Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step187Add1During : Arena := ⟨s6Step187Add1Arena.live∪s6Step187Add1Work.toFinset,Finset.union_subset s6Step187Add1Arena.bounded s6Step187Add1_bounded⟩

private def s6Step187F4FlagArena : Arena := ⟨s6Step187HeadFvAfter.live∪{891},Finset.union_subset s6Step187HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step187F4Plan : HmrHybridF4Plan := ⟨s6Step187F4FlagArena,[891],s6Step187Add0Arena,[903],s6Step187Add0During,s6Step187Add0Work,s6Step187Add1During,s6Step187Add1Work⟩

private def s6Step187HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 814],795⟩

private def s6Step187HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 890],776⟩

private def s6Step187HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 853, 907],777⟩

private def s6Step187HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 863],775⟩

private def s6Step187FrontHead : WindowBank := ⟨s6Step187HeadFOut,s6Step187HeadGOut,s6Step187HeadFvOut,s6Step187HeadGvOut⟩

private def s6Step187EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432],795⟩

private def s6Step187EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803],776⟩

private def s6Step187EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 853],777⟩

private def s6Step187EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩

private def s6Step187FrontPair : WindowBank := ⟨s6Step187EntryFOut,s6Step187EntryGOut,s6Step187EntryFvOut,s6Step187EntryGvOut⟩

private def s6Step187FrontSigmaArena : Arena := ⟨s6Step187EntryGvAfter.live∪{821},Finset.union_subset s6Step187EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step187HeadFFresh : List Wire := [814]

private def s6Step187HeadFvFresh : List Wire := [890]

private def s6Step187HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187HeadGFresh : List Wire := [907]

private def s6Step187HeadGvFresh : List Wire := [863]

private def s6Step187FrontPlan : HmrSourceFront := ⟨s6Step187EntryGvAfter,s6Step187FrontPair,(growRow 795 s6Step187EntryFFresh ++ (growRow 777 s6Step187EntryGFresh ++ (growRow 776 s6Step187EntryFvFresh ++ (growRow 775 s6Step187EntryGvFresh ++ [])))),s6Step187FrontSigmaArena,[821],s6Step187HeadGBefore,[880],
  s6Step187HeadFvAfter,s6Step187FrontHead,(growRow 777 s6Step187HeadGFresh ++ (growRow 795 s6Step187HeadFFresh ++ (growRow 775 s6Step187HeadGvFresh ++ (growRow 776 s6Step187HeadFvFresh ++ [])))),s6Step187F4Plan,s6Step187CounterDuring,s6Step187CounterWork,s6Step187ExitGvAfter,s6Step187FrontOut,(shrinkRow 777 s6Step187ExitGExtra ++ (shrinkRow 795 s6Step187ExitFExtra ++ (shrinkRow 776 s6Step187ExitFvExtra ++ (shrinkRow 775 s6Step187ExitGvExtra ++ []))))⟩

private def s6Step187CompletePlan : HmrEarlyStepPlan := ⟨s6Step187FrontPlan,s6Step187EarlyControlArena,s6Step187EarlyControlPlan,s6Step187CompleteMoves⟩

private theorem s6Step187Complete_apart : List.Disjoint (s6Step187CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [821, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  have nd : ((s6Step187CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[821, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step187Complete_owned : (s6Step187CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step187EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step187CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,432),(433,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step187CompleteRelocationMove0Borrowed : Arena := ⟨s6Step187ExitGvAfter.live∪{175},Finset.union_subset s6Step187ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step187CompleteRelocationMove1Borrowed : Arena := ⟨s6Step187CompleteRelocationMove0After.live∪{432},Finset.union_subset s6Step187CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step187CompleteRelocation_move0_owned : 838∈s6Step187ExitGvAfter.live := by norm_num [s6Step187ExitGvAfter,arenaWires]

private theorem s6Step187CompleteRelocation_move0_reserve : s6Step187ExitGvAfter.reserve {175}=some s6Step187CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step187ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step187CompleteRelocation_move0_retire : s6Step187CompleteRelocationMove0Borrowed.retireSet {838}=s6Step187CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step187CompleteRelocationMove0Borrowed s6Step187CompleteRelocationMove0After {838}
  change s6Step187CompleteRelocationMove0After.live=(s6Step187ExitGvAfter.live∪{175})\{838}
  apply hmrArena_update_of_filter_check s6Step187ExitGvAfter s6Step187CompleteRelocationMove0After (fun q => ([(0,175),(176,432),(433,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,432),(433,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [175] [838] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step187CompleteRelocation_move1_owned : 839∈s6Step187CompleteRelocationMove0After.live := by norm_num [s6Step187CompleteRelocationMove0After,arenaWires]

private theorem s6Step187CompleteRelocation_move1_reserve : s6Step187CompleteRelocationMove0After.reserve {432}=some s6Step187CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step187CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step187CompleteRelocation_move1_retire : s6Step187CompleteRelocationMove1Borrowed.retireSet {839}=s6Step187EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step187CompleteRelocationMove1Borrowed s6Step187EarlyControlArena {839}
  change s6Step187EarlyControlArena.live=(s6Step187CompleteRelocationMove0After.live∪{432})\{839}
  apply hmrArena_update_of_filter_check s6Step187CompleteRelocationMove0After s6Step187EarlyControlArena (fun q => ([(0,432),(433,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) [432] [839] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step187CompleteRelocation_checked : s6Step187ExitGvAfter.checkRepack [(838,175),(839,432)]=some s6Step187EarlyControlArena := by
  have tail2 : s6Step187EarlyControlArena.checkRepack []=some s6Step187EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step187CompleteRelocationMove0After s6Step187CompleteRelocationMove1Borrowed s6Step187EarlyControlArena s6Step187EarlyControlArena 839 432 []
    s6Step187CompleteRelocation_move1_owned s6Step187CompleteRelocation_move1_reserve s6Step187CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step187ExitGvAfter s6Step187CompleteRelocationMove0Borrowed s6Step187CompleteRelocationMove0After s6Step187EarlyControlArena 838 175 [(839,432)]
    s6Step187CompleteRelocation_move0_owned s6Step187CompleteRelocation_move0_reserve s6Step187CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step187Complete_repack : s6Step187ExitGvAfter.checkRepack s6Step187CompleteMoves=some s6Step187EarlyControlArena := by
  simpa only [s6Step187CompleteMoves] using s6Step187CompleteRelocation_checked

private theorem s6Step187EarlyControl_branchOwned : ([880] : List Wire).toFinset⊆s6Step187EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EarlyControl_branch : compileHmrBranchRetirement s6Step187EarlyControlSigmaArena 880=some s6Step187EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step187EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step187EarlyControlSigmaArena s6Step187EarlyControlOutputArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [880] rfl rfl
    decide +kernel

private theorem s6Step187EarlyControl_classEqualityBorrow : s6Step187EarlyControlPositiveArena.checkBorrow (([821, 853] : List Wire).length-1) s6Step187EarlyControlLog.classWork=some s6Step187EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step187EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step187EarlyControlEqualityArena,s6Step187EarlyControlPositiveArena,s6Step187EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step187EarlyControl_classEqualityOwned : ([821, 853] : List Wire).toFinset⊆s6Step187EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EarlyControl_classEquality : compileHmrEqualityLog s6Step187EarlyControlPositiveArena [821, 853] 0 s6Step187EarlyControlLog.classWork=some (s6Step187EarlyControlEqualityArena,s6Step187EarlyControlLog.classWork,s6Step187EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step187EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step187EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step187EarlyControl_classOwned : ([769, 814, 821] : List Wire).toFinset⊆s6Step187EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EarlyControl_positiveBorrow : s6Step187EarlyControlZeroArena.checkBorrow (1) s6Step187EarlyControlLog.positiveWork=some s6Step187EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step187EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step187EarlyControlPositiveArena,s6Step187EarlyControlZeroArena,s6Step187EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step187EarlyControl_class : compileHmrSourceClassLog s6Step187EarlyControlZeroArena false 769 s6Step187EarlyControlZeroPlan.top 0 821 s6Step187EarlyControlLog.positiveWork s6Step187EarlyControlLog.classWork=some s6Step187EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step187EarlyControlClassPlan s6Step187EarlyControlZeroArena false 769 s6Step187EarlyControlZeroPlan.top 0 821
  constructor
  · decide +kernel
  · exact s6Step187EarlyControl_classOwned
  · exact s6Step187EarlyControl_positiveBorrow
  · exact s6Step187EarlyControl_classEquality

private theorem s6Step187EarlyControl_entryRecordOwned : ([880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step187EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EarlyControl_entrySigmaOwned : ([821, 254] : List Wire).toFinset⊆s6Step187EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EarlyControl_fitBorrow : s6Step187EarlyControlFlagArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step187EarlyControlLog.recordFresh=some s6Step187EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step187EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step187EarlyControlFittedArena,s6Step187EarlyControlFlagArena,s6Step187EarlyControlLog,arenaWires]

private theorem s6Step187EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step187EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EarlyControl_fit : compileHmrRecordGrowLog s6Step187EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step187EarlyControlLog.recordFresh=some s6Step187EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step187EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step187EarlyControl_fitBorrow

private theorem s6Step187EarlyControl_flagsBorrow : s6Step187EarlyControlEqualityArena.checkBorrow (6) s6Step187EarlyControlLog.flagWork=some s6Step187EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step187EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step187EarlyControlFlagArena,s6Step187EarlyControlEqualityArena,s6Step187EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step187EarlyControl_flagsOwned : ([907, 253, 252, 251] : List Wire).toFinset⊆s6Step187EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EarlyControl_flags : compileHmrFlagsLog s6Step187EarlyControlClassPlan.equalityArena s6Step187EarlyControlClassPlan.equality.top 253 252 251 s6Step187EarlyControlLog.flagWork=some s6Step187EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step187EarlyControl_flagsOwned⟩
  · exact s6Step187EarlyControl_flagsBorrow

private theorem s6Step187EarlyControl_historyBorrow : s6Step187EarlyControlArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step187EarlyControlLog.recordFresh=some s6Step187EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step187EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step187EarlyControlHistoryArena,s6Step187EarlyControlArena,s6Step187EarlyControlLog,arenaWires]

private theorem s6Step187EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step187EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EarlyControl_history : compileHmrRecordGrowLog s6Step187EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step187EarlyControlLog.recordFresh=some s6Step187EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step187EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step187EarlyControl_historyBorrow

private theorem s6Step187EarlyControl_sigmaOwned : ([254, 821] : List Wire).toFinset⊆s6Step187EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EarlyControl_sigmaReleaseOwned : ([821] : List Wire).toFinset⊆s6Step187EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EarlyControl_sigmaRelease : s6Step187EarlyControlHistoryArena.release {821} (fun _ => false)=some s6Step187EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step187EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step187EarlyControlSigmaArena,s6Step187EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s6Step187EarlyControl_sigma : compileHmrSigmaDropLog s6Step187EarlyControlHistoryArena false 0 0 254 821 []=some s6Step187EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step187EarlyControl_sigmaOwned⟩
  · exact s6Step187EarlyControl_sigmaRelease

private theorem s6Step187EarlyControl_zeroBorrow : s6Step187EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step187EarlyControlLog.zeroWork=some s6Step187EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step187EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step187EarlyControlZeroArena,s6Step187EarlyControlArena,s6Step187EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step187EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step187EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step187EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EarlyControl_zero : compileHmrEqualityLog s6Step187EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step187EarlyControlLog.zeroWork=some (s6Step187EarlyControlZeroArena,s6Step187EarlyControlLog.zeroWork,s6Step187EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step187EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step187EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step187EarlyControl_logged : s6Step187EarlyControlPlan.Logged s6Step187EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 880 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step187EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step187EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step187EarlyControl_zero
  · exact s6Step187EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step187EarlyControl_flags
  · exact s6Step187EarlyControl_fit
  · exact s6Step187EarlyControl_history
  · exact s6Step187EarlyControl_sigma
  · exact s6Step187EarlyControl_branch

private theorem s6Step187EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step187EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 880 43 s6Step187EarlyControlLog=some s6Step187EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step187EarlyControlPlan s6Step187EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 880 43 s6Step187EarlyControl_logged

private def s6Step187EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432],795⟩

private def s6Step187EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803],776⟩

private def s6Step187EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175],777⟩

private def s6Step187EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898],775⟩

private def s6Step187FrontBank : WindowBank := ⟨s6Step187EntryFRow,s6Step187EntryGRow,s6Step187EntryFvRow,s6Step187EntryGvRow⟩

private def s6Step187Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 814, 795]

private def s6Step187Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 853, 907, 777]

private def s6Step187Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 890, 776]

private def s6Step187Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 863, 775]

private theorem s6Step187Counter_apart : Disjoint s6Step187HeadFvAfter.live s6Step187CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step187HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187Counter_borrowed : s6Step187HeadFvAfter.checkBorrow 4 s6Step187CounterWork=some s6Step187CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step187HeadFvAfter s6Step187CounterDuring s6Step187CounterWork.toFinset s6Step187Counter_bounded s6Step187Counter_apart rfl

private theorem s6Step187Counter_owned : (821::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step187HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step187HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187Counter_checked : compileHmrCounterStepLog s6Step187HeadFvAfter true 821 [774, 773, 772, 771, 770, 769] s6Step187CounterWork=some s6Step187CounterDuring := by
  have owned : ∀q∈821::[774, 773, 772, 771, 770, 769],q∈s6Step187HeadFvAfter.live := fun q hq => s6Step187Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step187Counter_borrowed

private def s6Step187EntryFAfter : Arena := s6Step187EntryFBefore

private theorem s6Step187EntryBank_incomingDistinct : ([s6Step187EntryFRow,s6Step187EntryGRow,s6Step187EntryFvRow,s6Step187EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187EntryF_Incoming : rowsOwned s6Step187EntryFBefore [s6Step187EntryFRow,s6Step187EntryGRow,s6Step187EntryFvRow,s6Step187EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187EntryFRow,s6Step187EntryGRow,s6Step187EntryFvRow,s6Step187EntryGvRow] 0 s6Step187EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187EntryBank_outgoingOwned : rowsOwned s6Step187EntryGvAfter [s6Step187EntryFOut,s6Step187EntryGOut,s6Step187EntryFvOut,s6Step187EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step187EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187EntryF_Outgoing : rowsOwned s6Step187EntryGvAfter [s6Step187EntryFOut,s6Step187EntryGOut,s6Step187EntryFvOut,s6Step187EntryGvOut] :=
  hmrRows_owned_drop s6Step187EntryGvAfter [s6Step187EntryFOut,s6Step187EntryGOut,s6Step187EntryFvOut,s6Step187EntryGvOut] 0 s6Step187EntryBank_outgoingOwned

private theorem s6Step187EntryF_distinct : (s6Step187EntryFRow.sign::s6Step187EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187EntryF_owned : (s6Step187EntryFRow.sign::s6Step187EntryFRow.payload).toFinset⊆s6Step187EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EntryF_reserved : s6Step187EntryFBefore.reserve s6Step187EntryFFresh.toFinset=some s6Step187EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step187EntryFFresh,arenaWires]
  · norm_num [s6Step187EntryFBefore,s6Step187EntryFFresh,arenaWires]
  · simp only [s6Step187EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step187EntryF_checked : planRowResizeLog s6Step187EntryFBefore s6Step187EntryFRow 177 s6Step187EntryFFresh=
    some (s6Step187EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432],795⟩,growRow 795 s6Step187EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step187EntryFBefore s6Step187EntryFAfter s6Step187EntryFRow 177 s6Step187EntryFFresh
    s6Step187EntryF_distinct s6Step187EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step187EntryF_reserved
  have rowEq : WindowRow.mk (s6Step187EntryFRow.payload++s6Step187EntryFFresh) s6Step187EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step187EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187EntryFvAfter : Arena := s6Step187EntryGAfter

private def s6Step187EntryFvBefore : Arena := s6Step187EntryGAfter

private theorem s6Step187EntryFv_Incoming : rowsOwned s6Step187EntryFvBefore [s6Step187EntryFvRow,s6Step187EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187EntryFRow,s6Step187EntryGRow,s6Step187EntryFvRow,s6Step187EntryGvRow] 2 s6Step187EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187EntryFv_Outgoing : rowsOwned s6Step187EntryGvAfter [s6Step187EntryFvOut,s6Step187EntryGvOut] :=
  hmrRows_owned_drop s6Step187EntryGvAfter [s6Step187EntryFOut,s6Step187EntryGOut,s6Step187EntryFvOut,s6Step187EntryGvOut] 2 s6Step187EntryBank_outgoingOwned

private theorem s6Step187EntryFv_distinct : (s6Step187EntryFvRow.sign::s6Step187EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187EntryFv_owned : (s6Step187EntryFvRow.sign::s6Step187EntryFvRow.payload).toFinset⊆s6Step187EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EntryFv_reserved : s6Step187EntryFvBefore.reserve s6Step187EntryFvFresh.toFinset=some s6Step187EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step187EntryFvFresh,arenaWires]
  · norm_num [s6Step187EntryFvBefore,s6Step187EntryGAfter,s6Step187EntryFvFresh,arenaWires]
  · simp only [s6Step187EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step187EntryFv_checked : planRowResizeLog s6Step187EntryFvBefore s6Step187EntryFvRow 108 s6Step187EntryFvFresh=
    some (s6Step187EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803],776⟩,growRow 776 s6Step187EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step187EntryFvBefore s6Step187EntryFvAfter s6Step187EntryFvRow 108 s6Step187EntryFvFresh
    s6Step187EntryFv_distinct s6Step187EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step187EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step187EntryFvRow.payload++s6Step187EntryFvFresh) s6Step187EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step187EntryGBefore : Arena := s6Step187EntryFBefore

private theorem s6Step187EntryG_Incoming : rowsOwned s6Step187EntryGBefore [s6Step187EntryGRow,s6Step187EntryFvRow,s6Step187EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187EntryFRow,s6Step187EntryGRow,s6Step187EntryFvRow,s6Step187EntryGvRow] 1 s6Step187EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187EntryG_Outgoing : rowsOwned s6Step187EntryGvAfter [s6Step187EntryGOut,s6Step187EntryFvOut,s6Step187EntryGvOut] :=
  hmrRows_owned_drop s6Step187EntryGvAfter [s6Step187EntryFOut,s6Step187EntryGOut,s6Step187EntryFvOut,s6Step187EntryGvOut] 1 s6Step187EntryBank_outgoingOwned

private theorem s6Step187EntryG_distinct : (s6Step187EntryGRow.sign::s6Step187EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187EntryG_owned : (s6Step187EntryGRow.sign::s6Step187EntryGRow.payload).toFinset⊆s6Step187EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EntryG_reserved : s6Step187EntryGBefore.reserve s6Step187EntryGFresh.toFinset=some s6Step187EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step187EntryGFresh,arenaWires]
  · norm_num [s6Step187EntryGBefore,s6Step187EntryFBefore,s6Step187EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step187EntryGAfter,s6Step187EntryGBefore,s6Step187EntryFBefore,s6Step187EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step187EntryG_checked : planRowResizeLog s6Step187EntryGBefore s6Step187EntryGRow 177 s6Step187EntryGFresh=
    some (s6Step187EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 853],777⟩,growRow 777 s6Step187EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step187EntryGBefore s6Step187EntryGAfter s6Step187EntryGRow 177 s6Step187EntryGFresh
    s6Step187EntryG_distinct s6Step187EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step187EntryG_reserved
  have rowEq : WindowRow.mk (s6Step187EntryGRow.payload++s6Step187EntryGFresh) s6Step187EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 853],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step187EntryGvBefore : Arena := s6Step187EntryGAfter

private theorem s6Step187EntryGv_Incoming : rowsOwned s6Step187EntryGvBefore [s6Step187EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187EntryFRow,s6Step187EntryGRow,s6Step187EntryFvRow,s6Step187EntryGvRow] 3 s6Step187EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187EntryGv_Outgoing : rowsOwned s6Step187EntryGvAfter [s6Step187EntryGvOut] :=
  hmrRows_owned_drop s6Step187EntryGvAfter [s6Step187EntryFOut,s6Step187EntryGOut,s6Step187EntryFvOut,s6Step187EntryGvOut] 3 s6Step187EntryBank_outgoingOwned

private theorem s6Step187EntryGv_distinct : (s6Step187EntryGvRow.sign::s6Step187EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187EntryGv_owned : (s6Step187EntryGvRow.sign::s6Step187EntryGvRow.payload).toFinset⊆s6Step187EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187EntryGv_reserved : s6Step187EntryGvBefore.reserve s6Step187EntryGvFresh.toFinset=some s6Step187EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step187EntryGvFresh,arenaWires]
  · norm_num [s6Step187EntryGvBefore,s6Step187EntryGAfter,s6Step187EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step187EntryGvAfter,s6Step187EntryGvBefore,s6Step187EntryGAfter,s6Step187EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step187EntryGv_checked : planRowResizeLog s6Step187EntryGvBefore s6Step187EntryGvRow 108 s6Step187EntryGvFresh=
    some (s6Step187EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩,growRow 775 s6Step187EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step187EntryGvBefore s6Step187EntryGvAfter s6Step187EntryGvRow 108 s6Step187EntryGvFresh
    s6Step187EntryGv_distinct s6Step187EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step187EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step187EntryGvRow.payload++s6Step187EntryGvFresh) s6Step187EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step187EntryBank_rows : planWindowRowsLog s6Step187EntryFBefore [(s6Step187EntryFRow,177),(s6Step187EntryGRow,177),(s6Step187EntryFvRow,108),(s6Step187EntryGvRow,108)] [s6Step187EntryFFresh,s6Step187EntryGFresh,s6Step187EntryFvFresh,s6Step187EntryGvFresh]=
    some (s6Step187EntryGvAfter,[s6Step187EntryFOut,s6Step187EntryGOut,s6Step187EntryFvOut,s6Step187EntryGvOut],(growRow 795 s6Step187EntryFFresh ++ (growRow 777 s6Step187EntryGFresh ++ (growRow 776 s6Step187EntryFvFresh ++ (growRow 775 s6Step187EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step187EntryGvAfter [] []=some (s6Step187EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step187EntryGvBefore s6Step187EntryGvAfter s6Step187EntryGvAfter
    s6Step187EntryGvRow s6Step187EntryGvOut 108 s6Step187EntryGvFresh [] [] []
    (growRow 775 s6Step187EntryGvFresh) ([]) s6Step187EntryGv_Incoming s6Step187EntryGv_checked h4 s6Step187EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step187EntryFvBefore s6Step187EntryFvAfter s6Step187EntryGvAfter
    s6Step187EntryFvRow s6Step187EntryFvOut 108 s6Step187EntryFvFresh [(s6Step187EntryGvRow,108)] [s6Step187EntryGvFresh] [s6Step187EntryGvOut]
    (growRow 776 s6Step187EntryFvFresh) ((growRow 775 s6Step187EntryGvFresh ++ [])) s6Step187EntryFv_Incoming s6Step187EntryFv_checked h3 s6Step187EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step187EntryGBefore s6Step187EntryGAfter s6Step187EntryGvAfter
    s6Step187EntryGRow s6Step187EntryGOut 177 s6Step187EntryGFresh [(s6Step187EntryFvRow,108),(s6Step187EntryGvRow,108)] [s6Step187EntryFvFresh,s6Step187EntryGvFresh] [s6Step187EntryFvOut,s6Step187EntryGvOut]
    (growRow 777 s6Step187EntryGFresh) ((growRow 776 s6Step187EntryFvFresh ++ (growRow 775 s6Step187EntryGvFresh ++ []))) s6Step187EntryG_Incoming s6Step187EntryG_checked h2 s6Step187EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step187EntryFBefore s6Step187EntryFAfter s6Step187EntryGvAfter
    s6Step187EntryFRow s6Step187EntryFOut 177 s6Step187EntryFFresh [(s6Step187EntryGRow,177),(s6Step187EntryFvRow,108),(s6Step187EntryGvRow,108)] [s6Step187EntryGFresh,s6Step187EntryFvFresh,s6Step187EntryGvFresh] [s6Step187EntryGOut,s6Step187EntryFvOut,s6Step187EntryGvOut]
    (growRow 795 s6Step187EntryFFresh) ((growRow 777 s6Step187EntryGFresh ++ (growRow 776 s6Step187EntryFvFresh ++ (growRow 775 s6Step187EntryGvFresh ++ [])))) s6Step187EntryF_Incoming s6Step187EntryF_checked h1 s6Step187EntryF_Outgoing
  exact h0

private theorem s6Step187EntryBank_checked : compileHmrBankResizeLog .entry s6Step187EntryFBefore ⟨s6Step187EntryFRow,s6Step187EntryGRow,s6Step187EntryFvRow,s6Step187EntryGvRow⟩ ⟨177,177,108,108⟩ [s6Step187EntryFFresh,s6Step187EntryGFresh,s6Step187EntryFvFresh,s6Step187EntryGvFresh]=
    some (s6Step187EntryGvAfter,⟨s6Step187EntryFOut,s6Step187EntryGOut,s6Step187EntryFvOut,s6Step187EntryGvOut⟩,(growRow 795 s6Step187EntryFFresh ++ (growRow 777 s6Step187EntryGFresh ++ (growRow 776 s6Step187EntryFvFresh ++ (growRow 775 s6Step187EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step187EntryBank_rows]
  rfl

private def s6Step187ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<432) ∨ (433≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187ExitFBefore : Arena := s6Step187ExitGAfter

private def s6Step187ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 814],795⟩

private def s6Step187ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 890],776⟩

private def s6Step187ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 853, 907],777⟩

private def s6Step187ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 863],775⟩

private theorem s6Step187ExitBank_incomingDistinct : ([s6Step187ExitGRow,s6Step187ExitFRow,s6Step187ExitFvRow,s6Step187ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187ExitF_Incoming : rowsOwned s6Step187ExitFBefore [s6Step187ExitFRow,s6Step187ExitFvRow,s6Step187ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187ExitGRow,s6Step187ExitFRow,s6Step187ExitFvRow,s6Step187ExitGvRow] 1 s6Step187ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187ExitFBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187ExitBank_outgoingOwned : rowsOwned s6Step187ExitGvAfter [s6Step187ExitGOut,s6Step187ExitFOut,s6Step187ExitFvOut,s6Step187ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step187ExitGvAfter (fun q => ([(0,175),(176,432),(433,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step187ExitF_Outgoing : rowsOwned s6Step187ExitGvAfter [s6Step187ExitFOut,s6Step187ExitFvOut,s6Step187ExitGvOut] :=
  hmrRows_owned_drop s6Step187ExitGvAfter [s6Step187ExitGOut,s6Step187ExitFOut,s6Step187ExitFvOut,s6Step187ExitGvOut] 1 s6Step187ExitBank_outgoingOwned

private theorem s6Step187ExitF_distinct : (s6Step187ExitFRow.sign::s6Step187ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187ExitF_owned : (s6Step187ExitFRow.sign::s6Step187ExitFRow.payload).toFinset⊆s6Step187ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187ExitFBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187ExitF_retired : s6Step187ExitFBefore.retireSet s6Step187ExitFExtra.toFinset=s6Step187ExitFAfter := by
  unfold Arena.retireSet s6Step187ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step187ExitFBefore,s6Step187ExitGAfter,s6Step187ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step187ExitF_checked : planRowResizeLog s6Step187ExitFBefore s6Step187ExitFRow 176 []=
    some (s6Step187ExitFAfter,s6Step187ExitFOut,shrinkRow 795 s6Step187ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step187ExitFBefore s6Step187ExitFRow 176 s6Step187ExitF_distinct s6Step187ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step187ExitFRow.payload.take 176) s6Step187ExitFRow.sign=s6Step187ExitFOut := by decide +kernel
  have hi : s6Step187ExitFRow.payload.drop 176=s6Step187ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step187ExitF_retired] at result
  exact result

private def s6Step187ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<432) ∨ (433≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187ExitFvBefore : Arena := s6Step187ExitFAfter

private theorem s6Step187ExitFv_Incoming : rowsOwned s6Step187ExitFvBefore [s6Step187ExitFvRow,s6Step187ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187ExitGRow,s6Step187ExitFRow,s6Step187ExitFvRow,s6Step187ExitGvRow] 2 s6Step187ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187ExitFvBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<432) ∨ (433≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187ExitFv_Outgoing : rowsOwned s6Step187ExitGvAfter [s6Step187ExitFvOut,s6Step187ExitGvOut] :=
  hmrRows_owned_drop s6Step187ExitGvAfter [s6Step187ExitGOut,s6Step187ExitFOut,s6Step187ExitFvOut,s6Step187ExitGvOut] 2 s6Step187ExitBank_outgoingOwned

private theorem s6Step187ExitFv_distinct : (s6Step187ExitFvRow.sign::s6Step187ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187ExitFv_owned : (s6Step187ExitFvRow.sign::s6Step187ExitFvRow.payload).toFinset⊆s6Step187ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187ExitFvBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<432) ∨ (433≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187ExitFv_retired : s6Step187ExitFvBefore.retireSet s6Step187ExitFvExtra.toFinset=s6Step187ExitFvAfter := by
  unfold Arena.retireSet s6Step187ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step187ExitFvBefore,s6Step187ExitFAfter,s6Step187ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step187ExitFv_checked : planRowResizeLog s6Step187ExitFvBefore s6Step187ExitFvRow 108 []=
    some (s6Step187ExitFvAfter,s6Step187ExitFvOut,shrinkRow 776 s6Step187ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step187ExitFvBefore s6Step187ExitFvRow 108 s6Step187ExitFv_distinct s6Step187ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step187ExitFvRow.payload.take 108) s6Step187ExitFvRow.sign=s6Step187ExitFvOut := by decide +kernel
  have hi : s6Step187ExitFvRow.payload.drop 108=s6Step187ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step187ExitFv_retired] at result
  exact result

private def s6Step187ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step187ExitG_Incoming : rowsOwned s6Step187ExitGBefore [s6Step187ExitGRow,s6Step187ExitFRow,s6Step187ExitFvRow,s6Step187ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187ExitGRow,s6Step187ExitFRow,s6Step187ExitFvRow,s6Step187ExitGvRow] 0 s6Step187ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187ExitG_Outgoing : rowsOwned s6Step187ExitGvAfter [s6Step187ExitGOut,s6Step187ExitFOut,s6Step187ExitFvOut,s6Step187ExitGvOut] :=
  hmrRows_owned_drop s6Step187ExitGvAfter [s6Step187ExitGOut,s6Step187ExitFOut,s6Step187ExitFvOut,s6Step187ExitGvOut] 0 s6Step187ExitBank_outgoingOwned

private theorem s6Step187ExitG_distinct : (s6Step187ExitGRow.sign::s6Step187ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187ExitG_owned : (s6Step187ExitGRow.sign::s6Step187ExitGRow.payload).toFinset⊆s6Step187ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187ExitG_retired : s6Step187ExitGBefore.retireSet s6Step187ExitGExtra.toFinset=s6Step187ExitGAfter := by
  unfold Arena.retireSet s6Step187ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step187ExitGBefore,s6Step187ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step187ExitG_checked : planRowResizeLog s6Step187ExitGBefore s6Step187ExitGRow 175 []=
    some (s6Step187ExitGAfter,s6Step187ExitGOut,shrinkRow 777 s6Step187ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step187ExitGBefore s6Step187ExitGRow 175 s6Step187ExitG_distinct s6Step187ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step187ExitGRow.payload.take 175) s6Step187ExitGRow.sign=s6Step187ExitGOut := by decide +kernel
  have hi : s6Step187ExitGRow.payload.drop 175=s6Step187ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step187ExitG_retired] at result
  exact result

private def s6Step187ExitGvBefore : Arena := s6Step187ExitFvAfter

private theorem s6Step187ExitGv_Incoming : rowsOwned s6Step187ExitGvBefore [s6Step187ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187ExitGRow,s6Step187ExitFRow,s6Step187ExitFvRow,s6Step187ExitGvRow] 3 s6Step187ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187ExitGvBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<432) ∨ (433≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187ExitGv_Outgoing : rowsOwned s6Step187ExitGvAfter [s6Step187ExitGvOut] :=
  hmrRows_owned_drop s6Step187ExitGvAfter [s6Step187ExitGOut,s6Step187ExitFOut,s6Step187ExitFvOut,s6Step187ExitGvOut] 3 s6Step187ExitBank_outgoingOwned

private theorem s6Step187ExitGv_distinct : (s6Step187ExitGvRow.sign::s6Step187ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187ExitGv_owned : (s6Step187ExitGvRow.sign::s6Step187ExitGvRow.payload).toFinset⊆s6Step187ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187ExitGvBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<432) ∨ (433≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187ExitGv_retired : s6Step187ExitGvBefore.retireSet s6Step187ExitGvExtra.toFinset=s6Step187ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step187ExitGvBefore s6Step187ExitGvAfter s6Step187ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step187ExitGvBefore s6Step187ExitGvAfter (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<432) ∨ (433≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,175),(176,432),(433,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step187ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step187ExitGv_checked : planRowResizeLog s6Step187ExitGvBefore s6Step187ExitGvRow 108 []=
    some (s6Step187ExitGvAfter,s6Step187ExitGvOut,shrinkRow 775 s6Step187ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step187ExitGvBefore s6Step187ExitGvRow 108 s6Step187ExitGv_distinct s6Step187ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step187ExitGvRow.payload.take 108) s6Step187ExitGvRow.sign=s6Step187ExitGvOut := by decide +kernel
  have hi : s6Step187ExitGvRow.payload.drop 108=s6Step187ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step187ExitGv_retired] at result
  exact result

private theorem s6Step187ExitBank_rows : planWindowRowsLog s6Step187ExitGBefore [(s6Step187ExitGRow,175),(s6Step187ExitFRow,176),(s6Step187ExitFvRow,108),(s6Step187ExitGvRow,108)] [[],[],[],[]]=
    some (s6Step187ExitGvAfter,[s6Step187ExitGOut,s6Step187ExitFOut,s6Step187ExitFvOut,s6Step187ExitGvOut],(shrinkRow 777 s6Step187ExitGExtra ++ (shrinkRow 795 s6Step187ExitFExtra ++ (shrinkRow 776 s6Step187ExitFvExtra ++ (shrinkRow 775 s6Step187ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step187ExitGvAfter [] []=some (s6Step187ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step187ExitGvBefore s6Step187ExitGvAfter s6Step187ExitGvAfter
    s6Step187ExitGvRow s6Step187ExitGvOut 108 [] [] [] []
    (shrinkRow 775 s6Step187ExitGvExtra) ([]) s6Step187ExitGv_Incoming s6Step187ExitGv_checked h4 s6Step187ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step187ExitFvBefore s6Step187ExitFvAfter s6Step187ExitGvAfter
    s6Step187ExitFvRow s6Step187ExitFvOut 108 [] [(s6Step187ExitGvRow,108)] [[]] [s6Step187ExitGvOut]
    (shrinkRow 776 s6Step187ExitFvExtra) ((shrinkRow 775 s6Step187ExitGvExtra ++ [])) s6Step187ExitFv_Incoming s6Step187ExitFv_checked h3 s6Step187ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step187ExitFBefore s6Step187ExitFAfter s6Step187ExitGvAfter
    s6Step187ExitFRow s6Step187ExitFOut 176 [] [(s6Step187ExitFvRow,108),(s6Step187ExitGvRow,108)] [[],[]] [s6Step187ExitFvOut,s6Step187ExitGvOut]
    (shrinkRow 795 s6Step187ExitFExtra) ((shrinkRow 776 s6Step187ExitFvExtra ++ (shrinkRow 775 s6Step187ExitGvExtra ++ []))) s6Step187ExitF_Incoming s6Step187ExitF_checked h2 s6Step187ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step187ExitGBefore s6Step187ExitGAfter s6Step187ExitGvAfter
    s6Step187ExitGRow s6Step187ExitGOut 175 [] [(s6Step187ExitFRow,176),(s6Step187ExitFvRow,108),(s6Step187ExitGvRow,108)] [[],[],[]] [s6Step187ExitFOut,s6Step187ExitFvOut,s6Step187ExitGvOut]
    (shrinkRow 777 s6Step187ExitGExtra) ((shrinkRow 795 s6Step187ExitFExtra ++ (shrinkRow 776 s6Step187ExitFvExtra ++ (shrinkRow 775 s6Step187ExitGvExtra ++ [])))) s6Step187ExitG_Incoming s6Step187ExitG_checked h1 s6Step187ExitG_Outgoing
  exact h0

private theorem s6Step187ExitBank_checked : compileHmrBankResizeLog .exit s6Step187ExitGBefore ⟨s6Step187ExitFRow,s6Step187ExitGRow,s6Step187ExitFvRow,s6Step187ExitGvRow⟩ ⟨176,175,108,108⟩ [[],[],[],[]]=
    some (s6Step187ExitGvAfter,⟨s6Step187ExitFOut,s6Step187ExitGOut,s6Step187ExitFvOut,s6Step187ExitGvOut⟩,(shrinkRow 777 s6Step187ExitGExtra ++ (shrinkRow 795 s6Step187ExitFExtra ++ (shrinkRow 776 s6Step187ExitFvExtra ++ (shrinkRow 775 s6Step187ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step187ExitBank_rows]
  rfl

private theorem s6Step187Add0_apart : Disjoint s6Step187Add0Arena.live s6Step187Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step187Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187Add0_card : s6Step187Add0Arena.live.card=887 := by
  decide +kernel

private theorem s6Step187Add0_borrowed : s6Step187Add0Arena.checkBorrow (hmrHybridCount s6Step187Add0Arena s6Step187Add0B.length) s6Step187Add0Work=some s6Step187Add0During := by
  have len : s6Step187Add0Work.length=hmrHybridCount s6Step187Add0Arena s6Step187Add0B.length := by
    rw [hmrHybridCount,s6Step187Add0_card]
    decide +kernel
  have nd : s6Step187Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step187Add0Arena s6Step187Add0During s6Step187Add0Work.toFinset s6Step187Add0_bounded s6Step187Add0_apart rfl

private theorem s6Step187Add0_distinct : (891::880::903::(s6Step187Add0A++s6Step187Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187Add0_owned : (891::880::903::(s6Step187Add0A++s6Step187Add0B)).toFinset⊆s6Step187Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step187Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187Add0_checked : compileHmrHybridCinLog s6Step187Add0Arena 880 891 903 s6Step187Add0A s6Step187Add0B s6Step187Add0Work=some s6Step187Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step187Add0Arena s6Step187Add0During 880 891 903 s6Step187Add0A s6Step187Add0B s6Step187Add0Work
    (by decide +kernel) (by decide +kernel) s6Step187Add0_distinct
    (fun q hq => s6Step187Add0_owned (List.mem_toFinset.mpr hq)) s6Step187Add0_borrowed

private theorem s6Step187Add1_apart : Disjoint s6Step187Add1Arena.live s6Step187Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step187Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187Add1_card : s6Step187Add1Arena.live.card=887 := by
  decide +kernel

private theorem s6Step187Add1_borrowed : s6Step187Add1Arena.checkBorrow (hmrHybridCount s6Step187Add1Arena s6Step187Add1B.length) s6Step187Add1Work=some s6Step187Add1During := by
  have len : s6Step187Add1Work.length=hmrHybridCount s6Step187Add1Arena s6Step187Add1B.length := by
    rw [hmrHybridCount,s6Step187Add1_card]
    decide +kernel
  have nd : s6Step187Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step187Add1Arena s6Step187Add1During s6Step187Add1Work.toFinset s6Step187Add1_bounded s6Step187Add1_apart rfl

private theorem s6Step187Add1_distinct : (891::880::903::(s6Step187Add1A++s6Step187Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187Add1_owned : (891::880::903::(s6Step187Add1A++s6Step187Add1B)).toFinset⊆s6Step187Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step187Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187Add1_checked : compileHmrHybridCinLog s6Step187Add1Arena 880 891 903 s6Step187Add1A s6Step187Add1B s6Step187Add1Work=some s6Step187Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step187Add1Arena s6Step187Add1During 880 891 903 s6Step187Add1A s6Step187Add1B s6Step187Add1Work
    (by decide +kernel) (by decide +kernel) s6Step187Add1_distinct
    (fun q hq => s6Step187Add1_owned (List.mem_toFinset.mpr hq)) s6Step187Add1_borrowed

private theorem s6Step187F4_apart : Disjoint (s6Step187Add0A++s6Step187Add0B).toFinset (s6Step187Add1A++s6Step187Add1B).toFinset := by
  have nd : ((s6Step187Add0A++s6Step187Add0B)++(s6Step187Add1A++s6Step187Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step187F4_carry : s6Step187F4FlagArena.checkBorrow 1 [903]=some s6Step187Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step187F4FlagArena,s6Step187HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step187F4FlagArena,s6Step187HeadFvAfter,s6Step187Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step187F4_distinct : (821::880::891::903::((s6Step187Add0A++s6Step187Add1A)++(s6Step187Add0B++s6Step187Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187F4_flag : s6Step187HeadFvAfter.checkBorrow 1 [891]=some s6Step187F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step187HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step187F4_owned : (821::880::((s6Step187Add0A++s6Step187Add1A)++(s6Step187Add0B++s6Step187Add1B))).toFinset⊆s6Step187HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step187HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187F4_checked : compileHmrHybridF4Log s6Step187HeadFvAfter 821 880 s6Step187Add0A s6Step187Add0B s6Step187Add1A s6Step187Add1B [891] [903] s6Step187Add0Work s6Step187Add1Work=some s6Step187F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step187HeadFvAfter s6Step187F4FlagArena s6Step187Add0Arena s6Step187Add0During s6Step187Add1During 821 880
    s6Step187Add0A s6Step187Add0B s6Step187Add1A s6Step187Add1B [891] [903] s6Step187Add0Work s6Step187Add1Work
    (fun q hq => s6Step187F4_owned (List.mem_toFinset.mpr hq)) s6Step187F4_flag s6Step187F4_carry
    s6Step187F4_distinct s6Step187F4_apart s6Step187Add0_checked s6Step187Add1_checked

private theorem s6Step187Front_branch : s6Step187FrontSigmaArena.checkBorrow 1 [880]=some s6Step187HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step187FrontSigmaArena,s6Step187EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step187FrontSigmaArena,s6Step187EntryGvAfter,s6Step187HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step187Front_entry : HmrFrontEntryValid s6Step187EntryFBefore s6Step187FrontBank 177 108 ⟨176,175,108,108⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step187FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step187EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step187EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step187FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step187Front_sigma : s6Step187EntryGvAfter.checkBorrow 1 [821]=some s6Step187FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step187EntryGvAfter,arenaWires]
  · rfl

private def s6Step187HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187HeadFBefore : Arena := s6Step187HeadGAfter

private def s6Step187HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432],795⟩

private def s6Step187HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803],776⟩

private def s6Step187HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 853],777⟩

private def s6Step187HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩

private theorem s6Step187HeadBank_incomingDistinct : ([s6Step187HeadGRow,s6Step187HeadFRow,s6Step187HeadGvRow,s6Step187HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187HeadF_Incoming : rowsOwned s6Step187HeadFBefore [s6Step187HeadFRow,s6Step187HeadGvRow,s6Step187HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187HeadGRow,s6Step187HeadFRow,s6Step187HeadGvRow,s6Step187HeadFvRow] 1 s6Step187HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187HeadBank_outgoingOwned : rowsOwned s6Step187HeadFvAfter [s6Step187HeadGOut,s6Step187HeadFOut,s6Step187HeadGvOut,s6Step187HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step187HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187HeadF_Outgoing : rowsOwned s6Step187HeadFvAfter [s6Step187HeadFOut,s6Step187HeadGvOut,s6Step187HeadFvOut] :=
  hmrRows_owned_drop s6Step187HeadFvAfter [s6Step187HeadGOut,s6Step187HeadFOut,s6Step187HeadGvOut,s6Step187HeadFvOut] 1 s6Step187HeadBank_outgoingOwned

private theorem s6Step187HeadF_distinct : (s6Step187HeadFRow.sign::s6Step187HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187HeadF_owned : (s6Step187HeadFRow.sign::s6Step187HeadFRow.payload).toFinset⊆s6Step187HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187HeadF_reserved : s6Step187HeadFBefore.reserve s6Step187HeadFFresh.toFinset=some s6Step187HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step187HeadFFresh,arenaWires]
  · norm_num [s6Step187HeadFBefore,s6Step187HeadGAfter,s6Step187HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step187HeadFAfter,s6Step187HeadFBefore,s6Step187HeadGAfter,s6Step187HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step187HeadF_checked : planRowResizeLog s6Step187HeadFBefore s6Step187HeadFRow 178 s6Step187HeadFFresh=
    some (s6Step187HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 814],795⟩,growRow 795 s6Step187HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step187HeadFBefore s6Step187HeadFAfter s6Step187HeadFRow 178 s6Step187HeadFFresh
    s6Step187HeadF_distinct s6Step187HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step187HeadF_reserved
  have rowEq : WindowRow.mk (s6Step187HeadFRow.payload++s6Step187HeadFFresh) s6Step187HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 814],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step187HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step187HeadFvBefore : Arena := s6Step187HeadGvAfter

private theorem s6Step187HeadFv_Incoming : rowsOwned s6Step187HeadFvBefore [s6Step187HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187HeadGRow,s6Step187HeadFRow,s6Step187HeadGvRow,s6Step187HeadFvRow] 3 s6Step187HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187HeadFv_Outgoing : rowsOwned s6Step187HeadFvAfter [s6Step187HeadFvOut] :=
  hmrRows_owned_drop s6Step187HeadFvAfter [s6Step187HeadGOut,s6Step187HeadFOut,s6Step187HeadGvOut,s6Step187HeadFvOut] 3 s6Step187HeadBank_outgoingOwned

private theorem s6Step187HeadFv_distinct : (s6Step187HeadFvRow.sign::s6Step187HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187HeadFv_owned : (s6Step187HeadFvRow.sign::s6Step187HeadFvRow.payload).toFinset⊆s6Step187HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187HeadFv_reserved : s6Step187HeadFvBefore.reserve s6Step187HeadFvFresh.toFinset=some s6Step187HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step187HeadFvFresh,arenaWires]
  · norm_num [s6Step187HeadFvBefore,s6Step187HeadGvAfter,s6Step187HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step187HeadFvAfter,s6Step187HeadFvBefore,s6Step187HeadGvAfter,s6Step187HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step187HeadFv_checked : planRowResizeLog s6Step187HeadFvBefore s6Step187HeadFvRow 109 s6Step187HeadFvFresh=
    some (s6Step187HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 890],776⟩,growRow 776 s6Step187HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step187HeadFvBefore s6Step187HeadFvAfter s6Step187HeadFvRow 109 s6Step187HeadFvFresh
    s6Step187HeadFv_distinct s6Step187HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step187HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step187HeadFvRow.payload++s6Step187HeadFvFresh) s6Step187HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 890],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step187HeadG_Incoming : rowsOwned s6Step187HeadGBefore [s6Step187HeadGRow,s6Step187HeadFRow,s6Step187HeadGvRow,s6Step187HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187HeadGRow,s6Step187HeadFRow,s6Step187HeadGvRow,s6Step187HeadFvRow] 0 s6Step187HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187HeadG_Outgoing : rowsOwned s6Step187HeadFvAfter [s6Step187HeadGOut,s6Step187HeadFOut,s6Step187HeadGvOut,s6Step187HeadFvOut] :=
  hmrRows_owned_drop s6Step187HeadFvAfter [s6Step187HeadGOut,s6Step187HeadFOut,s6Step187HeadGvOut,s6Step187HeadFvOut] 0 s6Step187HeadBank_outgoingOwned

private theorem s6Step187HeadG_distinct : (s6Step187HeadGRow.sign::s6Step187HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187HeadG_owned : (s6Step187HeadGRow.sign::s6Step187HeadGRow.payload).toFinset⊆s6Step187HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187HeadG_reserved : s6Step187HeadGBefore.reserve s6Step187HeadGFresh.toFinset=some s6Step187HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step187HeadGFresh,arenaWires]
  · norm_num [s6Step187HeadGBefore,s6Step187HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step187HeadGAfter,s6Step187HeadGBefore,s6Step187HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step187HeadG_checked : planRowResizeLog s6Step187HeadGBefore s6Step187HeadGRow 178 s6Step187HeadGFresh=
    some (s6Step187HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 853, 907],777⟩,growRow 777 s6Step187HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step187HeadGBefore s6Step187HeadGAfter s6Step187HeadGRow 178 s6Step187HeadGFresh
    s6Step187HeadG_distinct s6Step187HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step187HeadG_reserved
  have rowEq : WindowRow.mk (s6Step187HeadGRow.payload++s6Step187HeadGFresh) s6Step187HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 853, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step187HeadGvBefore : Arena := s6Step187HeadFAfter

private theorem s6Step187HeadGv_Incoming : rowsOwned s6Step187HeadGvBefore [s6Step187HeadGvRow,s6Step187HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step187HeadGRow,s6Step187HeadFRow,s6Step187HeadGvRow,s6Step187HeadFvRow] 2 s6Step187HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step187HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step187HeadGv_Outgoing : rowsOwned s6Step187HeadFvAfter [s6Step187HeadGvOut,s6Step187HeadFvOut] :=
  hmrRows_owned_drop s6Step187HeadFvAfter [s6Step187HeadGOut,s6Step187HeadFOut,s6Step187HeadGvOut,s6Step187HeadFvOut] 2 s6Step187HeadBank_outgoingOwned

private theorem s6Step187HeadGv_distinct : (s6Step187HeadGvRow.sign::s6Step187HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step187HeadGv_owned : (s6Step187HeadGvRow.sign::s6Step187HeadGvRow.payload).toFinset⊆s6Step187HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step187HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step187HeadGv_reserved : s6Step187HeadGvBefore.reserve s6Step187HeadGvFresh.toFinset=some s6Step187HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step187HeadGvFresh,arenaWires]
  · norm_num [s6Step187HeadGvBefore,s6Step187HeadFAfter,s6Step187HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step187HeadGvAfter,s6Step187HeadGvBefore,s6Step187HeadFAfter,s6Step187HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step187HeadGv_checked : planRowResizeLog s6Step187HeadGvBefore s6Step187HeadGvRow 109 s6Step187HeadGvFresh=
    some (s6Step187HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 863],775⟩,growRow 775 s6Step187HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step187HeadGvBefore s6Step187HeadGvAfter s6Step187HeadGvRow 109 s6Step187HeadGvFresh
    s6Step187HeadGv_distinct s6Step187HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step187HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step187HeadGvRow.payload++s6Step187HeadGvFresh) s6Step187HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 863],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step187HeadBank_rows : planWindowRowsLog s6Step187HeadGBefore [(s6Step187HeadGRow,178),(s6Step187HeadFRow,178),(s6Step187HeadGvRow,109),(s6Step187HeadFvRow,109)] [s6Step187HeadGFresh,s6Step187HeadFFresh,s6Step187HeadGvFresh,s6Step187HeadFvFresh]=
    some (s6Step187HeadFvAfter,[s6Step187HeadGOut,s6Step187HeadFOut,s6Step187HeadGvOut,s6Step187HeadFvOut],(growRow 777 s6Step187HeadGFresh ++ (growRow 795 s6Step187HeadFFresh ++ (growRow 775 s6Step187HeadGvFresh ++ (growRow 776 s6Step187HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step187HeadFvAfter [] []=some (s6Step187HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step187HeadFvBefore s6Step187HeadFvAfter s6Step187HeadFvAfter
    s6Step187HeadFvRow s6Step187HeadFvOut 109 s6Step187HeadFvFresh [] [] []
    (growRow 776 s6Step187HeadFvFresh) ([]) s6Step187HeadFv_Incoming s6Step187HeadFv_checked h4 s6Step187HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step187HeadGvBefore s6Step187HeadGvAfter s6Step187HeadFvAfter
    s6Step187HeadGvRow s6Step187HeadGvOut 109 s6Step187HeadGvFresh [(s6Step187HeadFvRow,109)] [s6Step187HeadFvFresh] [s6Step187HeadFvOut]
    (growRow 775 s6Step187HeadGvFresh) ((growRow 776 s6Step187HeadFvFresh ++ [])) s6Step187HeadGv_Incoming s6Step187HeadGv_checked h3 s6Step187HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step187HeadFBefore s6Step187HeadFAfter s6Step187HeadFvAfter
    s6Step187HeadFRow s6Step187HeadFOut 178 s6Step187HeadFFresh [(s6Step187HeadGvRow,109),(s6Step187HeadFvRow,109)] [s6Step187HeadGvFresh,s6Step187HeadFvFresh] [s6Step187HeadGvOut,s6Step187HeadFvOut]
    (growRow 795 s6Step187HeadFFresh) ((growRow 775 s6Step187HeadGvFresh ++ (growRow 776 s6Step187HeadFvFresh ++ []))) s6Step187HeadF_Incoming s6Step187HeadF_checked h2 s6Step187HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step187HeadGBefore s6Step187HeadGAfter s6Step187HeadFvAfter
    s6Step187HeadGRow s6Step187HeadGOut 178 s6Step187HeadGFresh [(s6Step187HeadFRow,178),(s6Step187HeadGvRow,109),(s6Step187HeadFvRow,109)] [s6Step187HeadFFresh,s6Step187HeadGvFresh,s6Step187HeadFvFresh] [s6Step187HeadFOut,s6Step187HeadGvOut,s6Step187HeadFvOut]
    (growRow 777 s6Step187HeadGFresh) ((growRow 795 s6Step187HeadFFresh ++ (growRow 775 s6Step187HeadGvFresh ++ (growRow 776 s6Step187HeadFvFresh ++ [])))) s6Step187HeadG_Incoming s6Step187HeadG_checked h1 s6Step187HeadG_Outgoing
  exact h0

private theorem s6Step187HeadBank_checked : compileHmrBankResizeLog .headroom s6Step187HeadGBefore ⟨s6Step187HeadFRow,s6Step187HeadGRow,s6Step187HeadFvRow,s6Step187HeadGvRow⟩ ⟨178,178,109,109⟩ [s6Step187HeadGFresh,s6Step187HeadFFresh,s6Step187HeadGvFresh,s6Step187HeadFvFresh]=
    some (s6Step187HeadFvAfter,⟨s6Step187HeadFOut,s6Step187HeadGOut,s6Step187HeadFvOut,s6Step187HeadGvOut⟩,(growRow 777 s6Step187HeadGFresh ++ (growRow 795 s6Step187HeadFFresh ++ (growRow 775 s6Step187HeadGvFresh ++ (growRow 776 s6Step187HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step187HeadBank_rows]
  rfl

private theorem s6Step187Front_checked : compileHmrSourceFrontLog s6Step187EntryFBefore s6Step187FrontBank 177 108 ⟨176,175,108,108⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step187FrontLog=some s6Step187FrontPlan := by
  have pairEq : s6Step187FrontPair=⟨s6Step187HeadFRow,s6Step187HeadGRow,s6Step187HeadFvRow,s6Step187HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step187FrontHead=⟨s6Step187ExitFRow,s6Step187ExitGRow,s6Step187ExitFvRow,s6Step187ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step187Add0A=s6Step187FrontHead.f.wires := by decide +kernel
  have gEq : s6Step187Add0B=s6Step187FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step187Add1A=s6Step187FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step187Add1B=s6Step187FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step187EntryFBefore s6Step187FrontBank 177 108 ⟨176,175,108,108⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step187FrontLog s6Step187FrontPlan
  · exact s6Step187Front_entry
  · exact s6Step187EntryBank_checked
  · exact s6Step187Front_sigma
  · rfl
  · exact s6Step187Front_branch
  · rfl
  · simpa only [s6Step187FrontPlan,pairEq] using s6Step187HeadBank_checked
  · simpa only [s6Step187FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step187F4_checked
  · exact s6Step187Counter_checked
  · rfl
  · simpa only [s6Step187FrontPlan,headEq] using s6Step187ExitBank_checked

private theorem s6Step187Complete_explicit_checked : compileHmrEarlyStepLog s6Step187EntryFBefore s6Step187FrontBank 177 108 ⟨176,175,108,108⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step187CompleteLog=some s6Step187CompletePlan := by
  let Q := s6Step187EarlyControlPlan
  have hq := s6Step187EarlyControl_plan_checked
  have fv1 : s6Step187CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step187CompleteOut.fv.payload[2]?.getD s6Step187CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step187CompleteOut.fv.payload[3]?.getD s6Step187CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step187CompleteOut.fv.payload[4]?.getD s6Step187CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step187EntryFBefore s6Step187EarlyControlArena s6Step187FrontBank 177 108 ⟨176,175,108,108⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step187CompleteLog s6Step187FrontPlan Q
    s6Step187Front_checked s6Step187Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step187Complete_owned s6Step187Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step187EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 s6Step187CompleteOut.fv.second (s6Step187CompleteOut.fv.payload[2]?.getD s6Step187CompleteOut.fv.sign) (s6Step187CompleteOut.fv.payload[3]?.getD s6Step187CompleteOut.fv.sign) (s6Step187CompleteOut.fv.payload[4]?.getD s6Step187CompleteOut.fv.sign) 880 43 s6Step187EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep187Arena : Arena := s6Step187EntryFBefore
def s6PrivateStep187Bank : WindowBank := s6Step187FrontBank
def s6PrivateStep187Spec : HmrSourceWalkStepLog := ⟨177,108,⟨176,175,108,108⟩,43,.early s6Step187CompleteLog⟩
def s6PrivateStep187Plan : HmrSourceStepPlan := .early s6Step187CompletePlan
theorem s6PrivateStep187_source : s6PrivateStep187Spec=s6ObservedLogs176[11] := rfl
theorem s6PrivateStep187_checked : compileHmrSourceStepLog s6PrivateStep187Arena s6PrivateStep187Bank
    s6PrivateStep187Spec.fgWidth s6PrivateStep187Spec.vWidth s6PrivateStep187Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]
    6 498 187 s6PrivateStep187Spec.need none s6PrivateStep187Spec.log=some s6PrivateStep187Plan := by
  change compileHmrSourceStepLog s6Step187EntryFBefore s6Step187FrontBank 177 108 ⟨176,175,108,108⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 6 498 187 43 none (.early s6Step187CompleteLog)=some (.early s6Step187CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 187<498)]
  rw [s6Step187Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
